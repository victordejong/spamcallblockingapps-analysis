package com.privacystar.core.service.network.adapter;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/adapter/ComplaintObjectAdapter.class */
public class ComplaintObjectAdapter extends TypeAdapter<String> {
    @Override // com.google.gson.TypeAdapter
    public String read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.beginObject();
            jsonReader.nextName();
            jsonReader.nextNull();
            return null;
        }
        jsonReader.nextName();
        return jsonReader.nextString();
    }

    public void write(JsonWriter jsonWriter, String str) throws IOException {
        if (str != null) {
            jsonWriter.beginObject();
            jsonWriter.name("answer");
            jsonWriter.value(str);
            jsonWriter.endObject();
        } else if (!jsonWriter.getSerializeNulls()) {
            jsonWriter.setSerializeNulls(true);
            jsonWriter.nullValue();
            jsonWriter.setSerializeNulls(false);
        } else {
            jsonWriter.nullValue();
        }
    }
}
