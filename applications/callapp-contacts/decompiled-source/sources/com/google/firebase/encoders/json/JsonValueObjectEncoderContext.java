package com.google.firebase.encoders.json;

import android.util.Base64;
import android.util.JsonWriter;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.c;
import com.google.firebase.encoders.d;
import com.google.firebase.encoders.e;
import com.google.firebase.encoders.f;
import com.google.firebase.encoders.g;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/encoders/json/JsonValueObjectEncoderContext.class */
public final class JsonValueObjectEncoderContext implements e, g {
    private final d<Object> fallbackEncoder;
    private final boolean ignoreNullValues;
    private final JsonWriter jsonWriter;
    private final Map<Class<?>, d<?>> objectEncoders;
    private final Map<Class<?>, f<?>> valueEncoders;
    private JsonValueObjectEncoderContext childContext = null;
    private boolean active = true;

    private JsonValueObjectEncoderContext(JsonValueObjectEncoderContext jsonValueObjectEncoderContext) {
        this.jsonWriter = jsonValueObjectEncoderContext.jsonWriter;
        this.objectEncoders = jsonValueObjectEncoderContext.objectEncoders;
        this.valueEncoders = jsonValueObjectEncoderContext.valueEncoders;
        this.fallbackEncoder = jsonValueObjectEncoderContext.fallbackEncoder;
        this.ignoreNullValues = jsonValueObjectEncoderContext.ignoreNullValues;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JsonValueObjectEncoderContext(Writer writer, Map<Class<?>, d<?>> map, Map<Class<?>, f<?>> map2, d<Object> dVar, boolean z) {
        this.jsonWriter = new JsonWriter(writer);
        this.objectEncoders = map;
        this.valueEncoders = map2;
        this.fallbackEncoder = dVar;
        this.ignoreNullValues = z;
    }

    private boolean cannotBeInline(Object obj) {
        return obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number);
    }

    private JsonValueObjectEncoderContext internalAdd(String str, Object obj) throws IOException, EncodingException {
        maybeUnNest();
        this.jsonWriter.name(str);
        if (obj != null) {
            return add(obj, false);
        }
        this.jsonWriter.nullValue();
        return this;
    }

    private JsonValueObjectEncoderContext internalAddIgnoreNullValues(String str, Object obj) throws IOException, EncodingException {
        if (obj == null) {
            return this;
        }
        maybeUnNest();
        this.jsonWriter.name(str);
        return add(obj, false);
    }

    private void maybeUnNest() throws IOException {
        if (this.active) {
            JsonValueObjectEncoderContext jsonValueObjectEncoderContext = this.childContext;
            if (jsonValueObjectEncoderContext != null) {
                jsonValueObjectEncoderContext.maybeUnNest();
                this.childContext.active = false;
                this.childContext = null;
                this.jsonWriter.endObject();
                return;
            }
            return;
        }
        throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
    }

    public final e add(c cVar, double d2) throws IOException {
        return add(cVar.a(), d2);
    }

    public final e add(c cVar, float f) throws IOException {
        return add(cVar.a(), f);
    }

    @Override // com.google.firebase.encoders.e
    public final e add(c cVar, int i) throws IOException {
        return add(cVar.a(), i);
    }

    @Override // com.google.firebase.encoders.e
    public final e add(c cVar, long j) throws IOException {
        return add(cVar.a(), j);
    }

    @Override // com.google.firebase.encoders.e
    public final e add(c cVar, Object obj) throws IOException {
        return add(cVar.a(), obj);
    }

    @Override // com.google.firebase.encoders.e
    public final e add(c cVar, boolean z) throws IOException {
        return add(cVar.a(), z);
    }

    public final JsonValueObjectEncoderContext add(double d2) throws IOException {
        maybeUnNest();
        this.jsonWriter.value(d2);
        return this;
    }

    public final JsonValueObjectEncoderContext add(float f) throws IOException {
        maybeUnNest();
        this.jsonWriter.value(f);
        return this;
    }

    public final JsonValueObjectEncoderContext add(int i) throws IOException {
        maybeUnNest();
        this.jsonWriter.value(i);
        return this;
    }

