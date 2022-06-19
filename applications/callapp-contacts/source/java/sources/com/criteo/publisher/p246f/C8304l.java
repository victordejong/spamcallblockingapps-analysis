package com.criteo.publisher.p246f;

import com.criteo.publisher.p246f.AbstractC8329y;
import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.List;
/* renamed from: com.criteo.publisher.f.l */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/l.class */
public final class C8304l extends AbstractC8295e {

    /* renamed from: com.criteo.publisher.f.l$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/l$a.class */
    public static final class C8305a extends AbstractC16088j<AbstractC8329y.AbstractC8330a> {

        /* renamed from: a */
        private volatile AbstractC16088j<List<AbstractC8329y.AbstractC8331b>> f29926a;

        /* renamed from: b */
        private volatile AbstractC16088j<Long> f29927b;

        /* renamed from: c */
        private volatile AbstractC16088j<Boolean> f29928c;

        /* renamed from: d */
        private volatile AbstractC16088j<Long> f29929d;

        /* renamed from: e */
        private volatile AbstractC16088j<String> f29930e;

        /* renamed from: f */
        private final C15965f f29931f;

        public C8305a(C15965f c15965f) {
            this.f29931f = c15965f;
        }

        /* JADX WARN: Type inference failed for: r0v57, types: [long] */
        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ AbstractC8329y.AbstractC8330a read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            char c = 0;
            List<AbstractC8329y.AbstractC8331b> list = null;
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
                        AbstractC16088j<Boolean> abstractC16088j = this.f29928c;
                        AbstractC16088j<Boolean> abstractC16088j2 = abstractC16088j;
                        if (abstractC16088j == null) {
                            abstractC16088j2 = this.f29931f.m7971a(Boolean.class);
                            this.f29928c = abstractC16088j2;
                        }
                        z = abstractC16088j2.read(jsonReader).booleanValue();
                    } else if ("slots".equals(nextName)) {
                        AbstractC16088j<List<AbstractC8329y.AbstractC8331b>> abstractC16088j3 = this.f29926a;
                        AbstractC16088j<List<AbstractC8329y.AbstractC8331b>> abstractC16088j4 = abstractC16088j3;
                        if (abstractC16088j3 == null) {
                            abstractC16088j4 = this.f29931f.m7977a((C15950a) C15950a.getParameterized(List.class, AbstractC8329y.AbstractC8331b.class));
                            this.f29926a = abstractC16088j4;
                        }
                        list = abstractC16088j4.read(jsonReader);
                    } else if ("elapsed".equals(nextName)) {
                        AbstractC16088j<Long> abstractC16088j5 = this.f29927b;
                        AbstractC16088j<Long> abstractC16088j6 = abstractC16088j5;
                        if (abstractC16088j5 == null) {
                            abstractC16088j6 = this.f29931f.m7971a(Long.class);
                            this.f29927b = abstractC16088j6;
                        }
                        l = abstractC16088j6.read(jsonReader);
                    } else if ("cdbCallStartElapsed".equals(nextName)) {
                        AbstractC16088j<Long> abstractC16088j7 = this.f29929d;
                        AbstractC16088j<Long> abstractC16088j8 = abstractC16088j7;
                        if (abstractC16088j7 == null) {
                            abstractC16088j8 = this.f29931f.m7971a(Long.class);
                            this.f29929d = abstractC16088j8;
                        }
                        c = abstractC16088j8.read(jsonReader).longValue();
                    } else if ("cdbCallEndElapsed".equals(nextName)) {
                        AbstractC16088j<Long> abstractC16088j9 = this.f29927b;
                        AbstractC16088j<Long> abstractC16088j10 = abstractC16088j9;
                        if (abstractC16088j9 == null) {
                            abstractC16088j10 = this.f29931f.m7971a(Long.class);
                            this.f29927b = abstractC16088j10;
                        }
                        l2 = abstractC16088j10.read(jsonReader);
                    } else if ("requestGroupId".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j11 = this.f29930e;
                        AbstractC16088j<String> abstractC16088j12 = abstractC16088j11;
                        if (abstractC16088j11 == null) {
                            abstractC16088j12 = this.f29931f.m7971a(String.class);
                            this.f29930e = abstractC16088j12;
                        }
                        str = abstractC16088j12.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new C8304l(list, l, z, c, l2, str);
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(MetricRequest.MetricRequestFeedback)").toString();
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ void write(JsonWriter jsonWriter, AbstractC8329y.AbstractC8330a abstractC8330a) throws IOException {
            AbstractC8329y.AbstractC8330a abstractC8330a2 = abstractC8330a;
            if (abstractC8330a2 == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("slots");
            if (abstractC8330a2.mo25843a() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<List<AbstractC8329y.AbstractC8331b>> abstractC16088j = this.f29926a;
                AbstractC16088j<List<AbstractC8329y.AbstractC8331b>> abstractC16088j2 = abstractC16088j;
                if (abstractC16088j == null) {
                    abstractC16088j2 = this.f29931f.m7977a((C15950a) C15950a.getParameterized(List.class, AbstractC8329y.AbstractC8331b.class));
                    this.f29926a = abstractC16088j2;
                }
                abstractC16088j2.write(jsonWriter, abstractC8330a2.mo25843a());
            }
            jsonWriter.name("elapsed");
            if (abstractC8330a2.mo25839b() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Long> abstractC16088j3 = this.f29927b;
                AbstractC16088j<Long> abstractC16088j4 = abstractC16088j3;
                if (abstractC16088j3 == null) {
                    abstractC16088j4 = this.f29931f.m7971a(Long.class);
                    this.f29927b = abstractC16088j4;
                }
                abstractC16088j4.write(jsonWriter, abstractC8330a2.mo25839b());
            }
            jsonWriter.name("isTimeout");
            AbstractC16088j<Boolean> abstractC16088j5 = this.f29928c;
            AbstractC16088j<Boolean> abstractC16088j6 = abstractC16088j5;
            if (abstractC16088j5 == null) {
                abstractC16088j6 = this.f29931f.m7971a(Boolean.class);
                this.f29928c = abstractC16088j6;
            }
            abstractC16088j6.write(jsonWriter, Boolean.valueOf(abstractC8330a2.mo25838c()));
            jsonWriter.name("cdbCallStartElapsed");
            AbstractC16088j<Long> abstractC16088j7 = this.f29929d;
            AbstractC16088j<Long> abstractC16088j8 = abstractC16088j7;
            if (abstractC16088j7 == null) {
                abstractC16088j8 = this.f29931f.m7971a(Long.class);
                this.f29929d = abstractC16088j8;
            }
            abstractC16088j8.write(jsonWriter, Long.valueOf(abstractC8330a2.mo25837d()));
            jsonWriter.name("cdbCallEndElapsed");
            if (abstractC8330a2.mo25836e() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Long> abstractC16088j9 = this.f29927b;
                AbstractC16088j<Long> abstractC16088j10 = abstractC16088j9;
                if (abstractC16088j9 == null) {
                    abstractC16088j10 = this.f29931f.m7971a(Long.class);
                    this.f29927b = abstractC16088j10;
                }
                abstractC16088j10.write(jsonWriter, abstractC8330a2.mo25836e());
            }
            jsonWriter.name("requestGroupId");
            if (abstractC8330a2.mo25835f() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j11 = this.f29930e;
                AbstractC16088j<String> abstractC16088j12 = abstractC16088j11;
                if (abstractC16088j11 == null) {
                    abstractC16088j12 = this.f29931f.m7971a(String.class);
                    this.f29930e = abstractC16088j12;
                }
                abstractC16088j12.write(jsonWriter, abstractC8330a2.mo25835f());
            }
            jsonWriter.endObject();
        }
    }

    public C8304l(List<AbstractC8329y.AbstractC8331b> list, Long l, boolean z, long j, Long l2, String str) {
        super(list, l, z, j, l2, str);
    }
}
