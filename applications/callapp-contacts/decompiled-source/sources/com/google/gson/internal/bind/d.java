package com.google.gson.internal.bind;

import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.f;
import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.b;
import com.google.gson.internal.c;
import com.google.gson.internal.h;
import com.google.gson.j;
import com.google.gson.k;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/d.class */
public final class d implements k {

    /* renamed from: a  reason: collision with root package name */
    final boolean f32710a;

    /* renamed from: b  reason: collision with root package name */
    private final c f32711b;

    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/d$a.class */
    final class a<K, V> extends j<Map<K, V>> {

        /* renamed from: b  reason: collision with root package name */
        private final j<K> f32713b;

        /* renamed from: c  reason: collision with root package name */
        private final j<V> f32714c;

        /* renamed from: d  reason: collision with root package name */
        private final h<? extends Map<K, V>> f32715d;

        public a(f fVar, Type type, j<K> jVar, Type type2, j<V> jVar2, h<? extends Map<K, V>> hVar) {
            this.f32713b = new i(fVar, jVar, type);
            this.f32714c = new i(fVar, jVar2, type2);
            this.f32715d = hVar;
        }

        @Override // com.google.gson.j
        public final /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            JsonToken peek = jsonReader.peek();
            if (peek == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            Map map = (Map) this.f32715d.a();
            if (peek == JsonToken.BEGIN_ARRAY) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginArray();
                    K read = this.f32713b.read(jsonReader);
                    if (map.put(read, this.f32714c.read(jsonReader)) == null) {
                        jsonReader.endArray();
                    } else {
                        throw new JsonSyntaxException("duplicate key: ".concat(String.valueOf(read)));
                    }
                }
                jsonReader.endArray();
            } else {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    JsonReaderInternalAccess.INSTANCE.promoteNameToValue(jsonReader);
                    K read2 = this.f32713b.read(jsonReader);
                    if (map.put(read2, this.f32714c.read(jsonReader)) != null) {
                        throw new JsonSyntaxException("duplicate key: ".concat(String.valueOf(read2)));
                    }
                }
                jsonReader.endObject();
            }
            return map;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.gson.j
        public final /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            String str;
            Map map = (Map) obj;
            if (map == null) {
                jsonWriter.nullValue();
            } else if (!d.this.f32710a) {
                jsonWriter.beginObject();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    jsonWriter.name(String.valueOf(entry.getKey()));
                    this.f32714c.write(jsonWriter, entry.getValue());
                }
                jsonWriter.endObject();
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                boolean z = false;
                for (Map.Entry<K, V> entry2 : map.entrySet()) {
                    JsonElement jsonTree = this.f32713b.toJsonTree(entry2.getKey());
                    arrayList.add(jsonTree);
                    arrayList2.add(entry2.getValue());
                    z |= jsonTree.isJsonArray() || jsonTree.isJsonObject();
                }
                if (z) {
                    jsonWriter.beginArray();
                    int size = arrayList.size();
                    for (int i = 0; i < size; i++) {
                        jsonWriter.beginArray();
                        com.google.gson.internal.k.a((JsonElement) arrayList.get(i), jsonWriter);
                        this.f32714c.write(jsonWriter, arrayList2.get(i));
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
                        } else if (asJsonPrimitive.isString()) {
                            str = asJsonPrimitive.getAsString();
                        } else {
                            throw new AssertionError();
                        }
                    } else if (jsonElement.isJsonNull()) {
                        str = JsonReaderKt.NULL;
                    } else {
                        throw new AssertionError();
                    }
                    jsonWriter.name(str);
                    this.f32714c.write(jsonWriter, arrayList2.get(i2));
                }
                jsonWriter.endObject();
            }
        }
    }

    public d(c cVar, boolean z) {
        this.f32711b = cVar;
        this.f32710a = z;
    }

    @Override // com.google.gson.k
    public final <T> j<T> create(f fVar, com.google.gson.a.a<T> aVar) {
        Type type = aVar.getType();
        if (!Map.class.isAssignableFrom(aVar.getRawType())) {
            return null;
        }
        Type[] b2 = b.b(type, b.b(type));
        Type type2 = b2[0];
        return new a(fVar, b2[0], (type2 == Boolean.TYPE || type2 == Boolean.class) ? j.f : fVar.a((com.google.gson.a.a) com.google.gson.a.a.get(type2)), b2[1], fVar.a((com.google.gson.a.a) com.google.gson.a.a.get(b2[1])), this.f32711b.a(aVar));
    }
}
