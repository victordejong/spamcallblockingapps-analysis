package com.google.gson.internal;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.List;
import p081h.p203i.p384e.AbstractC10089a;
import p081h.p203i.p384e.AbstractC10117u;
import p081h.p203i.p384e.C10090b;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10121d;
import p081h.p203i.p384e.p385v.AbstractC10122e;
import p081h.p203i.p384e.p390x.C10173a;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
/* loaded from: classes2-dex2jar.jar:com/google/gson/internal/Excluder.class */
public final class Excluder implements AbstractC10117u, Cloneable {

    /* renamed from: g */
    public static final Excluder f7825g = new Excluder();

    /* renamed from: d */
    public boolean f7829d;

    /* renamed from: a */
    public double f7826a = -1.0d;

    /* renamed from: b */
    public int f7827b = 136;

    /* renamed from: c */
    public boolean f7828c = true;

    /* renamed from: e */
    public List<AbstractC10089a> f7830e = Collections.emptyList();

    /* renamed from: f */
    public List<AbstractC10089a> f7831f = Collections.emptyList();

    /* renamed from: a */
    public Excluder m30965a(int... iArr) {
        Excluder clone = clone();
        clone.f7827b = 0;
        for (int i : iArr) {
            clone.f7827b = i | clone.f7827b;
        }
        return clone;
    }

    /* renamed from: a */
    public final boolean m30971a(AbstractC10121d dVar) {
        return dVar == null || dVar.value() <= this.f7826a;
    }

    /* renamed from: a */
    public final boolean m30970a(AbstractC10121d dVar, AbstractC10122e eVar) {
        return m30971a(dVar) && m30969a(eVar);
    }

    /* renamed from: a */
    public final boolean m30969a(AbstractC10122e eVar) {
        return eVar == null || eVar.value() > this.f7826a;
    }

    /* renamed from: a */
    public final boolean m30968a(Class<?> cls) {
        if (this.f7826a == -1.0d || m30970a((AbstractC10121d) cls.getAnnotation(AbstractC10121d.class), (AbstractC10122e) cls.getAnnotation(AbstractC10122e.class))) {
            return (!this.f7828c && m30962c(cls)) || m30964b(cls);
        }
        return true;
    }

    /* renamed from: a */
    public boolean m30967a(Class<?> cls, boolean z) {
        return m30968a(cls) || m30963b(cls, z);
    }

    /* renamed from: a */
    public boolean m30966a(Field field, boolean z) {
        if ((this.f7827b & field.getModifiers()) != 0) {
            return true;
        }
        if (!(this.f7826a == -1.0d || m30970a((AbstractC10121d) field.getAnnotation(AbstractC10121d.class), (AbstractC10122e) field.getAnnotation(AbstractC10122e.class))) || field.isSynthetic()) {
            return true;
        }
        if (this.f7829d) {
            AbstractC10118a aVar = (AbstractC10118a) field.getAnnotation(AbstractC10118a.class);
            if (aVar == null) {
                return true;
            }
            if (z) {
                if (!aVar.serialize()) {
                    return true;
                }
            } else if (!aVar.deserialize()) {
                return true;
            }
        }
        if ((!this.f7828c && m30962c(field.getType())) || m30964b(field.getType())) {
            return true;
        }
        List<AbstractC10089a> list = z ? this.f7830e : this.f7831f;
        if (list.isEmpty()) {
            return false;
        }
        C10090b bVar = new C10090b(field);
        for (AbstractC10089a aVar2 : list) {
            if (aVar2.m13391a(bVar)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final boolean m30964b(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    /* renamed from: b */
    public final boolean m30963b(Class<?> cls, boolean z) {
        for (AbstractC10089a aVar : z ? this.f7830e : this.f7831f) {
            if (aVar.shouldSkipClass(cls)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public final boolean m30962c(Class<?> cls) {
        return cls.isMemberClass() && !m30961d(cls);
    }

    public Excluder clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Override // p081h.p203i.p384e.AbstractC10117u
    public <T> TypeAdapter<T> create(final Gson gson, final C10173a<T> aVar) {
        Class<? super T> a = aVar.m13280a();
        boolean a2 = m30968a(a);
        final boolean z = a2 || m30963b(a, true);
        final boolean z2 = a2 || m30963b(a, false);
        if (z || z2) {
            return new TypeAdapter<T>() { // from class: com.google.gson.internal.Excluder.1

                /* renamed from: a */
                public TypeAdapter<T> f7832a;

                /* JADX WARN: Multi-variable type inference failed */
                /* renamed from: a */
                public final TypeAdapter<T> m30960a() {
                    TypeAdapter typeAdapter = this.f7832a;
                    TypeAdapter typeAdapter2 = typeAdapter;
                    if (typeAdapter == null) {
                        TypeAdapter a3 = gson.m30996a(Excluder.this, aVar);
                        this.f7832a = a3;
                        typeAdapter2 = a3;
                    }
                    return typeAdapter2;
                }

                /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
                @Override // com.google.gson.TypeAdapter
                public T read(C10174a aVar2) throws IOException {
                    if (!z2) {
                        return m30960a().read(aVar2);
                    }
                    aVar2.mo13266L();
                    return null;
                }

                @Override // com.google.gson.TypeAdapter
                public void write(C10177c cVar, T t) throws IOException {
                    if (z) {
                        cVar.mo13214k();
                    } else {
                        m30960a().write(cVar, t);
                    }
                }
            };
        }
        return null;
    }

    /* renamed from: d */
    public final boolean m30961d(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }
}
