package com.criteo.publisher.p246f;

import com.criteo.publisher.p246f.AbstractC8320s;
import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
/* renamed from: com.criteo.publisher.f.i */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/i.class */
final class C8299i extends AbstractC8282a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.f.i$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/i$a.class */
    public static final class C8300a extends AbstractC16088j<AbstractC8320s> {

        /* renamed from: a */
        private volatile AbstractC16088j<Long> f29910a;

        /* renamed from: b */
        private volatile AbstractC16088j<Boolean> f29911b;

        /* renamed from: c */
        private volatile AbstractC16088j<String> f29912c;

        /* renamed from: d */
        private volatile AbstractC16088j<Integer> f29913d;

        /* renamed from: e */
        private final C15965f f29914e;

        public C8300a(C15965f c15965f) {
            this.f29914e = c15965f;
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ AbstractC8320s read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            AbstractC8320s.AbstractC8321a m25871l = AbstractC8320s.m25871l();
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if ("cdbCallStartTimestamp".equals(nextName)) {
                        AbstractC16088j<Long> abstractC16088j = this.f29910a;
                        AbstractC16088j<Long> abstractC16088j2 = abstractC16088j;
                        if (abstractC16088j == null) {
                            abstractC16088j2 = this.f29914e.m7971a(Long.class);
                            this.f29910a = abstractC16088j2;
                        }
                        m25871l.mo25868a(abstractC16088j2.read(jsonReader));
                    } else if ("cdbCallEndTimestamp".equals(nextName)) {
                        AbstractC16088j<Long> abstractC16088j3 = this.f29910a;
                        AbstractC16088j<Long> abstractC16088j4 = abstractC16088j3;
                        if (abstractC16088j3 == null) {
                            abstractC16088j4 = this.f29914e.m7971a(Long.class);
                            this.f29910a = abstractC16088j4;
                        }
                        m25871l.mo25864b(abstractC16088j4.read(jsonReader));
                    } else if ("cdbCallTimeout".equals(nextName)) {
                        AbstractC16088j<Boolean> abstractC16088j5 = this.f29911b;
                        AbstractC16088j<Boolean> abstractC16088j6 = abstractC16088j5;
                        if (abstractC16088j5 == null) {
                            abstractC16088j6 = this.f29914e.m7971a(Boolean.class);
                            this.f29911b = abstractC16088j6;
                        }
                        m25871l.mo25866a(abstractC16088j6.read(jsonReader).booleanValue());
                    } else if ("cachedBidUsed".equals(nextName)) {
                        AbstractC16088j<Boolean> abstractC16088j7 = this.f29911b;
                        AbstractC16088j<Boolean> abstractC16088j8 = abstractC16088j7;
                        if (abstractC16088j7 == null) {
                            abstractC16088j8 = this.f29914e.m7971a(Boolean.class);
                            this.f29911b = abstractC16088j8;
                        }
                        m25871l.mo25862b(abstractC16088j8.read(jsonReader).booleanValue());
                    } else if ("elapsedTimestamp".equals(nextName)) {
                        AbstractC16088j<Long> abstractC16088j9 = this.f29910a;
                        AbstractC16088j<Long> abstractC16088j10 = abstractC16088j9;
                        if (abstractC16088j9 == null) {
                            abstractC16088j10 = this.f29914e.m7971a(Long.class);
                            this.f29910a = abstractC16088j10;
                        }
                        m25871l.mo25861c(abstractC16088j10.read(jsonReader));
                    } else if ("impressionId".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j11 = this.f29912c;
                        AbstractC16088j<String> abstractC16088j12 = abstractC16088j11;
                        if (abstractC16088j11 == null) {
                            abstractC16088j12 = this.f29914e.m7971a(String.class);
                            this.f29912c = abstractC16088j12;
                        }
                        m25871l.mo25867a(abstractC16088j12.read(jsonReader));
                    } else if ("requestGroupId".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j13 = this.f29912c;
                        AbstractC16088j<String> abstractC16088j14 = abstractC16088j13;
                        if (abstractC16088j13 == null) {
                            abstractC16088j14 = this.f29914e.m7971a(String.class);
                            this.f29912c = abstractC16088j14;
                        }
                        m25871l.mo25863b(abstractC16088j14.read(jsonReader));
                    } else if ("zoneId".equals(nextName)) {
                        AbstractC16088j<Integer> abstractC16088j15 = this.f29913d;
                        AbstractC16088j<Integer> abstractC16088j16 = abstractC16088j15;
                        if (abstractC16088j15 == null) {
                            abstractC16088j16 = this.f29914e.m7971a(Integer.class);
                            this.f29913d = abstractC16088j16;
                        }
                        m25871l.mo25869a(abstractC16088j16.read(jsonReader));
                    } else if ("profileId".equals(nextName)) {
                        AbstractC16088j<Integer> abstractC16088j17 = this.f29913d;
                        AbstractC16088j<Integer> abstractC16088j18 = abstractC16088j17;
                        if (abstractC16088j17 == null) {
                            abstractC16088j18 = this.f29914e.m7971a(Integer.class);
                            this.f29913d = abstractC16088j18;
                        }
                        m25871l.mo25865b(abstractC16088j18.read(jsonReader));
                    } else if ("readyToSend".equals(nextName)) {
                        AbstractC16088j<Boolean> abstractC16088j19 = this.f29911b;
                        AbstractC16088j<Boolean> abstractC16088j20 = abstractC16088j19;
                        if (abstractC16088j19 == null) {
                            abstractC16088j20 = this.f29914e.m7971a(Boolean.class);
                            this.f29911b = abstractC16088j20;
                        }
                        m25871l.mo25860c(abstractC16088j20.read(jsonReader).booleanValue());
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return m25871l.mo25870a();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(Metric)").toString();
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ void write(JsonWriter jsonWriter, AbstractC8320s abstractC8320s) throws IOException {
            AbstractC8320s abstractC8320s2 = abstractC8320s;
            if (abstractC8320s2 == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("cdbCallStartTimestamp");
            if (abstractC8320s2.mo25884a() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Long> abstractC16088j = this.f29910a;
                AbstractC16088j<Long> abstractC16088j2 = abstractC16088j;
                if (abstractC16088j == null) {
                    abstractC16088j2 = this.f29914e.m7971a(Long.class);
                    this.f29910a = abstractC16088j2;
                }
                abstractC16088j2.write(jsonWriter, abstractC8320s2.mo25884a());
            }
            jsonWriter.name("cdbCallEndTimestamp");
            if (abstractC8320s2.mo25881b() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Long> abstractC16088j3 = this.f29910a;
                AbstractC16088j<Long> abstractC16088j4 = abstractC16088j3;
                if (abstractC16088j3 == null) {
                    abstractC16088j4 = this.f29914e.m7971a(Long.class);
                    this.f29910a = abstractC16088j4;
                }
                abstractC16088j4.write(jsonWriter, abstractC8320s2.mo25881b());
            }
            jsonWriter.name("cdbCallTimeout");
            AbstractC16088j<Boolean> abstractC16088j5 = this.f29911b;
            AbstractC16088j<Boolean> abstractC16088j6 = abstractC16088j5;
            if (abstractC16088j5 == null) {
                abstractC16088j6 = this.f29914e.m7971a(Boolean.class);
                this.f29911b = abstractC16088j6;
            }
            abstractC16088j6.write(jsonWriter, Boolean.valueOf(abstractC8320s2.mo25880c()));
            jsonWriter.name("cachedBidUsed");
            AbstractC16088j<Boolean> abstractC16088j7 = this.f29911b;
            AbstractC16088j<Boolean> abstractC16088j8 = abstractC16088j7;
            if (abstractC16088j7 == null) {
                abstractC16088j8 = this.f29914e.m7971a(Boolean.class);
                this.f29911b = abstractC16088j8;
            }
            abstractC16088j8.write(jsonWriter, Boolean.valueOf(abstractC8320s2.mo25879d()));
            jsonWriter.name("elapsedTimestamp");
            if (abstractC8320s2.mo25878e() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Long> abstractC16088j9 = this.f29910a;
                AbstractC16088j<Long> abstractC16088j10 = abstractC16088j9;
                if (abstractC16088j9 == null) {
                    abstractC16088j10 = this.f29914e.m7971a(Long.class);
                    this.f29910a = abstractC16088j10;
                }
                abstractC16088j10.write(jsonWriter, abstractC8320s2.mo25878e());
            }
            jsonWriter.name("impressionId");
            if (abstractC8320s2.mo25877f() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j11 = this.f29912c;
                AbstractC16088j<String> abstractC16088j12 = abstractC16088j11;
                if (abstractC16088j11 == null) {
                    abstractC16088j12 = this.f29914e.m7971a(String.class);
                    this.f29912c = abstractC16088j12;
                }
                abstractC16088j12.write(jsonWriter, abstractC8320s2.mo25877f());
            }
            jsonWriter.name("requestGroupId");
            if (abstractC8320s2.mo25876g() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j13 = this.f29912c;
                AbstractC16088j<String> abstractC16088j14 = abstractC16088j13;
                if (abstractC16088j13 == null) {
                    abstractC16088j14 = this.f29914e.m7971a(String.class);
                    this.f29912c = abstractC16088j14;
                }
                abstractC16088j14.write(jsonWriter, abstractC8320s2.mo25876g());
            }
            jsonWriter.name("zoneId");
            if (abstractC8320s2.mo25875h() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Integer> abstractC16088j15 = this.f29913d;
                AbstractC16088j<Integer> abstractC16088j16 = abstractC16088j15;
                if (abstractC16088j15 == null) {
                    abstractC16088j16 = this.f29914e.m7971a(Integer.class);
                    this.f29913d = abstractC16088j16;
                }
                abstractC16088j16.write(jsonWriter, abstractC8320s2.mo25875h());
            }
            jsonWriter.name("profileId");
            if (abstractC8320s2.mo25874i() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Integer> abstractC16088j17 = this.f29913d;
                AbstractC16088j<Integer> abstractC16088j18 = abstractC16088j17;
                if (abstractC16088j17 == null) {
                    abstractC16088j18 = this.f29914e.m7971a(Integer.class);
                    this.f29913d = abstractC16088j18;
                }
                abstractC16088j18.write(jsonWriter, abstractC8320s2.mo25874i());
            }
            jsonWriter.name("readyToSend");
            AbstractC16088j<Boolean> abstractC16088j19 = this.f29911b;
            AbstractC16088j<Boolean> abstractC16088j20 = abstractC16088j19;
            if (abstractC16088j19 == null) {
                abstractC16088j20 = this.f29914e.m7971a(Boolean.class);
                this.f29911b = abstractC16088j20;
            }
            abstractC16088j20.write(jsonWriter, Boolean.valueOf(abstractC8320s2.mo25873j()));
            jsonWriter.endObject();
        }
    }

    public C8299i(Long l, Long l2, boolean z, boolean z2, Long l3, String str, String str2, Integer num, Integer num2, boolean z3) {
        super(l, l2, z, z2, l3, str, str2, num, num2, z3);
    }
}
