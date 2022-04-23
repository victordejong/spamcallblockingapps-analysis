package com.criteo.publisher.model.b0;

import com.criteo.publisher.model.b0.n;
import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/h.class */
final class h extends b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/h$a.class */
    public static final class a extends j<n> {

        /* renamed from: a  reason: collision with root package name */
        private volatile j<List<r>> f17563a;

        /* renamed from: b  reason: collision with root package name */
        private volatile j<m> f17564b;

        /* renamed from: c  reason: collision with root package name */
        private volatile j<q> f17565c;

        /* renamed from: d  reason: collision with root package name */
        private volatile j<List<p>> f17566d;
        private final f e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(f fVar) {
            this.e = fVar;
        }

        /* renamed from: a */
        public final n read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            n.a a2 = n.a();
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if (nextName.equals("products")) {
                        j<List<r>> jVar = this.f17563a;
                        j<List<r>> jVar2 = jVar;
                        if (jVar == null) {
                            jVar2 = this.e.a((com.google.gson.a.a) com.google.gson.a.a.getParameterized(List.class, r.class));
                            this.f17563a = jVar2;
                        }
                        a2.a(jVar2.read(jsonReader));
                    } else if (nextName.equals("impressionPixels")) {
                        j<List<p>> jVar3 = this.f17566d;
                        j<List<p>> jVar4 = jVar3;
                        if (jVar3 == null) {
                            jVar4 = this.e.a((com.google.gson.a.a) com.google.gson.a.a.getParameterized(List.class, p.class));
                            this.f17566d = jVar4;
                        }
                        a2.b(jVar4.read(jsonReader));
                    } else if ("advertiser".equals(nextName)) {
                        j<m> jVar5 = this.f17564b;
                        j<m> jVar6 = jVar5;
                        if (jVar5 == null) {
                            jVar6 = this.e.a(m.class);
                            this.f17564b = jVar6;
                        }
                        a2.a(jVar6.read(jsonReader));
                    } else if ("privacy".equals(nextName)) {
                        j<q> jVar7 = this.f17565c;
                        j<q> jVar8 = jVar7;
                        if (jVar7 == null) {
                            jVar8 = this.e.a(q.class);
                            this.f17565c = jVar8;
                        }
                        a2.a(jVar8.read(jsonReader));
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return a2.b();
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, n nVar) throws IOException {
            if (nVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("products");
            if (nVar.h() == null) {
                jsonWriter.nullValue();
            } else {
                j<List<r>> jVar = this.f17563a;
                j<List<r>> jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = this.e.a((com.google.gson.a.a) com.google.gson.a.a.getParameterized(List.class, r.class));
                    this.f17563a = jVar2;
                }
                jVar2.write(jsonWriter, nVar.h());
            }
            jsonWriter.name("advertiser");
            if (nVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                j<m> jVar3 = this.f17564b;
                j<m> jVar4 = jVar3;
                if (jVar3 == null) {
                    jVar4 = this.e.a(m.class);
                    this.f17564b = jVar4;
                }
                jVar4.write(jsonWriter, nVar.b());
            }
            jsonWriter.name("privacy");
            if (nVar.j() == null) {
                jsonWriter.nullValue();
            } else {
                j<q> jVar5 = this.f17565c;
                j<q> jVar6 = jVar5;
                if (jVar5 == null) {
                    jVar6 = this.e.a(q.class);
                    this.f17565c = jVar6;
                }
                jVar6.write(jsonWriter, nVar.j());
            }
            jsonWriter.name("impressionPixels");
            if (nVar.i() == null) {
                jsonWriter.nullValue();
            } else {
                j<List<p>> jVar7 = this.f17566d;
                j<List<p>> jVar8 = jVar7;
                if (jVar7 == null) {
                    jVar8 = this.e.a((com.google.gson.a.a) com.google.gson.a.a.getParameterized(List.class, p.class));
                    this.f17566d = jVar8;
                }
                jVar8.write(jsonWriter, nVar.i());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(NativeAssets)").toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(List<r> list, m mVar, q qVar, List<p> list2) {
        super(list, mVar, qVar, list2);
    }
}
