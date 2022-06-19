package p242t5;

import android.util.Base64;
import android.util.JsonWriter;
import com.google.firebase.encoders.EncodingException;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Map;
import p221r5.AbstractC4211d;
import p221r5.AbstractC4212e;
import p221r5.AbstractC4213f;
import p221r5.AbstractC4214g;
import p221r5.C4210c;
/* renamed from: t5.f */
/* loaded from: classes-dex2jar.jar:t5/f.class */
public final class C4406f implements AbstractC4212e, AbstractC4214g {

    /* renamed from: a */
    public boolean f13728a = true;

    /* renamed from: b */
    public final JsonWriter f13729b;

    /* renamed from: c */
    public final Map<Class<?>, AbstractC4211d<?>> f13730c;

    /* renamed from: d */
    public final Map<Class<?>, AbstractC4213f<?>> f13731d;

    /* renamed from: e */
    public final AbstractC4211d<Object> f13732e;

    /* renamed from: f */
    public final boolean f13733f;

    public C4406f(Writer writer, Map<Class<?>, AbstractC4211d<?>> map, Map<Class<?>, AbstractC4213f<?>> map2, AbstractC4211d<Object> abstractC4211d, boolean z) {
        this.f13729b = new JsonWriter(writer);
        this.f13730c = map;
        this.f13731d = map2;
        this.f13732e = abstractC4211d;
        this.f13733f = z;
    }

    @Override // p221r5.AbstractC4212e
    /* renamed from: a */
    public AbstractC4212e mo964a(C4210c c4210c, long j) throws IOException {
        String str = c4210c.f13204a;
        m956i();
        this.f13729b.name(str);
        m956i();
        this.f13729b.value(j);
        return this;
    }

    @Override // p221r5.AbstractC4212e
    /* renamed from: b */
    public AbstractC4212e mo963b(C4210c c4210c, int i) throws IOException {
        String str = c4210c.f13204a;
        m956i();
        this.f13729b.name(str);
        m956i();
        this.f13729b.value(i);
        return this;
    }

    @Override // p221r5.AbstractC4212e
    /* renamed from: c */
    public AbstractC4212e mo962c(C4210c c4210c, boolean z) throws IOException {
        String str = c4210c.f13204a;
        m956i();
        this.f13729b.name(str);
        m956i();
        this.f13729b.value(z);
        return this;
    }

    @Override // p221r5.AbstractC4214g
    /* renamed from: d */
    public AbstractC4214g mo961d(String str) throws IOException {
        m956i();
        this.f13729b.value(str);
        return this;
    }

    @Override // p221r5.AbstractC4214g
    /* renamed from: e */
    public AbstractC4214g mo960e(boolean z) throws IOException {
        m956i();
        this.f13729b.value(z);
        return this;
    }

    @Override // p221r5.AbstractC4212e
    /* renamed from: f */
    public AbstractC4212e mo959f(C4210c c4210c, Object obj) throws IOException {
        return m957h(c4210c.f13204a, obj);
    }

    /* renamed from: g */
    public C4406f m958g(Object obj, boolean z) throws IOException {
        long[] jArr;
        int[] iArr;
        if (z) {
            if (obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number)) {
                throw new EncodingException(String.format("%s cannot be encoded inline", obj == null ? null : obj.getClass()));
            }
        }
        if (obj == null) {
            this.f13729b.nullValue();
            return this;
        } else if (obj instanceof Number) {
            this.f13729b.value((Number) obj);
            return this;
        } else if (obj.getClass().isArray()) {
            if (obj instanceof byte[]) {
                m956i();
                this.f13729b.value(Base64.encodeToString((byte[]) obj, 2));
                return this;
            } else {
                this.f13729b.beginArray();
                if (obj instanceof int[]) {
                    int length = ((int[]) obj).length;
                    for (int i = 0; i < length; i++) {
                        this.f13729b.value(iArr[i]);
                    }
                } else if (obj instanceof long[]) {
                    for (long j : (long[]) obj) {
                        m956i();
                        this.f13729b.value(j);
                    }
                } else if (obj instanceof double[]) {
                    for (double d : (double[]) obj) {
                        this.f13729b.value(d);
                    }
                } else if (obj instanceof boolean[]) {
                    for (boolean z2 : (boolean[]) obj) {
                        this.f13729b.value(z2);
                    }
                } else if (obj instanceof Number[]) {
                    for (Number number : (Number[]) obj) {
                        m958g(number, false);
                    }
                } else {
                    for (Object obj2 : (Object[]) obj) {
                        m958g(obj2, false);
                    }
                }
                this.f13729b.endArray();
                return this;
            }
        } else if (obj instanceof Collection) {
            this.f13729b.beginArray();
            for (Object obj3 : (Collection) obj) {
                m958g(obj3, false);
            }
            this.f13729b.endArray();
            return this;
        } else if (obj instanceof Map) {
            this.f13729b.beginObject();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                try {
                    m957h((String) key, entry.getValue());
                } catch (ClassCastException e) {
                    throw new EncodingException(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e);
                }
            }
            this.f13729b.endObject();
            return this;
        } else {
            AbstractC4211d<?> abstractC4211d = this.f13730c.get(obj.getClass());
            if (abstractC4211d != null) {
                if (!z) {
                    this.f13729b.beginObject();
                }
                abstractC4211d.mo965a(obj, this);
                if (!z) {
                    this.f13729b.endObject();
                }
                return this;
            }
            AbstractC4213f<?> abstractC4213f = this.f13731d.get(obj.getClass());
            if (abstractC4213f != null) {
                abstractC4213f.mo965a(obj, this);
                return this;
            } else if (obj instanceof Enum) {
                String name = ((Enum) obj).name();
                m956i();
                this.f13729b.value(name);
                return this;
            } else {
                AbstractC4211d<Object> abstractC4211d2 = this.f13732e;
                if (!z) {
                    this.f13729b.beginObject();
                }
                abstractC4211d2.mo965a(obj, this);
                if (!z) {
                    this.f13729b.endObject();
                }
                return this;
            }
        }
    }

    /* renamed from: h */
    public C4406f m957h(String str, Object obj) throws IOException {
        C4406f c4406f;
        C4406f c4406f2;
        if (this.f13733f) {
            if (obj == null) {
                c4406f2 = this;
            } else {
                m956i();
                this.f13729b.name(str);
                c4406f2 = m958g(obj, false);
            }
            return c4406f2;
        }
        m956i();
        this.f13729b.name(str);
        if (obj == null) {
            this.f13729b.nullValue();
            c4406f = this;
        } else {
            c4406f = m958g(obj, false);
        }
        return c4406f;
    }

    /* renamed from: i */
    public final void m956i() throws IOException {
        if (this.f13728a) {
            return;
        }
        throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
    }
}
