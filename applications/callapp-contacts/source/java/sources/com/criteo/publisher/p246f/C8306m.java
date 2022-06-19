package com.criteo.publisher.p246f;

import com.criteo.publisher.p246f.AbstractC8329y;
import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
/* renamed from: com.criteo.publisher.f.m */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/m.class */
public final class C8306m extends AbstractC8297g {

    /* renamed from: com.criteo.publisher.f.m$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/m$a.class */
    public static final class C8307a extends AbstractC16088j<AbstractC8329y.AbstractC8331b> {

        /* renamed from: a */
        private volatile AbstractC16088j<String> f29932a;

        /* renamed from: b */
        private volatile AbstractC16088j<Integer> f29933b;

        /* renamed from: c */
        private volatile AbstractC16088j<Boolean> f29934c;

        /* renamed from: d */
        private final C15965f f29935d;

        public C8307a(C15965f c15965f) {
            this.f29935d = c15965f;
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ AbstractC8329y.AbstractC8331b read(JsonReader jsonReader) throws IOException {
            String str = null;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            boolean z = false;
            Integer num = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if ("impressionId".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j = this.f29932a;
                        AbstractC16088j<String> abstractC16088j2 = abstractC16088j;
                        if (abstractC16088j == null) {
                            abstractC16088j2 = this.f29935d.m7971a(String.class);
                            this.f29932a = abstractC16088j2;
                        }
                        str = abstractC16088j2.read(jsonReader);
                    } else if ("zoneId".equals(nextName)) {
                        AbstractC16088j<Integer> abstractC16088j3 = this.f29933b;
                        AbstractC16088j<Integer> abstractC16088j4 = abstractC16088j3;
                        if (abstractC16088j3 == null) {
                            abstractC16088j4 = this.f29935d.m7971a(Integer.class);
                            this.f29933b = abstractC16088j4;
                        }
                        num = abstractC16088j4.read(jsonReader);
                    } else if ("cachedBidUsed".equals(nextName)) {
                        AbstractC16088j<Boolean> abstractC16088j5 = this.f29934c;
                        AbstractC16088j<Boolean> abstractC16088j6 = abstractC16088j5;
                        if (abstractC16088j5 == null) {
                            abstractC16088j6 = this.f29935d.m7971a(Boolean.class);
                            this.f29934c = abstractC16088j6;
                        }
                        z = abstractC16088j6.read(jsonReader).booleanValue();
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new C8306m(str, num, z);
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(MetricRequest.MetricRequestSlot)").toString();
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ void write(JsonWriter jsonWriter, AbstractC8329y.AbstractC8331b abstractC8331b) throws IOException {
            AbstractC8329y.AbstractC8331b abstractC8331b2 = abstractC8331b;
            if (abstractC8331b2 == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("impressionId");
            if (abstractC8331b2.mo25834a() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j = this.f29932a;
                AbstractC16088j<String> abstractC16088j2 = abstractC16088j;
                if (abstractC16088j == null) {
                    abstractC16088j2 = this.f29935d.m7971a(String.class);
                    this.f29932a = abstractC16088j2;
                }
                abstractC16088j2.write(jsonWriter, abstractC8331b2.mo25834a());
            }
            jsonWriter.name("zoneId");
            if (abstractC8331b2.mo25831b() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Integer> abstractC16088j3 = this.f29933b;
                AbstractC16088j<Integer> abstractC16088j4 = abstractC16088j3;
                if (abstractC16088j3 == null) {
                    abstractC16088j4 = this.f29935d.m7971a(Integer.class);
                    this.f29933b = abstractC16088j4;
                }
                abstractC16088j4.write(jsonWriter, abstractC8331b2.mo25831b());
            }
            jsonWriter.name("cachedBidUsed");
            AbstractC16088j<Boolean> abstractC16088j5 = this.f29934c;
            AbstractC16088j<Boolean> abstractC16088j6 = abstractC16088j5;
            if (abstractC16088j5 == null) {
                abstractC16088j6 = this.f29935d.m7971a(Boolean.class);
                this.f29934c = abstractC16088j6;
            }
            abstractC16088j6.write(jsonWriter, Boolean.valueOf(abstractC8331b2.mo25830c()));
            jsonWriter.endObject();
        }
    }

    public C8306m(String str, Integer num, boolean z) {
        super(str, num, z);
    }
}
