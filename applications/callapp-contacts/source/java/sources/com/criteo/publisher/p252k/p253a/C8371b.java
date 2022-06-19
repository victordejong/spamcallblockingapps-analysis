package com.criteo.publisher.p252k.p253a;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.criteo.publisher.k.a.b */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/a/b.class */
public final class C8371b extends AbstractC8370a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.k.a.b$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/a/b$a.class */
    public static final class C8372a extends AbstractC16088j<AbstractC8373c> {

        /* renamed from: a */
        private volatile AbstractC16088j<String> f30059a;

        /* renamed from: b */
        private volatile AbstractC16088j<Boolean> f30060b;

        /* renamed from: c */
        private volatile AbstractC16088j<Integer> f30061c;

        /* renamed from: d */
        private final C15965f f30062d;

        public C8372a(C15965f c15965f) {
            this.f30062d = c15965f;
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ AbstractC8373c read(JsonReader jsonReader) throws IOException {
            String str = null;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            Boolean bool = null;
            Integer num = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if ("consentData".equals(nextName)) {
                        AbstractC16088j<String> abstractC16088j = this.f30059a;
                        AbstractC16088j<String> abstractC16088j2 = abstractC16088j;
                        if (abstractC16088j == null) {
                            abstractC16088j2 = this.f30062d.m7971a(String.class);
                            this.f30059a = abstractC16088j2;
                        }
                        str = abstractC16088j2.read(jsonReader);
                    } else if ("gdprApplies".equals(nextName)) {
                        AbstractC16088j<Boolean> abstractC16088j3 = this.f30060b;
                        AbstractC16088j<Boolean> abstractC16088j4 = abstractC16088j3;
                        if (abstractC16088j3 == null) {
                            abstractC16088j4 = this.f30062d.m7971a(Boolean.class);
                            this.f30060b = abstractC16088j4;
                        }
                        bool = abstractC16088j4.read(jsonReader);
                    } else if ("version".equals(nextName)) {
                        AbstractC16088j<Integer> abstractC16088j5 = this.f30061c;
                        AbstractC16088j<Integer> abstractC16088j6 = abstractC16088j5;
                        if (abstractC16088j5 == null) {
                            abstractC16088j6 = this.f30062d.m7971a(Integer.class);
                            this.f30061c = abstractC16088j6;
                        }
                        num = abstractC16088j6.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new C8371b(str, bool, num);
        }

        public final String toString() {
            return new StringBuilder("TypeAdapter(GdprData)").toString();
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ void write(JsonWriter jsonWriter, AbstractC8373c abstractC8373c) throws IOException {
            AbstractC8373c abstractC8373c2 = abstractC8373c;
            if (abstractC8373c2 == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("consentData");
            if (abstractC8373c2.mo25774a() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<String> abstractC16088j = this.f30059a;
                AbstractC16088j<String> abstractC16088j2 = abstractC16088j;
                if (abstractC16088j == null) {
                    abstractC16088j2 = this.f30062d.m7971a(String.class);
                    this.f30059a = abstractC16088j2;
                }
                abstractC16088j2.write(jsonWriter, abstractC8373c2.mo25774a());
            }
            jsonWriter.name("gdprApplies");
            if (abstractC8373c2.mo25771b() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Boolean> abstractC16088j3 = this.f30060b;
                AbstractC16088j<Boolean> abstractC16088j4 = abstractC16088j3;
                if (abstractC16088j3 == null) {
                    abstractC16088j4 = this.f30062d.m7971a(Boolean.class);
                    this.f30060b = abstractC16088j4;
                }
                abstractC16088j4.write(jsonWriter, abstractC8373c2.mo25771b());
            }
            jsonWriter.name("version");
            if (abstractC8373c2.mo25770c() == null) {
                jsonWriter.nullValue();
            } else {
                AbstractC16088j<Integer> abstractC16088j5 = this.f30061c;
                AbstractC16088j<Integer> abstractC16088j6 = abstractC16088j5;
                if (abstractC16088j5 == null) {
                    abstractC16088j6 = this.f30062d.m7971a(Integer.class);
                    this.f30061c = abstractC16088j6;
                }
                abstractC16088j6.write(jsonWriter, abstractC8373c2.mo25770c());
            }
            jsonWriter.endObject();
        }
    }

    public C8371b(String str, Boolean bool, Integer num) {
        super(str, bool, num);
    }
}
