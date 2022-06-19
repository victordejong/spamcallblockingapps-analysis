package com.criteo.publisher.model;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.common.AdType;
import java.io.IOException;
import java.util.Collection;
/* renamed from: com.criteo.publisher.model.i */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/i.class */
public final class C8488i extends AbstractC8453b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.model.i$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/i$a.class */
    public static final class C8489a extends AbstractC16088j<AbstractC8501q> {

        /* renamed from: a */
        private volatile AbstractC16088j<String> f30309a;

        /* renamed from: b */
        private volatile AbstractC16088j<Boolean> f30310b;

        /* renamed from: c */
        private volatile AbstractC16088j<Collection<String>> f30311c;

        /* renamed from: d */
        private final C15965f f30312d;

        public C8489a(C15965f c15965f) {
            this.f30312d = c15965f;
        }

        /* renamed from: a */
        public final AbstractC8501q read(JsonReader jsonReader) throws IOException {
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
                    boolean z = true;
                    switch (nextName.hashCode()) {
                        case -378584607:
                            if (nextName.equals("isNative")) {
                                z = false;
                                break;
                            }
                            break;
                        case 100326919:
                            if (nextName.equals("impId")) {
                                z = true;
                                break;
                            }
                            break;
                        case 109453458:
                            if (nextName.equals("sizes")) {
                                z = true;
                                break;
                            }
                            break;
                        case 604727084:
                            if (nextName.equals(AdType.INTERSTITIAL)) {
                                z = true;
                                break;
                            }
                            break;
                        case 732231392:
                            if (nextName.equals("placementId")) {
                                z = true;
                                break;
                            }
                            break;
                    }
                    switch (z) {
                        case false:
                            AbstractC16088j<Boolean> abstractC16088j = this.f30310b;
                            AbstractC16088j<Boolean> abstractC16088j2 = abstractC16088j;
                            if (abstractC16088j == null) {
                                abstractC16088j2 = this.f30312d.m7971a(Boolean.class);
                                this.f30310b = abstractC16088j2;
                            }
                            bool = abstractC16088j2.read(jsonReader);
                            continue;
                        case true:
                            AbstractC16088j<String> abstractC16088j3 = this.f30309a;
                            AbstractC16088j<String> abstractC16088j4 = abstractC16088j3;
                            if (abstractC16088j3 == null) {
                                abstractC16088j4 = this.f30312d.m7971a(String.class);
                                this.f30309a = abstractC16088j4;
                            }
                            str = abstractC16088j4.read(jsonReader);
                            continue;
                        case true:
                            AbstractC16088j<Collection<String>> abstractC16088j5 = this.f30311c;
                            AbstractC16088j<Collection<String>> abstractC16088j6 = abstractC16088j5;
                            if (abstractC16088j5 == null) {
                                abstractC16088j6 = this.f30312d.m7977a((C15950a) C15950a.getParameterized(Collection.class, String.class));
                                this.f30311c = abstractC16088j6;
                            }
                            collection = abstractC16088j6.read(jsonReader);
                            continue;
                        case true:
                            AbstractC16088j<Boolean> abstractC16088j7 = this.f30310b;
                            AbstractC16088j<Boolean> abstractC16088j8 = abstractC16088j7;
                            if (abstractC16088j7 == null) {
                                abstractC16088j8 = this.f30312d.m7971a(Boolean.class);
                                this.f30310b = abstractC16088j8;
                            }
                            bool2 = abstractC16088j8.read(jsonReader);
                            continue;
                        case true:
                            AbstractC16088j<String> abstractC16088j9 = this.f30309a;
                            AbstractC16088j<String> abstractC16088j10 = abstractC16088j9;
                            if (abstractC16088j9 == null) {
                                abstractC16088j10 = this.f30312d.m7971a(String.class);
                                this.f30309a = abstractC16088j10;
                            }
                            str2 = abstractC16088j10.read(jsonReader);
                            continue;
                        default:
                            jsonReader.skipValue();
                            continue;
                    }
                }
            }
            jsonReader.endObject();
            return new C8488i(str, str2, bool, bool2, collection);
        }

        /* renamed from: a */
        public final void write(JsonWriter jsonWriter, AbstractC8501q abstractC8501q) throws IOException {
            if (abstractC8501q == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("impId");
            if (abstractC8501q.mo25566a() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j = this.f30309a;
                AbstractC16088j<String> abstractC16088j2 = abstractC16088j;
                if (abstractC16088j == null) {
                    abstractC16088j2 = this.f30312d.m7971a(String.class);
                    this.f30309a = abstractC16088j2;
                }
                abstractC16088j2.write(jsonWriter, abstractC8501q.mo25566a());
            }
            jsonWriter.name("placementId");
            if (abstractC8501q.mo25563b() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j3 = this.f30309a;
                AbstractC16088j<String> abstractC16088j4 = abstractC16088j3;
                if (abstractC16088j3 == null) {
                    abstractC16088j4 = this.f30312d.m7971a(String.class);
                    this.f30309a = abstractC16088j4;
                }
                abstractC16088j4.write(jsonWriter, abstractC8501q.mo25563b());
            }
            jsonWriter.name("isNative");
            if (abstractC8501q.mo25560e() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Boolean> abstractC16088j5 = this.f30310b;
                AbstractC16088j<Boolean> abstractC16088j6 = abstractC16088j5;
                if (abstractC16088j5 == null) {
                    abstractC16088j6 = this.f30312d.m7971a(Boolean.class);
                    this.f30310b = abstractC16088j6;
                }
                abstractC16088j6.write(jsonWriter, abstractC8501q.mo25560e());
            }
            jsonWriter.name(AdType.INTERSTITIAL);
            if (abstractC8501q.mo25561d() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Boolean> abstractC16088j7 = this.f30310b;
                AbstractC16088j<Boolean> abstractC16088j8 = abstractC16088j7;
                if (abstractC16088j7 == null) {
                    abstractC16088j8 = this.f30312d.m7971a(Boolean.class);
                    this.f30310b = abstractC16088j8;
                }
                abstractC16088j8.write(jsonWriter, abstractC8501q.mo25561d());
            }
            jsonWriter.name("sizes");
            if (abstractC8501q.mo25562c() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Collection<String>> abstractC16088j9 = this.f30311c;
                AbstractC16088j<Collection<String>> abstractC16088j10 = abstractC16088j9;
                if (abstractC16088j9 == null) {
                    abstractC16088j10 = this.f30312d.m7977a((C15950a) C15950a.getParameterized(Collection.class, String.class));
                    this.f30311c = abstractC16088j10;
                }
                abstractC16088j10.write(jsonWriter, abstractC8501q.mo25562c());
            }
            jsonWriter.endObject();
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(CdbRequestSlot)").toString();
        }
    }

    public C8488i(String str, String str2, Boolean bool, Boolean bool2, Collection<String> collection) {
        super(str, str2, bool, bool2, collection);
    }
}
