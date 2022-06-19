package com.criteo.publisher.model;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
/* renamed from: com.criteo.publisher.model.k */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/k.class */
public final class C8492k extends AbstractC8481d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.model.k$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/k$a.class */
    public static final class C8493a extends AbstractC16088j<AbstractC8513w> {

        /* renamed from: a */
        private volatile AbstractC16088j<String> f30316a;

        /* renamed from: b */
        private volatile AbstractC16088j<Integer> f30317b;

        /* renamed from: c */
        private final C15965f f30318c;

        public C8493a(C15965f c15965f) {
            this.f30318c = c15965f;
        }

        /* renamed from: a */
        public final AbstractC8513w read(JsonReader jsonReader) throws IOException {
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
                        AbstractC16088j<String> abstractC16088j = this.f30316a;
                        AbstractC16088j<String> abstractC16088j2 = abstractC16088j;
                        if (abstractC16088j == null) {
                            abstractC16088j2 = this.f30318c.m7971a(String.class);
                            this.f30316a = abstractC16088j2;
                        }
                        str = abstractC16088j2.read(jsonReader);
                    } else if (nextName.equals("rtbProfileId")) {
                        AbstractC16088j<Integer> abstractC16088j3 = this.f30317b;
                        AbstractC16088j<Integer> abstractC16088j4 = abstractC16088j3;
                        if (abstractC16088j3 == null) {
                            abstractC16088j4 = this.f30318c.m7971a(Integer.class);
                            this.f30317b = abstractC16088j4;
                        }
                        i = abstractC16088j4.read(jsonReader).intValue();
                    } else if ("bundleId".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j5 = this.f30316a;
                        AbstractC16088j<String> abstractC16088j6 = abstractC16088j5;
                        if (abstractC16088j5 == null) {
                            abstractC16088j6 = this.f30318c.m7971a(String.class);
                            this.f30316a = abstractC16088j6;
                        }
                        str2 = abstractC16088j6.read(jsonReader);
                    } else if ("sdkVersion".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j7 = this.f30316a;
                        AbstractC16088j<String> abstractC16088j8 = abstractC16088j7;
                        if (abstractC16088j7 == null) {
                            abstractC16088j8 = this.f30318c.m7971a(String.class);
                            this.f30316a = abstractC16088j8;
                        }
                        str3 = abstractC16088j8.read(jsonReader);
                    } else if ("deviceId".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j9 = this.f30316a;
                        AbstractC16088j<String> abstractC16088j10 = abstractC16088j9;
                        if (abstractC16088j9 == null) {
                            abstractC16088j10 = this.f30318c.m7971a(String.class);
                            this.f30316a = abstractC16088j10;
                        }
                        str4 = abstractC16088j10.read(jsonReader);
                    } else if ("deviceOs".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j11 = this.f30316a;
                        AbstractC16088j<String> abstractC16088j12 = abstractC16088j11;
                        if (abstractC16088j11 == null) {
                            abstractC16088j12 = this.f30318c.m7971a(String.class);
                            this.f30316a = abstractC16088j12;
                        }
                        str5 = abstractC16088j12.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new C8492k(str, str2, str3, i, str4, str5);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, AbstractC8513w abstractC8513w) throws IOException {
            if (abstractC8513w == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("cpId");
            if (abstractC8513w.mo25504b() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j = this.f30316a;
                AbstractC16088j<String> abstractC16088j2 = abstractC16088j;
                if (abstractC16088j == null) {
                    abstractC16088j2 = this.f30318c.m7971a(String.class);
                    this.f30316a = abstractC16088j2;
                }
                abstractC16088j2.write(jsonWriter, abstractC8513w.mo25504b());
            }
            jsonWriter.name("bundleId");
            if (abstractC8513w.mo25507a() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j3 = this.f30316a;
                AbstractC16088j<String> abstractC16088j4 = abstractC16088j3;
                if (abstractC16088j3 == null) {
                    abstractC16088j4 = this.f30318c.m7971a(String.class);
                    this.f30316a = abstractC16088j4;
                }
                abstractC16088j4.write(jsonWriter, abstractC8513w.mo25507a());
            }
            jsonWriter.name("sdkVersion");
            if (abstractC8513w.mo25500f() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j5 = this.f30316a;
                AbstractC16088j<String> abstractC16088j6 = abstractC16088j5;
                if (abstractC16088j5 == null) {
                    abstractC16088j6 = this.f30318c.m7971a(String.class);
                    this.f30316a = abstractC16088j6;
                }
                abstractC16088j6.write(jsonWriter, abstractC8513w.mo25500f());
            }
            jsonWriter.name("rtbProfileId");
            AbstractC16088j<Integer> abstractC16088j7 = this.f30317b;
            AbstractC16088j<Integer> abstractC16088j8 = abstractC16088j7;
            if (abstractC16088j7 == null) {
                abstractC16088j8 = this.f30318c.m7971a(Integer.class);
                this.f30317b = abstractC16088j8;
            }
            abstractC16088j8.write(jsonWriter, Integer.valueOf(abstractC8513w.mo25501e()));
            jsonWriter.name("deviceId");
            if (abstractC8513w.mo25503c() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j9 = this.f30316a;
                AbstractC16088j<String> abstractC16088j10 = abstractC16088j9;
                if (abstractC16088j9 == null) {
                    abstractC16088j10 = this.f30318c.m7971a(String.class);
                    this.f30316a = abstractC16088j10;
                }
                abstractC16088j10.write(jsonWriter, abstractC8513w.mo25503c());
            }
            jsonWriter.name("deviceOs");
            if (abstractC8513w.mo25502d() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j11 = this.f30316a;
                AbstractC16088j<String> abstractC16088j12 = abstractC16088j11;
                if (abstractC16088j11 == null) {
                    abstractC16088j12 = this.f30318c.m7971a(String.class);
                    this.f30316a = abstractC16088j12;
                }
                abstractC16088j12.write(jsonWriter, abstractC8513w.mo25502d());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(RemoteConfigRequest)").toString();
        }
    }

    public C8492k(String str, String str2, String str3, int i, String str4, String str5) {
        super(str, str2, str3, i, str4, str5);
    }
}
