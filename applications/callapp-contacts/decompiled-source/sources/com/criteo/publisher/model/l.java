package com.criteo.publisher.model;

import com.criteo.publisher.logging.RemoteLogRecords;
import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/l.class */
public final class l extends e {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/l$a.class */
    static final class a extends j<y> {

        /* renamed from: a  reason: collision with root package name */
        private volatile j<Boolean> f17612a;

        /* renamed from: b  reason: collision with root package name */
        private volatile j<String> f17613b;

        /* renamed from: c  reason: collision with root package name */
        private volatile j<Integer> f17614c;

        /* renamed from: d  reason: collision with root package name */
        private volatile j<RemoteLogRecords.RemoteLogLevel> f17615d;
        private final f e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(f fVar) {
            this.e = fVar;
        }

        /* renamed from: a */
        public final y read(JsonReader jsonReader) throws IOException {
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
                    char c2 = 65535;
                    switch (nextName.hashCode()) {
                        case -648432651:
                            if (nextName.equals("AndroidAdTagDataMode")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case 28088106:
                            if (nextName.equals("AndroidAdTagUrlMode")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case 1373006778:
                            if (nextName.equals("AndroidAdTagDataMacro")) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case 1395208240:
                            if (nextName.equals("AndroidDisplayUrlMacro")) {
                                c2 = 3;
                                break;
                            }
                            break;
                    }
                    switch (c2) {
                        case 0:
                            j<String> jVar = this.f17613b;
                            j<String> jVar2 = jVar;
                            if (jVar == null) {
                                jVar2 = this.e.a(String.class);
                                this.f17613b = jVar2;
                            }
                            str4 = jVar2.read(jsonReader);
                            continue;
                        case 1:
                            j<String> jVar3 = this.f17613b;
                            j<String> jVar4 = jVar3;
                            if (jVar3 == null) {
                                jVar4 = this.e.a(String.class);
                                this.f17613b = jVar4;
                            }
                            str2 = jVar4.read(jsonReader);
                            continue;
                        case 2:
                            j<String> jVar5 = this.f17613b;
                            j<String> jVar6 = jVar5;
                            if (jVar5 == null) {
                                jVar6 = this.e.a(String.class);
                                this.f17613b = jVar6;
                            }
                            str3 = jVar6.read(jsonReader);
                            continue;
                        case 3:
                            j<String> jVar7 = this.f17613b;
                            j<String> jVar8 = jVar7;
                            if (jVar7 == null) {
                                jVar8 = this.e.a(String.class);
                                this.f17613b = jVar8;
                            }
                            str = jVar8.read(jsonReader);
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
                                                    j<RemoteLogRecords.RemoteLogLevel> jVar9 = this.f17615d;
                                                    j<RemoteLogRecords.RemoteLogLevel> jVar10 = jVar9;
                                                    if (jVar9 == null) {
                                                        jVar10 = this.e.a(RemoteLogRecords.RemoteLogLevel.class);
                                                        this.f17615d = jVar10;
                                                    }
                                                    remoteLogLevel = jVar10.read(jsonReader);
                                                    break;
                                                }
                                            } else {
                                                j<Boolean> jVar11 = this.f17612a;
                                                j<Boolean> jVar12 = jVar11;
                                                if (jVar11 == null) {
                                                    jVar12 = this.e.a(Boolean.class);
                                                    this.f17612a = jVar12;
                                                }
                                                bool4 = jVar12.read(jsonReader);
                                                break;
                                            }
                                        } else {
                                            j<Integer> jVar13 = this.f17614c;
                                            j<Integer> jVar14 = jVar13;
                                            if (jVar13 == null) {
                                                jVar14 = this.e.a(Integer.class);
                                                this.f17614c = jVar14;
                                            }
                                            num = jVar14.read(jsonReader);
                                            break;
                                        }
                                    } else {
                                        j<Boolean> jVar15 = this.f17612a;
                                        j<Boolean> jVar16 = jVar15;
                                        if (jVar15 == null) {
                                            jVar16 = this.e.a(Boolean.class);
                                            this.f17612a = jVar16;
                                        }
                                        bool3 = jVar16.read(jsonReader);
                                        break;
                                    }
                                } else {
                                    j<Boolean> jVar17 = this.f17612a;
                                    j<Boolean> jVar18 = jVar17;
                                    if (jVar17 == null) {
                                        jVar18 = this.e.a(Boolean.class);
                                        this.f17612a = jVar18;
                                    }
                                    bool2 = jVar18.read(jsonReader);
                                    break;
                                }
                            } else {
                                j<Boolean> jVar19 = this.f17612a;
                                j<Boolean> jVar20 = jVar19;
                                if (jVar19 == null) {
                                    jVar20 = this.e.a(Boolean.class);
                                    this.f17612a = jVar20;
                                }
                                bool = jVar20.read(jsonReader);
                                continue;
                            }
                    }
                } else {
                    jsonReader.nextNull();
                }
            }
            jsonReader.endObject();
            return new l(bool, str, str2, str3, str4, bool2, bool3, num, bool4, remoteLogLevel);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, y yVar) throws IOException {
            if (yVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("killSwitch");
            if (yVar.g() == null) {
                jsonWriter.nullValue();
            } else {
                j<Boolean> jVar = this.f17612a;
                j<Boolean> jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = this.e.a(Boolean.class);
                    this.f17612a = jVar2;
                }
                jVar2.write(jsonWriter, yVar.g());
            }
            jsonWriter.name("AndroidDisplayUrlMacro");
            if (yVar.e() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar3 = this.f17613b;
                j<String> jVar4 = jVar3;
                if (jVar3 == null) {
                    jVar4 = this.e.a(String.class);
                    this.f17613b = jVar4;
                }
                jVar4.write(jsonWriter, yVar.e());
            }
            jsonWriter.name("AndroidAdTagUrlMode");
            if (yVar.d() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar5 = this.f17613b;
                j<String> jVar6 = jVar5;
                if (jVar5 == null) {
                    jVar6 = this.e.a(String.class);
                    this.f17613b = jVar6;
                }
                jVar6.write(jsonWriter, yVar.d());
            }
            jsonWriter.name("AndroidAdTagDataMacro");
            if (yVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar7 = this.f17613b;
                j<String> jVar8 = jVar7;
                if (jVar7 == null) {
                    jVar8 = this.e.a(String.class);
                    this.f17613b = jVar8;
                }
                jVar8.write(jsonWriter, yVar.b());
            }
            jsonWriter.name("AndroidAdTagDataMode");
            if (yVar.c() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar9 = this.f17613b;
                j<String> jVar10 = jVar9;
                if (jVar9 == null) {
                    jVar10 = this.e.a(String.class);
                    this.f17613b = jVar10;
                }
                jVar10.write(jsonWriter, yVar.c());
            }
            jsonWriter.name("csmEnabled");
            if (yVar.f() == null) {
                jsonWriter.nullValue();
            } else {
                j<Boolean> jVar11 = this.f17612a;
                j<Boolean> jVar12 = jVar11;
                if (jVar11 == null) {
                    jVar12 = this.e.a(Boolean.class);
                    this.f17612a = jVar12;
                }
                jVar12.write(jsonWriter, yVar.f());
            }
            jsonWriter.name("liveBiddingEnabled");
            if (yVar.h() == null) {
                jsonWriter.nullValue();
            } else {
                j<Boolean> jVar13 = this.f17612a;
                j<Boolean> jVar14 = jVar13;
                if (jVar13 == null) {
                    jVar14 = this.e.a(Boolean.class);
                    this.f17612a = jVar14;
                }
                jVar14.write(jsonWriter, yVar.h());
            }
            jsonWriter.name("liveBiddingTimeBudgetInMillis");
            if (yVar.i() == null) {
                jsonWriter.nullValue();
            } else {
                j<Integer> jVar15 = this.f17614c;
                j<Integer> jVar16 = jVar15;
                if (jVar15 == null) {
                    jVar16 = this.e.a(Integer.class);
                    this.f17614c = jVar16;
                }
                jVar16.write(jsonWriter, yVar.i());
            }
            jsonWriter.name("prefetchOnInitEnabled");
            if (yVar.j() == null) {
                jsonWriter.nullValue();
            } else {
                j<Boolean> jVar17 = this.f17612a;
                j<Boolean> jVar18 = jVar17;
                if (jVar17 == null) {
                    jVar18 = this.e.a(Boolean.class);
                    this.f17612a = jVar18;
                }
                jVar18.write(jsonWriter, yVar.j());
            }
            jsonWriter.name("remoteLogLevel");
            if (yVar.k() == null) {
                jsonWriter.nullValue();
            } else {
                j<RemoteLogRecords.RemoteLogLevel> jVar19 = this.f17615d;
                j<RemoteLogRecords.RemoteLogLevel> jVar20 = jVar19;
                if (jVar19 == null) {
                    jVar20 = this.e.a(RemoteLogRecords.RemoteLogLevel.class);
                    this.f17615d = jVar20;
                }
                jVar20.write(jsonWriter, yVar.k());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(RemoteConfigResponse)").toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(Boolean bool, String str, String str2, String str3, String str4, Boolean bool2, Boolean bool3, Integer num, Boolean bool4, RemoteLogRecords.RemoteLogLevel remoteLogLevel) {
        super(bool, str, str2, str3, str4, bool2, bool3, num, bool4, remoteLogLevel);
    }
}
