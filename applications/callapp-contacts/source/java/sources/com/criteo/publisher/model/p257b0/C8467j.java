package com.criteo.publisher.model.p257b0;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.net.URL;
/* renamed from: com.criteo.publisher.model.b0.j */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/j.class */
public final class C8467j extends AbstractC8458d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.model.b0.j$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/j$a.class */
    public static final class C8468a extends AbstractC16088j<AbstractC8477p> {

        /* renamed from: a */
        private volatile AbstractC16088j<URL> f30262a;

        /* renamed from: b */
        private final C15965f f30263b;

        public C8468a(C15965f c15965f) {
            this.f30263b = c15965f;
        }

        /* renamed from: a */
        public final AbstractC8477p read(JsonReader jsonReader) throws IOException {
            URL url = null;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if ("url".equals(nextName)) {
                        AbstractC16088j<URL> abstractC16088j = this.f30262a;
                        AbstractC16088j<URL> abstractC16088j2 = abstractC16088j;
                        if (abstractC16088j == null) {
                            abstractC16088j2 = this.f30263b.m7971a(URL.class);
                            this.f30262a = abstractC16088j2;
                        }
                        url = abstractC16088j2.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new C8467j(url);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, AbstractC8477p abstractC8477p) throws IOException {
            if (abstractC8477p == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("url");
            if (abstractC8477p.mo25615a() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<URL> abstractC16088j = this.f30262a;
                AbstractC16088j<URL> abstractC16088j2 = abstractC16088j;
                if (abstractC16088j == null) {
                    abstractC16088j2 = this.f30263b.m7971a(URL.class);
                    this.f30262a = abstractC16088j2;
                }
                abstractC16088j2.write(jsonWriter, abstractC8477p.mo25615a());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(NativeImpressionPixel)").toString();
        }
    }

    C8467j(URL url) {
        super(url);
    }
}
