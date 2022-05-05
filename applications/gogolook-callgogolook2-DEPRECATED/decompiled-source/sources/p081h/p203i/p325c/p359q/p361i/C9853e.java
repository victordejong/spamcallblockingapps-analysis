package p081h.p203i.p325c.p359q.p361i;

import android.util.Base64;
import android.util.JsonWriter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Map;
import p081h.p203i.p325c.p359q.AbstractC9841d;
import p081h.p203i.p325c.p359q.AbstractC9842e;
import p081h.p203i.p325c.p359q.AbstractC9843f;
import p081h.p203i.p325c.p359q.AbstractC9844g;
import p081h.p203i.p325c.p359q.C9840c;
/* renamed from: h.i.c.q.i.e */
/* loaded from: classes2-dex2jar.jar:h/i/c/q/i/e.class */
public final class C9853e implements AbstractC9842e, AbstractC9844g {

    /* renamed from: a */
    public C9853e f22322a = null;

    /* renamed from: b */
    public boolean f22323b = true;

    /* renamed from: c */
    public final JsonWriter f22324c;

    /* renamed from: d */
    public final Map<Class<?>, AbstractC9841d<?>> f22325d;

    /* renamed from: e */
    public final Map<Class<?>, AbstractC9843f<?>> f22326e;

    /* renamed from: f */
    public final AbstractC9841d<Object> f22327f;

    /* renamed from: g */
    public final boolean f22328g;

    public C9853e(@NonNull Writer writer, @NonNull Map<Class<?>, AbstractC9841d<?>> map, @NonNull Map<Class<?>, AbstractC9843f<?>> map2, AbstractC9841d<Object> dVar, boolean z) {
        this.f22324c = new JsonWriter(writer);
        this.f22325d = map;
        this.f22326e = map2;
        this.f22327f = dVar;
        this.f22328g = z;
    }

    @NonNull
    /* renamed from: a */
    public C9853e m14095a(int i) throws IOException {
        m14083b();
        this.f22324c.value(i);
        return this;
    }

    @NonNull
    /* renamed from: a */
    public C9853e m14094a(long j) throws IOException {
        m14083b();
        this.f22324c.value(j);
        return this;
    }

    /* renamed from: a */
    public C9853e m14093a(AbstractC9841d<Object> dVar, Object obj, boolean z) throws IOException {
        if (!z) {
            this.f22324c.beginObject();
        }
        dVar.mo13750a(obj, this);
        if (!z) {
            this.f22324c.endObject();
        }
        return this;
    }

