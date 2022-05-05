package org.msgpack.jackson.dataformat;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.base.GeneratorBase;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.msgpack.core.MessagePack;
import org.msgpack.core.MessagePacker;
import org.msgpack.core.buffer.OutputStreamBufferOutput;
/* loaded from: classes3-dex2jar.jar:org/msgpack/jackson/dataformat/MessagePackGenerator.class */
public class MessagePackGenerator extends GeneratorBase {
    public StackItem rootStackItem;
    public LinkedList<StackItem> stack;
    public static final Charset DEFAULT_CHARSET = Charset.forName("UTF-8");
    public static ThreadLocal<MessagePacker> messagePackersHolder = new ThreadLocal<>();
    public static ThreadLocal<OutputStreamBufferOutput> messageBufferOutputHolder = new ThreadLocal<>();

    /* loaded from: classes3-dex2jar.jar:org/msgpack/jackson/dataformat/MessagePackGenerator$StackItem.class */
    public static abstract class StackItem {
        public List<String> objectKeys;
        public List<Object> objectValues;

        public StackItem() {
            this.objectKeys = new ArrayList();
            this.objectValues = new ArrayList();
        }

        public abstract void addKey(String str);

        public void addValue(Object obj) {
            this.objectValues.add(obj);
        }

        public abstract List<String> getKeys();

