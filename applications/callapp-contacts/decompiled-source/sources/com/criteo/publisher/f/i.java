package com.criteo.publisher.f;

import com.criteo.publisher.f.s;
import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/i.class */
final class i extends com.criteo.publisher.f.a {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/i$a.class */
    static final class a extends j<s> {

        /* renamed from: a  reason: collision with root package name */
        private volatile j<Long> f17274a;

        /* renamed from: b  reason: collision with root package name */
        private volatile j<Boolean> f17275b;

        /* renamed from: c  reason: collision with root package name */
        private volatile j<String> f17276c;

        /* renamed from: d  reason: collision with root package name */
        private volatile j<Integer> f17277d;
        private final f e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(f fVar) {
            this.e = fVar;
        }

        @Override // com.google.gson.j
        public final /* synthetic */ s read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            s.a l = s.l();
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if ("cdbCallStartTimestamp".equals(nextName)) {
                        j<Long> jVar = this.f17274a;
                        j<Long> jVar2 = jVar;
                        if (jVar == null) {
                            jVar2 = this.e.a(Long.class);
                            this.f17274a = jVar2;
                        }
                        l.a(jVar2.read(jsonReader));
                    } else if ("cdbCallEndTimestamp".equals(nextName)) {
                        j<Long> jVar3 = this.f17274a;
                        j<Long> jVar4 = jVar3;
                        if (jVar3 == null) {
                            jVar4 = this.e.a(Long.class);
                            this.f17274a = jVar4;
                        }
                        l.b(jVar4.read(jsonReader));
                    } else if ("cdbCallTimeout".equals(nextName)) {
                        j<Boolean> jVar5 = this.f17275b;
                        j<Boolean> jVar6 = jVar5;
                        if (jVar5 == null) {
                            jVar6 = this.e.a(Boolean.class);
                            this.f17275b = jVar6;
                        }
                        l.a(jVar6.read(jsonReader).booleanValue());
                    } else if ("cachedBidUsed".equals(nextName)) {
                        j<Boolean> jVar7 = this.f17275b;
                        j<Boolean> jVar8 = jVar7;
                        if (jVar7 == null) {
                            jVar8 = this.e.a(Boolean.class);
                            this.f17275b = jVar8;
                        }
                        l.b(jVar8.read(jsonReader).booleanValue());
                    } else if ("elapsedTimestamp".equals(nextName)) {
                        j<Long> jVar9 = this.f17274a;
                        j<Long> jVar10 = jVar9;
                        if (jVar9 == null) {
                            jVar10 = this.e.a(Long.class);
                            this.f17274a = jVar10;
                        }
                        l.c(jVar10.read(jsonReader));
                    } else if ("impressionId".equals(nextName)) {
                        j<String> jVar11 = this.f17276c;
                        j<String> jVar12 = jVar11;
                        if (jVar11 == null) {
                            jVar12 = this.e.a(String.class);
                            this.f17276c = jVar12;
                        }
                        l.a(jVar12.read(jsonReader));
                    } else if ("requestGroupId".equals(nextName)) {
                        j<String> jVar13 = this.f17276c;
                        j<String> jVar14 = jVar13;
                        if (jVar13 == null) {
                            jVar14 = this.e.a(String.class);
                            this.f17276c = jVar14;
                        }
                        l.b(jVar14.read(jsonReader));
                    } else if ("zoneId".equals(nextName)) {
                        j<Integer> jVar15 = this.f17277d;
                        j<Integer> jVar16 = jVar15;
                        if (jVar15 == null) {
                            jVar16 = this.e.a(Integer.class);
                            this.f17277d = jVar16;
                        }
                        l.a(jVar16.read(jsonReader));
                    } else if ("profileId".equals(nextName)) {
                        j<Integer> jVar17 = this.f17277d;
                        j<Integer> jVar18 = jVar17;
                        if (jVar17 == null) {
                            jVar18 = this.e.a(Integer.class);
                            this.f17277d = jVar18;
                        }
                        l.b(jVar18.read(jsonReader));
                    } else if ("readyToSend".equals(nextName)) {
                        j<Boolean> jVar19 = this.f17275b;
                        j<Boolean> jVar20 = jVar19;
                        if (jVar19 == null) {
                            jVar20 = this.e.a(Boolean.class);
                            this.f17275b = jVar20;
                        }
                        l.c(jVar20.read(jsonReader).booleanValue());
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return l.a();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(Metric)").toString();
        }

