package org.bson;

import java.util.Arrays;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;
/* loaded from: classes-dex2jar.jar:org/bson/AbstractBsonReader.class */
public abstract class AbstractBsonReader implements BsonReader {
    private boolean closed;
    private Context context;
    private BsonType currentBsonType;
    private String currentName;
    private State state = State.INITIAL;

    /* renamed from: org.bson.AbstractBsonReader$1 */
    /* loaded from: classes-dex2jar.jar:org/bson/AbstractBsonReader$1.class */
    public static /* synthetic */ class C25241 {
        static final /* synthetic */ int[] $SwitchMap$org$bson$BsonContextType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[BsonContextType.values().length];
            $SwitchMap$org$bson$BsonContextType = iArr;
            try {
                iArr[BsonContextType.ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$bson$BsonContextType[BsonContextType.DOCUMENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$bson$BsonContextType[BsonContextType.SCOPE_DOCUMENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$bson$BsonContextType[BsonContextType.TOP_LEVEL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:org/bson/AbstractBsonReader$Context.class */
    public abstract class Context {
        private final BsonContextType contextType;
        private final Context parentContext;

        public Context(Context context, BsonContextType bsonContextType) {
            AbstractBsonReader.this = r4;
            this.parentContext = context;
            this.contextType = bsonContextType;
        }

        public BsonContextType getContextType() {
            return this.contextType;
        }

        public Context getParentContext() {
            return this.parentContext;
        }
    }

    /* loaded from: classes-dex2jar.jar:org/bson/AbstractBsonReader$Mark.class */
    public class Mark implements BsonReaderMark {
        private final BsonContextType contextType;
        private final BsonType currentBsonType;
        private final String currentName;
        private final Context parentContext;
        private final State state;

        public Mark() {
            AbstractBsonReader.this = r4;
            this.state = r4.state;
            this.parentContext = r4.context.parentContext;
            this.contextType = r4.context.contextType;
            this.currentBsonType = r4.currentBsonType;
            this.currentName = r4.currentName;
        }

        public BsonContextType getContextType() {
            return this.contextType;
        }

        public Context getParentContext() {
            return this.parentContext;
        }

        @Override // org.bson.BsonReaderMark
        public void reset() {
            AbstractBsonReader.this.state = this.state;
            AbstractBsonReader.this.currentBsonType = this.currentBsonType;
            AbstractBsonReader.this.currentName = this.currentName;
        }
    }

    /* loaded from: classes-dex2jar.jar:org/bson/AbstractBsonReader$State.class */
    public enum State {
        INITIAL,
        TYPE,
        NAME,
        VALUE,
        SCOPE_DOCUMENT,
        END_OF_DOCUMENT,
        END_OF_ARRAY,
        DONE,
        CLOSED
    }

    private void setStateOnEnd() {
        int i = C25241.$SwitchMap$org$bson$BsonContextType[getContext().getContextType().ordinal()];
        if (i == 1 || i == 2) {
            setState(State.TYPE);
        } else if (i != 4) {
            throw new BSONException(String.format("Unexpected ContextType %s.", getContext().getContextType()));
        } else {
            setState(State.DONE);
        }
    }

    protected void checkPreconditions(String str, BsonType bsonType) {
        if (!isClosed()) {
            verifyBSONType(str, bsonType);
            return;
        }
        throw new IllegalStateException("BsonWriter is closed");
    }

    @Override // org.bson.BsonReader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.closed = true;
    }

    protected abstract int doPeekBinarySize();

    protected abstract byte doPeekBinarySubType();

    protected abstract BsonBinary doReadBinaryData();

    protected abstract boolean doReadBoolean();

    protected abstract BsonDbPointer doReadDBPointer();

    protected abstract long doReadDateTime();

    protected abstract Decimal128 doReadDecimal128();

    protected abstract double doReadDouble();

    protected abstract void doReadEndArray();

    protected abstract void doReadEndDocument();

    protected abstract int doReadInt32();

    protected abstract long doReadInt64();

    protected abstract String doReadJavaScript();

    protected abstract String doReadJavaScriptWithScope();

    protected abstract void doReadMaxKey();

    protected abstract void doReadMinKey();

    protected abstract void doReadNull();

    protected abstract ObjectId doReadObjectId();

    protected abstract BsonRegularExpression doReadRegularExpression();

    protected abstract void doReadStartArray();

    protected abstract void doReadStartDocument();

    protected abstract String doReadString();

    protected abstract String doReadSymbol();

    protected abstract BsonTimestamp doReadTimestamp();

    protected abstract void doReadUndefined();

    protected abstract void doSkipName();

    protected abstract void doSkipValue();

    public Context getContext() {
        return this.context;
    }

    @Override // org.bson.BsonReader
    public BsonType getCurrentBsonType() {
        return this.currentBsonType;
    }

    @Override // org.bson.BsonReader
    public String getCurrentName() {
        if (this.state != State.VALUE) {
            throwInvalidState("getCurrentName", State.VALUE);
        }
        return this.currentName;
    }

    protected State getNextState() {
        int i = C25241.$SwitchMap$org$bson$BsonContextType[this.context.getContextType().ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return State.TYPE;
        }
        if (i != 4) {
            throw new BSONException(String.format("Unexpected ContextType %s.", this.context.getContextType()));
        }
        return State.DONE;
    }

    public State getState() {
        return this.state;
    }

    public boolean isClosed() {
        return this.closed;
    }

    @Override // org.bson.BsonReader
    public int peekBinarySize() {
        checkPreconditions("readBinaryData", BsonType.BINARY);
        return doPeekBinarySize();
    }

    @Override // org.bson.BsonReader
    public byte peekBinarySubType() {
        checkPreconditions("readBinaryData", BsonType.BINARY);
        return doPeekBinarySubType();
    }

    @Override // org.bson.BsonReader
    public BsonBinary readBinaryData() {
        checkPreconditions("readBinaryData", BsonType.BINARY);
        setState(getNextState());
        return doReadBinaryData();
    }

    @Override // org.bson.BsonReader
    public BsonBinary readBinaryData(String str) {
        verifyName(str);
        return readBinaryData();
    }

    @Override // org.bson.BsonReader
    public boolean readBoolean() {
        checkPreconditions("readBoolean", BsonType.BOOLEAN);
        setState(getNextState());
        return doReadBoolean();
    }

    @Override // org.bson.BsonReader
    public boolean readBoolean(String str) {
        verifyName(str);
        return readBoolean();
    }

    @Override // org.bson.BsonReader
    public abstract BsonType readBsonType();

    @Override // org.bson.BsonReader
    public BsonDbPointer readDBPointer() {
        checkPreconditions("readDBPointer", BsonType.DB_POINTER);
        setState(getNextState());
        return doReadDBPointer();
    }

    @Override // org.bson.BsonReader
    public BsonDbPointer readDBPointer(String str) {
        verifyName(str);
        return readDBPointer();
    }

    @Override // org.bson.BsonReader
    public long readDateTime() {
        checkPreconditions("readDateTime", BsonType.DATE_TIME);
        setState(getNextState());
        return doReadDateTime();
    }

    @Override // org.bson.BsonReader
    public long readDateTime(String str) {
        verifyName(str);
        return readDateTime();
    }

    @Override // org.bson.BsonReader
    public Decimal128 readDecimal128() {
        checkPreconditions("readDecimal", BsonType.DECIMAL128);
        setState(getNextState());
        return doReadDecimal128();
    }

    @Override // org.bson.BsonReader
    public Decimal128 readDecimal128(String str) {
        verifyName(str);
        return readDecimal128();
    }

    @Override // org.bson.BsonReader
    public double readDouble() {
        checkPreconditions("readDouble", BsonType.DOUBLE);
        setState(getNextState());
        return doReadDouble();
    }

    @Override // org.bson.BsonReader
    public double readDouble(String str) {
        verifyName(str);
        return readDouble();
    }

    @Override // org.bson.BsonReader
    public void readEndArray() {
        if (!isClosed()) {
            if (getContext().getContextType() != BsonContextType.ARRAY) {
                throwInvalidContextType("readEndArray", getContext().getContextType(), BsonContextType.ARRAY);
            }
            if (getState() == State.TYPE) {
                readBsonType();
            }
            if (getState() != State.END_OF_ARRAY) {
                throwInvalidState("ReadEndArray", State.END_OF_ARRAY);
            }
            doReadEndArray();
            setStateOnEnd();
            return;
        }
        throw new IllegalStateException("BSONBinaryWriter");
    }

    @Override // org.bson.BsonReader
    public void readEndDocument() {
        if (!isClosed()) {
            if (getContext().getContextType() != BsonContextType.DOCUMENT && getContext().getContextType() != BsonContextType.SCOPE_DOCUMENT) {
                throwInvalidContextType("readEndDocument", getContext().getContextType(), BsonContextType.DOCUMENT, BsonContextType.SCOPE_DOCUMENT);
            }
            if (getState() == State.TYPE) {
                readBsonType();
            }
            if (getState() != State.END_OF_DOCUMENT) {
                throwInvalidState("readEndDocument", State.END_OF_DOCUMENT);
            }
            doReadEndDocument();
            setStateOnEnd();
            return;
        }
        throw new IllegalStateException("BSONBinaryWriter");
    }

    @Override // org.bson.BsonReader
    public int readInt32() {
        checkPreconditions("readInt32", BsonType.INT32);
        setState(getNextState());
        return doReadInt32();
    }

    @Override // org.bson.BsonReader
    public int readInt32(String str) {
        verifyName(str);
        return readInt32();
    }

    @Override // org.bson.BsonReader
    public long readInt64() {
        checkPreconditions("readInt64", BsonType.INT64);
        setState(getNextState());
        return doReadInt64();
    }

    @Override // org.bson.BsonReader
    public long readInt64(String str) {
        verifyName(str);
        return readInt64();
    }

    @Override // org.bson.BsonReader
    public String readJavaScript() {
        checkPreconditions("readJavaScript", BsonType.JAVASCRIPT);
        setState(getNextState());
        return doReadJavaScript();
    }

    @Override // org.bson.BsonReader
    public String readJavaScript(String str) {
        verifyName(str);
        return readJavaScript();
    }

    @Override // org.bson.BsonReader
    public String readJavaScriptWithScope() {
        checkPreconditions("readJavaScriptWithScope", BsonType.JAVASCRIPT_WITH_SCOPE);
        setState(State.SCOPE_DOCUMENT);
        return doReadJavaScriptWithScope();
    }

    @Override // org.bson.BsonReader
    public String readJavaScriptWithScope(String str) {
        verifyName(str);
        return readJavaScriptWithScope();
    }

    @Override // org.bson.BsonReader
    public void readMaxKey() {
        checkPreconditions("readMaxKey", BsonType.MAX_KEY);
        setState(getNextState());
        doReadMaxKey();
    }

    @Override // org.bson.BsonReader
    public void readMaxKey(String str) {
        verifyName(str);
        readMaxKey();
    }

    @Override // org.bson.BsonReader
    public void readMinKey() {
        checkPreconditions("readMinKey", BsonType.MIN_KEY);
        setState(getNextState());
        doReadMinKey();
    }

    @Override // org.bson.BsonReader
    public void readMinKey(String str) {
        verifyName(str);
        readMinKey();
    }

    @Override // org.bson.BsonReader
    public String readName() {
        if (this.state == State.TYPE) {
            readBsonType();
        }
        if (this.state != State.NAME) {
            throwInvalidState("readName", State.NAME);
        }
        this.state = State.VALUE;
        return this.currentName;
    }

    @Override // org.bson.BsonReader
    public void readName(String str) {
        verifyName(str);
    }

    @Override // org.bson.BsonReader
    public void readNull() {
        checkPreconditions("readNull", BsonType.NULL);
        setState(getNextState());
        doReadNull();
    }

    @Override // org.bson.BsonReader
    public void readNull(String str) {
        verifyName(str);
        readNull();
    }

    @Override // org.bson.BsonReader
    public ObjectId readObjectId() {
        checkPreconditions("readObjectId", BsonType.OBJECT_ID);
        setState(getNextState());
        return doReadObjectId();
    }

    @Override // org.bson.BsonReader
    public ObjectId readObjectId(String str) {
        verifyName(str);
        return readObjectId();
    }

    @Override // org.bson.BsonReader
    public BsonRegularExpression readRegularExpression() {
        checkPreconditions("readRegularExpression", BsonType.REGULAR_EXPRESSION);
        setState(getNextState());
        return doReadRegularExpression();
    }

    @Override // org.bson.BsonReader
    public BsonRegularExpression readRegularExpression(String str) {
        verifyName(str);
        return readRegularExpression();
    }

    @Override // org.bson.BsonReader
    public void readStartArray() {
        checkPreconditions("readStartArray", BsonType.ARRAY);
        doReadStartArray();
        setState(State.TYPE);
    }

    @Override // org.bson.BsonReader
    public void readStartDocument() {
        checkPreconditions("readStartDocument", BsonType.DOCUMENT);
        doReadStartDocument();
        setState(State.TYPE);
    }

    @Override // org.bson.BsonReader
    public String readString() {
        checkPreconditions("readString", BsonType.STRING);
        setState(getNextState());
        return doReadString();
    }

    @Override // org.bson.BsonReader
    public String readString(String str) {
        verifyName(str);
        return readString();
    }

    @Override // org.bson.BsonReader
    public String readSymbol() {
        checkPreconditions("readSymbol", BsonType.SYMBOL);
        setState(getNextState());
        return doReadSymbol();
    }

    @Override // org.bson.BsonReader
    public String readSymbol(String str) {
        verifyName(str);
        return readSymbol();
    }

    @Override // org.bson.BsonReader
    public BsonTimestamp readTimestamp() {
        checkPreconditions("readTimestamp", BsonType.TIMESTAMP);
        setState(getNextState());
        return doReadTimestamp();
    }

    @Override // org.bson.BsonReader
    public BsonTimestamp readTimestamp(String str) {
        verifyName(str);
        return readTimestamp();
    }

    @Override // org.bson.BsonReader
    public void readUndefined() {
        checkPreconditions("readUndefined", BsonType.UNDEFINED);
        setState(getNextState());
        doReadUndefined();
    }

    @Override // org.bson.BsonReader
    public void readUndefined(String str) {
        verifyName(str);
        readUndefined();
    }

    public void setContext(Context context) {
        this.context = context;
    }

    public void setCurrentBsonType(BsonType bsonType) {
        this.currentBsonType = bsonType;
    }

    public void setCurrentName(String str) {
        this.currentName = str;
    }

    public void setState(State state) {
        this.state = state;
    }

    @Override // org.bson.BsonReader
    public void skipName() {
        if (!isClosed()) {
            if (getState() != State.NAME) {
                throwInvalidState("skipName", State.NAME);
            }
            setState(State.VALUE);
            doSkipName();
            return;
        }
        throw new IllegalStateException("This instance has been closed");
    }

    @Override // org.bson.BsonReader
    public void skipValue() {
        if (!isClosed()) {
            if (getState() != State.VALUE) {
                throwInvalidState("skipValue", State.VALUE);
            }
            doSkipValue();
            setState(State.TYPE);
            return;
        }
        throw new IllegalStateException("BSONBinaryWriter");
    }

    protected void throwInvalidContextType(String str, BsonContextType bsonContextType, BsonContextType... bsonContextTypeArr) {
        throw new BsonInvalidOperationException(String.format("%s can only be called when ContextType is %s, not when ContextType is %s.", str, StringUtils.join(" or ", Arrays.asList(bsonContextTypeArr)), bsonContextType));
    }

    public void throwInvalidState(String str, State... stateArr) {
        throw new BsonInvalidOperationException(String.format("%s can only be called when State is %s, not when State is %s.", str, StringUtils.join(" or ", Arrays.asList(stateArr)), this.state));
    }

    protected void verifyBSONType(String str, BsonType bsonType) {
        if (this.state == State.INITIAL || this.state == State.SCOPE_DOCUMENT || this.state == State.TYPE) {
            readBsonType();
        }
        if (this.state == State.NAME) {
            skipName();
        }
        if (this.state != State.VALUE) {
            throwInvalidState(str, State.VALUE);
        }
        if (this.currentBsonType == bsonType) {
            return;
        }
        throw new BsonInvalidOperationException(String.format("%s can only be called when CurrentBSONType is %s, not when CurrentBSONType is %s.", str, bsonType, this.currentBsonType));
    }

    protected void verifyName(String str) {
        readBsonType();
        String readName = readName();
        if (readName.equals(str)) {
            return;
        }
        throw new BsonSerializationException(String.format("Expected element name to be '%s', not '%s'.", str, readName));
    }
}
