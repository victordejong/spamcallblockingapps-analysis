package com.criteo.publisher.model.b0;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.net.URI;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/g.class */
public final class g extends com.criteo.publisher.model.b0.a {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/g$a.class */
    static final class a extends j<m> {

        /* renamed from: a  reason: collision with root package name */
        private volatile j<String> f17559a;

        /* renamed from: b  reason: collision with root package name */
        private volatile j<URI> f17560b;

        /* renamed from: c  reason: collision with root package name */
        private volatile j<o> f17561c;

        /* renamed from: d  reason: collision with root package name */
        private final f f17562d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(f fVar) {
            this.f17562d = fVar;
        }

        /* renamed from: a */
        public final m read(JsonReader jsonReader) throws IOException {
            String str = null;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            String str2 = null;
            URI uri = null;
            o oVar = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if ("domain".equals(nextName)) {
                        j<String> jVar = this.f17559a;
                        j<String> jVar2 = jVar;
                        if (jVar == null) {
                            jVar2 = this.f17562d.a(String.class);
                            this.f17559a = jVar2;
                        }
                        str = jVar2.read(jsonReader);
                    } else if ("description".equals(nextName)) {
                        j<String> jVar3 = this.f17559a;
                        j<String> jVar4 = jVar3;
                        if (jVar3 == null) {
                            jVar4 = this.f17562d.a(String.class);
                            this.f17559a = jVar4;
                        }
                        str2 = jVar4.read(jsonReader);
                    } else if ("logoClickUrl".equals(nextName)) {
                        j<URI> jVar5 = this.f17560b;
                        j<URI> jVar6 = jVar5;
                        if (jVar5 == null) {
                            jVar6 = this.f17562d.a(URI.class);
                            this.f17560b = jVar6;
                        }
                        uri = jVar6.read(jsonReader);
                    } else if ("logo".equals(nextName)) {
                        j<o> jVar7 = this.f17561c;
                        j<o> jVar8 = jVar7;
                        if (jVar7 == null) {
                            jVar8 = this.f17562d.a(o.class);
                            this.f17561c = jVar8;
                        }
                        oVar = jVar8.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new g(str, str2, uri, oVar);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, m mVar) throws IOException {
            if (mVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("domain");
            if (mVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar = this.f17559a;
                j<String> jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = this.f17562d.a(String.class);
                    this.f17559a = jVar2;
                }
                jVar2.write(jsonWriter, mVar.b());
            }
            jsonWriter.name("description");
            if (mVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar3 = this.f17559a;
                j<String> jVar4 = jVar3;
                if (jVar3 == null) {
                    jVar4 = this.f17562d.a(String.class);
                    this.f17559a = jVar4;
                }
                jVar4.write(jsonWriter, mVar.a());
            }
            jsonWriter.name("logoClickUrl");
            if (mVar.d() == null) {
                jsonWriter.nullValue();
            } else {
                j<URI> jVar5 = this.f17560b;
                j<URI> jVar6 = jVar5;
                if (jVar5 == null) {
                    jVar6 = this.f17562d.a(URI.class);
                    this.f17560b = jVar6;
                }
                jVar6.write(jsonWriter, mVar.d());
            }
            jsonWriter.name("logo");
            if (mVar.c() == null) {
                jsonWriter.nullValue();
            } else {
                j<o> jVar7 = this.f17561c;
                j<o> jVar8 = jVar7;
                if (jVar7 == null) {
                    jVar8 = this.f17562d.a(o.class);
                    this.f17561c = jVar8;
                }
                jVar8.write(jsonWriter, mVar.c());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(NativeAdvertiser)").toString();
        }
    }

    g(String str, String str2, URI uri, o oVar) {
        super(str, str2, uri, oVar);
    }
}
