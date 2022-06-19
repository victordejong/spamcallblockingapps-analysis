package com.google.firebase.encoders.p307h;

import android.util.Base64;
import android.util.JsonWriter;
import com.google.firebase.encoders.AbstractC9153c;
import com.google.firebase.encoders.AbstractC9154d;
import com.google.firebase.encoders.AbstractC9155e;
import com.google.firebase.encoders.AbstractC9156f;
import com.google.firebase.encoders.C9152b;
import com.google.firebase.encoders.EncodingException;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Map;
/* renamed from: com.google.firebase.encoders.h.e */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/encoders/h/e.class */
final class C9165e implements AbstractC9154d, AbstractC9156f {

    /* renamed from: a */
    private C9165e f39475a = null;

    /* renamed from: b */
    private boolean f39476b = true;

    /* renamed from: c */
    private final JsonWriter f39477c;

    /* renamed from: d */
    private final Map<Class<?>, AbstractC9153c<?>> f39478d;

    /* renamed from: e */
    private final Map<Class<?>, AbstractC9155e<?>> f39479e;

    /* renamed from: f */
    private final AbstractC9153c<Object> f39480f;

    /* renamed from: g */
    private final boolean f39481g;

    public C9165e(Writer writer, Map<Class<?>, AbstractC9153c<?>> map, Map<Class<?>, AbstractC9155e<?>> map2, AbstractC9153c<Object> abstractC9153c, boolean z) {
        this.f39477c = new JsonWriter(writer);
        this.f39478d = map;
        this.f39479e = map2;
        this.f39480f = abstractC9153c;
        this.f39481g = z;
    }