        public List<Object> getValues() {
            return this.objectValues;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/msgpack/jackson/dataformat/MessagePackGenerator$StackItemForArray.class */
    public static class StackItemForArray extends StackItem {
        public StackItemForArray() {
            super();
        }

        @Override // org.msgpack.jackson.dataformat.MessagePackGenerator.StackItem
        public void addKey(String str) {
            throw new IllegalStateException("This method shouldn't be called");
        }

        @Override // org.msgpack.jackson.dataformat.MessagePackGenerator.StackItem
        public List<String> getKeys() {
            throw new IllegalStateException("This method shouldn't be called");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/msgpack/jackson/dataformat/MessagePackGenerator$StackItemForObject.class */
    public static class StackItemForObject extends StackItem {
        public StackItemForObject() {
            super();
        }

        @Override // org.msgpack.jackson.dataformat.MessagePackGenerator.StackItem
        public void addKey(String str) {
            this.objectKeys.add(str);
        }

        @Override // org.msgpack.jackson.dataformat.MessagePackGenerator.StackItem
        public List<String> getKeys() {
            return this.objectKeys;
        }
    }

    public MessagePackGenerator(int i, ObjectCodec objectCodec, OutputStream outputStream) throws IOException {
        super(i, objectCodec);
        MessagePacker messagePacker;
        MessagePacker messagePacker2 = messagePackersHolder.get();
        OutputStreamBufferOutput outputStreamBufferOutput = messageBufferOutputHolder.get();
        if (outputStreamBufferOutput == null) {
            outputStreamBufferOutput = new OutputStreamBufferOutput(outputStream);
        } else {
            outputStreamBufferOutput.reset(outputStream);
        }
        messageBufferOutputHolder.set(outputStreamBufferOutput);
        if (messagePacker2 == null) {
            messagePacker = MessagePack.newDefaultPacker(outputStreamBufferOutput);
        } else {
            messagePacker2.reset(outputStreamBufferOutput);
            messagePacker = messagePacker2;
        }
        messagePackersHolder.set(messagePacker);
        this.stack = new LinkedList<>();
    }

    private void addKeyToStackTop(String str) {
        getStackTop().addKey(str);
    }

    private void addValueToStackTop(Object obj) throws IOException {
        if (this.stack.isEmpty()) {
            packValue(obj);
            flushMessagePacker();
            return;
        }
        getStackTop().addValue(obj);
    }

    private void flushMessagePacker() throws IOException {
        getMessagePacker().flush();
    }

    private MessagePacker getMessagePacker() {
        MessagePacker messagePacker = messagePackersHolder.get();
        if (messagePacker != null) {
            return messagePacker;
        }
        throw new IllegalStateException("messagePacker is null");
    }

    private StackItem getStackTop() {
        if (!this.stack.isEmpty()) {
            return this.stack.getFirst();
        }
        throw new IllegalStateException("The stack is empty");
    }

    private StackItemForArray getStackTopForArray() {
        StackItem stackTop = getStackTop();
        if (stackTop instanceof StackItemForArray) {
            return (StackItemForArray) stackTop;
        }
        throw new IllegalStateException("The stack top should be Array: " + stackTop);
    }

    private StackItemForObject getStackTopForObject() {
        StackItem stackTop = getStackTop();
        if (stackTop instanceof StackItemForObject) {
            return (StackItemForObject) stackTop;
        }
        throw new IllegalStateException("The stack top should be Object: " + stackTop);
    }

    private void packArray(StackItemForArray stackItemForArray) throws IOException {
        List<Object> values = stackItemForArray.getValues();
        getMessagePacker().packArrayHeader(values.size());
        for (int i = 0; i < values.size(); i++) {
            packValue(values.get(i));
        }
    }

    private void packBigDecimal(BigDecimal bigDecimal) throws IOException {
        MessagePacker messagePacker = getMessagePacker();
        boolean z = true;
        try {
            messagePacker.packBigInteger(bigDecimal.toBigIntegerExact());
            z = false;
        } catch (ArithmeticException | IllegalArgumentException e) {
        }
        if (z) {
            double doubleValue = bigDecimal.doubleValue();
            if (bigDecimal.stripTrailingZeros().toEngineeringString().equals(BigDecimal.valueOf(doubleValue).toEngineeringString())) {
                messagePacker.packDouble(doubleValue);
                return;
            }
            throw new IllegalArgumentException("MessagePack cannot serialize a BigDecimal that can't be represented as double. " + bigDecimal);
        }
    }

    private void packObject(StackItemForObject stackItemForObject) throws IOException {
        List<String> keys = stackItemForObject.getKeys();
        List<Object> values = stackItemForObject.getValues();
        MessagePacker messagePacker = getMessagePacker();
        messagePacker.packMapHeader(keys.size());
        for (int i = 0; i < keys.size(); i++) {
            messagePacker.packString(keys.get(i));
            packValue(values.get(i));
        }
    }

    private void packValue(Object obj) throws IOException {
        MessagePacker messagePacker = getMessagePacker();
        if (obj == null) {
            messagePacker.packNil();
        } else if (obj instanceof Integer) {
            messagePacker.packInt(((Integer) obj).intValue());
        } else if (obj instanceof ByteBuffer) {
            ByteBuffer byteBuffer = (ByteBuffer) obj;
            int remaining = byteBuffer.remaining();
            if (byteBuffer.hasArray()) {
                messagePacker.packBinaryHeader(remaining);
                messagePacker.writePayload(byteBuffer.array(), byteBuffer.arrayOffset(), remaining);
                return;
            }
            byte[] bArr = new byte[remaining];
            byteBuffer.get(bArr);
            messagePacker.packBinaryHeader(remaining);
            messagePacker.addPayload(bArr);
        } else if (obj instanceof String) {
            messagePacker.packString((String) obj);
        } else if (obj instanceof Float) {
            messagePacker.packFloat(((Float) obj).floatValue());
        } else if (obj instanceof Long) {
            messagePacker.packLong(((Long) obj).longValue());
        } else if (obj instanceof StackItemForObject) {
            packObject((StackItemForObject) obj);
        } else if (obj instanceof StackItemForArray) {
            packArray((StackItemForArray) obj);
        } else if (obj instanceof Double) {
            messagePacker.packDouble(((Double) obj).doubleValue());
        } else if (obj instanceof BigInteger) {
            messagePacker.packBigInteger((BigInteger) obj);
        } else if (obj instanceof BigDecimal) {
            packBigDecimal((BigDecimal) obj);
        } else if (obj instanceof Boolean) {
            messagePacker.packBoolean(((Boolean) obj).booleanValue());
        } else if (obj instanceof MessagePackExtensionType) {
            MessagePackExtensionType messagePackExtensionType = (MessagePackExtensionType) obj;
            byte[] data = messagePackExtensionType.getData();
            messagePacker.packExtensionTypeHeader(messagePackExtensionType.getType(), data.length);
            messagePacker.writePayload(data);
        } else {
            throw new IllegalArgumentException(obj.toString());
        }
    }

    private void popStackAndStoreTheItemAsValue() throws IOException {
        StackItem pop = this.stack.pop();
        if (this.stack.size() > 0) {
            addValueToStackTop(pop);
        } else if (this.rootStackItem == null) {
            this.rootStackItem = pop;
        } else {
            throw new IllegalStateException("rootStackItem is not null");
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    public void _releaseBuffers() {
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase
    public void _verifyValueWrite(String str) throws IOException, JsonGenerationException {
        if (this._writeContext.writeValue() == 5) {
            _reportError("Can not " + str + ", expecting field name");
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            flush();
            if (isEnabled(JsonGenerator.Feature.AUTO_CLOSE_TARGET)) {
                getMessagePacker().close();
            }
        } catch (Throwable th) {
            if (isEnabled(JsonGenerator.Feature.AUTO_CLOSE_TARGET)) {
                getMessagePacker().close();
            }
            throw th;
        }
    }

    @Override // com.fasterxml.jackson.core.base.GeneratorBase, com.fasterxml.jackson.core.JsonGenerator, java.io.Flushable
    public void flush() throws IOException {
        StackItem stackItem = this.rootStackItem;
        if (stackItem != null) {
            if (stackItem instanceof StackItemForObject) {
                packObject((StackItemForObject) stackItem);
            } else if (stackItem instanceof StackItemForArray) {
                packArray((StackItemForArray) stackItem);
            } else {
                throw new IllegalStateException("Unexpected rootStackItem: " + this.rootStackItem);
            }
            this.rootStackItem = null;
            flushMessagePacker();
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBinary(Base64Variant base64Variant, byte[] bArr, int i, int i2) throws IOException, JsonGenerationException {
        addValueToStackTop(ByteBuffer.wrap(bArr, i, i2));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBoolean(boolean z) throws IOException, JsonGenerationException {
        addValueToStackTop(Boolean.valueOf(z));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeEndArray() throws IOException, JsonGenerationException {
        if (!this._writeContext.inArray()) {
            _reportError("Current context not an array but " + this._writeContext.getTypeDesc());
        }
        getStackTopForArray();
        this._writeContext = this._writeContext.getParent();
        popStackAndStoreTheItemAsValue();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeEndObject() throws IOException, JsonGenerationException {
        if (!this._writeContext.inObject()) {
            _reportError("Current context not an object but " + this._writeContext.getTypeDesc());
        }
        StackItemForObject stackTopForObject = getStackTopForObject();
        if (stackTopForObject.getKeys().size() == stackTopForObject.getValues().size()) {
            this._writeContext = this._writeContext.getParent();
            popStackAndStoreTheItemAsValue();
            return;
        }
        throw new IllegalStateException(String.format("objectKeys.size() and objectValues.size() is not same: depth=%d, key=%d, value=%d", Integer.valueOf(this.stack.size()), Integer.valueOf(stackTopForObject.getKeys().size()), Integer.valueOf(stackTopForObject.getValues().size())));
    }

    public void writeExtensionType(MessagePackExtensionType messagePackExtensionType) throws IOException {
        addValueToStackTop(messagePackExtensionType);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(String str) throws IOException, JsonGenerationException {
        addKeyToStackTop(str);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNull() throws IOException, JsonGenerationException {
        addValueToStackTop(null);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(double d) throws IOException, JsonGenerationException {
        addValueToStackTop(Double.valueOf(d));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(float f) throws IOException, JsonGenerationException {
        addValueToStackTop(Float.valueOf(f));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(int i) throws IOException, JsonGenerationException {
        addValueToStackTop(Integer.valueOf(i));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(long j) throws IOException, JsonGenerationException {
        addValueToStackTop(Long.valueOf(j));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(String str) throws IOException, JsonGenerationException, UnsupportedOperationException {
        throw new UnsupportedOperationException("writeNumber(String encodedValue) isn't supported yet");
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(BigDecimal bigDecimal) throws IOException, JsonGenerationException {
        addValueToStackTop(bigDecimal);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(BigInteger bigInteger) throws IOException, JsonGenerationException {
        addValueToStackTop(bigInteger);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(char c) throws IOException, JsonGenerationException {
        addValueToStackTop(String.valueOf(c));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str) throws IOException, JsonGenerationException {
        addValueToStackTop(str);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str, int i, int i2) throws IOException, JsonGenerationException {
        addValueToStackTop(str.substring(0, i2));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(char[] cArr, int i, int i2) throws IOException, JsonGenerationException {
        addValueToStackTop(new String(cArr, i, i2));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRawUTF8String(byte[] bArr, int i, int i2) throws IOException, JsonGenerationException {
        addValueToStackTop(new String(bArr, i, i2, DEFAULT_CHARSET));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeStartArray() throws IOException, JsonGenerationException {
        this._writeContext = this._writeContext.createChildArrayContext();
        this.stack.push(new StackItemForArray());
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeStartObject() throws IOException, JsonGenerationException {
        this._writeContext = this._writeContext.createChildObjectContext();
        this.stack.push(new StackItemForObject());
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(String str) throws IOException, JsonGenerationException {
        addValueToStackTop(str);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(char[] cArr, int i, int i2) throws IOException, JsonGenerationException {
        addValueToStackTop(new String(cArr, i, i2));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeUTF8String(byte[] bArr, int i, int i2) throws IOException, JsonGenerationException {
        addValueToStackTop(new String(bArr, i, i2, DEFAULT_CHARSET));
    }
}
