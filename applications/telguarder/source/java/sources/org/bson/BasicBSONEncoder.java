package org.bson;

import com.j256.ormlite.field.FieldType;
import java.lang.reflect.Array;
import java.util.Date;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;
import org.bson.AbstractBsonWriter;
import org.bson.p028io.BasicOutputBuffer;
import org.bson.p028io.OutputBuffer;
import org.bson.types.BSONTimestamp;
import org.bson.types.Binary;
import org.bson.types.Code;
import org.bson.types.CodeWScope;
import org.bson.types.Decimal128;
import org.bson.types.MaxKey;
import org.bson.types.MinKey;
import org.bson.types.ObjectId;
import org.bson.types.Symbol;
/* loaded from: classes-dex2jar.jar:org/bson/BasicBSONEncoder.class */
public class BasicBSONEncoder implements BSONEncoder {
    private BsonBinaryWriter bsonWriter;
    private OutputBuffer outputBuffer;

    private boolean isTopLevelDocument() {
        return this.bsonWriter.getContext().getParentContext() == null;
    }

    private static void writeLongToArrayLittleEndian(byte[] bArr, int i, long j) {
        bArr[i] = (byte) (j & 255);
        bArr[i + 1] = (byte) ((j >> 8) & 255);
        bArr[i + 2] = (byte) ((j >> 16) & 255);
        bArr[i + 3] = (byte) ((j >> 24) & 255);
        bArr[i + 4] = (byte) ((j >> 32) & 255);
        bArr[i + 5] = (byte) ((j >> 40) & 255);
        bArr[i + 6] = (byte) ((j >> 48) & 255);
        bArr[i + 7] = (byte) ((j >> 56) & 255);
    }

    protected void _putObjectField(String str, Object obj) {
        if ("_transientFields".equals(str)) {
            return;
        }
        if (str.contains("��")) {
            throw new IllegalArgumentException("Document field names can't have a NULL character. (Bad Key: '" + str + "')");
        }
        if ("$where".equals(str) && (obj instanceof String)) {
            putCode(str, new Code((String) obj));
        }
        Object applyEncodingHooks = BSON.applyEncodingHooks(obj);
        if (applyEncodingHooks == null) {
            putNull(str);
        } else if (applyEncodingHooks instanceof Date) {
            putDate(str, (Date) applyEncodingHooks);
        } else if (applyEncodingHooks instanceof Decimal128) {
            putDecimal128(str, (Decimal128) applyEncodingHooks);
        } else if (applyEncodingHooks instanceof Number) {
            putNumber(str, (Number) applyEncodingHooks);
        } else if (applyEncodingHooks instanceof Character) {
            putString(str, applyEncodingHooks.toString());
        } else if (applyEncodingHooks instanceof String) {
            putString(str, applyEncodingHooks.toString());
        } else if (applyEncodingHooks instanceof ObjectId) {
            putObjectId(str, (ObjectId) applyEncodingHooks);
        } else if (applyEncodingHooks instanceof Boolean) {
            putBoolean(str, (Boolean) applyEncodingHooks);
        } else if (applyEncodingHooks instanceof Pattern) {
            putPattern(str, (Pattern) applyEncodingHooks);
        } else if (applyEncodingHooks instanceof Iterable) {
            putIterable(str, (Iterable) applyEncodingHooks);
        } else if (applyEncodingHooks instanceof BSONObject) {
            putObject(str, (BSONObject) applyEncodingHooks);
        } else if (applyEncodingHooks instanceof Map) {
            putMap(str, (Map) applyEncodingHooks);
        } else if (applyEncodingHooks instanceof byte[]) {
            putBinary(str, (byte[]) applyEncodingHooks);
        } else if (applyEncodingHooks instanceof Binary) {
            putBinary(str, (Binary) applyEncodingHooks);
        } else if (applyEncodingHooks instanceof UUID) {
            putUUID(str, (UUID) applyEncodingHooks);
        } else if (applyEncodingHooks.getClass().isArray()) {
            putArray(str, applyEncodingHooks);
        } else if (applyEncodingHooks instanceof Symbol) {
            putSymbol(str, (Symbol) applyEncodingHooks);
        } else if (applyEncodingHooks instanceof BSONTimestamp) {
            putTimestamp(str, (BSONTimestamp) applyEncodingHooks);
        } else if (applyEncodingHooks instanceof CodeWScope) {
            putCodeWScope(str, (CodeWScope) applyEncodingHooks);
        } else if (applyEncodingHooks instanceof Code) {
            putCode(str, (Code) applyEncodingHooks);
        } else if (applyEncodingHooks instanceof MinKey) {
            putMinKey(str);
        } else if (applyEncodingHooks instanceof MaxKey) {
            putMaxKey(str);
        } else if (putSpecial(str, applyEncodingHooks)) {
        } else {
            throw new IllegalArgumentException("Can't serialize " + applyEncodingHooks.getClass());
        }
    }

