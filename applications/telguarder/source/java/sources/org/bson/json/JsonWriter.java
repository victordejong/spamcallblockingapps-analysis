package org.bson.json;

import java.io.Writer;
import org.bson.AbstractBsonWriter;
import org.bson.BsonBinary;
import org.bson.BsonContextType;
import org.bson.BsonDbPointer;
import org.bson.BsonRegularExpression;
import org.bson.BsonTimestamp;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;
/* loaded from: classes3-dex2jar.jar:org/bson/json/JsonWriter.class */
public class JsonWriter extends AbstractBsonWriter {
    private final JsonWriterSettings settings;
    private final StrictCharacterStreamJsonWriter strictJsonWriter;

    /* loaded from: classes3-dex2jar.jar:org/bson/json/JsonWriter$Context.class */
    public class Context extends AbstractBsonWriter.Context {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Context(Context context, BsonContextType bsonContextType) {
            super(context, bsonContextType);
            JsonWriter.this = r6;
        }

        @Deprecated
        public Context(JsonWriter jsonWriter, Context context, BsonContextType bsonContextType, String str) {
            this(context, bsonContextType);
        }

        @Override // org.bson.AbstractBsonWriter.Context
        public Context getParentContext() {
            return (Context) super.getParentContext();
        }
    }

    public JsonWriter(Writer writer) {
        this(writer, new JsonWriterSettings());
    }

    public JsonWriter(Writer writer, JsonWriterSettings jsonWriterSettings) {
        super(jsonWriterSettings);
        this.settings = jsonWriterSettings;
        setContext(new Context(null, BsonContextType.TOP_LEVEL));
        this.strictJsonWriter = new StrictCharacterStreamJsonWriter(writer, StrictCharacterStreamJsonWriterSettings.builder().indent(jsonWriterSettings.isIndent()).newLineCharacters(jsonWriterSettings.getNewLineCharacters()).indentCharacters(jsonWriterSettings.getIndentCharacters()).maxLength(jsonWriterSettings.getMaxLength()).build());
    }

    @Override // org.bson.AbstractBsonWriter
    protected boolean abortPipe() {
        return this.strictJsonWriter.isTruncated();
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteBinaryData(BsonBinary bsonBinary) {
        this.settings.getBinaryConverter().convert(bsonBinary, this.strictJsonWriter);
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteBoolean(boolean z) {
        this.settings.getBooleanConverter().convert(Boolean.valueOf(z), this.strictJsonWriter);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteDBPointer(BsonDbPointer bsonDbPointer) {
        if (this.settings.getOutputMode() == JsonMode.EXTENDED) {
            new Converter<BsonDbPointer>() { // from class: org.bson.json.JsonWriter.1
                public void convert(BsonDbPointer bsonDbPointer2, StrictJsonWriter strictJsonWriter) {
                    strictJsonWriter.writeStartObject();
                    strictJsonWriter.writeStartObject("$dbPointer");
                    strictJsonWriter.writeString("$ref", bsonDbPointer2.getNamespace());
                    strictJsonWriter.writeName("$id");
                    JsonWriter.this.doWriteObjectId(bsonDbPointer2.getId());
                    strictJsonWriter.writeEndObject();
                    strictJsonWriter.writeEndObject();
                }
            }.convert(bsonDbPointer, (StrictJsonWriter) this.strictJsonWriter);
        } else {
            new Converter<BsonDbPointer>() { // from class: org.bson.json.JsonWriter.2
                public void convert(BsonDbPointer bsonDbPointer2, StrictJsonWriter strictJsonWriter) {
                    strictJsonWriter.writeStartObject();
                    strictJsonWriter.writeString("$ref", bsonDbPointer2.getNamespace());
                    strictJsonWriter.writeName("$id");
                    JsonWriter.this.doWriteObjectId(bsonDbPointer2.getId());
                    strictJsonWriter.writeEndObject();
                }
            }.convert(bsonDbPointer, (StrictJsonWriter) this.strictJsonWriter);
        }
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteDateTime(long j) {
        this.settings.getDateTimeConverter().convert(Long.valueOf(j), this.strictJsonWriter);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteDecimal128(Decimal128 decimal128) {
        this.settings.getDecimal128Converter().convert(decimal128, this.strictJsonWriter);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteDouble(double d) {
        this.settings.getDoubleConverter().convert(Double.valueOf(d), this.strictJsonWriter);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteEndArray() {
        this.strictJsonWriter.writeEndArray();
        setContext(getContext().getParentContext());
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteEndDocument() {
        this.strictJsonWriter.writeEndObject();
        if (getContext().getContextType() != BsonContextType.SCOPE_DOCUMENT) {
            setContext(getContext().getParentContext());
            return;
        }
        setContext(getContext().getParentContext());
        writeEndDocument();
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteInt32(int i) {
        this.settings.getInt32Converter().convert(Integer.valueOf(i), this.strictJsonWriter);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteInt64(long j) {
        this.settings.getInt64Converter().convert(Long.valueOf(j), this.strictJsonWriter);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteJavaScript(String str) {
        this.settings.getJavaScriptConverter().convert(str, this.strictJsonWriter);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteJavaScriptWithScope(String str) {
        writeStartDocument();
        writeString("$code", str);
        writeName("$scope");
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteMaxKey() {
        this.settings.getMaxKeyConverter().convert(null, this.strictJsonWriter);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteMinKey() {
        this.settings.getMinKeyConverter().convert(null, this.strictJsonWriter);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteName(String str) {
        this.strictJsonWriter.writeName(str);
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteNull() {
        this.settings.getNullConverter().convert(null, this.strictJsonWriter);
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteObjectId(ObjectId objectId) {
        this.settings.getObjectIdConverter().convert(objectId, this.strictJsonWriter);
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteRegularExpression(BsonRegularExpression bsonRegularExpression) {
        this.settings.getRegularExpressionConverter().convert(bsonRegularExpression, this.strictJsonWriter);
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteStartArray() {
        this.strictJsonWriter.writeStartArray();
        setContext(new Context(getContext(), BsonContextType.ARRAY));
    }

    @Override // org.bson.AbstractBsonWriter
    protected void doWriteStartDocument() {
        this.strictJsonWriter.writeStartObject();
        setContext(new Context(getContext(), getState() == AbstractBsonWriter.State.SCOPE_DOCUMENT ? BsonContextType.SCOPE_DOCUMENT : BsonContextType.DOCUMENT));
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteString(String str) {
        this.settings.getStringConverter().convert(str, this.strictJsonWriter);
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteSymbol(String str) {
        this.settings.getSymbolConverter().convert(str, this.strictJsonWriter);
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteTimestamp(BsonTimestamp bsonTimestamp) {
        this.settings.getTimestampConverter().convert(bsonTimestamp, this.strictJsonWriter);
    }

    @Override // org.bson.AbstractBsonWriter
    public void doWriteUndefined() {
        this.settings.getUndefinedConverter().convert(null, this.strictJsonWriter);
    }

    @Override // org.bson.BsonWriter
    public void flush() {
        this.strictJsonWriter.flush();
    }

    @Override // org.bson.AbstractBsonWriter
    public Context getContext() {
        return (Context) super.getContext();
    }

    public Writer getWriter() {
        return this.strictJsonWriter.getWriter();
    }

    public boolean isTruncated() {
        return this.strictJsonWriter.isTruncated();
    }
}
