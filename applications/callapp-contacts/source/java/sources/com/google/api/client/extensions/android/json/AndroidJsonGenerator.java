package com.google.api.client.extensions.android.json;

import android.util.JsonWriter;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonGenerator;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/extensions/android/json/AndroidJsonGenerator.class */
public class AndroidJsonGenerator extends JsonGenerator {
    private final AndroidJsonFactory factory;
    private final JsonWriter writer;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/extensions/android/json/AndroidJsonGenerator$StringNumber.class */
    static final class StringNumber extends Number {
        private static final long serialVersionUID = 1;
        private final String encodedValue;

        StringNumber(String str) {
            this.encodedValue = str;
        }

        @Override // java.lang.Number
        public final double doubleValue() {
            return 0.0d;
        }

        @Override // java.lang.Number
        public final float floatValue() {
            return BitmapDescriptorFactory.HUE_RED;
        }

        @Override // java.lang.Number
        public final int intValue() {
            return 0;
        }

        @Override // java.lang.Number
        public final long longValue() {
            return 0L;
        }

        public final String toString() {
            return this.encodedValue;
        }
    }

    public AndroidJsonGenerator(AndroidJsonFactory androidJsonFactory, JsonWriter jsonWriter) {
        this.factory = androidJsonFactory;
        this.writer = jsonWriter;
        jsonWriter.setLenient(true);
    }

    @Override // com.google.api.client.json.JsonGenerator, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.writer.close();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void enablePrettyPrint() throws IOException {
        this.writer.setIndent("  ");
    }

    @Override // com.google.api.client.json.JsonGenerator, java.io.Flushable
    public void flush() throws IOException {
        this.writer.flush();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public JsonFactory getFactory() {
        return this.factory;
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeBoolean(boolean z) throws IOException {
        this.writer.value(z);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeEndArray() throws IOException {
        this.writer.endArray();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeEndObject() throws IOException {
        this.writer.endObject();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeFieldName(String str) throws IOException {
        this.writer.name(str);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNull() throws IOException {
        this.writer.nullValue();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(double d) throws IOException {
        this.writer.value(d);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(float f) throws IOException {
        this.writer.value(f);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(int i) throws IOException {
        this.writer.value(i);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(long j) throws IOException {
        this.writer.value(j);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(String str) throws IOException {
        this.writer.value(new StringNumber(str));
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(BigDecimal bigDecimal) throws IOException {
        this.writer.value(bigDecimal);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(BigInteger bigInteger) throws IOException {
        this.writer.value(bigInteger);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeStartArray() throws IOException {
        this.writer.beginArray();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeStartObject() throws IOException {
        this.writer.beginObject();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeString(String str) throws IOException {
        this.writer.value(str);
    }
}
