package com.criteo.publisher.model;

import com.criteo.publisher.p252k.p253a.AbstractC8373c;
import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.List;
/* renamed from: com.criteo.publisher.model.h */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/h.class */
public final class C8486h extends AbstractC8451a {

    /* renamed from: com.criteo.publisher.model.h$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/h$a.class */
    public static final class C8487a extends AbstractC16088j<AbstractC8499o> {

        /* renamed from: a */
        private volatile AbstractC16088j<String> f30302a;

        /* renamed from: b */
        private volatile AbstractC16088j<AbstractC8512v> f30303b;

        /* renamed from: c */
        private volatile AbstractC16088j<AbstractC8516z> f30304c;

        /* renamed from: d */
        private volatile AbstractC16088j<Integer> f30305d;

        /* renamed from: e */
        private volatile AbstractC16088j<AbstractC8373c> f30306e;

        /* renamed from: f */
        private volatile AbstractC16088j<List<AbstractC8501q>> f30307f;

        /* renamed from: g */
        private final C15965f f30308g;

        public C8487a(C15965f c15965f) {
            this.f30308g = c15965f;
        }

        /* renamed from: a */
        public final AbstractC8499o read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            String str = null;
            AbstractC8512v abstractC8512v = null;
            AbstractC8516z abstractC8516z = null;
            String str2 = null;
            AbstractC8373c abstractC8373c = null;
            List<AbstractC8501q> list = null;
            int i = 0;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if (nextName.equals("gdprConsent")) {
                        AbstractC16088j<AbstractC8373c> abstractC16088j = this.f30306e;
                        AbstractC16088j<AbstractC8373c> abstractC16088j2 = abstractC16088j;
                        if (abstractC16088j == null) {
                            abstractC16088j2 = this.f30308g.m7971a(AbstractC8373c.class);
                            this.f30306e = abstractC16088j2;
                        }
                        abstractC8373c = abstractC16088j2.read(jsonReader);
                    } else if ("id".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j3 = this.f30302a;
                        AbstractC16088j<String> abstractC16088j4 = abstractC16088j3;
                        if (abstractC16088j3 == null) {
                            abstractC16088j4 = this.f30308g.m7971a(String.class);
                            this.f30302a = abstractC16088j4;
                        }
                        str = abstractC16088j4.read(jsonReader);
                    } else if ("publisher".equals(nextName)) {
                        AbstractC16088j<AbstractC8512v> abstractC16088j5 = this.f30303b;
                        AbstractC16088j<AbstractC8512v> abstractC16088j6 = abstractC16088j5;
                        if (abstractC16088j5 == null) {
                            abstractC16088j6 = this.f30308g.m7971a(AbstractC8512v.class);
                            this.f30303b = abstractC16088j6;
                        }
                        abstractC8512v = abstractC16088j6.read(jsonReader);
                    } else if ("user".equals(nextName)) {
                        AbstractC16088j<AbstractC8516z> abstractC16088j7 = this.f30304c;
                        AbstractC16088j<AbstractC8516z> abstractC16088j8 = abstractC16088j7;
                        if (abstractC16088j7 == null) {
                            abstractC16088j8 = this.f30308g.m7971a(AbstractC8516z.class);
                            this.f30304c = abstractC16088j8;
                        }
                        abstractC8516z = abstractC16088j8.read(jsonReader);
                    } else if ("sdkVersion".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j9 = this.f30302a;
                        AbstractC16088j<String> abstractC16088j10 = abstractC16088j9;
                        if (abstractC16088j9 == null) {
                            abstractC16088j10 = this.f30308g.m7971a(String.class);
                            this.f30302a = abstractC16088j10;
                        }
                        str2 = abstractC16088j10.read(jsonReader);
                    } else if ("profileId".equals(nextName)) {
                        AbstractC16088j<Integer> abstractC16088j11 = this.f30305d;
                        AbstractC16088j<Integer> abstractC16088j12 = abstractC16088j11;
                        if (abstractC16088j11 == null) {
                            abstractC16088j12 = this.f30308g.m7971a(Integer.class);
                            this.f30305d = abstractC16088j12;
                        }
                        i = abstractC16088j12.read(jsonReader).intValue();
                    } else if ("slots".equals(nextName)) {
                        AbstractC16088j<List<AbstractC8501q>> abstractC16088j13 = this.f30307f;
                        AbstractC16088j<List<AbstractC8501q>> abstractC16088j14 = abstractC16088j13;
                        if (abstractC16088j13 == null) {
                            abstractC16088j14 = this.f30308g.m7977a((C15950a) C15950a.getParameterized(List.class, AbstractC8501q.class));
                            this.f30307f = abstractC16088j14;
                        }
                        list = abstractC16088j14.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new C8486h(str, abstractC8512v, abstractC8516z, str2, i, abstractC8373c, list);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, AbstractC8499o abstractC8499o) throws IOException {
            if (abstractC8499o == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("id");
            if (abstractC8499o.mo25578b() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j = this.f30302a;
                AbstractC16088j<String> abstractC16088j2 = abstractC16088j;
                if (abstractC16088j == null) {
                    abstractC16088j2 = this.f30308g.m7971a(String.class);
                    this.f30302a = abstractC16088j2;
                }
                abstractC16088j2.write(jsonWriter, abstractC8499o.mo25578b());
            }
            jsonWriter.name("publisher");
            if (abstractC8499o.mo25576d() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<AbstractC8512v> abstractC16088j3 = this.f30303b;
                AbstractC16088j<AbstractC8512v> abstractC16088j4 = abstractC16088j3;
                if (abstractC16088j3 == null) {
                    abstractC16088j4 = this.f30308g.m7971a(AbstractC8512v.class);
                    this.f30303b = abstractC16088j4;
                }
                abstractC16088j4.write(jsonWriter, abstractC8499o.mo25576d());
            }
            jsonWriter.name("user");
            if (abstractC8499o.mo25573g() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<AbstractC8516z> abstractC16088j5 = this.f30304c;
                AbstractC16088j<AbstractC8516z> abstractC16088j6 = abstractC16088j5;
                if (abstractC16088j5 == null) {
                    abstractC16088j6 = this.f30308g.m7971a(AbstractC8516z.class);
                    this.f30304c = abstractC16088j6;
                }
                abstractC16088j6.write(jsonWriter, abstractC8499o.mo25573g());
            }
            jsonWriter.name("sdkVersion");
            if (abstractC8499o.mo25575e() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j7 = this.f30302a;
                AbstractC16088j<String> abstractC16088j8 = abstractC16088j7;
                if (abstractC16088j7 == null) {
                    abstractC16088j8 = this.f30308g.m7971a(String.class);
                    this.f30302a = abstractC16088j8;
                }
                abstractC16088j8.write(jsonWriter, abstractC8499o.mo25575e());
            }
            jsonWriter.name("profileId");
            AbstractC16088j<Integer> abstractC16088j9 = this.f30305d;
            AbstractC16088j<Integer> abstractC16088j10 = abstractC16088j9;
            if (abstractC16088j9 == null) {
                abstractC16088j10 = this.f30308g.m7971a(Integer.class);
                this.f30305d = abstractC16088j10;
            }
            abstractC16088j10.write(jsonWriter, Integer.valueOf(abstractC8499o.mo25577c()));
            jsonWriter.name("gdprConsent");
            if (abstractC8499o.mo25581a() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<AbstractC8373c> abstractC16088j11 = this.f30306e;
                AbstractC16088j<AbstractC8373c> abstractC16088j12 = abstractC16088j11;
                if (abstractC16088j11 == null) {
                    abstractC16088j12 = this.f30308g.m7971a(AbstractC8373c.class);
                    this.f30306e = abstractC16088j12;
                }
                abstractC16088j12.write(jsonWriter, abstractC8499o.mo25581a());
            }
            jsonWriter.name("slots");
            if (abstractC8499o.mo25574f() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<List<AbstractC8501q>> abstractC16088j13 = this.f30307f;
                AbstractC16088j<List<AbstractC8501q>> abstractC16088j14 = abstractC16088j13;
                if (abstractC16088j13 == null) {
                    abstractC16088j14 = this.f30308g.m7977a((C15950a) C15950a.getParameterized(List.class, AbstractC8501q.class));
                    this.f30307f = abstractC16088j14;
                }
                abstractC16088j14.write(jsonWriter, abstractC8499o.mo25574f());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(CdbRequest)").toString();
        }
    }

    public C8486h(String str, AbstractC8512v abstractC8512v, AbstractC8516z abstractC8516z, String str2, int i, AbstractC8373c abstractC8373c, List<AbstractC8501q> list) {
        super(str, abstractC8512v, abstractC8516z, str2, i, abstractC8373c, list);
    }
}
