package com.criteo.publisher.model.p257b0;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.net.URI;
/* renamed from: com.criteo.publisher.model.b0.g */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/g.class */
public final class C8461g extends AbstractC8454a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.model.b0.g$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/g$a.class */
    public static final class C8462a extends AbstractC16088j<AbstractC8473m> {

        /* renamed from: a */
        private volatile AbstractC16088j<String> f30251a;

        /* renamed from: b */
        private volatile AbstractC16088j<URI> f30252b;

        /* renamed from: c */
        private volatile AbstractC16088j<AbstractC8476o> f30253c;

        /* renamed from: d */
        private final C15965f f30254d;

        public C8462a(C15965f c15965f) {
            this.f30254d = c15965f;
        }

        /* renamed from: a */
        public final AbstractC8473m read(JsonReader jsonReader) throws IOException {
            String str = null;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            String str2 = null;
            URI uri = null;
            AbstractC8476o abstractC8476o = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if ("domain".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j = this.f30251a;
                        AbstractC16088j<String> abstractC16088j2 = abstractC16088j;
                        if (abstractC16088j == null) {
                            abstractC16088j2 = this.f30254d.m7971a(String.class);
                            this.f30251a = abstractC16088j2;
                        }
                        str = abstractC16088j2.read(jsonReader);
                    } else if ("description".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j3 = this.f30251a;
                        AbstractC16088j<String> abstractC16088j4 = abstractC16088j3;
                        if (abstractC16088j3 == null) {
                            abstractC16088j4 = this.f30254d.m7971a(String.class);
                            this.f30251a = abstractC16088j4;
                        }
                        str2 = abstractC16088j4.read(jsonReader);
                    } else if ("logoClickUrl".equals(nextName)) {
                        AbstractC16088j<URI> abstractC16088j5 = this.f30252b;
                        AbstractC16088j<URI> abstractC16088j6 = abstractC16088j5;
                        if (abstractC16088j5 == null) {
                            abstractC16088j6 = this.f30254d.m7971a(URI.class);
                            this.f30252b = abstractC16088j6;
                        }
                        uri = abstractC16088j6.read(jsonReader);
                    } else if ("logo".equals(nextName)) {
                        AbstractC16088j<AbstractC8476o> abstractC16088j7 = this.f30253c;
                        AbstractC16088j<AbstractC8476o> abstractC16088j8 = abstractC16088j7;
                        if (abstractC16088j7 == null) {
                            abstractC16088j8 = this.f30254d.m7971a(AbstractC8476o.class);
                            this.f30253c = abstractC16088j8;
                        }
                        abstractC8476o = abstractC16088j8.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new C8461g(str, str2, uri, abstractC8476o);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, AbstractC8473m abstractC8473m) throws IOException {
            if (abstractC8473m == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("domain");
            if (abstractC8473m.mo25643b() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j = this.f30251a;
                AbstractC16088j<String> abstractC16088j2 = abstractC16088j;
                if (abstractC16088j == null) {
                    abstractC16088j2 = this.f30254d.m7971a(String.class);
                    this.f30251a = abstractC16088j2;
                }
                abstractC16088j2.write(jsonWriter, abstractC8473m.mo25643b());
            }
            jsonWriter.name("description");
            if (abstractC8473m.mo25645a() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j3 = this.f30251a;
                AbstractC16088j<String> abstractC16088j4 = abstractC16088j3;
                if (abstractC16088j3 == null) {
                    abstractC16088j4 = this.f30254d.m7971a(String.class);
                    this.f30251a = abstractC16088j4;
                }
                abstractC16088j4.write(jsonWriter, abstractC8473m.mo25645a());
            }
            jsonWriter.name("logoClickUrl");
            if (abstractC8473m.mo25641d() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<URI> abstractC16088j5 = this.f30252b;
                AbstractC16088j<URI> abstractC16088j6 = abstractC16088j5;
                if (abstractC16088j5 == null) {
                    abstractC16088j6 = this.f30254d.m7971a(URI.class);
                    this.f30252b = abstractC16088j6;
                }
                abstractC16088j6.write(jsonWriter, abstractC8473m.mo25641d());
            }
            jsonWriter.name("logo");
            if (abstractC8473m.mo25642c() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<AbstractC8476o> abstractC16088j7 = this.f30253c;
                AbstractC16088j<AbstractC8476o> abstractC16088j8 = abstractC16088j7;
                if (abstractC16088j7 == null) {
                    abstractC16088j8 = this.f30254d.m7971a(AbstractC8476o.class);
                    this.f30253c = abstractC16088j8;
                }
                abstractC16088j8.write(jsonWriter, abstractC8473m.mo25642c());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(NativeAdvertiser)").toString();
        }
    }

    C8461g(String str, String str2, URI uri, AbstractC8476o abstractC8476o) {
        super(str, str2, uri, abstractC8476o);
    }
}
