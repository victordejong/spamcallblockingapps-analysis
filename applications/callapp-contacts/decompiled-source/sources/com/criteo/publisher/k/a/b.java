package com.criteo.publisher.k.a;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/a/b.class */
final class b extends com.criteo.publisher.k.a.a {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/a/b$a.class */
    static final class a extends j<c> {

        /* renamed from: a  reason: collision with root package name */
        private volatile j<String> f17396a;

        /* renamed from: b  reason: collision with root package name */
        private volatile j<Boolean> f17397b;

        /* renamed from: c  reason: collision with root package name */
        private volatile j<Integer> f17398c;

        /* renamed from: d  reason: collision with root package name */
        private final f f17399d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(f fVar) {
            this.f17399d = fVar;
        }

        @Override // com.google.gson.j
        public final /* synthetic */ c read(JsonReader jsonReader) throws IOException {
            String str = null;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            Boolean bool = null;
            Integer num = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if ("consentData".equals(nextName)) {
                        j<String> jVar = this.f17396a;
                        j<String> jVar2 = jVar;
                        if (jVar == null) {
                            jVar2 = this.f17399d.a(String.class);
                            this.f17396a = jVar2;
                        }
                        str = jVar2.read(jsonReader);
                    } else if ("gdprApplies".equals(nextName)) {
                        j<Boolean> jVar3 = this.f17397b;
                        j<Boolean> jVar4 = jVar3;
                        if (jVar3 == null) {
                            jVar4 = this.f17399d.a(Boolean.class);
                            this.f17397b = jVar4;
                        }
                        bool = jVar4.read(jsonReader);
                    } else if ("version".equals(nextName)) {
                        j<Integer> jVar5 = this.f17398c;
                        j<Integer> jVar6 = jVar5;
                        if (jVar5 == null) {
                            jVar6 = this.f17399d.a(Integer.class);
                            this.f17398c = jVar6;
                        }
                        num = jVar6.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new b(str, bool, num);
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(GdprData)").toString();
        }

        @Override // com.google.gson.j
        public final /* synthetic */ void write(JsonWriter jsonWriter, c cVar) throws IOException {
            c cVar2 = cVar;
            if (cVar2 == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("consentData");
            if (cVar2.a() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar = this.f17396a;
                j<String> jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = this.f17399d.a(String.class);
                    this.f17396a = jVar2;
                }
                jVar2.write(jsonWriter, cVar2.a());
            }
            jsonWriter.name("gdprApplies");
            if (cVar2.b() == null) {
                jsonWriter.nullValue();
            } else {
                j<Boolean> jVar3 = this.f17397b;
                j<Boolean> jVar4 = jVar3;
                if (jVar3 == null) {
                    jVar4 = this.f17399d.a(Boolean.class);
                    this.f17397b = jVar4;
                }
                jVar4.write(jsonWriter, cVar2.b());
            }
            jsonWriter.name("version");
            if (cVar2.c() == null) {
                jsonWriter.nullValue();
            } else {
                j<Integer> jVar5 = this.f17398c;
                j<Integer> jVar6 = jVar5;
                if (jVar5 == null) {
                    jVar6 = this.f17399d.a(Integer.class);
                    this.f17398c = jVar6;
                }
                jVar6.write(jsonWriter, cVar2.c());
            }
            jsonWriter.endObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(String str, Boolean bool, Integer num) {
        super(str, bool, num);
    }
}