    /* renamed from: s */
    private boolean m1670s(Object obj) {
        return obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number);
    }

    /* renamed from: v */
    private C9165e m1667v(String str, Object obj) {
        m1665x();
        this.f39477c.name(str);
        if (obj == null) {
            this.f39477c.nullValue();
            return this;
        }
        return m1678k(obj, false);
    }

    /* renamed from: w */
    private C9165e m1666w(String str, Object obj) {
        if (obj == null) {
            return this;
        }
        m1665x();
        this.f39477c.name(str);
        return m1678k(obj, false);
    }

    /* renamed from: x */
    private void m1665x() {
        if (this.f39476b) {
            C9165e c9165e = this.f39475a;
            if (c9165e == null) {
                return;
            }
            c9165e.m1665x();
            this.f39475a.f39476b = false;
            this.f39475a = null;
            this.f39477c.endObject();
            return;
        }
        throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
    }

    @Override // com.google.firebase.encoders.AbstractC9154d
    /* renamed from: a */
    public AbstractC9154d mo1688a(C9152b c9152b, boolean z) {
        return m1673p(c9152b.m1711a(), z);
    }

    @Override // com.google.firebase.encoders.AbstractC9154d
    /* renamed from: b */
    public AbstractC9154d mo1687b(C9152b c9152b, long j) {
        return m1675n(c9152b.m1711a(), j);
    }

    @Override // com.google.firebase.encoders.AbstractC9154d
    /* renamed from: c */
    public AbstractC9154d mo1686c(C9152b c9152b, int i) {
        return mo1685d(c9152b.m1711a(), i);
    }

    @Override // com.google.firebase.encoders.AbstractC9154d
    /* renamed from: h */
    public AbstractC9154d mo1681h(C9152b c9152b, Object obj) {
        return mo1682g(c9152b.m1711a(), obj);
    }

    /* renamed from: i */
    public C9165e m1680i(int i) {
        m1665x();
        this.f39477c.value(i);
        return this;
    }

    /* renamed from: j */
    public C9165e m1679j(long j) {
        m1665x();
        this.f39477c.value(j);
        return this;
    }

    /* renamed from: k */
    public C9165e m1678k(Object obj, boolean z) {
        int[] iArr;
        if (z && m1670s(obj)) {
            throw new EncodingException(String.format("%s cannot be encoded inline", obj == null ? null : obj.getClass()));
        } else if (obj == null) {
            this.f39477c.nullValue();
            return this;
        } else if (obj instanceof Number) {
            this.f39477c.value((Number) obj);
            return this;
        } else if (obj.getClass().isArray()) {
            if (obj instanceof byte[]) {
                return m1671r((byte[]) obj);
            } else {
                this.f39477c.beginArray();
                if (obj instanceof int[]) {
                    int length = ((int[]) obj).length;
                    for (int i = 0; i < length; i++) {
                        this.f39477c.value(iArr[i]);
                    }
                } else if (obj instanceof long[]) {
                    for (long j : (long[]) obj) {
                        m1679j(j);
                    }
                } else if (obj instanceof double[]) {
                    for (double d : (double[]) obj) {
                        this.f39477c.value(d);
                    }
                } else if (obj instanceof boolean[]) {
                    for (boolean z2 : (boolean[]) obj) {
                        this.f39477c.value(z2);
                    }
                } else if (obj instanceof Number[]) {
                    for (Number number : (Number[]) obj) {
                        m1678k(number, false);
                    }
                } else {
                    for (Object obj2 : (Object[]) obj) {
                        m1678k(obj2, false);
                    }
                }
                this.f39477c.endArray();
                return this;
            }
        } else if (obj instanceof Collection) {
            this.f39477c.beginArray();
            for (Object obj3 : (Collection) obj) {
                m1678k(obj3, false);
            }
            this.f39477c.endArray();
            return this;
        } else if (obj instanceof Map) {
            this.f39477c.beginObject();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                try {
                    mo1682g((String) key, entry.getValue());
                } catch (ClassCastException e) {
                    throw new EncodingException(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e);
                }
            }
            this.f39477c.endObject();
            return this;
        } else {
            AbstractC9153c<?> abstractC9153c = this.f39478d.get(obj.getClass());
            if (abstractC9153c != null) {
                return m1668u(abstractC9153c, obj, z);
            }
            AbstractC9155e<?> abstractC9155e = this.f39479e.get(obj.getClass());
            if (abstractC9155e != null) {
                abstractC9155e.mo1690a(obj, this);
                return this;
            } else if (!(obj instanceof Enum)) {
                return m1668u(this.f39480f, obj, z);
            } else {
                mo1684e(((Enum) obj).name());
                return this;
            }
        }
    }

    /* renamed from: l */
    public C9165e mo1684e(String str) {
        m1665x();
        this.f39477c.value(str);
        return this;
    }

    /* renamed from: m */
    public C9165e mo1685d(String str, int i) {
        m1665x();
        this.f39477c.name(str);
        return m1680i(i);
    }

    /* renamed from: n */
    public C9165e m1675n(String str, long j) {
        m1665x();
        this.f39477c.name(str);
        return m1679j(j);
    }

    /* renamed from: o */
    public C9165e mo1682g(String str, Object obj) {
        return this.f39481g ? m1666w(str, obj) : m1667v(str, obj);
    }

    /* renamed from: p */
    public C9165e m1673p(String str, boolean z) {
        m1665x();
        this.f39477c.name(str);
        return mo1683f(z);
    }

    /* renamed from: q */
    public C9165e mo1683f(boolean z) {
        m1665x();
        this.f39477c.value(z);
        return this;
    }

    /* renamed from: r */
    public C9165e m1671r(byte[] bArr) {
        m1665x();
        if (bArr == null) {
            this.f39477c.nullValue();
        } else {
            this.f39477c.value(Base64.encodeToString(bArr, 2));
        }
        return this;
    }

    /* renamed from: t */
    public void m1669t() {
        m1665x();
        this.f39477c.flush();
    }

    /* renamed from: u */
    C9165e m1668u(AbstractC9153c<Object> abstractC9153c, Object obj, boolean z) {
        if (!z) {
            this.f39477c.beginObject();
        }
        abstractC9153c.mo1130a(obj, this);
        if (!z) {
            this.f39477c.endObject();
        }
        return this;
    }
}
