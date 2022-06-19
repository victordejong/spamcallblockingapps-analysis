package com.google.gson.internal;

import com.google.gson.AbstractC15955b;
import com.google.gson.AbstractC16088j;
import com.google.gson.AbstractC16090k;
import com.google.gson.C15965f;
import com.google.gson.annotations.AbstractC15953c;
import com.google.gson.annotations.AbstractC15954d;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.gson.internal.d */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/d.class */
public final class C16065d implements AbstractC16090k, Cloneable {

    /* renamed from: a */
    public static final C16065d f56799a = new C16065d();

    /* renamed from: e */
    public boolean f56803e;

    /* renamed from: b */
    public double f56800b = -1.0d;

    /* renamed from: c */
    public int f56801c = 136;

    /* renamed from: d */
    public boolean f56802d = true;

    /* renamed from: f */
    public List<AbstractC15955b> f56804f = Collections.emptyList();

    /* renamed from: g */
    public List<AbstractC15955b> f56805g = Collections.emptyList();

    /* renamed from: a */
    public C16065d clone() {
        try {
            return (C16065d) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    private boolean m7897a(AbstractC15953c abstractC15953c) {
        return abstractC15953c == null || abstractC15953c.m7986a() <= this.f56800b;
    }

    /* renamed from: a */
    private boolean m7895a(AbstractC15954d abstractC15954d) {
        return abstractC15954d == null || abstractC15954d.m7985a() > this.f56800b;
    }

    /* renamed from: b */
    public static boolean m7892b(Class<?> cls) {
        if (!Enum.class.isAssignableFrom(cls)) {
            return cls.isAnonymousClass() || cls.isLocalClass();
        }
        return false;
    }

    /* renamed from: c */
    public static boolean m7891c(Class<?> cls) {
        return cls.isMemberClass() && !m7890d(cls);
    }

    /* renamed from: d */
    private static boolean m7890d(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    /* renamed from: a */
    public final boolean m7896a(AbstractC15953c abstractC15953c, AbstractC15954d abstractC15954d) {
        return m7897a(abstractC15953c) && m7895a(abstractC15954d);
    }

    /* renamed from: a */
    public final boolean m7894a(Class<?> cls) {
        if (this.f56800b == -1.0d || m7896a((AbstractC15953c) cls.getAnnotation(AbstractC15953c.class), (AbstractC15954d) cls.getAnnotation(AbstractC15954d.class))) {
            return (!this.f56802d && m7891c(cls)) || m7892b(cls);
        }
        return true;
    }

    /* renamed from: a */
    public final boolean m7893a(boolean z) {
        for (AbstractC15955b abstractC15955b : z ? this.f56804f : this.f56805g) {
            if (abstractC15955b.m7983b()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.gson.AbstractC16090k
    public final <T> AbstractC16088j<T> create(final C15965f c15965f, final C15950a<T> c15950a) {
        boolean m7894a = m7894a(c15950a.getRawType());
        boolean z = m7894a || m7893a(true);
        boolean z2 = m7894a || m7893a(false);
        if (z || z2) {
            final boolean z3 = z2;
            final boolean z4 = z;
            return new AbstractC16088j<T>() { // from class: com.google.gson.internal.d.1

                /* renamed from: f */
                private AbstractC16088j<T> f56811f;

                /* renamed from: a */
                private AbstractC16088j<T> m7889a() {
                    AbstractC16088j<T> abstractC16088j = this.f56811f;
                    if (abstractC16088j != 0) {
                        return abstractC16088j;
                    }
                    AbstractC16088j<T> m7976a = c15965f.m7976a(C16065d.this, c15950a);
                    this.f56811f = m7976a;
                    return m7976a;
                }

                /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
                @Override // com.google.gson.AbstractC16088j
                public final T read(JsonReader jsonReader) throws IOException {
                    if (z3) {
                        jsonReader.skipValue();
                        return null;
                    }
                    return m7889a().read(jsonReader);
                }

                @Override // com.google.gson.AbstractC16088j
                public final void write(JsonWriter jsonWriter, T t) throws IOException {
                    if (z4) {
                        jsonWriter.nullValue();
                    } else {
                        m7889a().write(jsonWriter, t);
                    }
                }
            };
        }
        return null;
    }
}