    @Override // org.bson.BSONEncoder
    public void done() {
        this.bsonWriter.close();
        this.bsonWriter = null;
    }

    @Override // org.bson.BSONEncoder
    public byte[] encode(BSONObject bSONObject) {
        BasicOutputBuffer basicOutputBuffer = new BasicOutputBuffer();
        set(basicOutputBuffer);
        putObject(bSONObject);
        done();
        return basicOutputBuffer.toByteArray();
    }

    protected BsonBinaryWriter getBsonWriter() {
        return this.bsonWriter;
    }

    protected OutputBuffer getOutputBuffer() {
        return this.outputBuffer;
    }

    protected void putArray(String str, Object obj) {
        float[] fArr;
        putName(str);
        this.bsonWriter.writeStartArray();
        if (obj instanceof int[]) {
            for (int i : (int[]) obj) {
                this.bsonWriter.writeInt32(i);
            }
        } else if (obj instanceof long[]) {
            for (long j : (long[]) obj) {
                this.bsonWriter.writeInt64(j);
            }
        } else if (obj instanceof float[]) {
            int length = ((float[]) obj).length;
            for (int i2 = 0; i2 < length; i2++) {
                this.bsonWriter.writeDouble(fArr[i2]);
            }
        } else if (obj instanceof short[]) {
            for (short s : (short[]) obj) {
                this.bsonWriter.writeInt32(s);
            }
        } else if (obj instanceof byte[]) {
            for (byte b : (byte[]) obj) {
                this.bsonWriter.writeInt32(b);
            }
        } else if (obj instanceof double[]) {
            for (double d : (double[]) obj) {
                this.bsonWriter.writeDouble(d);
            }
        } else if (obj instanceof boolean[]) {
            for (boolean z : (boolean[]) obj) {
                this.bsonWriter.writeBoolean(z);
            }
        } else if (obj instanceof String[]) {
            for (String str2 : (String[]) obj) {
                this.bsonWriter.writeString(str2);
            }
        } else {
            int length2 = Array.getLength(obj);
            for (int i3 = 0; i3 < length2; i3++) {
                _putObjectField(String.valueOf(i3), Array.get(obj, i3));
            }
        }
        this.bsonWriter.writeEndArray();
    }

    protected void putBinary(String str, Binary binary) {
        putName(str);
        this.bsonWriter.writeBinaryData(new BsonBinary(binary.getType(), binary.getData()));
    }

    protected void putBinary(String str, byte[] bArr) {
        putName(str);
        this.bsonWriter.writeBinaryData(new BsonBinary(bArr));
    }

    protected void putBoolean(String str, Boolean bool) {
        putName(str);
        this.bsonWriter.writeBoolean(bool.booleanValue());
    }

    protected void putCode(String str, Code code) {
        putName(str);
        this.bsonWriter.writeJavaScript(code.getCode());
    }

    protected void putCodeWScope(String str, CodeWScope codeWScope) {
        putName(str);
        this.bsonWriter.writeJavaScriptWithScope(codeWScope.getCode());
        putObject(codeWScope.getScope());
    }

    protected void putDate(String str, Date date) {
        putName(str);
        this.bsonWriter.writeDateTime(date.getTime());
    }

    protected void putDecimal128(String str, Decimal128 decimal128) {
        putName(str);
        this.bsonWriter.writeDecimal128(decimal128);
    }

    protected void putIterable(String str, Iterable iterable) {
        putName(str);
        this.bsonWriter.writeStartArray();
        for (Object obj : iterable) {
            _putObjectField(String.valueOf(0), obj);
        }
        this.bsonWriter.writeEndArray();
    }

