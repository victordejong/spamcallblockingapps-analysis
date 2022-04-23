package com.google.gson.internal;

import com.google.gson.a.a;
import com.google.gson.annotations.c;
import com.google.gson.b;
import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.k;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/d.class */
public final class d implements k, Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public static final d f32784a = new d();
    public boolean e;

    /* renamed from: b  reason: collision with root package name */
    public double f32785b = -1.0d;

    /* renamed from: c  reason: collision with root package name */
    public int f32786c = 136;

    /* renamed from: d  reason: collision with root package name */
    public boolean f32787d = true;
    public List<b> f = Collections.emptyList();
    public List<b> g = Collections.emptyList();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public d clone() {
        try {
            return (d) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    private boolean a(c cVar) {
        return cVar == null || cVar.a() <= this.f32785b;
    }

    private boolean a(com.google.gson.annotations.d dVar) {
        return dVar == null || dVar.a() > this.f32785b;
    }

    public static boolean b(Class<?> cls) {
        if (!Enum.class.isAssignableFrom(cls)) {
            return cls.isAnonymousClass() || cls.isLocalClass();
        }
        return false;
    }

    public static boolean c(Class<?> cls) {
        return cls.isMemberClass() && !d(cls);
    }

    private static boolean d(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    public final boolean a(c cVar, com.google.gson.annotations.d dVar) {
        return a(cVar) && a(dVar);
    }

    public final boolean a(Class<?> cls) {
        if (this.f32785b == -1.0d || a((c) cls.getAnnotation(c.class), (com.google.gson.annotations.d) cls.getAnnotation(com.google.gson.annotations.d.class))) {
            return (!this.f32787d && c(cls)) || b(cls);
        }
        return true;
    }

    public final boolean a(boolean z) {
        for (b bVar : z ? this.f : this.g) {
            if (bVar.b()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.gson.k
    public final <T> j<T> create(final f fVar, final a<T> aVar) {
        boolean a2 = a(aVar.getRawType());
        final boolean z = a2 || a(true);
        final boolean z2 = a2 || a(false);
        if (z || z2) {
            return new j<T>() { // from class: com.google.gson.internal.d.1
                private j<T> f;

                private j<T> a() {
                    j<T> jVar = this.f;
                    if (jVar != 0) {
                        return jVar;
                    }
                    j<T> a3 = fVar.a(d.this, aVar);
                    this.f = a3;
                    return a3;
                }

                /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
                @Override // com.google.gson.j
                public final T read(JsonReader jsonReader) throws IOException {
                    if (!z2) {
                        return a().read(jsonReader);
                    }
                    jsonReader.skipValue();
                    return null;
                }

                @Override // com.google.gson.j
                public final void write(JsonWriter jsonWriter, T t) throws IOException {
                    if (z) {
                        jsonWriter.nullValue();
                    } else {
                        a().write(jsonWriter, t);
                    }
                }
            };
        }
        return null;
    }
}
