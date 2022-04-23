package p131c.p161d.p282e.p310n.p312h;

import android.util.Base64;
import android.util.JsonWriter;
import com.google.firebase.encoders.EncodingException;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Map;
import p131c.p161d.p282e.p310n.AbstractC5457c;
import p131c.p161d.p282e.p310n.AbstractC5458d;
import p131c.p161d.p282e.p310n.AbstractC5459e;
import p131c.p161d.p282e.p310n.AbstractC5460f;
/* renamed from: c.d.e.n.h.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/n/h/e.class */
public final class C5469e implements AbstractC5458d, AbstractC5460f {

    /* renamed from: a */
    public C5469e f18449a = null;

    /* renamed from: b */
    public boolean f18450b = true;

    /* renamed from: c */
    public final JsonWriter f18451c;

    /* renamed from: d */
    public final Map<Class<?>, AbstractC5457c<?>> f18452d;

    /* renamed from: e */
    public final Map<Class<?>, AbstractC5459e<?>> f18453e;

    /* renamed from: f */
    public final AbstractC5457c<Object> f18454f;

    /* renamed from: g */
    public final boolean f18455g;

    public C5469e(Writer writer, Map<Class<?>, AbstractC5457c<?>> map, Map<Class<?>, AbstractC5459e<?>> map2, AbstractC5457c<Object> cVar, boolean z) {
        this.f18451c = new JsonWriter(writer);
        this.f18452d = map;
        this.f18453e = map2;
        this.f18454f = cVar;
        this.f18455g = z;
    }

    /* renamed from: a */
    public C5469e m23734a(int i) throws IOException {
        m23722b();
        this.f18451c.value(i);
        return this;
    }

    /* renamed from: a */
    public C5469e m23733a(long j) throws IOException {
        m23722b();
        this.f18451c.value(j);
        return this;
    }

    /* renamed from: a */
    public C5469e m23732a(AbstractC5457c<Object> cVar, Object obj, boolean z) throws IOException {
        if (!z) {
            this.f18451c.beginObject();
        }
        cVar.mo23737a(obj, this);
        if (!z) {
            this.f18451c.endObject();
        }
        return this;
    }

    /* renamed from: a */
    public C5469e m23730a(Object obj, boolean z) throws IOException {
        if (z && m23731a(obj)) {
            throw new EncodingException(String.format("%s cannot be encoded inline", obj == null ? null : obj.getClass()));
        } else if (obj == null) {
            this.f18451c.nullValue();
            return this;
        } else if (obj instanceof Number) {
            this.f18451c.value((Number) obj);
            return this;
        } else if (obj.getClass().isArray()) {
            if (obj instanceof byte[]) {
                m23723a((byte[]) obj);
                return this;
            }
            this.f18451c.beginArray();
            if (obj instanceof int[]) {
                for (int i : (int[]) obj) {
                    this.f18451c.value(i);
                }
            } else if (obj instanceof long[]) {
                for (long j : (long[]) obj) {
                    m23733a(j);
                }
            } else if (obj instanceof double[]) {
                for (double d : (double[]) obj) {
                    this.f18451c.value(d);
                }
            } else if (obj instanceof boolean[]) {
                for (boolean z2 : (boolean[]) obj) {
                    this.f18451c.value(z2);
                }
            } else if (obj instanceof Number[]) {
                for (Number number : (Number[]) obj) {
                    m23730a((Object) number, false);
                }
            } else {
                for (Object obj2 : (Object[]) obj) {
                    m23730a(obj2, false);
                }
            }
            this.f18451c.endArray();
            return this;
        } else if (obj instanceof Collection) {
            this.f18451c.beginArray();
            for (Object obj3 : (Collection) obj) {
                m23730a(obj3, false);
            }
            this.f18451c.endArray();
            return this;
        } else if (obj instanceof Map) {
            this.f18451c.beginObject();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                try {
                    mo23726a((String) key, entry.getValue());
                } catch (ClassCastException e) {
                    throw new EncodingException(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e);
                }
            }
            this.f18451c.endObject();
            return this;
        } else {
            AbstractC5457c<?> cVar = this.f18452d.get(obj.getClass());
            if (cVar != null) {
                m23732a(cVar, obj, z);
                return this;
            }
            AbstractC5459e<?> eVar = this.f18453e.get(obj.getClass());
            if (eVar != null) {
                eVar.mo23737a(obj, this);
                return this;
            } else if (obj instanceof Enum) {
                mo23729a(((Enum) obj).name());
                return this;
            } else {
                m23732a(this.f18454f, obj, z);
                return this;
            }
        }
    }

    @Override // p131c.p161d.p282e.p310n.AbstractC5460f
    /* renamed from: a */
    public C5469e mo23729a(String str) throws IOException {
        m23722b();
        this.f18451c.value(str);
        return this;
    }

    @Override // p131c.p161d.p282e.p310n.AbstractC5458d
    /* renamed from: a */
    public C5469e mo23728a(String str, int i) throws IOException {
        m23722b();
        this.f18451c.name(str);
        m23734a(i);
        return this;
    }

    @Override // p131c.p161d.p282e.p310n.AbstractC5458d
    /* renamed from: a */
    public C5469e mo23727a(String str, long j) throws IOException {
        m23722b();
        this.f18451c.name(str);
        m23733a(j);
        return this;
    }

    @Override // p131c.p161d.p282e.p310n.AbstractC5458d
    /* renamed from: a */
    public C5469e mo23726a(String str, Object obj) throws IOException {
        return this.f18455g ? m23720c(str, obj) : m23721b(str, obj);
    }

    @Override // p131c.p161d.p282e.p310n.AbstractC5458d
    /* renamed from: a */
    public C5469e mo23725a(String str, boolean z) throws IOException {
        m23722b();
        this.f18451c.name(str);
        mo23724a(z);
        return this;
    }

    @Override // p131c.p161d.p282e.p310n.AbstractC5460f
    /* renamed from: a */
    public C5469e mo23724a(boolean z) throws IOException {
        m23722b();
        this.f18451c.value(z);
        return this;
    }

    /* renamed from: a */
    public C5469e m23723a(byte[] bArr) throws IOException {
        m23722b();
        if (bArr == null) {
            this.f18451c.nullValue();
        } else {
            this.f18451c.value(Base64.encodeToString(bArr, 2));
        }
        return this;
    }

    /* renamed from: a */
    public void m23735a() throws IOException {
        m23722b();
        this.f18451c.flush();
    }

    /* renamed from: a */
    public final boolean m23731a(Object obj) {
        return obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number);
    }

    /* renamed from: b */
    public final C5469e m23721b(String str, Object obj) throws IOException, EncodingException {
        m23722b();
        this.f18451c.name(str);
        if (obj != null) {
            return m23730a(obj, false);
        }
        this.f18451c.nullValue();
        return this;
    }

    /* renamed from: b */
    public final void m23722b() throws IOException {
        if (this.f18450b) {
            C5469e eVar = this.f18449a;
            if (eVar != null) {
                eVar.m23722b();
                this.f18449a.f18450b = false;
                this.f18449a = null;
                this.f18451c.endObject();
                return;
            }
            return;
        }
        throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
    }

    /* renamed from: c */
    public final C5469e m23720c(String str, Object obj) throws IOException, EncodingException {
        if (obj == null) {
            return this;
        }
        m23722b();
        this.f18451c.name(str);
        return m23730a(obj, false);
    }
}
