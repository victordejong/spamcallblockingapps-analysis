package com.google.api.client.json;

import com.google.api.client.util.AbstractC8726u;
import com.google.api.client.util.C8731w;
import com.google.api.client.util.C8732x;
import java.io.InputStream;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.api.client.json.e */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/json/e.class */
public class C8669e implements AbstractC8726u {

    /* renamed from: a */
    private final AbstractC8667c f38443a;

    /* renamed from: b */
    private final Set<String> f38444b;

    /* renamed from: com.google.api.client.json.e$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/json/e$a.class */
    public static class C8670a {

        /* renamed from: a */
        final AbstractC8667c f38445a;

        /* renamed from: b */
        Collection<String> f38446b = C8732x.m2831a();

        public C8670a(AbstractC8667c abstractC8667c) {
            this.f38445a = (AbstractC8667c) C8731w.m2836d(abstractC8667c);
        }

        /* renamed from: a */
        public C8669e m3017a() {
            return new C8669e(this);
        }

        /* renamed from: b */
        public C8670a m3016b(Collection<String> collection) {
            this.f38446b = collection;
            return this;
        }
    }

    public C8669e(AbstractC8667c abstractC8667c) {
        this(new C8670a(abstractC8667c));
    }

    protected C8669e(C8670a c8670a) {
        this.f38443a = c8670a.f38445a;
        this.f38444b = new HashSet(c8670a.f38446b);
    }

    /* renamed from: d */
    private void m3019d(AbstractC8671f abstractC8671f) {
        if (this.f38444b.isEmpty()) {
            return;
        }
        try {
            C8731w.m2837c((abstractC8671f.m3006a0(this.f38444b) == null || abstractC8671f.mo2971k() == JsonToken.END_OBJECT) ? false : true, "wrapper key(s) not found: %s", this.f38444b);
        } catch (Throwable th) {
            abstractC8671f.close();
            throw th;
        }
    }

    @Override // com.google.api.client.util.AbstractC8726u
    /* renamed from: a */
    public <T> T mo2845a(InputStream inputStream, Charset charset, Class<T> cls) {
        return (T) m3018e(inputStream, charset, cls);
    }

    /* renamed from: b */
    public final AbstractC8667c m3021b() {
        return this.f38443a;
    }

    /* renamed from: c */
    public Set<String> m3020c() {
        return Collections.unmodifiableSet(this.f38444b);
    }

    /* renamed from: e */
    public Object m3018e(InputStream inputStream, Charset charset, Type type) {
        AbstractC8671f mo2999c = this.f38443a.mo2999c(inputStream, charset);
        m3019d(mo2999c);
        return mo2999c.m3014L(type, true);
    }
}
