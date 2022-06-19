package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/StrictJsonWriter.class */
public interface StrictJsonWriter {
    boolean isTruncated();

    void writeBoolean(String str, boolean z);

    void writeBoolean(boolean z);

    void writeEndArray();

    void writeEndObject();

    void writeName(String str);

    void writeNull();

    void writeNull(String str);

    void writeNumber(String str);

    void writeNumber(String str, String str2);

    void writeRaw(String str);

    void writeRaw(String str, String str2);

    void writeStartArray();

    void writeStartArray(String str);

    void writeStartObject();

    void writeStartObject(String str);

    void writeString(String str);

    void writeString(String str, String str2);
}