    public final JsonValueObjectEncoderContext add(long j) throws IOException {
        maybeUnNest();
        this.jsonWriter.value(j);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final JsonValueObjectEncoderContext add(Object obj, boolean z) throws IOException {
        if (z && cannotBeInline(obj)) {
            throw new EncodingException(String.format("%s cannot be encoded inline", obj == null ? null : obj.getClass()));
        } else if (obj == null) {
            this.jsonWriter.nullValue();
            return this;
        } else if (obj instanceof Number) {
            this.jsonWriter.value((Number) obj);
            return this;
        } else if (obj.getClass().isArray()) {
            if (obj instanceof byte[]) {
                return add((byte[]) obj);
            }
            this.jsonWriter.beginArray();
            if (obj instanceof int[]) {
                for (int i : (int[]) obj) {
                    this.jsonWriter.value(i);
                }
            } else if (obj instanceof long[]) {
                for (long j : (long[]) obj) {
                    add(j);
                }
            } else if (obj instanceof double[]) {
                for (double d2 : (double[]) obj) {
                    this.jsonWriter.value(d2);
                }
            } else if (obj instanceof boolean[]) {
                for (boolean z2 : (boolean[]) obj) {
                    this.jsonWriter.value(z2);
                }
            } else if (obj instanceof Number[]) {
                for (Number number : (Number[]) obj) {
                    add((Object) number, false);
                }
            } else {
                for (Object obj2 : (Object[]) obj) {
                    add(obj2, false);
                }
            }
            this.jsonWriter.endArray();
            return this;
        } else if (obj instanceof Collection) {
            this.jsonWriter.beginArray();
            for (Object obj3 : (Collection) obj) {
                add(obj3, false);
            }
            this.jsonWriter.endArray();
            return this;
        } else if (obj instanceof Map) {
            this.jsonWriter.beginObject();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                try {
                    add((String) key, entry.getValue());
                } catch (ClassCastException e) {
                    throw new EncodingException(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e);
                }
            }
            this.jsonWriter.endObject();
            return this;
        } else {
            d<?> dVar = this.objectEncoders.get(obj.getClass());
            if (dVar != null) {
                return doEncode(dVar, obj, z);
            }
            f<?> fVar = this.valueEncoders.get(obj.getClass());
            if (fVar != null) {
                fVar.encode(obj, this);
                return this;
            } else if (!(obj instanceof Enum)) {
                return doEncode(this.fallbackEncoder, obj, z);
            } else {
                add(((Enum) obj).name());
                return this;
            }
        }
    }

    @Override // com.google.firebase.encoders.g
    public final JsonValueObjectEncoderContext add(String str) throws IOException {
        maybeUnNest();
        this.jsonWriter.value(str);
        return this;
    }

    public final JsonValueObjectEncoderContext add(String str, double d2) throws IOException {
        maybeUnNest();
        this.jsonWriter.name(str);
        return add(d2);
    }

    @Override // com.google.firebase.encoders.e
    public final JsonValueObjectEncoderContext add(String str, int i) throws IOException {
        maybeUnNest();
        this.jsonWriter.name(str);
        return add(i);
    }

    public final JsonValueObjectEncoderContext add(String str, long j) throws IOException {
        maybeUnNest();
        this.jsonWriter.name(str);
        return add(j);
    }

    @Override // com.google.firebase.encoders.e
    public final JsonValueObjectEncoderContext add(String str, Object obj) throws IOException {
        return this.ignoreNullValues ? internalAddIgnoreNullValues(str, obj) : internalAdd(str, obj);
    }

    public final JsonValueObjectEncoderContext add(String str, boolean z) throws IOException {
        maybeUnNest();
        this.jsonWriter.name(str);
        return add(z);
    }

    @Override // com.google.firebase.encoders.g
    public final JsonValueObjectEncoderContext add(boolean z) throws IOException {
        maybeUnNest();
        this.jsonWriter.value(z);
        return this;
    }

    public final JsonValueObjectEncoderContext add(byte[] bArr) throws IOException {
        maybeUnNest();
        if (bArr == null) {
            this.jsonWriter.nullValue();
        } else {
            this.jsonWriter.value(Base64.encodeToString(bArr, 2));
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void close() throws IOException {
        maybeUnNest();
        this.jsonWriter.flush();
    }

    final JsonValueObjectEncoderContext doEncode(d<Object> dVar, Object obj, boolean z) throws IOException {
        if (!z) {
            this.jsonWriter.beginObject();
        }
        dVar.encode(obj, this);
        if (!z) {
            this.jsonWriter.endObject();
        }
        return this;
    }

    public final e inline(Object obj) throws IOException {
        return add(obj, true);
    }

    public final e nested(c cVar) throws IOException {
        return nested(cVar.a());
    }

    public final e nested(String str) throws IOException {
        maybeUnNest();
        this.childContext = new JsonValueObjectEncoderContext(this);
        this.jsonWriter.name(str);
        this.jsonWriter.beginObject();
        return this.childContext;
    }
}
