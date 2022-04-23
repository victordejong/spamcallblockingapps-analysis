package com.criteo.publisher.model.b0;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import io.bidmachine.utils.IabUtils;
import java.io.IOException;
import java.net.URI;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/l.class */
public final class l extends f {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/l$a.class */
    static final class a extends j<r> {

        /* renamed from: a  reason: collision with root package name */
        private volatile j<String> f17575a;

        /* renamed from: b  reason: collision with root package name */
        private volatile j<URI> f17576b;

        /* renamed from: c  reason: collision with root package name */
        private volatile j<o> f17577c;

        /* renamed from: d  reason: collision with root package name */
        private final f f17578d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(f fVar) {
            this.f17578d = fVar;
        }

        /* renamed from: a */
        public final r read(JsonReader jsonReader) throws IOException {
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
            o oVar = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if ("title".equals(nextName)) {
                        j<String> jVar = this.f17575a;
                        j<String> jVar2 = jVar;
                        if (jVar == null) {
                            jVar2 = this.f17578d.a(String.class);
                            this.f17575a = jVar2;
                        }
                        str = jVar2.read(jsonReader);
                    } else if ("description".equals(nextName)) {
                        j<String> jVar3 = this.f17575a;
                        j<String> jVar4 = jVar3;
                        if (jVar3 == null) {
                            jVar4 = this.f17578d.a(String.class);
                            this.f17575a = jVar4;
                        }
                        str2 = jVar4.read(jsonReader);
                    } else if ("price".equals(nextName)) {
                        j<String> jVar5 = this.f17575a;
                        j<String> jVar6 = jVar5;
                        if (jVar5 == null) {
                            jVar6 = this.f17578d.a(String.class);
                            this.f17575a = jVar6;
                        }
                        str3 = jVar6.read(jsonReader);
                    } else if (IabUtils.KEY_CLICK_URL.equals(nextName)) {
                        j<URI> jVar7 = this.f17576b;
                        j<URI> jVar8 = jVar7;
                        if (jVar7 == null) {
                            jVar8 = this.f17578d.a(URI.class);
                            this.f17576b = jVar8;
                        }
                        uri = jVar8.read(jsonReader);
                    } else if ("callToAction".equals(nextName)) {
                        j<String> jVar9 = this.f17575a;
                        j<String> jVar10 = jVar9;
                        if (jVar9 == null) {
                            jVar10 = this.f17578d.a(String.class);
                            this.f17575a = jVar10;
                        }
                        str4 = jVar10.read(jsonReader);
                    } else if ("image".equals(nextName)) {
                        j<o> jVar11 = this.f17577c;
                        j<o> jVar12 = jVar11;
                        if (jVar11 == null) {
                            jVar12 = this.f17578d.a(o.class);
                            this.f17577c = jVar12;
                        }
                        oVar = jVar12.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new l(str, str2, str3, uri, str4, oVar);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, r rVar) throws IOException {
            if (rVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("title");
            if (rVar.g() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar = this.f17575a;
                j<String> jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = this.f17578d.a(String.class);
                    this.f17575a = jVar2;
                }
                jVar2.write(jsonWriter, rVar.g());
            }
            jsonWriter.name("description");
            if (rVar.c() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar3 = this.f17575a;
                j<String> jVar4 = jVar3;
                if (jVar3 == null) {
                    jVar4 = this.f17578d.a(String.class);
                    this.f17575a = jVar4;
                }
                jVar4.write(jsonWriter, rVar.c());
            }
            jsonWriter.name("price");
            if (rVar.f() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar5 = this.f17575a;
                j<String> jVar6 = jVar5;
                if (jVar5 == null) {
                    jVar6 = this.f17578d.a(String.class);
                    this.f17575a = jVar6;
                }
                jVar6.write(jsonWriter, rVar.f());
            }
            jsonWriter.name(IabUtils.KEY_CLICK_URL);
            if (rVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                j<URI> jVar7 = this.f17576b;
                j<URI> jVar8 = jVar7;
                if (jVar7 == null) {
                    jVar8 = this.f17578d.a(URI.class);
                    this.f17576b = jVar8;
                }
                jVar8.write(jsonWriter, rVar.b());
            }
            jsonWriter.name("callToAction");
            if (rVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar9 = this.f17575a;
                j<String> jVar10 = jVar9;
                if (jVar9 == null) {
                    jVar10 = this.f17578d.a(String.class);
                    this.f17575a = jVar10;
                }
                jVar10.write(jsonWriter, rVar.a());
            }
            jsonWriter.name("image");
            if (rVar.d() == null) {
                jsonWriter.nullValue();
            } else {
                j<o> jVar11 = this.f17577c;
                j<o> jVar12 = jVar11;
                if (jVar11 == null) {
                    jVar12 = this.f17578d.a(o.class);
                    this.f17577c = jVar12;
                }
                jVar12.write(jsonWriter, rVar.d());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(NativeProduct)").toString();
        }
    }

    l(String str, String str2, String str3, URI uri, String str4, o oVar) {
        super(str, str2, str3, uri, str4, oVar);
    }
}
