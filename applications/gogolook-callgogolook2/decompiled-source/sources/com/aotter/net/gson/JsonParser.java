package com.aotter.net.gson;

import com.aotter.net.gson.internal.Streams;
import com.aotter.net.gson.stream.JsonReader;
import com.aotter.net.gson.stream.JsonToken;
import com.aotter.net.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/JsonParser.class */
public final class JsonParser {
    public JsonElement parse(JsonReader jsonReader) {
        boolean isLenient = jsonReader.isLenient();
        jsonReader.setLenient(true);
        try {
            try {
                JsonElement parse = Streams.parse(jsonReader);
                jsonReader.setLenient(isLenient);
                return parse;
            } catch (OutOfMemoryError e) {
                throw new JsonParseException("Failed parsing JSON source: " + jsonReader + " to Json", e);
            } catch (StackOverflowError e2) {
                throw new JsonParseException("Failed parsing JSON source: " + jsonReader + " to Json", e2);
            }
        } catch (Throwable th) {
            jsonReader.setLenient(isLenient);
            throw th;
        }
    }

    public JsonElement parse(Reader reader) {
        try {
            JsonReader jsonReader = new JsonReader(reader);
            JsonElement parse = parse(jsonReader);
            if (!parse.isJsonNull() && jsonReader.peek() != JsonToken.END_DOCUMENT) {
                throw new JsonSyntaxException("Did not consume the entire document.");
            }
            return parse;
        } catch (MalformedJsonException e) {
            throw new JsonSyntaxException(e);
        } catch (IOException e2) {
            throw new JsonIOException(e2);
        } catch (NumberFormatException e3) {
            throw new JsonSyntaxException(e3);
        }
    }

    public JsonElement parse(String str) {
        return parse(new StringReader(str));
    }
}