        @Override // com.google.gson.j
        public final /* synthetic */ void write(JsonWriter jsonWriter, s sVar) throws IOException {
            s sVar2 = sVar;
            if (sVar2 == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("cdbCallStartTimestamp");
            if (sVar2.a() == null) {
                jsonWriter.nullValue();
            } else {
                j<Long> jVar = this.f17274a;
                j<Long> jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = this.e.a(Long.class);
                    this.f17274a = jVar2;
                }
                jVar2.write(jsonWriter, sVar2.a());
            }
            jsonWriter.name("cdbCallEndTimestamp");
            if (sVar2.b() == null) {
                jsonWriter.nullValue();
            } else {
                j<Long> jVar3 = this.f17274a;
                j<Long> jVar4 = jVar3;
                if (jVar3 == null) {
                    jVar4 = this.e.a(Long.class);
                    this.f17274a = jVar4;
                }
                jVar4.write(jsonWriter, sVar2.b());
            }
            jsonWriter.name("cdbCallTimeout");
            j<Boolean> jVar5 = this.f17275b;
            j<Boolean> jVar6 = jVar5;
            if (jVar5 == null) {
                jVar6 = this.e.a(Boolean.class);
                this.f17275b = jVar6;
            }
            jVar6.write(jsonWriter, Boolean.valueOf(sVar2.c()));
            jsonWriter.name("cachedBidUsed");
            j<Boolean> jVar7 = this.f17275b;
            j<Boolean> jVar8 = jVar7;
            if (jVar7 == null) {
                jVar8 = this.e.a(Boolean.class);
                this.f17275b = jVar8;
            }
            jVar8.write(jsonWriter, Boolean.valueOf(sVar2.d()));
            jsonWriter.name("elapsedTimestamp");
            if (sVar2.e() == null) {
                jsonWriter.nullValue();
            } else {
                j<Long> jVar9 = this.f17274a;
                j<Long> jVar10 = jVar9;
                if (jVar9 == null) {
                    jVar10 = this.e.a(Long.class);
                    this.f17274a = jVar10;
                }
                jVar10.write(jsonWriter, sVar2.e());
            }
            jsonWriter.name("impressionId");
            if (sVar2.f() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar11 = this.f17276c;
                j<String> jVar12 = jVar11;
                if (jVar11 == null) {
                    jVar12 = this.e.a(String.class);
                    this.f17276c = jVar12;
                }
                jVar12.write(jsonWriter, sVar2.f());
            }
            jsonWriter.name("requestGroupId");
            if (sVar2.g() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar13 = this.f17276c;
                j<String> jVar14 = jVar13;
                if (jVar13 == null) {
                    jVar14 = this.e.a(String.class);
                    this.f17276c = jVar14;
                }
                jVar14.write(jsonWriter, sVar2.g());
            }
            jsonWriter.name("zoneId");
            if (sVar2.h() == null) {
                jsonWriter.nullValue();
            } else {
                j<Integer> jVar15 = this.f17277d;
                j<Integer> jVar16 = jVar15;
                if (jVar15 == null) {
                    jVar16 = this.e.a(Integer.class);
                    this.f17277d = jVar16;
                }
                jVar16.write(jsonWriter, sVar2.h());
            }
            jsonWriter.name("profileId");
            if (sVar2.i() == null) {
                jsonWriter.nullValue();
            } else {
                j<Integer> jVar17 = this.f17277d;
                j<Integer> jVar18 = jVar17;
                if (jVar17 == null) {
                    jVar18 = this.e.a(Integer.class);
                    this.f17277d = jVar18;
                }
                jVar18.write(jsonWriter, sVar2.i());
            }
            jsonWriter.name("readyToSend");
            j<Boolean> jVar19 = this.f17275b;
            j<Boolean> jVar20 = jVar19;
            if (jVar19 == null) {
                jVar20 = this.e.a(Boolean.class);
                this.f17275b = jVar20;
            }
            jVar20.write(jsonWriter, Boolean.valueOf(sVar2.j()));
            jsonWriter.endObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Long l, Long l2, boolean z, boolean z2, Long l3, String str, String str2, Integer num, Integer num2, boolean z3) {
        super(l, l2, z, z2, l3, str, str2, num, num2, z3);
    }
}
