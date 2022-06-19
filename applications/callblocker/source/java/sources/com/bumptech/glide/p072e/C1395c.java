package com.bumptech.glide.p072e;

import androidx.p013b.C0373a;
import com.bumptech.glide.load.engine.C1743h;
import com.bumptech.glide.load.engine.C1768r;
import com.bumptech.glide.load.p083c.p089f.C1663g;
import com.bumptech.glide.p077h.C1455h;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.bumptech.glide.e.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/c.class */
public class C1395c {

    /* renamed from: a */
    private static final C1768r<?, ?, ?> f4610a = new C1768r<>(Object.class, Object.class, Object.class, Collections.singletonList(new C1743h(Object.class, Object.class, Object.class, Collections.emptyList(), new C1663g(), null)), null);

    /* renamed from: b */
    private final C0373a<C1455h, C1768r<?, ?, ?>> f4611b = new C0373a<>();

    /* renamed from: c */
    private final AtomicReference<C1455h> f4612c = new AtomicReference<>();

    /* renamed from: b */
    private C1455h m17212b(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        C1455h andSet = this.f4612c.getAndSet(null);
        C1455h c1455h = andSet;
        if (andSet == null) {
            c1455h = new C1455h();
        }
        c1455h.m16990a(cls, cls2, cls3);
        return c1455h;
    }

    /* renamed from: a */
    public <Data, TResource, Transcode> C1768r<Data, TResource, Transcode> m17214a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        C1768r<Data, TResource, Transcode> c1768r;
        C1455h m17212b = m17212b(cls, cls2, cls3);
        synchronized (this.f4611b) {
            c1768r = (C1768r<Data, TResource, Transcode>) this.f4611b.get(m17212b);
        }
        this.f4612c.set(m17212b);
        return c1768r;
    }

    /* renamed from: a */
    public void m17213a(Class<?> cls, Class<?> cls2, Class<?> cls3, C1768r<?, ?, ?> c1768r) {
        synchronized (this.f4611b) {
            C0373a<C1455h, C1768r<?, ?, ?>> c0373a = this.f4611b;
            C1455h c1455h = new C1455h(cls, cls2, cls3);
            if (c1768r == null) {
                c1768r = f4610a;
            }
            c0373a.put(c1455h, c1768r);
        }
    }

    /* renamed from: a */
    public boolean m17215a(C1768r<?, ?, ?> c1768r) {
        return f4610a.equals(c1768r);
    }
}
