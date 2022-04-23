package com.criteo.publisher.f;

import com.criteo.publisher.f.y;
import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/k.class */
public final class k extends c {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/k$a.class */
    public static final class a extends j<y> {

        /* renamed from: a  reason: collision with root package name */
        private volatile j<List<y.a>> f17282a;

        /* renamed from: b  reason: collision with root package name */
        private volatile j<String> f17283b;

        /* renamed from: c  reason: collision with root package name */
        private volatile j<Integer> f17284c;

        /* renamed from: d  reason: collision with root package name */
        private final f f17285d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(f fVar) {
            this.f17285d = fVar;
        }

        @Override // com.google.gson.j
        public final /* synthetic */ y read(JsonReader jsonReader) throws IOException {
            List<y.a> list = null;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            String str = null;
            int i = 0;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if (nextName.equals("wrapper_version")) {
                        j<String> jVar = this.f17283b;
                        j<String> jVar2 = jVar;
                        if (jVar == null) {
                            jVar2 = this.f17285d.a(String.class);
                            this.f17283b = jVar2;
                        }
                        str = jVar2.read(jsonReader);
                    } else if (nextName.equals("profile_id")) {
                        j<Integer> jVar3 = this.f17284c;
                        j<Integer> jVar4 = jVar3;
                        if (jVar3 == null) {
                            jVar4 = this.f17285d.a(Integer.class);
                            this.f17284c = jVar4;
                        }
                        i = jVar4.read(jsonReader).intValue();
                    } else if ("feedbacks".equals(nextName)) {
                        j<List<y.a>> jVar5 = this.f17282a;
                        j<List<y.a>> jVar6 = jVar5;
                        if (jVar5 == null) {
                            jVar6 = this.f17285d.a((com.google.gson.a.a) com.google.gson.a.a.getParameterized(List.class, y.a.class));
                            this.f17282a = jVar6;
                        }
                        list = jVar6.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new k(list, str, i);
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(MetricRequest)").toString();
        }

        @Override // com.google.gson.j
        public final /* synthetic */ void write(JsonWriter jsonWriter, y yVar) throws IOException {
            y yVar2 = yVar;
            if (yVar2 == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("feedbacks");
            if (yVar2.a() == null) {
                jsonWriter.nullValue();
            } else {
                j<List<y.a>> jVar = this.f17282a;
                j<List<y.a>> jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = this.f17285d.a((com.google.gson.a.a) com.google.gson.a.a.getParameterized(List.class, y.a.class));
                    this.f17282a = jVar2;
                }
                jVar2.write(jsonWriter, yVar2.a());
            }
            jsonWriter.name("wrapper_version");
            if (yVar2.b() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar3 = this.f17283b;
                j<String> jVar4 = jVar3;
                if (jVar3 == null) {
                    jVar4 = this.f17285d.a(String.class);
                    this.f17283b = jVar4;
                }
                jVar4.write(jsonWriter, yVar2.b());
            }
            jsonWriter.name("profile_id");
            j<Integer> jVar5 = this.f17284c;
            j<Integer> jVar6 = jVar5;
            if (jVar5 == null) {
                jVar6 = this.f17285d.a(Integer.class);
                this.f17284c = jVar6;
            }
            jVar6.write(jsonWriter, Integer.valueOf(yVar2.c()));
            jsonWriter.endObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(List<y.a> list, String str, int i) {
        super(list, str, i);
    }
}
