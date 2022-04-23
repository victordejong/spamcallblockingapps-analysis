package com.criteo.publisher.model;

import com.criteo.publisher.k.a.c;
import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/h.class */
public final class h extends com.criteo.publisher.model.a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/h$a.class */
    public static final class a extends j<o> {

        /* renamed from: a  reason: collision with root package name */
        private volatile j<String> f17598a;

        /* renamed from: b  reason: collision with root package name */
        private volatile j<v> f17599b;

        /* renamed from: c  reason: collision with root package name */
        private volatile j<z> f17600c;

        /* renamed from: d  reason: collision with root package name */
        private volatile j<Integer> f17601d;
        private volatile j<c> e;
        private volatile j<List<q>> f;
        private final f g;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(f fVar) {
            this.g = fVar;
        }

        /* renamed from: a */
        public final o read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            String str = null;
            v vVar = null;
            z zVar = null;
            String str2 = null;
            c cVar = null;
            List<q> list = null;
            int i = 0;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if (nextName.equals("gdprConsent")) {
                        j<c> jVar = this.e;
                        j<c> jVar2 = jVar;
                        if (jVar == null) {
                            jVar2 = this.g.a(c.class);
                            this.e = jVar2;
                        }
                        cVar = jVar2.read(jsonReader);
                    } else if ("id".equals(nextName)) {
                        j<String> jVar3 = this.f17598a;
                        j<String> jVar4 = jVar3;
                        if (jVar3 == null) {
                            jVar4 = this.g.a(String.class);
                            this.f17598a = jVar4;
                        }
                        str = jVar4.read(jsonReader);
                    } else if ("publisher".equals(nextName)) {
                        j<v> jVar5 = this.f17599b;
                        j<v> jVar6 = jVar5;
                        if (jVar5 == null) {
                            jVar6 = this.g.a(v.class);
                            this.f17599b = jVar6;
                        }
                        vVar = jVar6.read(jsonReader);
                    } else if ("user".equals(nextName)) {
                        j<z> jVar7 = this.f17600c;
                        j<z> jVar8 = jVar7;
                        if (jVar7 == null) {
                            jVar8 = this.g.a(z.class);
                            this.f17600c = jVar8;
                        }
                        zVar = jVar8.read(jsonReader);
                    } else if ("sdkVersion".equals(nextName)) {
                        j<String> jVar9 = this.f17598a;
                        j<String> jVar10 = jVar9;
                        if (jVar9 == null) {
                            jVar10 = this.g.a(String.class);
                            this.f17598a = jVar10;
                        }
                        str2 = jVar10.read(jsonReader);
                    } else if ("profileId".equals(nextName)) {
                        j<Integer> jVar11 = this.f17601d;
                        j<Integer> jVar12 = jVar11;
                        if (jVar11 == null) {
                            jVar12 = this.g.a(Integer.class);
                            this.f17601d = jVar12;
                        }
                        i = jVar12.read(jsonReader).intValue();
                    } else if ("slots".equals(nextName)) {
                        j<List<q>> jVar13 = this.f;
                        j<List<q>> jVar14 = jVar13;
                        if (jVar13 == null) {
                            jVar14 = this.g.a((com.google.gson.a.a) com.google.gson.a.a.getParameterized(List.class, q.class));
                            this.f = jVar14;
                        }
                        list = jVar14.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new h(str, vVar, zVar, str2, i, cVar, list);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, o oVar) throws IOException {
            if (oVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("id");
            if (oVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar = this.f17598a;
                j<String> jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = this.g.a(String.class);
                    this.f17598a = jVar2;
                }
                jVar2.write(jsonWriter, oVar.b());
            }
            jsonWriter.name("publisher");
            if (oVar.d() == null) {
                jsonWriter.nullValue();
            } else {
                j<v> jVar3 = this.f17599b;
                j<v> jVar4 = jVar3;
                if (jVar3 == null) {
                    jVar4 = this.g.a(v.class);
                    this.f17599b = jVar4;
                }
                jVar4.write(jsonWriter, oVar.d());
            }
            jsonWriter.name("user");
            if (oVar.g() == null) {
                jsonWriter.nullValue();
            } else {
                j<z> jVar5 = this.f17600c;
                j<z> jVar6 = jVar5;
                if (jVar5 == null) {
                    jVar6 = this.g.a(z.class);
                    this.f17600c = jVar6;
                }
                jVar6.write(jsonWriter, oVar.g());
            }
            jsonWriter.name("sdkVersion");
            if (oVar.e() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar7 = this.f17598a;
                j<String> jVar8 = jVar7;
                if (jVar7 == null) {
                    jVar8 = this.g.a(String.class);
                    this.f17598a = jVar8;
                }
                jVar8.write(jsonWriter, oVar.e());
            }
            jsonWriter.name("profileId");
            j<Integer> jVar9 = this.f17601d;
            j<Integer> jVar10 = jVar9;
            if (jVar9 == null) {
                jVar10 = this.g.a(Integer.class);
                this.f17601d = jVar10;
            }
            jVar10.write(jsonWriter, Integer.valueOf(oVar.c()));
            jsonWriter.name("gdprConsent");
            if (oVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                j<c> jVar11 = this.e;
                j<c> jVar12 = jVar11;
                if (jVar11 == null) {
                    jVar12 = this.g.a(c.class);
                    this.e = jVar12;
                }
                jVar12.write(jsonWriter, oVar.a());
            }
            jsonWriter.name("slots");
            if (oVar.f() == null) {
                jsonWriter.nullValue();
            } else {
                j<List<q>> jVar13 = this.f;
                j<List<q>> jVar14 = jVar13;
                if (jVar13 == null) {
                    jVar14 = this.g.a((com.google.gson.a.a) com.google.gson.a.a.getParameterized(List.class, q.class));
                    this.f = jVar14;
                }
                jVar14.write(jsonWriter, oVar.f());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(CdbRequest)").toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(String str, v vVar, z zVar, String str2, int i, c cVar, List<q> list) {
        super(str, vVar, zVar, str2, i, cVar, list);
    }
}
