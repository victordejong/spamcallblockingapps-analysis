package com.criteo.publisher.model;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.common.AdType;
import java.io.IOException;
import java.util.Collection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/i.class */
public final class i extends b {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/i$a.class */
    static final class a extends j<q> {

        /* renamed from: a  reason: collision with root package name */
        private volatile j<String> f17602a;

        /* renamed from: b  reason: collision with root package name */
        private volatile j<Boolean> f17603b;

        /* renamed from: c  reason: collision with root package name */
        private volatile j<Collection<String>> f17604c;

        /* renamed from: d  reason: collision with root package name */
        private final f f17605d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(f fVar) {
            this.f17605d = fVar;
        }

        /* renamed from: a */
        public final q read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            String str = null;
            String str2 = null;
            Boolean bool = null;
            Boolean bool2 = null;
            Collection<String> collection = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    char c2 = 65535;
                    switch (nextName.hashCode()) {
                        case -378584607:
                            if (nextName.equals("isNative")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case 100326919:
                            if (nextName.equals("impId")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case 109453458:
                            if (nextName.equals("sizes")) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case 604727084:
                            if (nextName.equals(AdType.INTERSTITIAL)) {
                                c2 = 3;
                                break;
                            }
                            break;
                        case 732231392:
                            if (nextName.equals("placementId")) {
                                c2 = 4;
                                break;
                            }
                            break;
                    }
                    switch (c2) {
                        case 0:
                            j<Boolean> jVar = this.f17603b;
                            j<Boolean> jVar2 = jVar;
                            if (jVar == null) {
                                jVar2 = this.f17605d.a(Boolean.class);
                                this.f17603b = jVar2;
                            }
                            bool = jVar2.read(jsonReader);
                            continue;
                        case 1:
                            j<String> jVar3 = this.f17602a;
                            j<String> jVar4 = jVar3;
                            if (jVar3 == null) {
                                jVar4 = this.f17605d.a(String.class);
                                this.f17602a = jVar4;
                            }
                            str = jVar4.read(jsonReader);
                            continue;
                        case 2:
                            j<Collection<String>> jVar5 = this.f17604c;
                            j<Collection<String>> jVar6 = jVar5;
                            if (jVar5 == null) {
                                jVar6 = this.f17605d.a((com.google.gson.a.a) com.google.gson.a.a.getParameterized(Collection.class, String.class));
                                this.f17604c = jVar6;
                            }
                            collection = jVar6.read(jsonReader);
                            continue;
                        case 3:
                            j<Boolean> jVar7 = this.f17603b;
                            j<Boolean> jVar8 = jVar7;
                            if (jVar7 == null) {
                                jVar8 = this.f17605d.a(Boolean.class);
                                this.f17603b = jVar8;
                            }
                            bool2 = jVar8.read(jsonReader);
                            continue;
                        case 4:
                            j<String> jVar9 = this.f17602a;
                            j<String> jVar10 = jVar9;
                            if (jVar9 == null) {
                                jVar10 = this.f17605d.a(String.class);
                                this.f17602a = jVar10;
                            }
                            str2 = jVar10.read(jsonReader);
                            continue;
                        default:
                            jsonReader.skipValue();
                            continue;
                    }
                }
            }
            jsonReader.endObject();
            return new i(str, str2, bool, bool2, collection);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, q qVar) throws IOException {
            if (qVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("impId");
            if (qVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar = this.f17602a;
                j<String> jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = this.f17605d.a(String.class);
                    this.f17602a = jVar2;
                }
                jVar2.write(jsonWriter, qVar.a());
            }
            jsonWriter.name("placementId");
            if (qVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                j<String> jVar3 = this.f17602a;
                j<String> jVar4 = jVar3;
                if (jVar3 == null) {
                    jVar4 = this.f17605d.a(String.class);
                    this.f17602a = jVar4;
                }
                jVar4.write(jsonWriter, qVar.b());
            }
            jsonWriter.name("isNative");
            if (qVar.e() == null) {
                jsonWriter.nullValue();
            } else {
                j<Boolean> jVar5 = this.f17603b;
                j<Boolean> jVar6 = jVar5;
                if (jVar5 == null) {
                    jVar6 = this.f17605d.a(Boolean.class);
                    this.f17603b = jVar6;
                }
                jVar6.write(jsonWriter, qVar.e());
            }
            jsonWriter.name(AdType.INTERSTITIAL);
            if (qVar.d() == null) {
                jsonWriter.nullValue();
            } else {
                j<Boolean> jVar7 = this.f17603b;
                j<Boolean> jVar8 = jVar7;
                if (jVar7 == null) {
                    jVar8 = this.f17605d.a(Boolean.class);
                    this.f17603b = jVar8;
                }
                jVar8.write(jsonWriter, qVar.d());
            }
            jsonWriter.name("sizes");
            if (qVar.c() == null) {
                jsonWriter.nullValue();
            } else {
                j<Collection<String>> jVar9 = this.f17604c;
                j<Collection<String>> jVar10 = jVar9;
                if (jVar9 == null) {
                    jVar10 = this.f17605d.a((com.google.gson.a.a) com.google.gson.a.a.getParameterized(Collection.class, String.class));
                    this.f17604c = jVar10;
                }
                jVar10.write(jsonWriter, qVar.c());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(CdbRequestSlot)").toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(String str, String str2, Boolean bool, Boolean bool2, Collection<String> collection) {
        super(str, str2, bool, bool2, collection);
    }
}
