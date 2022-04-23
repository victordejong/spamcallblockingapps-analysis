package com.criteo.publisher.model.b0;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/k.class */
public final class k extends e {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/k$a.class */
    static final class a extends j<q> {

        /* renamed from: a  reason: collision with root package name */
        private volatile j<URI> f17571a;

        /* renamed from: b  reason: collision with root package name */
        private volatile j<URL> f17572b;

        /* renamed from: c  reason: collision with root package name */
        private volatile j<String> f17573c;

        /* renamed from: d  reason: collision with root package name */
        private final f f17574d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(f fVar) {
            this.f17574d = fVar;
        }

        /* renamed from: a */
        public final q read(JsonReader jsonReader) throws IOException {
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
                    char c2 = 65535;
                    switch (nextName.hashCode()) {
                        case -111772945:
                            if (nextName.equals("optoutImageUrl")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case 763886698:
                            if (nextName.equals("longLegalText")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case 1654281122:
                            if (nextName.equals("optoutClickUrl")) {
                                c2 = 2;
                                break;
                            }
                            break;
                    }
                    switch (c2) {
                        case 0:
                            j<URL> jVar = this.f17572b;
                            j<URL> jVar2 = jVar;
                            if (jVar == null) {
                                jVar2 = this.f17574d.a(URL.class);
                                this.f17572b = jVar2;
                            }
                            url = jVar2.read(jsonReader);
                            continue;
                        case 1:
                            j<String> jVar3 = this.f17573c;
                            j<String> jVar4 = jVar3;
                            if (jVar3 == null) {
                                jVar4 = this.f17574d.a(String.class);
                                this.f17573c = jVar4;
                            }
                            str = jVar4.read(jsonReader);
                            continue;
                        case 2:
                            j<URI> jVar5 = this.f17571a;
                            j<URI> jVar6 = jVar5;
                            if (jVar5 == null) {
                                jVar6 = this.f17574d.a(URI.class);
                                this.f17571a = jVar6;
                            }
                            uri = jVar6.read(jsonReader);
                            continue;
                        default:
                            jsonReader.skipValue();
                            continue;
                    }
                }
            }
            jsonReader.endObject();
            return new k(uri, url, str);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, q qVar) throws IOException {
            if (qVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("optoutClickUrl");
            if (qVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                j<URI> jVar = this.f17571a;
                j<URI> jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = this.f17574d.a(URI.class);
                    this.f17571a = jVar2;
                }
                jVar2.write(jsonWriter, qVar.a());
            }
            jsonWriter.name("optoutImageUrl");
            if (qVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                j<URL> jVar3 = this.f17572b;
                j<URL> jVar4 = jVar3;
                if (jVar3 == null) {
                    jVar4 = this.f17574d.a(URL.class);
                    this.f17572b = jVar4;
                }
                jVar4.write(jsonWriter, qVar.b());
            }
            jsonWriter.name("longLegalText");
            if (qVar.c() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar5 = this.f17573c;
                j<String> jVar6 = jVar5;
                if (jVar5 == null) {
                    jVar6 = this.f17574d.a(String.class);
                    this.f17573c = jVar6;
                }
                jVar6.write(jsonWriter, qVar.c());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(NativePrivacy)").toString();
        }
    }

    k(URI uri, URL url, String str) {
        super(uri, url, str);
    }
}