    @NonNull
    /* renamed from: a */
    public C9853e m14091a(@Nullable Object obj, boolean z) throws IOException {
        if (z && m14092a(obj)) {
            throw new C9840c(String.format("%s cannot be encoded inline", obj == null ? null : obj.getClass()));
        } else if (obj == null) {
            this.f22324c.nullValue();
            return this;
        } else if (obj instanceof Number) {
            this.f22324c.value((Number) obj);
            return this;
        } else if (obj.getClass().isArray()) {
            if (obj instanceof byte[]) {
                m14084a((byte[]) obj);
                return this;
            }
            this.f22324c.beginArray();
            if (obj instanceof int[]) {
                for (int i : (int[]) obj) {
                    this.f22324c.value(i);
                }
            } else if (obj instanceof long[]) {
                for (long j : (long[]) obj) {
                    m14094a(j);
                }
            } else if (obj instanceof double[]) {
                for (double d : (double[]) obj) {
                    this.f22324c.value(d);
                }
            } else if (obj instanceof boolean[]) {
                for (boolean z2 : (boolean[]) obj) {
                    this.f22324c.value(z2);
                }
            } else if (obj instanceof Number[]) {
                for (Number number : (Number[]) obj) {
                    m14091a((Object) number, false);
                }
            } else {
                for (Object obj2 : (Object[]) obj) {
                    m14091a(obj2, false);
                }
            }
            this.f22324c.endArray();
            return this;
        } else if (obj instanceof Collection) {
            this.f22324c.beginArray();
            for (Object obj3 : (Collection) obj) {
                m14091a(obj3, false);
            }
            this.f22324c.endArray();
            return this;
        } else if (obj instanceof Map) {
            this.f22324c.beginObject();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                try {
                    mo14087a((String) key, entry.getValue());
                } catch (ClassCastException e) {
                    throw new C9840c(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e);
                }
            }
            this.f22324c.endObject();
            return this;
        } else {
            AbstractC9841d<?> dVar = this.f22325d.get(obj.getClass());
            if (dVar != null) {
                m14093a(dVar, obj, z);
                return this;
            }
            AbstractC9843f<?> fVar = this.f22326e.get(obj.getClass());
            if (fVar != null) {
                fVar.mo13750a(obj, this);
                return this;
            } else if (obj instanceof Enum) {
                mo14090a(((Enum) obj).name());
                return this;
            } else {
                m14093a(this.f22327f, obj, z);
                return this;
            }
        }
    }

    @Override // p081h.p203i.p325c.p359q.AbstractC9844g
    @NonNull
    /* renamed from: a */
    public C9853e mo14090a(@Nullable String str) throws IOException {
        m14083b();
        this.f22324c.value(str);
        return this;
    }

    @Override // p081h.p203i.p325c.p359q.AbstractC9842e
    @NonNull
    /* renamed from: a */
    public C9853e mo14089a(@NonNull String str, int i) throws IOException {
        m14083b();
        this.f22324c.name(str);
        m14095a(i);
        return this;
    }

    @Override // p081h.p203i.p325c.p359q.AbstractC9842e
    @NonNull
    /* renamed from: a */
    public C9853e mo14088a(@NonNull String str, long j) throws IOException {
        m14083b();
        this.f22324c.name(str);
        m14094a(j);
        return this;
    }

    @Override // p081h.p203i.p325c.p359q.AbstractC9842e
    @NonNull
    /* renamed from: a */
    public C9853e mo14087a(@NonNull String str, @Nullable Object obj) throws IOException {
        return this.f22328g ? m14081c(str, obj) : m14082b(str, obj);
    }

    @Override // p081h.p203i.p325c.p359q.AbstractC9842e
    @NonNull
    /* renamed from: a */
    public C9853e mo14086a(@NonNull String str, boolean z) throws IOException {
        m14083b();
        this.f22324c.name(str);
        mo14085a(z);
        return this;
    }

    @Override // p081h.p203i.p325c.p359q.AbstractC9844g
    @NonNull
    /* renamed from: a */
    public C9853e mo14085a(boolean z) throws IOException {
        m14083b();
        this.f22324c.value(z);
        return this;
    }

    @NonNull
    /* renamed from: a */
    public C9853e m14084a(@Nullable byte[] bArr) throws IOException {
        m14083b();
        if (bArr == null) {
            this.f22324c.nullValue();
        } else {
            this.f22324c.value(Base64.encodeToString(bArr, 2));
        }
        return this;
    }

    /* renamed from: a */
    public void m14096a() throws IOException {
        m14083b();
        this.f22324c.flush();
    }

    /* renamed from: a */
    public final boolean m14092a(Object obj) {
        return obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number);
    }

    /* renamed from: b */
    public final C9853e m14082b(@NonNull String str, @Nullable Object obj) throws IOException, C9840c {
        m14083b();
        this.f22324c.name(str);
        if (obj != null) {
            return m14091a(obj, false);
        }
        this.f22324c.nullValue();
        return this;
    }

    /* renamed from: b */
    public final void m14083b() throws IOException {
        if (this.f22323b) {
            C9853e eVar = this.f22322a;
            if (eVar != null) {
                eVar.m14083b();
                this.f22322a.f22323b = false;
                this.f22322a = null;
                this.f22324c.endObject();
                return;
            }
            return;
        }
        throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
    }

    /* renamed from: c */
    public final C9853e m14081c(@NonNull String str, @Nullable Object obj) throws IOException, C9840c {
        if (obj == null) {
            return this;
        }
        m14083b();
        this.f22324c.name(str);
        return m14091a(obj, false);
    }
}
