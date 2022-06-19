package org.bson;

import org.bson.AbstractBsonWriter;
import org.bson.p028io.Bits;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;
/* loaded from: classes-dex2jar.jar:org/bson/BSONCallbackAdapter.class */
public class BSONCallbackAdapter extends AbstractBsonWriter {
    private BSONCallback bsonCallback;

    /* loaded from: classes-dex2jar.jar:org/bson/BSONCallbackAdapter$Context.class */
    public class Context extends AbstractBsonWriter.Context {
        private BSONCallback callback;
        private String code;
        private int index;
        private String name;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        Context(Context context, BsonContextType bsonContextType) {
            super(context, bsonContextType);
            BSONCallbackAdapter.this = r6;
        }

        static /* synthetic */ int access$308(Context context) {
            int i = context.index;
            context.index = i + 1;
            return i;
        }

        @Override // org.bson.AbstractBsonWriter.Context
        public Context getParentContext() {
            return (Context) super.getParentContext();
        }
    }

    public BSONCallbackAdapter(BsonWriterSettings bsonWriterSettings, BSONCallback bSONCallback) {
        super(bsonWriterSettings);
        this.bsonCallback = bSONCallback;
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteBinaryData(BsonBinary bsonBinary) {
        if (bsonBinary.getType() == BsonBinarySubType.UUID_LEGACY.getValue()) {
            this.bsonCallback.gotUUID(getName(), Bits.readLong(bsonBinary.getData(), 0), Bits.readLong(bsonBinary.getData(), 8));
        } else {
            this.bsonCallback.gotBinary(getName(), bsonBinary.getType(), bsonBinary.getData());
        }
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteBoolean(boolean z) {
        this.bsonCallback.gotBoolean(getName(), z);
        setState(getNextState());
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteDBPointer(BsonDbPointer bsonDbPointer) {
        this.bsonCallback.gotDBRef(getName(), bsonDbPointer.getNamespace(), bsonDbPointer.getId());
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteDateTime(long j) {
        this.bsonCallback.gotDate(getName(), j);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteDecimal128(Decimal128 decimal128) {
        this.bsonCallback.gotDecimal128(getName(), decimal128);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteDouble(double d) {
        this.bsonCallback.gotDouble(getName(), d);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteEndArray() {
        setContext(getContext().getParentContext());
        this.bsonCallback.arrayDone();
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteEndDocument() {
        BsonContextType contextType = getContext().getContextType();
        setContext(getContext().getParentContext());
        this.bsonCallback.objectDone();
        if (contextType == BsonContextType.SCOPE_DOCUMENT) {
            Object obj = this.bsonCallback.get();
            BSONCallback bSONCallback = getContext().callback;
            this.bsonCallback = bSONCallback;
            bSONCallback.gotCodeWScope(getContext().name, getContext().code, obj);
        }
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteInt32(int i) {
        this.bsonCallback.gotInt(getName(), i);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteInt64(long j) {
        this.bsonCallback.gotLong(getName(), j);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteJavaScript(String str) {
        this.bsonCallback.gotCode(getName(), str);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteJavaScriptWithScope(String str) {
        getContext().callback = this.bsonCallback;
        getContext().code = str;
        getContext().name = getName();
        this.bsonCallback = this.bsonCallback.createBSONCallback();
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteMaxKey() {
        this.bsonCallback.gotMaxKey(getName());
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteMinKey() {
        this.bsonCallback.gotMinKey(getName());
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteNull() {
        this.bsonCallback.gotNull(getName());
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteObjectId(ObjectId objectId) {
        this.bsonCallback.gotObjectId(getName(), objectId);
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteRegularExpression(BsonRegularExpression bsonRegularExpression) {
        this.bsonCallback.gotRegex(getName(), bsonRegularExpression.getPattern(), bsonRegularExpression.getOptions());
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteStartArray() {
        this.bsonCallback.arrayStart(getName());
        setContext(new Context(getContext(), BsonContextType.ARRAY));
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteStartDocument() {
        BsonContextType bsonContextType = getState() == AbstractBsonWriter.State.SCOPE_DOCUMENT ? BsonContextType.SCOPE_DOCUMENT : BsonContextType.DOCUMENT;
        if (getContext() == null || bsonContextType == BsonContextType.SCOPE_DOCUMENT) {
            this.bsonCallback.objectStart();
        } else {
            this.bsonCallback.objectStart(getName());
        }
        setContext(new Context(getContext(), bsonContextType));
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteString(String str) {
        this.bsonCallback.gotString(getName(), str);
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteSymbol(String str) {
        this.bsonCallback.gotSymbol(getName(), str);
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteTimestamp(BsonTimestamp bsonTimestamp) {
        this.bsonCallback.gotTimestamp(getName(), bsonTimestamp.getTime(), bsonTimestamp.getInc());
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteUndefined() {
        this.bsonCallback.gotUndefined(getName());
    }

    @Override // org.bson.BsonWriter
    public void flush() {
    }

    @Override // org.bson.AbstractBsonWriter
    public Context getContext() {
        return (Context) super.getContext();
    }

    @Override // org.bson.AbstractBsonWriter
    public String getName() {
        return getContext().getContextType() == BsonContextType.ARRAY ? Integer.toString(Context.access$308(getContext())) : super.getName();
    }
}
