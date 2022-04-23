package com.criteo.publisher.model.b0;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.net.URL;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/i.class */
public final class i extends c {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/i$a.class */
    static final class a extends j<o> {

        /* renamed from: a  reason: collision with root package name */
        private volatile j<URL> f17567a;

        /* renamed from: b  reason: collision with root package name */
        private final f f17568b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(f fVar) {
            this.f17568b = fVar;
        }

        /* renamed from: a */
        public final o read(JsonReader jsonReader) throws IOException {
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
                        j<URL> jVar = this.f17567a;
                        j<URL> jVar2 = jVar;
                        if (jVar == null) {
                            jVar2 = this.f17568b.a(URL.class);
                            this.f17567a = jVar2;
                        }
                        url = jVar2.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new i(url);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, o oVar) throws IOException {
            if (oVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("url");
            if (oVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                j<URL> jVar = this.f17567a;
                j<URL> jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = this.f17568b.a(URL.class);
                    this.f17567a = jVar2;
                }
                jVar2.write(jsonWriter, oVar.a());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(NativeImage)").toString();
        }
    }

    i(URL url) {
        super(url);
    }
}
