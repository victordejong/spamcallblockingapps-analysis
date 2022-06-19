package com.dropbox.core.json;

import com.dropbox.core.util.AbstractC8631a;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/json/JsonArrayReader.class */
public class JsonArrayReader<T, L> extends JsonReader<L> {
    public final AbstractC8631a<T, ? extends L> collector;
    public final JsonReader<? extends T> elementReader;

    public JsonArrayReader(JsonReader<? extends T> jsonReader, AbstractC8631a<T, ? extends L> abstractC8631a) {
        this.elementReader = jsonReader;
        this.collector = abstractC8631a;
    }

    /* renamed from: mk */
    public static <T> JsonArrayReader<T, List<T>> m25257mk(JsonReader<? extends T> jsonReader) {
        return new JsonArrayReader<>(jsonReader, new AbstractC8631a.C8632a());
    }

    /* renamed from: mk */
    public static <T, L> JsonArrayReader<T, L> m25256mk(JsonReader<? extends T> jsonReader, AbstractC8631a<T, ? extends L> abstractC8631a) {
        return new JsonArrayReader<>(jsonReader, abstractC8631a);
    }

    public static <T, L> L read(JsonReader<? extends T> jsonReader, AbstractC8631a<T, ? extends L> abstractC8631a, JsonParser jsonParser) throws JsonReadException, IOException {
        expectArrayStart(jsonParser);
        int i = 0;
        while (!isArrayEnd(jsonParser)) {
            try {
                abstractC8631a.mo25240a(jsonReader.read(jsonParser));
                i++;
            } catch (JsonReadException e) {
                throw e.addArrayContext(i);
            }
        }
        jsonParser.nextToken();
        return abstractC8631a.mo25241a();
    }

    @Override // com.dropbox.core.json.JsonReader
    public L read(JsonParser jsonParser) throws JsonReadException, IOException {
        return (L) read(this.elementReader, this.collector, jsonParser);
    }
}
