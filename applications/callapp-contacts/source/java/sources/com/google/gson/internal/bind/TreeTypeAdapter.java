package com.google.gson.internal.bind;

import com.google.gson.AbstractC16088j;
import com.google.gson.AbstractC16090k;
import com.google.gson.C15965f;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.internal.C15977a;
import com.google.gson.internal.C16080k;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/TreeTypeAdapter.class */
public final class TreeTypeAdapter<T> extends AbstractC16088j<T> {

    /* renamed from: a */
    final C15965f f56649a;

    /* renamed from: b */
    private final JsonSerializer<T> f56650b;

    /* renamed from: c */
    private final JsonDeserializer<T> f56651c;

    /* renamed from: d */
    private final C15950a<T> f56652d;

    /* renamed from: e */
    private final AbstractC16090k f56653e;

    /* renamed from: f */
    private final TreeTypeAdapter<T>.GsonContextImpl f56654f = new GsonContextImpl();

    /* renamed from: g */
    private AbstractC16088j<T> f56655g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl.class */
    public final class GsonContextImpl implements JsonDeserializationContext, JsonSerializationContext {
        private GsonContextImpl() {
            TreeTypeAdapter.this = r4;
        }

        @Override // com.google.gson.JsonDeserializationContext
        public final <R> R deserialize(JsonElement jsonElement, Type type) throws JsonParseException {
            return (R) TreeTypeAdapter.this.f56649a.m7978a(jsonElement, type);
        }

        @Override // com.google.gson.JsonSerializationContext
        public final JsonElement serialize(Object obj) {
            return TreeTypeAdapter.this.f56649a.m7970a(obj);
        }

        @Override // com.google.gson.JsonSerializationContext
        public final JsonElement serialize(Object obj, Type type) {
            return TreeTypeAdapter.this.f56649a.m7967a(obj, type);
        }
    }

    /* renamed from: com.google.gson.internal.bind.TreeTypeAdapter$a */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/TreeTypeAdapter$a.class */
    public static final class C15988a implements AbstractC16090k {

        /* renamed from: a */
        private final C15950a<?> f56656a;

        /* renamed from: b */
        private final boolean f56657b;

        /* renamed from: c */
        private final Class<?> f56658c;

        /* renamed from: d */
        private final JsonSerializer<?> f56659d;

        /* renamed from: e */
        private final JsonDeserializer<?> f56660e;

        public C15988a(Object obj, C15950a<?> c15950a, boolean z, Class<?> cls) {
            JsonDeserializer<?> jsonDeserializer = null;
            JsonSerializer<?> jsonSerializer = obj instanceof JsonSerializer ? (JsonSerializer) obj : null;
            this.f56659d = jsonSerializer;
            jsonDeserializer = obj instanceof JsonDeserializer ? (JsonDeserializer) obj : jsonDeserializer;
            this.f56660e = jsonDeserializer;
            C15977a.m7954a((jsonSerializer == null && jsonDeserializer == null) ? false : true);
            this.f56656a = c15950a;
            this.f56657b = z;
            this.f56658c = cls;
        }

        @Override // com.google.gson.AbstractC16090k
        public final <T> AbstractC16088j<T> create(C15965f c15965f, C15950a<T> c15950a) {
            C15950a<?> c15950a2 = this.f56656a;
            if (c15950a2 != null ? c15950a2.equals(c15950a) || (this.f56657b && this.f56656a.getType() == c15950a.getRawType()) : this.f56658c.isAssignableFrom(c15950a.getRawType())) {
                return new TreeTypeAdapter(this.f56659d, this.f56660e, c15965f, c15950a, this);
            }
            return null;
        }
    }

    public TreeTypeAdapter(JsonSerializer<T> jsonSerializer, JsonDeserializer<T> jsonDeserializer, C15965f c15965f, C15950a<T> c15950a, AbstractC16090k abstractC16090k) {
        this.f56650b = jsonSerializer;
        this.f56651c = jsonDeserializer;
        this.f56649a = c15965f;
        this.f56652d = c15950a;
        this.f56653e = abstractC16090k;
    }

    /* renamed from: a */
    private AbstractC16088j<T> m7933a() {
        AbstractC16088j<T> abstractC16088j = this.f56655g;
        if (abstractC16088j != null) {
            return abstractC16088j;
        }
        AbstractC16088j<T> m7976a = this.f56649a.m7976a(this.f56653e, this.f56652d);
        this.f56655g = m7976a;
        return m7976a;
    }

    @Override // com.google.gson.AbstractC16088j
    public final T read(JsonReader jsonReader) throws IOException {
        if (this.f56651c == null) {
            return m7933a().read(jsonReader);
        }
        JsonElement m7868a = C16080k.m7868a(jsonReader);
        if (!m7868a.isJsonNull()) {
            return this.f56651c.deserialize(m7868a, this.f56652d.getType(), this.f56654f);
        }
        return null;
    }

    @Override // com.google.gson.AbstractC16088j
    public final void write(JsonWriter jsonWriter, T t) throws IOException {
        JsonSerializer<T> jsonSerializer = this.f56650b;
        if (jsonSerializer == null) {
            m7933a().write(jsonWriter, t);
        } else if (t == null) {
            jsonWriter.nullValue();
        } else {
            C16080k.m7869a(jsonSerializer.serialize(t, this.f56652d.getType(), this.f56654f), jsonWriter);
        }
    }
}
