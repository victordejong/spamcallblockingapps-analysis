package com.criteo.publisher.f;

import com.criteo.publisher.f.y;
import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/l.class */
public final class l extends e {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/l$a.class */
    public static final class a extends j<y.a> {

        /* renamed from: a  reason: collision with root package name */
        private volatile j<List<y.b>> f17286a;

        /* renamed from: b  reason: collision with root package name */
        private volatile j<Long> f17287b;

        /* renamed from: c  reason: collision with root package name */
        private volatile j<Boolean> f17288c;

        /* renamed from: d  reason: collision with root package name */
        private volatile j<Long> f17289d;
        private volatile j<String> e;
        private final f f;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(f fVar) {
            this.f = fVar;
        }

        @Override // com.google.gson.j
        public final /* synthetic */ y.a read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            long j = 0;
            List<y.b> list = null;
            Long l = null;
            Long l2 = null;
            String str = null;
            boolean z = false;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if (nextName.equals("isTimeout")) {
                        j<Boolean> jVar = this.f17288c;
                        j<Boolean> jVar2 = jVar;
                        if (jVar == null) {
                            jVar2 = this.f.a(Boolean.class);
                            this.f17288c = jVar2;
                        }
                        z = jVar2.read(jsonReader).booleanValue();
                    } else if ("slots".equals(nextName)) {
                        j<List<y.b>> jVar3 = this.f17286a;
                        j<List<y.b>> jVar4 = jVar3;
                        if (jVar3 == null) {
                            jVar4 = this.f.a((com.google.gson.a.a) com.google.gson.a.a.getParameterized(List.class, y.b.class));
                            this.f17286a = jVar4;
                        }
                        list = jVar4.read(jsonReader);
                    } else if ("elapsed".equals(nextName)) {
                        j<Long> jVar5 = this.f17287b;
                        j<Long> jVar6 = jVar5;
                        if (jVar5 == null) {
                            jVar6 = this.f.a(Long.class);
                            this.f17287b = jVar6;
                        }
                        l = jVar6.read(jsonReader);
                    } else if ("cdbCallStartElapsed".equals(nextName)) {
                        j<Long> jVar7 = this.f17289d;
                        j<Long> jVar8 = jVar7;
                        if (jVar7 == null) {
                            jVar8 = this.f.a(Long.class);
                            this.f17289d = jVar8;
                        }
                        j = jVar8.read(jsonReader).longValue();
                    } else if ("cdbCallEndElapsed".equals(nextName)) {
                        j<Long> jVar9 = this.f17287b;
                        j<Long> jVar10 = jVar9;
                        if (jVar9 == null) {
                            jVar10 = this.f.a(Long.class);
                            this.f17287b = jVar10;
                        }
                        l2 = jVar10.read(jsonReader);
                    } else if ("requestGroupId".equals(nextName)) {
                        j<String> jVar11 = this.e;
                        j<String> jVar12 = jVar11;
                        if (jVar11 == null) {
                            jVar12 = this.f.a(String.class);
                            this.e = jVar12;
                        }
                        str = jVar12.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new l(list, l, z, j, l2, str);
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(MetricRequest.MetricRequestFeedback)").toString();
        }

        @Override // com.google.gson.j
        public final /* synthetic */ void write(JsonWriter jsonWriter, y.a aVar) throws IOException {
            y.a aVar2 = aVar;
            if (aVar2 == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("slots");
            if (aVar2.a() == null) {
                jsonWriter.nullValue();
            } else {
                j<List<y.b>> jVar = this.f17286a;
                j<List<y.b>> jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = this.f.a((com.google.gson.a.a) com.google.gson.a.a.getParameterized(List.class, y.b.class));
                    this.f17286a = jVar2;
                }
                jVar2.write(jsonWriter, aVar2.a());
            }
            jsonWriter.name("elapsed");
            if (aVar2.b() == null) {
                jsonWriter.nullValue();
            } else {
                j<Long> jVar3 = this.f17287b;
                j<Long> jVar4 = jVar3;
                if (jVar3 == null) {
                    jVar4 = this.f.a(Long.class);
                    this.f17287b = jVar4;
                }
                jVar4.write(jsonWriter, aVar2.b());
            }
            jsonWriter.name("isTimeout");
            j<Boolean> jVar5 = this.f17288c;
            j<Boolean> jVar6 = jVar5;
            if (jVar5 == null) {
                jVar6 = this.f.a(Boolean.class);
                this.f17288c = jVar6;
            }
            jVar6.write(jsonWriter, Boolean.valueOf(aVar2.c()));
            jsonWriter.name("cdbCallStartElapsed");
            j<Long> jVar7 = this.f17289d;
            j<Long> jVar8 = jVar7;
            if (jVar7 == null) {
                jVar8 = this.f.a(Long.class);
                this.f17289d = jVar8;
            }
            jVar8.write(jsonWriter, Long.valueOf(aVar2.d()));
            jsonWriter.name("cdbCallEndElapsed");
            if (aVar2.e() == null) {
                jsonWriter.nullValue();
            } else {
                j<Long> jVar9 = this.f17287b;
                j<Long> jVar10 = jVar9;
                if (jVar9 == null) {
                    jVar10 = this.f.a(Long.class);
                    this.f17287b = jVar10;
                }
                jVar10.write(jsonWriter, aVar2.e());
            }
            jsonWriter.name("requestGroupId");
            if (aVar2.f() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar11 = this.e;
                j<String> jVar12 = jVar11;
                if (jVar11 == null) {
                    jVar12 = this.f.a(String.class);
                    this.e = jVar12;
                }
                jVar12.write(jsonWriter, aVar2.f());
            }
            jsonWriter.endObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(List<y.b> list, Long l, boolean z, long j, Long l2, String str) {
        super(list, l, z, j, l2, str);
    }
}
