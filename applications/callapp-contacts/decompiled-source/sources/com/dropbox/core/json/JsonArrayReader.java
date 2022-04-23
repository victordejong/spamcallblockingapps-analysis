package com.dropbox.core.json;

import com.dropbox.core.util.a;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/json/JsonArrayReader.class */
public class JsonArrayReader<T, L> extends JsonReader<L> {
    public final a<T, ? extends L> collector;
    public final JsonReader<? extends T> elementReader;

    public JsonArrayReader(JsonReader<? extends T> jsonReader, a<T, ? extends L> aVar) {
        this.elementReader = jsonReader;
        this.collector = aVar;
    }

    public static <T> JsonArrayReader<T, List<T>> mk(JsonReader<? extends T> jsonReader) {
        return new JsonArrayReader<>(jsonReader, new a.C0357a());
    }

    public static <T, L> JsonArrayReader<T, L> mk(JsonReader<? extends T> jsonReader, a<T, ? extends L> aVar) {
        return new JsonArrayReader<>(jsonReader, aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T, L> L read(JsonReader<? extends T> jsonReader, a<T, ? extends L> aVar, JsonParser jsonParser) throws JsonReadException, IOException {
        expectArrayStart(jsonParser);
        int i = 0;
        while (!isArrayEnd(jsonParser)) {
            try {
                aVar.a(jsonReader.read(jsonParser));
                i++;
            } catch (JsonReadException e) {
                throw e.addArrayContext(i);
            }
        }
        jsonParser.nextToken();
        return (L) aVar.a();
    }

    @Override // com.dropbox.core.json.JsonReader
    public L read(JsonParser jsonParser) throws JsonReadException, IOException {
        return (L) read(this.elementReader, this.collector, jsonParser);
    }
}
