package com.criteo.publisher.model.p257b0;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
/* renamed from: com.criteo.publisher.model.b0.k */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/k.class */
public final class C8469k extends AbstractC8459e {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.model.b0.k$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/k$a.class */
    public static final class C8470a extends AbstractC16088j<AbstractC8478q> {

        /* renamed from: a */
        private volatile AbstractC16088j<URI> f30264a;

        /* renamed from: b */
        private volatile AbstractC16088j<URL> f30265b;

        /* renamed from: c */
        private volatile AbstractC16088j<String> f30266c;

        /* renamed from: d */
        private final C15965f f30267d;

        public C8470a(C15965f c15965f) {
            this.f30267d = c15965f;
        }

        /* renamed from: a */
        public final AbstractC8478q read(JsonReader jsonReader) throws IOException {
            URI uri = null;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            URL url = null;
            String str = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    boolean z = true;
                    switch (nextName.hashCode()) {
                        case -111772945:
                            if (nextName.equals("optoutImageUrl")) {
                                z = false;
                                break;
                            }
                            break;
                        case 763886698:
                            if (nextName.equals("longLegalText")) {
                                z = true;
                                break;
                            }
                            break;
                        case 1654281122:
                            if (nextName.equals("optoutClickUrl")) {
                                z = true;
                                break;
                            }
                            break;
                    }
                    switch (z) {
                        case false:
                            AbstractC16088j<URL> abstractC16088j = this.f30265b;
                            AbstractC16088j<URL> abstractC16088j2 = abstractC16088j;
                            if (abstractC16088j == null) {
                                abstractC16088j2 = this.f30267d.m7971a(URL.class);
                                this.f30265b = abstractC16088j2;
                            }
                            url = abstractC16088j2.read(jsonReader);
                            continue;
                        case true:
                            AbstractC16088j<String> abstractC16088j3 = this.f30266c;
                            AbstractC16088j<String> abstractC16088j4 = abstractC16088j3;
                            if (abstractC16088j3 == null) {
                                abstractC16088j4 = this.f30267d.m7971a(String.class);
                                this.f30266c = abstractC16088j4;
                            }
                            str = abstractC16088j4.read(jsonReader);
                            continue;
                        case true:
                            AbstractC16088j<URI> abstractC16088j5 = this.f30264a;
                            AbstractC16088j<URI> abstractC16088j6 = abstractC16088j5;
                            if (abstractC16088j5 == null) {
                                abstractC16088j6 = this.f30267d.m7971a(URI.class);
                                this.f30264a = abstractC16088j6;
                            }
                            uri = abstractC16088j6.read(jsonReader);
                            continue;
                        default:
                            jsonReader.skipValue();
                            continue;
                    }
                }
            }
            jsonReader.endObject();
            return new C8469k(uri, url, str);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, AbstractC8478q abstractC8478q) throws IOException {
            if (abstractC8478q == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("optoutClickUrl");
            if (abstractC8478q.mo25613a() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<URI> abstractC16088j = this.f30264a;
                AbstractC16088j<URI> abstractC16088j2 = abstractC16088j;
                if (abstractC16088j == null) {
                    abstractC16088j2 = this.f30267d.m7971a(URI.class);
                    this.f30264a = abstractC16088j2;
                }
                abstractC16088j2.write(jsonWriter, abstractC8478q.mo25613a());
            }
            jsonWriter.name("optoutImageUrl");
            if (abstractC8478q.mo25611b() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<URL> abstractC16088j3 = this.f30265b;
                AbstractC16088j<URL> abstractC16088j4 = abstractC16088j3;
                if (abstractC16088j3 == null) {
                    abstractC16088j4 = this.f30267d.m7971a(URL.class);
                    this.f30265b = abstractC16088j4;
                }
                abstractC16088j4.write(jsonWriter, abstractC8478q.mo25611b());
            }
            jsonWriter.name("longLegalText");
            if (abstractC8478q.mo25610c() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j5 = this.f30266c;
                AbstractC16088j<String> abstractC16088j6 = abstractC16088j5;
                if (abstractC16088j5 == null) {
                    abstractC16088j6 = this.f30267d.m7971a(String.class);
                    this.f30266c = abstractC16088j6;
                }
                abstractC16088j6.write(jsonWriter, abstractC8478q.mo25610c());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(NativePrivacy)").toString();
        }
    }

    C8469k(URI uri, URL url, String str) {
        super(uri, url, str);
    }
}
