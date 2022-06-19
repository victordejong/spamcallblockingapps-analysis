package com.criteo.publisher.model.p257b0;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.net.URL;
/* renamed from: com.criteo.publisher.model.b0.i */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/i.class */
public final class C8465i extends AbstractC8457c {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.model.b0.i$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/i$a.class */
    public static final class C8466a extends AbstractC16088j<AbstractC8476o> {

        /* renamed from: a */
        private volatile AbstractC16088j<URL> f30260a;

        /* renamed from: b */
        private final C15965f f30261b;

        public C8466a(C15965f c15965f) {
            this.f30261b = c15965f;
        }

        /* renamed from: a */
        public final AbstractC8476o read(JsonReader jsonReader) throws IOException {
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
                        AbstractC16088j<URL> abstractC16088j = this.f30260a;
                        AbstractC16088j<URL> abstractC16088j2 = abstractC16088j;
                        if (abstractC16088j == null) {
                            abstractC16088j2 = this.f30261b.m7971a(URL.class);
                            this.f30260a = abstractC16088j2;
                        }
                        url = abstractC16088j2.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new C8465i(url);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, AbstractC8476o abstractC8476o) throws IOException {
            if (abstractC8476o == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("url");
            if (abstractC8476o.mo25617a() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<URL> abstractC16088j = this.f30260a;
                AbstractC16088j<URL> abstractC16088j2 = abstractC16088j;
                if (abstractC16088j == null) {
                    abstractC16088j2 = this.f30261b.m7971a(URL.class);
                    this.f30260a = abstractC16088j2;
                }
                abstractC16088j2.write(jsonWriter, abstractC8476o.mo25617a());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(NativeImage)").toString();
        }
    }

    C8465i(URL url) {
        super(url);
    }
}
