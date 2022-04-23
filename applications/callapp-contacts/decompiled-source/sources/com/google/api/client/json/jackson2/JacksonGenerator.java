package com.google.api.client.json.jackson2;

import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonGenerator;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/json/jackson2/JacksonGenerator.class */
final class JacksonGenerator extends JsonGenerator {
    private final JsonFactory factory;
    private final com.fasterxml.jackson.core.JsonGenerator generator;

    /* JADX INFO: Access modifiers changed from: package-private */
    public JacksonGenerator(JsonFactory jsonFactory, com.fasterxml.jackson.core.JsonGenerator jsonGenerator) {
        this.factory = jsonFactory;
        this.generator = jsonGenerator;
    }

    @Override // com.google.api.client.json.JsonGenerator, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.generator.close();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void enablePrettyPrint() throws IOException {
        this.generator.useDefaultPrettyPrinter();
    }

    @Override // com.google.api.client.json.JsonGenerator, java.io.Flushable
    public final void flush() throws IOException {
        this.generator.flush();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final JsonFactory getFactory() {
        return this.factory;
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void writeBoolean(boolean z) throws IOException {
        this.generator.writeBoolean(z);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void writeEndArray() throws IOException {
        this.generator.writeEndArray();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void writeEndObject() throws IOException {
        this.generator.writeEndObject();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void writeFieldName(String str) throws IOException {
        this.generator.writeFieldName(str);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void writeNull() throws IOException {
        this.generator.writeNull();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void writeNumber(double d2) throws IOException {
        this.generator.writeNumber(d2);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void writeNumber(float f) throws IOException {
        this.generator.writeNumber(f);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void writeNumber(int i) throws IOException {
        this.generator.writeNumber(i);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void writeNumber(long j) throws IOException {
        this.generator.writeNumber(j);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void writeNumber(String str) throws IOException {
        this.generator.writeNumber(str);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void writeNumber(BigDecimal bigDecimal) throws IOException {
        this.generator.writeNumber(bigDecimal);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void writeNumber(BigInteger bigInteger) throws IOException {
        this.generator.writeNumber(bigInteger);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void writeStartArray() throws IOException {
        this.generator.writeStartArray();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void writeStartObject() throws IOException {
        this.generator.writeStartObject();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void writeString(String str) throws IOException {
        this.generator.writeString(str);
    }
}