    protected void putMap(String str, Map map) {
        putName(str);
        this.bsonWriter.writeStartDocument();
        for (Map.Entry entry : map.entrySet()) {
            _putObjectField((String) entry.getKey(), entry.getValue());
        }
        this.bsonWriter.writeEndDocument();
    }

    protected void putMaxKey(String str) {
        putName(str);
        this.bsonWriter.writeMaxKey();
    }

    protected void putMinKey(String str) {
        putName(str);
        this.bsonWriter.writeMinKey();
    }

    protected void putName(String str) {
        if (this.bsonWriter.getState() == AbstractBsonWriter.State.NAME) {
            this.bsonWriter.writeName(str);
        }
    }

    protected void putNull(String str) {
        putName(str);
        this.bsonWriter.writeNull();
    }

    protected void putNumber(String str, Number number) {
        putName(str);
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte) || (number instanceof AtomicInteger)) {
            this.bsonWriter.writeInt32(number.intValue());
        } else if ((number instanceof Long) || (number instanceof AtomicLong)) {
            this.bsonWriter.writeInt64(number.longValue());
        } else if ((number instanceof Float) || (number instanceof Double)) {
            this.bsonWriter.writeDouble(number.doubleValue());
        } else {
            throw new IllegalArgumentException("Can't serialize " + number.getClass());
        }
    }

    protected int putObject(String str, BSONObject bSONObject) {
        putName(str);
        return putObject(bSONObject);
    }

    @Override // org.bson.BSONEncoder
    public int putObject(BSONObject bSONObject) {
        int position = getOutputBuffer().getPosition();
        this.bsonWriter.writeStartDocument();
        if (isTopLevelDocument() && bSONObject.containsField(FieldType.FOREIGN_ID_FIELD_SUFFIX)) {
            _putObjectField(FieldType.FOREIGN_ID_FIELD_SUFFIX, bSONObject.get(FieldType.FOREIGN_ID_FIELD_SUFFIX));
        }
        for (String str : bSONObject.keySet()) {
            if (!isTopLevelDocument() || !str.equals(FieldType.FOREIGN_ID_FIELD_SUFFIX)) {
                _putObjectField(str, bSONObject.get(str));
            }
        }
        this.bsonWriter.writeEndDocument();
        return getOutputBuffer().getPosition() - position;
    }

    protected void putObjectId(String str, ObjectId objectId) {
        putName(str);
        this.bsonWriter.writeObjectId(objectId);
    }

    protected void putPattern(String str, Pattern pattern) {
        putName(str);
        this.bsonWriter.writeRegularExpression(new BsonRegularExpression(pattern.pattern(), BSON.regexFlags(pattern.flags())));
    }

    protected boolean putSpecial(String str, Object obj) {
        return false;
    }

    protected void putString(String str, String str2) {
        putName(str);
        this.bsonWriter.writeString(str2);
    }

    protected void putSymbol(String str, Symbol symbol) {
        putName(str);
        this.bsonWriter.writeSymbol(symbol.getSymbol());
    }

    protected void putTimestamp(String str, BSONTimestamp bSONTimestamp) {
        putName(str);
        this.bsonWriter.writeTimestamp(new BsonTimestamp(bSONTimestamp.getTime(), bSONTimestamp.getInc()));
    }

    protected void putUUID(String str, UUID uuid) {
        putName(str);
        byte[] bArr = new byte[16];
        writeLongToArrayLittleEndian(bArr, 0, uuid.getMostSignificantBits());
        writeLongToArrayLittleEndian(bArr, 8, uuid.getLeastSignificantBits());
        this.bsonWriter.writeBinaryData(new BsonBinary(BsonBinarySubType.UUID_LEGACY, bArr));
    }

    protected void putUndefined(String str) {
        putName(str);
        this.bsonWriter.writeUndefined();
    }

    @Override // org.bson.BSONEncoder
    public void set(OutputBuffer outputBuffer) {
        if (this.bsonWriter == null) {
            this.outputBuffer = outputBuffer;
            this.bsonWriter = new BsonBinaryWriter(outputBuffer);
            return;
        }
        throw new IllegalStateException("Performing another operation at this moment");
    }
}
