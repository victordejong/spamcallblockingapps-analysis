package com.criteo.publisher.model;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Map;
/* renamed from: com.criteo.publisher.model.j */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/j.class */
public final class C8490j extends AbstractC8480c {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.model.j$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/j$a.class */
    public static final class C8491a extends AbstractC16088j<AbstractC8512v> {

        /* renamed from: a */
        private volatile AbstractC16088j<String> f30313a;

        /* renamed from: b */
        private volatile AbstractC16088j<Map<String, Object>> f30314b;

        /* renamed from: c */
        private final C15965f f30315c;

        public C8491a(C15965f c15965f) {
            this.f30315c = c15965f;
        }

        /* renamed from: a */
        public final AbstractC8512v read(JsonReader jsonReader) throws IOException {
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
                        AbstractC16088j<String> abstractC16088j = this.f30313a;
                        AbstractC16088j<String> abstractC16088j2 = abstractC16088j;
                        if (abstractC16088j == null) {
                            abstractC16088j2 = this.f30315c.m7971a(String.class);
                            this.f30313a = abstractC16088j2;
                        }
                        str2 = abstractC16088j2.read(jsonReader);
                    } else if ("bundleId".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j3 = this.f30313a;
                        AbstractC16088j<String> abstractC16088j4 = abstractC16088j3;
                        if (abstractC16088j3 == null) {
                            abstractC16088j4 = this.f30315c.m7971a(String.class);
                            this.f30313a = abstractC16088j4;
                        }
                        str = abstractC16088j4.read(jsonReader);
                    } else if ("ext".equals(nextName)) {
                        AbstractC16088j<Map<String, Object>> abstractC16088j5 = this.f30314b;
                        AbstractC16088j<Map<String, Object>> abstractC16088j6 = abstractC16088j5;
                        if (abstractC16088j5 == null) {
                            abstractC16088j6 = this.f30315c.m7977a((C15950a) C15950a.getParameterized(Map.class, String.class, Object.class));
                            this.f30314b = abstractC16088j6;
                        }
                        map = abstractC16088j6.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new C8490j(str, str2, map);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, AbstractC8512v abstractC8512v) throws IOException {
            if (abstractC8512v == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("bundleId");
            if (abstractC8512v.mo25512a() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j = this.f30313a;
                AbstractC16088j<String> abstractC16088j2 = abstractC16088j;
                if (abstractC16088j == null) {
                    abstractC16088j2 = this.f30315c.m7971a(String.class);
                    this.f30313a = abstractC16088j2;
                }
                abstractC16088j2.write(jsonWriter, abstractC8512v.mo25512a());
            }
            jsonWriter.name("cpId");
            if (abstractC8512v.mo25509b() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j3 = this.f30313a;
                AbstractC16088j<String> abstractC16088j4 = abstractC16088j3;
                if (abstractC16088j3 == null) {
                    abstractC16088j4 = this.f30315c.m7971a(String.class);
                    this.f30313a = abstractC16088j4;
                }
                abstractC16088j4.write(jsonWriter, abstractC8512v.mo25509b());
            }
            jsonWriter.name("ext");
            if (abstractC8512v.mo25508c() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Map<String, Object>> abstractC16088j5 = this.f30314b;
                AbstractC16088j<Map<String, Object>> abstractC16088j6 = abstractC16088j5;
                if (abstractC16088j5 == null) {
                    abstractC16088j6 = this.f30315c.m7977a((C15950a) C15950a.getParameterized(Map.class, String.class, Object.class));
                    this.f30314b = abstractC16088j6;
                }
                abstractC16088j6.write(jsonWriter, abstractC8512v.mo25508c());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(Publisher)").toString();
        }
    }

    public C8490j(String str, String str2, Map<String, Object> map) {
        super(str, str2, map);
    }
}
