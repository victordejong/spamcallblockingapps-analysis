package com.criteo.publisher.f;

import com.criteo.publisher.f.y;
import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/m.class */
public final class m extends g {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/m$a.class */
    public static final class a extends j<y.b> {

        /* renamed from: a  reason: collision with root package name */
        private volatile j<String> f17290a;

        /* renamed from: b  reason: collision with root package name */
        private volatile j<Integer> f17291b;

        /* renamed from: c  reason: collision with root package name */
        private volatile j<Boolean> f17292c;

        /* renamed from: d  reason: collision with root package name */
        private final f f17293d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(f fVar) {
            this.f17293d = fVar;
        }

        @Override // com.google.gson.j
        public final /* synthetic */ y.b read(JsonReader jsonReader) throws IOException {
            String str = null;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            boolean z = false;
            Integer num = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if ("impressionId".equals(nextName)) {
                        j<String> jVar = this.f17290a;
                        j<String> jVar2 = jVar;
                        if (jVar == null) {
                            jVar2 = this.f17293d.a(String.class);
                            this.f17290a = jVar2;
                        }
                        str = jVar2.read(jsonReader);
                    } else if ("zoneId".equals(nextName)) {
                        j<Integer> jVar3 = this.f17291b;
                        j<Integer> jVar4 = jVar3;
                        if (jVar3 == null) {
                            jVar4 = this.f17293d.a(Integer.class);
                            this.f17291b = jVar4;
                        }
                        num = jVar4.read(jsonReader);
                    } else if ("cachedBidUsed".equals(nextName)) {
                        j<Boolean> jVar5 = this.f17292c;
                        j<Boolean> jVar6 = jVar5;
                        if (jVar5 == null) {
                            jVar6 = this.f17293d.a(Boolean.class);
                            this.f17292c = jVar6;
                        }
                        z = jVar6.read(jsonReader).booleanValue();
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new m(str, num, z);
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(MetricRequest.MetricRequestSlot)").toString();
        }

        @Override // com.google.gson.j
        public final /* synthetic */ void write(JsonWriter jsonWriter, y.b bVar) throws IOException {
            y.b bVar2 = bVar;
            if (bVar2 == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("impressionId");
            if (bVar2.a() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar = this.f17290a;
                j<String> jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = this.f17293d.a(String.class);
                    this.f17290a = jVar2;
                }
                jVar2.write(jsonWriter, bVar2.a());
            }
            jsonWriter.name("zoneId");
            if (bVar2.b() == null) {
                jsonWriter.nullValue();
            } else {
                j<Integer> jVar3 = this.f17291b;
                j<Integer> jVar4 = jVar3;
                if (jVar3 == null) {
                    jVar4 = this.f17293d.a(Integer.class);
                    this.f17291b = jVar4;
                }
                jVar4.write(jsonWriter, bVar2.b());
            }
            jsonWriter.name("cachedBidUsed");
            j<Boolean> jVar5 = this.f17292c;
            j<Boolean> jVar6 = jVar5;
            if (jVar5 == null) {
                jVar6 = this.f17293d.a(Boolean.class);
                this.f17292c = jVar6;
            }
            jVar6.write(jsonWriter, Boolean.valueOf(bVar2.c()));
            jsonWriter.endObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(String str, Integer num, boolean z) {
        super(str, num, z);
    }
}
