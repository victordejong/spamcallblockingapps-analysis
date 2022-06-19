package com.criteo.publisher.model;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Map;
/* renamed from: com.criteo.publisher.model.m */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/m.class */
public final class C8496m extends AbstractC8483f {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.model.m$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/m$a.class */
    public static final class C8497a extends AbstractC16088j<AbstractC8516z> {

        /* renamed from: a */
        private volatile AbstractC16088j<String> f30324a;

        /* renamed from: b */
        private volatile AbstractC16088j<Map<String, Object>> f30325b;

        /* renamed from: c */
        private final C15965f f30326c;

        public C8497a(C15965f c15965f) {
            this.f30326c = c15965f;
        }

        /* renamed from: a */
        public final AbstractC8516z read(JsonReader jsonReader) throws IOException {
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
                        AbstractC16088j<String> abstractC16088j = this.f30324a;
                        AbstractC16088j<String> abstractC16088j2 = abstractC16088j;
                        if (abstractC16088j == null) {
                            abstractC16088j2 = this.f30326c.m7971a(String.class);
                            this.f30324a = abstractC16088j2;
                        }
                        str = abstractC16088j2.read(jsonReader);
                    } else if ("deviceIdType".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j3 = this.f30324a;
                        AbstractC16088j<String> abstractC16088j4 = abstractC16088j3;
                        if (abstractC16088j3 == null) {
                            abstractC16088j4 = this.f30326c.m7971a(String.class);
                            this.f30324a = abstractC16088j4;
                        }
                        str2 = abstractC16088j4.read(jsonReader);
                    } else if ("deviceOs".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j5 = this.f30324a;
                        AbstractC16088j<String> abstractC16088j6 = abstractC16088j5;
                        if (abstractC16088j5 == null) {
                            abstractC16088j6 = this.f30326c.m7971a(String.class);
                            this.f30324a = abstractC16088j6;
                        }
                        str3 = abstractC16088j6.read(jsonReader);
                    } else if ("mopubConsent".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j7 = this.f30324a;
                        AbstractC16088j<String> abstractC16088j8 = abstractC16088j7;
                        if (abstractC16088j7 == null) {
                            abstractC16088j8 = this.f30326c.m7971a(String.class);
                            this.f30324a = abstractC16088j8;
                        }
                        str4 = abstractC16088j8.read(jsonReader);
                    } else if ("uspIab".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j9 = this.f30324a;
                        AbstractC16088j<String> abstractC16088j10 = abstractC16088j9;
                        if (abstractC16088j9 == null) {
                            abstractC16088j10 = this.f30326c.m7971a(String.class);
                            this.f30324a = abstractC16088j10;
                        }
                        str5 = abstractC16088j10.read(jsonReader);
                    } else if ("uspOptout".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j11 = this.f30324a;
                        AbstractC16088j<String> abstractC16088j12 = abstractC16088j11;
                        if (abstractC16088j11 == null) {
                            abstractC16088j12 = this.f30326c.m7971a(String.class);
                            this.f30324a = abstractC16088j12;
                        }
                        str6 = abstractC16088j12.read(jsonReader);
                    } else if ("ext".equals(nextName)) {
                        AbstractC16088j<Map<String, Object>> abstractC16088j13 = this.f30325b;
                        AbstractC16088j<Map<String, Object>> abstractC16088j14 = abstractC16088j13;
                        if (abstractC16088j13 == null) {
                            abstractC16088j14 = this.f30326c.m7977a((C15950a) C15950a.getParameterized(Map.class, String.class, Object.class));
                            this.f30325b = abstractC16088j14;
                        }
                        map = abstractC16088j14.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new C8496m(str, str2, str3, str4, str5, str6, map);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, AbstractC8516z abstractC8516z) throws IOException {
            if (abstractC8516z == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("deviceId");
            if (abstractC8516z.mo25485a() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j = this.f30324a;
                AbstractC16088j<String> abstractC16088j2 = abstractC16088j;
                if (abstractC16088j == null) {
                    abstractC16088j2 = this.f30326c.m7971a(String.class);
                    this.f30324a = abstractC16088j2;
                }
                abstractC16088j2.write(jsonWriter, abstractC8516z.mo25485a());
            }
            jsonWriter.name("deviceIdType");
            if (abstractC8516z.mo25482b() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j3 = this.f30324a;
                AbstractC16088j<String> abstractC16088j4 = abstractC16088j3;
                if (abstractC16088j3 == null) {
                    abstractC16088j4 = this.f30326c.m7971a(String.class);
                    this.f30324a = abstractC16088j4;
                }
                abstractC16088j4.write(jsonWriter, abstractC8516z.mo25482b());
            }
            jsonWriter.name("deviceOs");
            if (abstractC8516z.mo25481c() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j5 = this.f30324a;
                AbstractC16088j<String> abstractC16088j6 = abstractC16088j5;
                if (abstractC16088j5 == null) {
                    abstractC16088j6 = this.f30326c.m7971a(String.class);
                    this.f30324a = abstractC16088j6;
                }
                abstractC16088j6.write(jsonWriter, abstractC8516z.mo25481c());
            }
            jsonWriter.name("mopubConsent");
            if (abstractC8516z.mo25479e() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j7 = this.f30324a;
                AbstractC16088j<String> abstractC16088j8 = abstractC16088j7;
                if (abstractC16088j7 == null) {
                    abstractC16088j8 = this.f30326c.m7971a(String.class);
                    this.f30324a = abstractC16088j8;
                }
                abstractC16088j8.write(jsonWriter, abstractC8516z.mo25479e());
            }
            jsonWriter.name("uspIab");
            if (abstractC8516z.mo25478f() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j9 = this.f30324a;
                AbstractC16088j<String> abstractC16088j10 = abstractC16088j9;
                if (abstractC16088j9 == null) {
                    abstractC16088j10 = this.f30326c.m7971a(String.class);
                    this.f30324a = abstractC16088j10;
                }
                abstractC16088j10.write(jsonWriter, abstractC8516z.mo25478f());
            }
            jsonWriter.name("uspOptout");
            if (abstractC8516z.mo25477g() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j11 = this.f30324a;
                AbstractC16088j<String> abstractC16088j12 = abstractC16088j11;
                if (abstractC16088j11 == null) {
                    abstractC16088j12 = this.f30326c.m7971a(String.class);
                    this.f30324a = abstractC16088j12;
                }
                abstractC16088j12.write(jsonWriter, abstractC8516z.mo25477g());
            }
            jsonWriter.name("ext");
            if (abstractC8516z.mo25480d() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Map<String, Object>> abstractC16088j13 = this.f30325b;
                AbstractC16088j<Map<String, Object>> abstractC16088j14 = abstractC16088j13;
                if (abstractC16088j13 == null) {
                    abstractC16088j14 = this.f30326c.m7977a((C15950a) C15950a.getParameterized(Map.class, String.class, Object.class));
                    this.f30325b = abstractC16088j14;
                }
                abstractC16088j14.write(jsonWriter, abstractC8516z.mo25480d());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(User)").toString();
        }
    }

    public C8496m(String str, String str2, String str3, String str4, String str5, String str6, Map<String, Object> map) {
        super(str, str2, str3, str4, str5, str6, map);
    }
}
