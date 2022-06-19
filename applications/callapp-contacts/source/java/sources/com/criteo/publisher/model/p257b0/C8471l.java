package com.criteo.publisher.model.p257b0;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import io.bidmachine.utils.IabUtils;
import java.io.IOException;
import java.net.URI;
/* renamed from: com.criteo.publisher.model.b0.l */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/l.class */
public final class C8471l extends AbstractC8460f {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.model.b0.l$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/l$a.class */
    public static final class C8472a extends AbstractC16088j<AbstractC8479r> {

        /* renamed from: a */
        private volatile AbstractC16088j<String> f30268a;

        /* renamed from: b */
        private volatile AbstractC16088j<URI> f30269b;

        /* renamed from: c */
        private volatile AbstractC16088j<AbstractC8476o> f30270c;

        /* renamed from: d */
        private final C15965f f30271d;

        public C8472a(C15965f c15965f) {
            this.f30271d = c15965f;
        }

        /* renamed from: a */
        public final AbstractC8479r read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            String str = null;
            String str2 = null;
            String str3 = null;
            URI uri = null;
            String str4 = null;
            AbstractC8476o abstractC8476o = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if ("title".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j = this.f30268a;
                        AbstractC16088j<String> abstractC16088j2 = abstractC16088j;
                        if (abstractC16088j == null) {
                            abstractC16088j2 = this.f30271d.m7971a(String.class);
                            this.f30268a = abstractC16088j2;
                        }
                        str = abstractC16088j2.read(jsonReader);
                    } else if ("description".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j3 = this.f30268a;
                        AbstractC16088j<String> abstractC16088j4 = abstractC16088j3;
                        if (abstractC16088j3 == null) {
                            abstractC16088j4 = this.f30271d.m7971a(String.class);
                            this.f30268a = abstractC16088j4;
                        }
                        str2 = abstractC16088j4.read(jsonReader);
                    } else if ("price".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j5 = this.f30268a;
                        AbstractC16088j<String> abstractC16088j6 = abstractC16088j5;
                        if (abstractC16088j5 == null) {
                            abstractC16088j6 = this.f30271d.m7971a(String.class);
                            this.f30268a = abstractC16088j6;
                        }
                        str3 = abstractC16088j6.read(jsonReader);
                    } else if (IabUtils.KEY_CLICK_URL.equals(nextName)) {
                        AbstractC16088j<URI> abstractC16088j7 = this.f30269b;
                        AbstractC16088j<URI> abstractC16088j8 = abstractC16088j7;
                        if (abstractC16088j7 == null) {
                            abstractC16088j8 = this.f30271d.m7971a(URI.class);
                            this.f30269b = abstractC16088j8;
                        }
                        uri = abstractC16088j8.read(jsonReader);
                    } else if ("callToAction".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j9 = this.f30268a;
                        AbstractC16088j<String> abstractC16088j10 = abstractC16088j9;
                        if (abstractC16088j9 == null) {
                            abstractC16088j10 = this.f30271d.m7971a(String.class);
                            this.f30268a = abstractC16088j10;
                        }
                        str4 = abstractC16088j10.read(jsonReader);
                    } else if ("image".equals(nextName)) {
                        AbstractC16088j<AbstractC8476o> abstractC16088j11 = this.f30270c;
                        AbstractC16088j<AbstractC8476o> abstractC16088j12 = abstractC16088j11;
                        if (abstractC16088j11 == null) {
                            abstractC16088j12 = this.f30271d.m7971a(AbstractC8476o.class);
                            this.f30270c = abstractC16088j12;
                        }
                        abstractC8476o = abstractC16088j12.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new C8471l(str, str2, str3, uri, str4, abstractC8476o);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, AbstractC8479r abstractC8479r) throws IOException {
            if (abstractC8479r == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("title");
            if (abstractC8479r.mo25602g() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j = this.f30268a;
                AbstractC16088j<String> abstractC16088j2 = abstractC16088j;
                if (abstractC16088j == null) {
                    abstractC16088j2 = this.f30271d.m7971a(String.class);
                    this.f30268a = abstractC16088j2;
                }
                abstractC16088j2.write(jsonWriter, abstractC8479r.mo25602g());
            }
            jsonWriter.name("description");
            if (abstractC8479r.mo25606c() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j3 = this.f30268a;
                AbstractC16088j<String> abstractC16088j4 = abstractC16088j3;
                if (abstractC16088j3 == null) {
                    abstractC16088j4 = this.f30271d.m7971a(String.class);
                    this.f30268a = abstractC16088j4;
                }
                abstractC16088j4.write(jsonWriter, abstractC8479r.mo25606c());
            }
            jsonWriter.name("price");
            if (abstractC8479r.mo25603f() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j5 = this.f30268a;
                AbstractC16088j<String> abstractC16088j6 = abstractC16088j5;
                if (abstractC16088j5 == null) {
                    abstractC16088j6 = this.f30271d.m7971a(String.class);
                    this.f30268a = abstractC16088j6;
                }
                abstractC16088j6.write(jsonWriter, abstractC8479r.mo25603f());
            }
            jsonWriter.name(IabUtils.KEY_CLICK_URL);
            if (abstractC8479r.mo25607b() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<URI> abstractC16088j7 = this.f30269b;
                AbstractC16088j<URI> abstractC16088j8 = abstractC16088j7;
                if (abstractC16088j7 == null) {
                    abstractC16088j8 = this.f30271d.m7971a(URI.class);
                    this.f30269b = abstractC16088j8;
                }
                abstractC16088j8.write(jsonWriter, abstractC8479r.mo25607b());
            }
            jsonWriter.name("callToAction");
            if (abstractC8479r.mo25609a() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j9 = this.f30268a;
                AbstractC16088j<String> abstractC16088j10 = abstractC16088j9;
                if (abstractC16088j9 == null) {
                    abstractC16088j10 = this.f30271d.m7971a(String.class);
                    this.f30268a = abstractC16088j10;
                }
                abstractC16088j10.write(jsonWriter, abstractC8479r.mo25609a());
            }
            jsonWriter.name("image");
            if (abstractC8479r.mo25605d() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<AbstractC8476o> abstractC16088j11 = this.f30270c;
                AbstractC16088j<AbstractC8476o> abstractC16088j12 = abstractC16088j11;
                if (abstractC16088j11 == null) {
                    abstractC16088j12 = this.f30271d.m7971a(AbstractC8476o.class);
                    this.f30270c = abstractC16088j12;
                }
                abstractC16088j12.write(jsonWriter, abstractC8479r.mo25605d());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(NativeProduct)").toString();
        }
    }

    C8471l(String str, String str2, String str3, URI uri, String str4, AbstractC8476o abstractC8476o) {
        super(str, str2, str3, uri, str4, abstractC8476o);
    }
}
