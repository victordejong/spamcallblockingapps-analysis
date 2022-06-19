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
/* renamed from: com.criteo.publisher.f.k */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/k.class */
public final class C8302k extends AbstractC8293c {

    /* renamed from: com.criteo.publisher.f.k$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/k$a.class */
    public static final class C8303a extends AbstractC16088j<AbstractC8329y> {

        /* renamed from: a */
        private volatile AbstractC16088j<List<AbstractC8329y.AbstractC8330a>> f29922a;

        /* renamed from: b */
        private volatile AbstractC16088j<String> f29923b;

        /* renamed from: c */
        private volatile AbstractC16088j<Integer> f29924c;

        /* renamed from: d */
        private final C15965f f29925d;

        public C8303a(C15965f c15965f) {
            this.f29925d = c15965f;
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ AbstractC8329y read(JsonReader jsonReader) throws IOException {
            List<AbstractC8329y.AbstractC8330a> list = null;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            String str = null;
            int i = 0;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if (nextName.equals("wrapper_version")) {
                        AbstractC16088j<String> abstractC16088j = this.f29923b;
                        AbstractC16088j<String> abstractC16088j2 = abstractC16088j;
                        if (abstractC16088j == null) {
                            abstractC16088j2 = this.f29925d.m7971a(String.class);
                            this.f29923b = abstractC16088j2;
                        }
                        str = abstractC16088j2.read(jsonReader);
                    } else if (nextName.equals("profile_id")) {
                        AbstractC16088j<Integer> abstractC16088j3 = this.f29924c;
                        AbstractC16088j<Integer> abstractC16088j4 = abstractC16088j3;
                        if (abstractC16088j3 == null) {
                            abstractC16088j4 = this.f29925d.m7971a(Integer.class);
                            this.f29924c = abstractC16088j4;
                        }
                        i = abstractC16088j4.read(jsonReader).intValue();
                    } else if ("feedbacks".equals(nextName)) {
                        AbstractC16088j<List<AbstractC8329y.AbstractC8330a>> abstractC16088j5 = this.f29922a;
                        AbstractC16088j<List<AbstractC8329y.AbstractC8330a>> abstractC16088j6 = abstractC16088j5;
                        if (abstractC16088j5 == null) {
                            abstractC16088j6 = this.f29925d.m7977a((C15950a) C15950a.getParameterized(List.class, AbstractC8329y.AbstractC8330a.class));
                            this.f29922a = abstractC16088j6;
                        }
                        list = abstractC16088j6.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new C8302k(list, str, i);
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(MetricRequest)").toString();
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ void write(JsonWriter jsonWriter, AbstractC8329y abstractC8329y) throws IOException {
            AbstractC8329y abstractC8329y2 = abstractC8329y;
            if (abstractC8329y2 == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("feedbacks");
            if (abstractC8329y2.mo25848a() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<List<AbstractC8329y.AbstractC8330a>> abstractC16088j = this.f29922a;
                AbstractC16088j<List<AbstractC8329y.AbstractC8330a>> abstractC16088j2 = abstractC16088j;
                if (abstractC16088j == null) {
                    abstractC16088j2 = this.f29925d.m7977a((C15950a) C15950a.getParameterized(List.class, AbstractC8329y.AbstractC8330a.class));
                    this.f29922a = abstractC16088j2;
                }
                abstractC16088j2.write(jsonWriter, abstractC8329y2.mo25848a());
            }
            jsonWriter.name("wrapper_version");
            if (abstractC8329y2.mo25845b() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j3 = this.f29923b;
                AbstractC16088j<String> abstractC16088j4 = abstractC16088j3;
                if (abstractC16088j3 == null) {
                    abstractC16088j4 = this.f29925d.m7971a(String.class);
                    this.f29923b = abstractC16088j4;
                }
                abstractC16088j4.write(jsonWriter, abstractC8329y2.mo25845b());
            }
            jsonWriter.name("profile_id");
            AbstractC16088j<Integer> abstractC16088j5 = this.f29924c;
            AbstractC16088j<Integer> abstractC16088j6 = abstractC16088j5;
            if (abstractC16088j5 == null) {
                abstractC16088j6 = this.f29925d.m7971a(Integer.class);
                this.f29924c = abstractC16088j6;
            }
            abstractC16088j6.write(jsonWriter, Integer.valueOf(abstractC8329y2.mo25844c()));
            jsonWriter.endObject();
        }
    }

    public C8302k(List<AbstractC8329y.AbstractC8330a> list, String str, int i) {
        super(list, str, i);
    }
}
