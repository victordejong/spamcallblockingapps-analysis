package com.criteo.publisher.model;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/k.class */
public final class k extends d {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/k$a.class */
    static final class a extends j<w> {

        /* renamed from: a  reason: collision with root package name */
        private volatile j<String> f17609a;

        /* renamed from: b  reason: collision with root package name */
        private volatile j<Integer> f17610b;

        /* renamed from: c  reason: collision with root package name */
        private final f f17611c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(f fVar) {
            this.f17611c = fVar;
        }

        /* renamed from: a */
        public final w read(JsonReader jsonReader) throws IOException {
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
            int i = 0;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if (nextName.equals("cpId")) {
                        j<String> jVar = this.f17609a;
                        j<String> jVar2 = jVar;
                        if (jVar == null) {
                            jVar2 = this.f17611c.a(String.class);
                            this.f17609a = jVar2;
                        }
                        str = jVar2.read(jsonReader);
                    } else if (nextName.equals("rtbProfileId")) {
                        j<Integer> jVar3 = this.f17610b;
                        j<Integer> jVar4 = jVar3;
                        if (jVar3 == null) {
                            jVar4 = this.f17611c.a(Integer.class);
                            this.f17610b = jVar4;
                        }
                        i = jVar4.read(jsonReader).intValue();
                    } else if ("bundleId".equals(nextName)) {
                        j<String> jVar5 = this.f17609a;
                        j<String> jVar6 = jVar5;
                        if (jVar5 == null) {
                            jVar6 = this.f17611c.a(String.class);
                            this.f17609a = jVar6;
                        }
                        str2 = jVar6.read(jsonReader);
                    } else if ("sdkVersion".equals(nextName)) {
                        j<String> jVar7 = this.f17609a;
                        j<String> jVar8 = jVar7;
                        if (jVar7 == null) {
                            jVar8 = this.f17611c.a(String.class);
                            this.f17609a = jVar8;
                        }
                        str3 = jVar8.read(jsonReader);
                    } else if ("deviceId".equals(nextName)) {
                        j<String> jVar9 = this.f17609a;
                        j<String> jVar10 = jVar9;
                        if (jVar9 == null) {
                            jVar10 = this.f17611c.a(String.class);
                            this.f17609a = jVar10;
                        }
                        str4 = jVar10.read(jsonReader);
                    } else if ("deviceOs".equals(nextName)) {
                        j<String> jVar11 = this.f17609a;
                        j<String> jVar12 = jVar11;
                        if (jVar11 == null) {
                            jVar12 = this.f17611c.a(String.class);
                            this.f17609a = jVar12;
                        }
                        str5 = jVar12.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new k(str, str2, str3, i, str4, str5);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, w wVar) throws IOException {
            if (wVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("cpId");
            if (wVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar = this.f17609a;
                j<String> jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = this.f17611c.a(String.class);
                    this.f17609a = jVar2;
                }
                jVar2.write(jsonWriter, wVar.b());
            }
            jsonWriter.name("bundleId");
            if (wVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar3 = this.f17609a;
                j<String> jVar4 = jVar3;
                if (jVar3 == null) {
                    jVar4 = this.f17611c.a(String.class);
                    this.f17609a = jVar4;
                }
                jVar4.write(jsonWriter, wVar.a());
            }
            jsonWriter.name("sdkVersion");
            if (wVar.f() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar5 = this.f17609a;
                j<String> jVar6 = jVar5;
                if (jVar5 == null) {
                    jVar6 = this.f17611c.a(String.class);
                    this.f17609a = jVar6;
                }
                jVar6.write(jsonWriter, wVar.f());
            }
            jsonWriter.name("rtbProfileId");
            j<Integer> jVar7 = this.f17610b;
            j<Integer> jVar8 = jVar7;
            if (jVar7 == null) {
                jVar8 = this.f17611c.a(Integer.class);
                this.f17610b = jVar8;
            }
            jVar8.write(jsonWriter, Integer.valueOf(wVar.e()));
            jsonWriter.name("deviceId");
            if (wVar.c() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar9 = this.f17609a;
                j<String> jVar10 = jVar9;
                if (jVar9 == null) {
                    jVar10 = this.f17611c.a(String.class);
                    this.f17609a = jVar10;
                }
                jVar10.write(jsonWriter, wVar.c());
            }
            jsonWriter.name("deviceOs");
            if (wVar.d() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar11 = this.f17609a;
                j<String> jVar12 = jVar11;
                if (jVar11 == null) {
                    jVar12 = this.f17611c.a(String.class);
                    this.f17609a = jVar12;
                }
                jVar12.write(jsonWriter, wVar.d());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(RemoteConfigRequest)").toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(String str, String str2, String str3, int i, String str4, String str5) {
        super(str, str2, str3, i, str4, str5);
    }
}
