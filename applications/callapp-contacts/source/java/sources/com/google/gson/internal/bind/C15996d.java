package com.google.gson.internal.bind;

import com.google.gson.AbstractC16088j;
import com.google.gson.AbstractC16090k;
import com.google.gson.C15965f;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.AbstractC16077h;
import com.google.gson.internal.C15981b;
import com.google.gson.internal.C16050c;
import com.google.gson.internal.C16080k;
import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: com.google.gson.internal.bind.d */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/d.class */
public final class C15996d implements AbstractC16090k {

    /* renamed from: a */
    final boolean f56670a;

    /* renamed from: b */
    private final C16050c f56671b;

    /* renamed from: com.google.gson.internal.bind.d$a */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/d$a.class */
    final class C15997a<K, V> extends AbstractC16088j<Map<K, V>> {

        /* renamed from: b */
        private final AbstractC16088j<K> f56673b;

        /* renamed from: c */
        private final AbstractC16088j<V> f56674c;

        /* renamed from: d */
        private final AbstractC16077h<? extends Map<K, V>> f56675d;

        public C15997a(C15965f c15965f, Type type, AbstractC16088j<K> abstractC16088j, Type type2, AbstractC16088j<V> abstractC16088j2, AbstractC16077h<? extends Map<K, V>> abstractC16077h) {
            C15996d.this = r8;
            this.f56673b = new C16009i(c15965f, abstractC16088j, type);
            this.f56674c = new C16009i(c15965f, abstractC16088j2, type2);
            this.f56675d = abstractC16077h;
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            JsonToken peek = jsonReader.peek();
            if (peek == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            Map<K, V> mo7874a = this.f56675d.mo7874a();
            if (peek == JsonToken.BEGIN_ARRAY) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginArray();
                    K read = this.f56673b.read(jsonReader);
                    if (mo7874a.put(read, this.f56674c.read(jsonReader)) != null) {
                        throw new JsonSyntaxException("duplicate key: ".concat(String.valueOf(read)));
                    }
                    jsonReader.endArray();
                }
                jsonReader.endArray();
            } else {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    JsonReaderInternalAccess.INSTANCE.promoteNameToValue(jsonReader);
                    K read2 = this.f56673b.read(jsonReader);
                    if (mo7874a.put(read2, this.f56674c.read(jsonReader)) != null) {
                        throw new JsonSyntaxException("duplicate key: ".concat(String.valueOf(read2)));
                    }
                }
                jsonReader.endObject();
            }
            return mo7874a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            boolean z;
            String str;
            Map map = (Map) obj;
            if (map == null) {
                jsonWriter.nullValue();
            } else if (!C15996d.this.f56670a) {
                jsonWriter.beginObject();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    jsonWriter.name(String.valueOf(entry.getKey()));
                    this.f56674c.write(jsonWriter, entry.getValue());
                }
                jsonWriter.endObject();
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                Iterator<Map.Entry<K, V>> it2 = map.entrySet().iterator();
                boolean z2 = false;
                while (true) {
                    z = z2;
                    if (!it2.hasNext()) {
                        break;
                    }
                    Map.Entry<K, V> next = it2.next();
                    JsonElement jsonTree = this.f56673b.toJsonTree(next.getKey());
                    arrayList.add(jsonTree);
                    arrayList2.add(next.getValue());
                    z2 = z | (jsonTree.isJsonArray() || jsonTree.isJsonObject());
                }
                if (z) {
                    jsonWriter.beginArray();
                    int size = arrayList.size();
                    for (int i = 0; i < size; i++) {
                        jsonWriter.beginArray();
                        C16080k.m7869a((JsonElement) arrayList.get(i), jsonWriter);
                        this.f56674c.write(jsonWriter, arrayList2.get(i));
                        jsonWriter.endArray();
                    }
                    jsonWriter.endArray();
                    return;
                }
                jsonWriter.beginObject();
                int size2 = arrayList.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    JsonElement jsonElement = (JsonElement) arrayList.get(i2);
                    if (jsonElement.isJsonPrimitive()) {
                        JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
                        if (asJsonPrimitive.isNumber()) {
                            str = String.valueOf(asJsonPrimitive.getAsNumber());
                        } else if (asJsonPrimitive.isBoolean()) {
                            str = Boolean.toString(asJsonPrimitive.getAsBoolean());
                        } else if (!asJsonPrimitive.isString()) {
                            throw new AssertionError();
                        } else {
                            str = asJsonPrimitive.getAsString();
                        }
                    } else if (!jsonElement.isJsonNull()) {
                        throw new AssertionError();
                    } else {
                        str = JsonReaderKt.NULL;
                    }
                    jsonWriter.name(str);
                    this.f56674c.write(jsonWriter, arrayList2.get(i2));
                }
                jsonWriter.endObject();
            }
        }
    }

    public C15996d(C16050c c16050c, boolean z) {
        this.f56671b = c16050c;
        this.f56670a = z;
    }

    @Override // com.google.gson.AbstractC16090k
    public final <T> AbstractC16088j<T> create(C15965f c15965f, C15950a<T> c15950a) {
        Type type = c15950a.getType();
        if (!Map.class.isAssignableFrom(c15950a.getRawType())) {
            return null;
        }
        Type[] m7939b = C15981b.m7939b(type, C15981b.m7940b(type));
        Type type2 = m7939b[0];
        return new C15997a(c15965f, m7939b[0], (type2 == Boolean.TYPE || type2 == Boolean.class) ? C16010j.f56734f : c15965f.m7977a((C15950a) C15950a.get(type2)), m7939b[1], c15965f.m7977a((C15950a) C15950a.get(m7939b[1])), this.f56671b.m7900a(c15950a));
    }
}
