package org.bson;

import org.bson.AbstractBsonWriter;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;
/* loaded from: classes-dex2jar.jar:org/bson/BsonDocumentWriter.class */
public class BsonDocumentWriter extends AbstractBsonWriter {
    private final BsonDocument document;

    /* renamed from: org.bson.BsonDocumentWriter$1 */
    /* loaded from: classes-dex2jar.jar:org/bson/BsonDocumentWriter$1.class */
    static /* synthetic */ class C25301 {
        static final /* synthetic */ int[] $SwitchMap$org$bson$AbstractBsonWriter$State;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[AbstractBsonWriter.State.values().length];
            $SwitchMap$org$bson$AbstractBsonWriter$State = iArr;
            try {
                iArr[AbstractBsonWriter.State.INITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$bson$AbstractBsonWriter$State[AbstractBsonWriter.State.VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$bson$AbstractBsonWriter$State[AbstractBsonWriter.State.SCOPE_DOCUMENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:org/bson/BsonDocumentWriter$Context.class */
    public class Context extends AbstractBsonWriter.Context {
        private BsonValue container;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        Context() {
            super(null, BsonContextType.TOP_LEVEL);
            BsonDocumentWriter.this = r6;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        Context(BsonValue bsonValue, BsonContextType bsonContextType, Context context) {
            super(context, bsonContextType);
            BsonDocumentWriter.this = r6;
            this.container = bsonValue;
        }

        void add(BsonValue bsonValue) {
            BsonValue bsonValue2 = this.container;
            if (bsonValue2 instanceof BsonArray) {
                ((BsonArray) bsonValue2).add(bsonValue);
            } else {
                ((BsonDocument) bsonValue2).put(BsonDocumentWriter.this.getName(), bsonValue);
            }
        }
    }

    public BsonDocumentWriter(BsonDocument bsonDocument) {
        super(new BsonWriterSettings());
        this.document = bsonDocument;
        setContext(new Context());
    }

    private void write(BsonValue bsonValue) {
        getContext().add(bsonValue);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteBinaryData(BsonBinary bsonBinary) {
        write(bsonBinary);
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteBoolean(boolean z) {
        write(BsonBoolean.valueOf(z));
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteDBPointer(BsonDbPointer bsonDbPointer) {
        write(bsonDbPointer);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteDateTime(long j) {
        write(new BsonDateTime(j));
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteDecimal128(Decimal128 decimal128) {
        write(new BsonDecimal128(decimal128));
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteDouble(double d) {
        write(new BsonDouble(d));
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteEndArray() {
        BsonValue bsonValue = getContext().container;
        setContext(getContext().getParentContext());
        write(bsonValue);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteEndDocument() {
        BsonValue bsonValue = getContext().container;
        setContext(getContext().getParentContext());
        if (getContext().getContextType() == BsonContextType.JAVASCRIPT_WITH_SCOPE) {
            setContext(getContext().getParentContext());
            write(new BsonJavaScriptWithScope(((BsonString) getContext().container).getValue(), (BsonDocument) bsonValue));
        } else if (getContext().getContextType() == BsonContextType.TOP_LEVEL) {
        } else {
            write(bsonValue);
        }
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteInt32(int i) {
        write(new BsonInt32(i));
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteInt64(long j) {
        write(new BsonInt64(j));
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteJavaScript(String str) {
        write(new BsonJavaScript(str));
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteJavaScriptWithScope(String str) {
        setContext(new Context(new BsonString(str), BsonContextType.JAVASCRIPT_WITH_SCOPE, getContext()));
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteMaxKey() {
        write(new BsonMaxKey());
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteMinKey() {
        write(new BsonMinKey());
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteNull() {
        write(BsonNull.VALUE);
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteObjectId(ObjectId objectId) {
        write(new BsonObjectId(objectId));
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteRegularExpression(BsonRegularExpression bsonRegularExpression) {
        write(bsonRegularExpression);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteStartArray() {
        setContext(new Context(new BsonArray(), BsonContextType.ARRAY, getContext()));
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteStartDocument() {
        int i = C25301.$SwitchMap$org$bson$AbstractBsonWriter$State[getState().ordinal()];
        if (i == 1) {
            setContext(new Context(this.document, BsonContextType.DOCUMENT, getContext()));
        } else if (i == 2) {
            setContext(new Context(new BsonDocument(), BsonContextType.DOCUMENT, getContext()));
        } else if (i == 3) {
            setContext(new Context(new BsonDocument(), BsonContextType.SCOPE_DOCUMENT, getContext()));
        } else {
            throw new BsonInvalidOperationException("Unexpected state " + getState());
        }
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteString(String str) {
        write(new BsonString(str));
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteSymbol(String str) {
        write(new BsonSymbol(str));
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteTimestamp(BsonTimestamp bsonTimestamp) {
        write(bsonTimestamp);
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteUndefined() {
        write(new BsonUndefined());
    }

    @Override // org.bson.BsonWriter
    public void flush() {
    }

    @Override // org.bson.AbstractBsonWriter
    public Context getContext() {
        return (Context) super.getContext();
    }

    public BsonDocument getDocument() {
        return this.document;
    }
}
