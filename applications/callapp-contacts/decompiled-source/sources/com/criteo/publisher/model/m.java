package com.criteo.publisher.model;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/m.class */
public final class m extends f {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/m$a.class */
    static final class a extends j<z> {

        /* renamed from: a  reason: collision with root package name */
        private volatile j<String> f17616a;

        /* renamed from: b  reason: collision with root package name */
        private volatile j<Map<String, Object>> f17617b;

        /* renamed from: c  reason: collision with root package name */
        private final f f17618c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(f fVar) {
            this.f17618c = fVar;
        }

        /* renamed from: a */
        public final z read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            String str = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            Map<String, Object> map = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if ("deviceId".equals(nextName)) {
                        j<String> jVar = this.f17616a;
                        j<String> jVar2 = jVar;
                        if (jVar == null) {
                            jVar2 = this.f17618c.a(String.class);
                            this.f17616a = jVar2;
                        }
                        str = jVar2.read(jsonReader);
                    } else if ("deviceIdType".equals(nextName)) {
                        j<String> jVar3 = this.f17616a;
                        j<String> jVar4 = jVar3;
                        if (jVar3 == null) {
                            jVar4 = this.f17618c.a(String.class);
                            this.f17616a = jVar4;
                        }
                        str2 = jVar4.read(jsonReader);
                    } else if ("deviceOs".equals(nextName)) {
                        j<String> jVar5 = this.f17616a;
                        j<String> jVar6 = jVar5;
                        if (jVar5 == null) {
                            jVar6 = this.f17618c.a(String.class);
                            this.f17616a = jVar6;
                        }
                        str3 = jVar6.read(jsonReader);
                    } else if ("mopubConsent".equals(nextName)) {
                        j<String> jVar7 = this.f17616a;
                        j<String> jVar8 = jVar7;
                        if (jVar7 == null) {
                            jVar8 = this.f17618c.a(String.class);
                            this.f17616a = jVar8;
                        }
                        str4 = jVar8.read(jsonReader);
                    } else if ("uspIab".equals(nextName)) {
                        j<String> jVar9 = this.f17616a;
                        j<String> jVar10 = jVar9;
                        if (jVar9 == null) {
                            jVar10 = this.f17618c.a(String.class);
                            this.f17616a = jVar10;
                        }
                        str5 = jVar10.read(jsonReader);
                    } else if ("uspOptout".equals(nextName)) {
                        j<String> jVar11 = this.f17616a;
                        j<String> jVar12 = jVar11;
                        if (jVar11 == null) {
                            jVar12 = this.f17618c.a(String.class);
                            this.f17616a = jVar12;
                        }
                        str6 = jVar12.read(jsonReader);
                    } else if ("ext".equals(nextName)) {
                        j<Map<String, Object>> jVar13 = this.f17617b;
                        j<Map<String, Object>> jVar14 = jVar13;
                        if (jVar13 == null) {
                            jVar14 = this.f17618c.a((com.google.gson.a.a) com.google.gson.a.a.getParameterized(Map.class, String.class, Object.class));
                            this.f17617b = jVar14;
                        }
                        map = jVar14.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new m(str, str2, str3, str4, str5, str6, map);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, z zVar) throws IOException {
            if (zVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("deviceId");
            if (zVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar = this.f17616a;
                j<String> jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = this.f17618c.a(String.class);
                    this.f17616a = jVar2;
                }
                jVar2.write(jsonWriter, zVar.a());
            }
            jsonWriter.name("deviceIdType");
            if (zVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar3 = this.f17616a;
                j<String> jVar4 = jVar3;
                if (jVar3 == null) {
                    jVar4 = this.f17618c.a(String.class);
                    this.f17616a = jVar4;
                }
                jVar4.write(jsonWriter, zVar.b());
            }
            jsonWriter.name("deviceOs");
            if (zVar.c() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar5 = this.f17616a;
                j<String> jVar6 = jVar5;
                if (jVar5 == null) {
                    jVar6 = this.f17618c.a(String.class);
                    this.f17616a = jVar6;
                }
                jVar6.write(jsonWriter, zVar.c());
            }
            jsonWriter.name("mopubConsent");
            if (zVar.e() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar7 = this.f17616a;
                j<String> jVar8 = jVar7;
                if (jVar7 == null) {
                    jVar8 = this.f17618c.a(String.class);
                    this.f17616a = jVar8;
                }
                jVar8.write(jsonWriter, zVar.e());
            }
            jsonWriter.name("uspIab");
            if (zVar.f() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar9 = this.f17616a;
                j<String> jVar10 = jVar9;
                if (jVar9 == null) {
                    jVar10 = this.f17618c.a(String.class);
                    this.f17616a = jVar10;
                }
                jVar10.write(jsonWriter, zVar.f());
            }
            jsonWriter.name("uspOptout");
            if (zVar.g() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar11 = this.f17616a;
                j<String> jVar12 = jVar11;
                if (jVar11 == null) {
                    jVar12 = this.f17618c.a(String.class);
                    this.f17616a = jVar12;
                }
                jVar12.write(jsonWriter, zVar.g());
            }
            jsonWriter.name("ext");
            if (zVar.d() == null) {
                jsonWriter.nullValue();
            } else {
                j<Map<String, Object>> jVar13 = this.f17617b;
                j<Map<String, Object>> jVar14 = jVar13;
                if (jVar13 == null) {
                    jVar14 = this.f17618c.a((com.google.gson.a.a) com.google.gson.a.a.getParameterized(Map.class, String.class, Object.class));
                    this.f17617b = jVar14;
                }
                jVar14.write(jsonWriter, zVar.d());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(User)").toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(String str, String str2, String str3, String str4, String str5, String str6, Map<String, Object> map) {
        super(str, str2, str3, str4, str5, str6, map);
    }
}
