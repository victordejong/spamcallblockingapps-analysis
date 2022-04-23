package com.criteo.publisher.model.b0;

import com.google.gson.f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.net.URL;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/j.class */
public final class j extends d {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/j$a.class */
    static final class a extends com.google.gson.j<p> {

        /* renamed from: a  reason: collision with root package name */
        private volatile com.google.gson.j<URL> f17569a;

        /* renamed from: b  reason: collision with root package name */
        private final f f17570b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(f fVar) {
            this.f17570b = fVar;
        }

        /* renamed from: a */
        public final p read(JsonReader jsonReader) throws IOException {
            URL url = null;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if ("url".equals(nextName)) {
                        com.google.gson.j<URL> jVar = this.f17569a;
                        com.google.gson.j<URL> jVar2 = jVar;
                        if (jVar == null) {
                            jVar2 = this.f17570b.a(URL.class);
                            this.f17569a = jVar2;
                        }
                        url = jVar2.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new j(url);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, p pVar) throws IOException {
            if (pVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("url");
            if (pVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                com.google.gson.j<URL> jVar = this.f17569a;
                com.google.gson.j<URL> jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = this.f17570b.a(URL.class);
                    this.f17569a = jVar2;
                }
                jVar2.write(jsonWriter, pVar.a());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(NativeImpressionPixel)").toString();
        }
    }

    j(URL url) {
        super(url);
    }
}
