package com.criteo.publisher.model.p257b0;

import com.criteo.publisher.model.p257b0.AbstractC8474n;
import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.List;
/* renamed from: com.criteo.publisher.model.b0.h */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/h.class */
final class C8463h extends AbstractC8455b {

    /* renamed from: com.criteo.publisher.model.b0.h$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/h$a.class */
    public static final class C8464a extends AbstractC16088j<AbstractC8474n> {

        /* renamed from: a */
        private volatile AbstractC16088j<List<AbstractC8479r>> f30255a;

        /* renamed from: b */
        private volatile AbstractC16088j<AbstractC8473m> f30256b;

        /* renamed from: c */
        private volatile AbstractC16088j<AbstractC8478q> f30257c;

        /* renamed from: d */
        private volatile AbstractC16088j<List<AbstractC8477p>> f30258d;

        /* renamed from: e */
        private final C15965f f30259e;

        public C8464a(C15965f c15965f) {
            this.f30259e = c15965f;
        }

        /* renamed from: a */
        public final AbstractC8474n read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            AbstractC8474n.AbstractC8475a m25640a = AbstractC8474n.m25640a();
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if (nextName.equals("products")) {
                        AbstractC16088j<List<AbstractC8479r>> abstractC16088j = this.f30255a;
                        AbstractC16088j<List<AbstractC8479r>> abstractC16088j2 = abstractC16088j;
                        if (abstractC16088j == null) {
                            abstractC16088j2 = this.f30259e.m7977a((C15950a) C15950a.getParameterized(List.class, AbstractC8479r.class));
                            this.f30255a = abstractC16088j2;
                        }
                        m25640a.mo25622a(abstractC16088j2.read(jsonReader));
                    } else if (nextName.equals("impressionPixels")) {
                        AbstractC16088j<List<AbstractC8477p>> abstractC16088j3 = this.f30258d;
                        AbstractC16088j<List<AbstractC8477p>> abstractC16088j4 = abstractC16088j3;
                        if (abstractC16088j3 == null) {
                            abstractC16088j4 = this.f30259e.m7977a((C15950a) C15950a.getParameterized(List.class, AbstractC8477p.class));
                            this.f30258d = abstractC16088j4;
                        }
                        m25640a.mo25620b(abstractC16088j4.read(jsonReader));
                    } else if ("advertiser".equals(nextName)) {
                        AbstractC16088j<AbstractC8473m> abstractC16088j5 = this.f30256b;
                        AbstractC16088j<AbstractC8473m> abstractC16088j6 = abstractC16088j5;
                        if (abstractC16088j5 == null) {
                            abstractC16088j6 = this.f30259e.m7971a(AbstractC8473m.class);
                            this.f30256b = abstractC16088j6;
                        }
                        m25640a.mo25624a(abstractC16088j6.read(jsonReader));
                    } else if ("privacy".equals(nextName)) {
                        AbstractC16088j<AbstractC8478q> abstractC16088j7 = this.f30257c;
                        AbstractC16088j<AbstractC8478q> abstractC16088j8 = abstractC16088j7;
                        if (abstractC16088j7 == null) {
                            abstractC16088j8 = this.f30259e.m7971a(AbstractC8478q.class);
                            this.f30257c = abstractC16088j8;
                        }
                        m25640a.mo25623a(abstractC16088j8.read(jsonReader));
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return m25640a.m25621b();
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, AbstractC8474n abstractC8474n) throws IOException {
            if (abstractC8474n == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("products");
            if (abstractC8474n.mo25632h() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<List<AbstractC8479r>> abstractC16088j = this.f30255a;
                AbstractC16088j<List<AbstractC8479r>> abstractC16088j2 = abstractC16088j;
                if (abstractC16088j == null) {
                    abstractC16088j2 = this.f30259e.m7977a((C15950a) C15950a.getParameterized(List.class, AbstractC8479r.class));
                    this.f30255a = abstractC16088j2;
                }
                abstractC16088j2.write(jsonWriter, abstractC8474n.mo25632h());
            }
            jsonWriter.name("advertiser");
            if (abstractC8474n.mo25638b() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<AbstractC8473m> abstractC16088j3 = this.f30256b;
                AbstractC16088j<AbstractC8473m> abstractC16088j4 = abstractC16088j3;
                if (abstractC16088j3 == null) {
                    abstractC16088j4 = this.f30259e.m7971a(AbstractC8473m.class);
                    this.f30256b = abstractC16088j4;
                }
                abstractC16088j4.write(jsonWriter, abstractC8474n.mo25638b());
            }
            jsonWriter.name("privacy");
            if (abstractC8474n.mo25630j() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<AbstractC8478q> abstractC16088j5 = this.f30257c;
                AbstractC16088j<AbstractC8478q> abstractC16088j6 = abstractC16088j5;
                if (abstractC16088j5 == null) {
                    abstractC16088j6 = this.f30259e.m7971a(AbstractC8478q.class);
                    this.f30257c = abstractC16088j6;
                }
                abstractC16088j6.write(jsonWriter, abstractC8474n.mo25630j());
            }
            jsonWriter.name("impressionPixels");
            if (abstractC8474n.mo25631i() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<List<AbstractC8477p>> abstractC16088j7 = this.f30258d;
                AbstractC16088j<List<AbstractC8477p>> abstractC16088j8 = abstractC16088j7;
                if (abstractC16088j7 == null) {
                    abstractC16088j8 = this.f30259e.m7977a((C15950a) C15950a.getParameterized(List.class, AbstractC8477p.class));
                    this.f30258d = abstractC16088j8;
                }
                abstractC16088j8.write(jsonWriter, abstractC8474n.mo25631i());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(NativeAssets)").toString();
        }
    }

    public C8463h(List<AbstractC8479r> list, AbstractC8473m abstractC8473m, AbstractC8478q abstractC8478q, List<AbstractC8477p> list2) {
        super(list, abstractC8473m, abstractC8478q, list2);
    }
}
