package com.criteo.publisher.model;

import com.google.gson.f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/j.class */
public final class j extends c {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/j$a.class */
    static final class a extends com.google.gson.j<v> {

        /* renamed from: a  reason: collision with root package name */
        private volatile com.google.gson.j<String> f17606a;

        /* renamed from: b  reason: collision with root package name */
        private volatile com.google.gson.j<Map<String, Object>> f17607b;

        /* renamed from: c  reason: collision with root package name */
        private final f f17608c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(f fVar) {
            this.f17608c = fVar;
        }

        /* renamed from: a */
        public final v read(JsonReader jsonReader) throws IOException {
            String str = null;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            String str2 = null;
            Map<String, Object> map = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if (nextName.equals("cpId")) {
                        com.google.gson.j<String> jVar = this.f17606a;
                        com.google.gson.j<String> jVar2 = jVar;
                        if (jVar == null) {
                            jVar2 = this.f17608c.a(String.class);
                            this.f17606a = jVar2;
                        }
                        str2 = jVar2.read(jsonReader);
                    } else if ("bundleId".equals(nextName)) {
                        com.google.gson.j<String> jVar3 = this.f17606a;
                        com.google.gson.j<String> jVar4 = jVar3;
                        if (jVar3 == null) {
                            jVar4 = this.f17608c.a(String.class);
                            this.f17606a = jVar4;
                        }
                        str = jVar4.read(jsonReader);
                    } else if ("ext".equals(nextName)) {
                        com.google.gson.j<Map<String, Object>> jVar5 = this.f17607b;
                        com.google.gson.j<Map<String, Object>> jVar6 = jVar5;
                        if (jVar5 == null) {
                            jVar6 = this.f17608c.a((com.google.gson.a.a) com.google.gson.a.a.getParameterized(Map.class, String.class, Object.class));
                            this.f17607b = jVar6;
                        }
                        map = jVar6.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new j(str, str2, map);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, v vVar) throws IOException {
            if (vVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("bundleId");
            if (vVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                com.google.gson.j<String> jVar = this.f17606a;
                com.google.gson.j<String> jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = this.f17608c.a(String.class);
                    this.f17606a = jVar2;
                }
                jVar2.write(jsonWriter, vVar.a());
            }
            jsonWriter.name("cpId");
            if (vVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                com.google.gson.j<String> jVar3 = this.f17606a;
                com.google.gson.j<String> jVar4 = jVar3;
                if (jVar3 == null) {
                    jVar4 = this.f17608c.a(String.class);
                    this.f17606a = jVar4;
                }
                jVar4.write(jsonWriter, vVar.b());
            }
            jsonWriter.name("ext");
            if (vVar.c() == null) {
                jsonWriter.nullValue();
            } else {
                com.google.gson.j<Map<String, Object>> jVar5 = this.f17607b;
                com.google.gson.j<Map<String, Object>> jVar6 = jVar5;
                if (jVar5 == null) {
                    jVar6 = this.f17608c.a((com.google.gson.a.a) com.google.gson.a.a.getParameterized(Map.class, String.class, Object.class));
                    this.f17607b = jVar6;
                }
                jVar6.write(jsonWriter, vVar.c());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(Publisher)").toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(String str, String str2, Map<String, Object> map) {
        super(str, str2, map);
    }
}
