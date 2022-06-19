package com.criteo.publisher.model;

import com.criteo.publisher.logging.RemoteLogRecords;
import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
/* renamed from: com.criteo.publisher.model.l */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/l.class */
public final class C8494l extends AbstractC8482e {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.model.l$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/l$a.class */
    public static final class C8495a extends AbstractC16088j<AbstractC8515y> {

        /* renamed from: a */
        private volatile AbstractC16088j<Boolean> f30319a;

        /* renamed from: b */
        private volatile AbstractC16088j<String> f30320b;

        /* renamed from: c */
        private volatile AbstractC16088j<Integer> f30321c;

        /* renamed from: d */
        private volatile AbstractC16088j<RemoteLogRecords.RemoteLogLevel> f30322d;

        /* renamed from: e */
        private final C15965f f30323e;

        public C8495a(C15965f c15965f) {
            this.f30323e = c15965f;
        }

        /* renamed from: a */
        public final AbstractC8515y read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            Boolean bool = null;
            String str = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            Boolean bool2 = null;
            Boolean bool3 = null;
            Integer num = null;
            Boolean bool4 = null;
            RemoteLogRecords.RemoteLogLevel remoteLogLevel = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() != JsonToken.NULL) {
                    nextName.hashCode();
                    boolean z = true;
                    switch (nextName.hashCode()) {
                        case -648432651:
                            if (nextName.equals("AndroidAdTagDataMode")) {
                                z = false;
                                break;
                            }
                            break;
                        case 28088106:
                            if (nextName.equals("AndroidAdTagUrlMode")) {
                                z = true;
                                break;
                            }
                            break;
                        case 1373006778:
                            if (nextName.equals("AndroidAdTagDataMacro")) {
                                z = true;
                                break;
                            }
                            break;
                        case 1395208240:
                            if (nextName.equals("AndroidDisplayUrlMacro")) {
                                z = true;
                                break;
                            }
                            break;
                    }
                    switch (z) {
                        case false:
                            AbstractC16088j<String> abstractC16088j = this.f30320b;
                            AbstractC16088j<String> abstractC16088j2 = abstractC16088j;
                            if (abstractC16088j == null) {
                                abstractC16088j2 = this.f30323e.m7971a(String.class);
                                this.f30320b = abstractC16088j2;
                            }
                            str4 = abstractC16088j2.read(jsonReader);
                            continue;
                        case true:
                            AbstractC16088j<String> abstractC16088j3 = this.f30320b;
                            AbstractC16088j<String> abstractC16088j4 = abstractC16088j3;
                            if (abstractC16088j3 == null) {
                                abstractC16088j4 = this.f30323e.m7971a(String.class);
                                this.f30320b = abstractC16088j4;
                            }
                            str2 = abstractC16088j4.read(jsonReader);
                            continue;
                        case true:
                            AbstractC16088j<String> abstractC16088j5 = this.f30320b;
                            AbstractC16088j<String> abstractC16088j6 = abstractC16088j5;
                            if (abstractC16088j5 == null) {
                                abstractC16088j6 = this.f30323e.m7971a(String.class);
                                this.f30320b = abstractC16088j6;
                            }
                            str3 = abstractC16088j6.read(jsonReader);
                            continue;
                        case true:
                            AbstractC16088j<String> abstractC16088j7 = this.f30320b;
                            AbstractC16088j<String> abstractC16088j8 = abstractC16088j7;
                            if (abstractC16088j7 == null) {
                                abstractC16088j8 = this.f30323e.m7971a(String.class);
                                this.f30320b = abstractC16088j8;
                            }
                            str = abstractC16088j8.read(jsonReader);
                            continue;
                        default:
                            if (!"killSwitch".equals(nextName)) {
                                if (!"csmEnabled".equals(nextName)) {
                                    if (!"liveBiddingEnabled".equals(nextName)) {
                                        if (!"liveBiddingTimeBudgetInMillis".equals(nextName)) {
                                            if (!"prefetchOnInitEnabled".equals(nextName)) {
                                                if (!"remoteLogLevel".equals(nextName)) {
                                                    jsonReader.skipValue();
                                                    break;
                                                } else {
                                                    AbstractC16088j<RemoteLogRecords.RemoteLogLevel> abstractC16088j9 = this.f30322d;
                                                    AbstractC16088j<RemoteLogRecords.RemoteLogLevel> abstractC16088j10 = abstractC16088j9;
                                                    if (abstractC16088j9 == null) {
                                                        abstractC16088j10 = this.f30323e.m7971a(RemoteLogRecords.RemoteLogLevel.class);
                                                        this.f30322d = abstractC16088j10;
                                                    }
                                                    remoteLogLevel = abstractC16088j10.read(jsonReader);
                                                    break;
                                                }
                                            } else {
                                                AbstractC16088j<Boolean> abstractC16088j11 = this.f30319a;
                                                AbstractC16088j<Boolean> abstractC16088j12 = abstractC16088j11;
                                                if (abstractC16088j11 == null) {
                                                    abstractC16088j12 = this.f30323e.m7971a(Boolean.class);
                                                    this.f30319a = abstractC16088j12;
                                                }
                                                bool4 = abstractC16088j12.read(jsonReader);
                                                break;
                                            }
                                        } else {
                                            AbstractC16088j<Integer> abstractC16088j13 = this.f30321c;
                                            AbstractC16088j<Integer> abstractC16088j14 = abstractC16088j13;
                                            if (abstractC16088j13 == null) {
                                                abstractC16088j14 = this.f30323e.m7971a(Integer.class);
                                                this.f30321c = abstractC16088j14;
                                            }
                                            num = abstractC16088j14.read(jsonReader);
                                            break;
                                        }
                                    } else {
                                        AbstractC16088j<Boolean> abstractC16088j15 = this.f30319a;
                                        AbstractC16088j<Boolean> abstractC16088j16 = abstractC16088j15;
                                        if (abstractC16088j15 == null) {
                                            abstractC16088j16 = this.f30323e.m7971a(Boolean.class);
                                            this.f30319a = abstractC16088j16;
                                        }
                                        bool3 = abstractC16088j16.read(jsonReader);
                                        break;
                                    }
                                } else {
                                    AbstractC16088j<Boolean> abstractC16088j17 = this.f30319a;
                                    AbstractC16088j<Boolean> abstractC16088j18 = abstractC16088j17;
                                    if (abstractC16088j17 == null) {
                                        abstractC16088j18 = this.f30323e.m7971a(Boolean.class);
                                        this.f30319a = abstractC16088j18;
                                    }
                                    bool2 = abstractC16088j18.read(jsonReader);
                                    break;
                                }
                            } else {
                                AbstractC16088j<Boolean> abstractC16088j19 = this.f30319a;
                                AbstractC16088j<Boolean> abstractC16088j20 = abstractC16088j19;
                                if (abstractC16088j19 == null) {
                                    abstractC16088j20 = this.f30323e.m7971a(Boolean.class);
                                    this.f30319a = abstractC16088j20;
                                }
                                bool = abstractC16088j20.read(jsonReader);
                                continue;
                            }
                    }
                } else {
                    jsonReader.nextNull();
                }
            }
            jsonReader.endObject();
            return new C8494l(bool, str, str2, str3, str4, bool2, bool3, num, bool4, remoteLogLevel);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, AbstractC8515y abstractC8515y) throws IOException {
            if (abstractC8515y == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("killSwitch");
            if (abstractC8515y.mo25490g() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Boolean> abstractC16088j = this.f30319a;
                AbstractC16088j<Boolean> abstractC16088j2 = abstractC16088j;
                if (abstractC16088j == null) {
                    abstractC16088j2 = this.f30323e.m7971a(Boolean.class);
                    this.f30319a = abstractC16088j2;
                }
                abstractC16088j2.write(jsonWriter, abstractC8515y.mo25490g());
            }
            jsonWriter.name("AndroidDisplayUrlMacro");
            if (abstractC8515y.mo25492e() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j3 = this.f30320b;
                AbstractC16088j<String> abstractC16088j4 = abstractC16088j3;
                if (abstractC16088j3 == null) {
                    abstractC16088j4 = this.f30323e.m7971a(String.class);
                    this.f30320b = abstractC16088j4;
                }
                abstractC16088j4.write(jsonWriter, abstractC8515y.mo25492e());
            }
            jsonWriter.name("AndroidAdTagUrlMode");
            if (abstractC8515y.mo25493d() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j5 = this.f30320b;
                AbstractC16088j<String> abstractC16088j6 = abstractC16088j5;
                if (abstractC16088j5 == null) {
                    abstractC16088j6 = this.f30323e.m7971a(String.class);
                    this.f30320b = abstractC16088j6;
                }
                abstractC16088j6.write(jsonWriter, abstractC8515y.mo25493d());
            }
            jsonWriter.name("AndroidAdTagDataMacro");
            if (abstractC8515y.mo25495b() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j7 = this.f30320b;
                AbstractC16088j<String> abstractC16088j8 = abstractC16088j7;
                if (abstractC16088j7 == null) {
                    abstractC16088j8 = this.f30323e.m7971a(String.class);
                    this.f30320b = abstractC16088j8;
                }
                abstractC16088j8.write(jsonWriter, abstractC8515y.mo25495b());
            }
            jsonWriter.name("AndroidAdTagDataMode");
            if (abstractC8515y.mo25494c() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j9 = this.f30320b;
                AbstractC16088j<String> abstractC16088j10 = abstractC16088j9;
                if (abstractC16088j9 == null) {
                    abstractC16088j10 = this.f30323e.m7971a(String.class);
                    this.f30320b = abstractC16088j10;
                }
                abstractC16088j10.write(jsonWriter, abstractC8515y.mo25494c());
            }
            jsonWriter.name("csmEnabled");
            if (abstractC8515y.mo25491f() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Boolean> abstractC16088j11 = this.f30319a;
                AbstractC16088j<Boolean> abstractC16088j12 = abstractC16088j11;
                if (abstractC16088j11 == null) {
                    abstractC16088j12 = this.f30323e.m7971a(Boolean.class);
                    this.f30319a = abstractC16088j12;
                }
                abstractC16088j12.write(jsonWriter, abstractC8515y.mo25491f());
            }
            jsonWriter.name("liveBiddingEnabled");
            if (abstractC8515y.mo25489h() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Boolean> abstractC16088j13 = this.f30319a;
                AbstractC16088j<Boolean> abstractC16088j14 = abstractC16088j13;
                if (abstractC16088j13 == null) {
                    abstractC16088j14 = this.f30323e.m7971a(Boolean.class);
                    this.f30319a = abstractC16088j14;
                }
                abstractC16088j14.write(jsonWriter, abstractC8515y.mo25489h());
            }
            jsonWriter.name("liveBiddingTimeBudgetInMillis");
            if (abstractC8515y.mo25488i() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Integer> abstractC16088j15 = this.f30321c;
                AbstractC16088j<Integer> abstractC16088j16 = abstractC16088j15;
                if (abstractC16088j15 == null) {
                    abstractC16088j16 = this.f30323e.m7971a(Integer.class);
                    this.f30321c = abstractC16088j16;
                }
                abstractC16088j16.write(jsonWriter, abstractC8515y.mo25488i());
            }
            jsonWriter.name("prefetchOnInitEnabled");
            if (abstractC8515y.mo25487j() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Boolean> abstractC16088j17 = this.f30319a;
                AbstractC16088j<Boolean> abstractC16088j18 = abstractC16088j17;
                if (abstractC16088j17 == null) {
                    abstractC16088j18 = this.f30323e.m7971a(Boolean.class);
                    this.f30319a = abstractC16088j18;
                }
                abstractC16088j18.write(jsonWriter, abstractC8515y.mo25487j());
            }
            jsonWriter.name("remoteLogLevel");
            if (abstractC8515y.mo25486k() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<RemoteLogRecords.RemoteLogLevel> abstractC16088j19 = this.f30322d;
                AbstractC16088j<RemoteLogRecords.RemoteLogLevel> abstractC16088j20 = abstractC16088j19;
                if (abstractC16088j19 == null) {
                    abstractC16088j20 = this.f30323e.m7971a(RemoteLogRecords.RemoteLogLevel.class);
                    this.f30322d = abstractC16088j20;
                }
                abstractC16088j20.write(jsonWriter, abstractC8515y.mo25486k());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(RemoteConfigResponse)").toString();
        }
    }

    public C8494l(Boolean bool, String str, String str2, String str3, String str4, Boolean bool2, Boolean bool3, Integer num, Boolean bool4, RemoteLogRecords.RemoteLogLevel remoteLogLevel) {
        super(bool, str, str2, str3, str4, bool2, bool3, num, bool4, remoteLogLevel);
    }
}
