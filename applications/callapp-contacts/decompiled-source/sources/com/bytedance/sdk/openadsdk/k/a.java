package com.bytedance.sdk.openadsdk.k;

import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.openadsdk.k.b.c;
import com.bytedance.sdk.openadsdk.k.e.b;
import com.bytedance.sdk.openadsdk.k.e.f;
import com.bytedance.sdk.openadsdk.k.g.d;
import com.bytedance.sdk.openadsdk.k.i;
import com.bytedance.sdk.openadsdk.k.l;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/a.class */
public abstract class a implements k {
    private static final AtomicLong m = new AtomicLong();

    /* renamed from: a  reason: collision with root package name */
    protected volatile com.bytedance.sdk.openadsdk.k.a.a f9663a;

    /* renamed from: b  reason: collision with root package name */
    protected final c f9664b;
    protected com.bytedance.sdk.openadsdk.k.d.a e;
    protected volatile List<i.b> f;
    protected volatile String g;
    protected volatile String h;
    protected volatile i i;
    protected volatile l j;

    /* renamed from: c  reason: collision with root package name */
    protected final AtomicInteger f9665c = new AtomicInteger();

    /* renamed from: d  reason: collision with root package name */
    protected final AtomicLong f9666d = new AtomicLong();
    protected volatile boolean k = false;
    public final long l = m.incrementAndGet();
    private final AtomicInteger n = new AtomicInteger(0);
    private int o = -1;

    public a(com.bytedance.sdk.openadsdk.k.a.a aVar, c cVar) {
        this.f9663a = aVar;
        this.f9664b = cVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.bytedance.sdk.openadsdk.k.e.a a(l.a aVar, int i, int i2, String str) throws IOException, VAdError {
        b b2 = com.bytedance.sdk.openadsdk.k.e.c.a().b();
        f fVar = new f();
        HashMap hashMap = new HashMap();
        fVar.f9730b = aVar.f9798a;
        fVar.f9729a = 0;
        if ("HEAD".equalsIgnoreCase(str)) {
            fVar.f9729a = 4;
        }
        List<i.b> list = this.f;
        if (list != null && !list.isEmpty()) {
            for (i.b bVar : list) {
                if (!"Range".equalsIgnoreCase(bVar.f9785a) && !"Connection".equalsIgnoreCase(bVar.f9785a) && !"Proxy-Connection".equalsIgnoreCase(bVar.f9785a) && !"Host".equalsIgnoreCase(bVar.f9785a)) {
                    hashMap.put(bVar.f9785a, bVar.f9786b);
                }
            }
        }
        String a2 = d.a(i, i2);
        if (a2 != null) {
            hashMap.put("Range", a2);
        }
        if (e.f) {
            hashMap.put("Cache-Control", "no-cache");
        }
        d c2 = d.c();
        f a3 = f.a();
        boolean z = this.i == null;
        c a4 = z ? c2.a() : a3.b();
        c b3 = z ? c2.b() : a3.c();
        if (!(a4 == null && b3 == null)) {
            if (a4 != null) {
                fVar.f9731c = a4.a(aVar.f9799b);
            }
            if (b3 != null) {
                fVar.f9732d = b3.a(aVar.f9799b);
            }
        }
        fVar.e = hashMap;
        if (!this.k) {
            return b2.a(fVar);
        }
        this.k = false;
        return null;
    }

    public void a() {
        this.n.compareAndSet(0, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i, int i2) {
        if (i > 0 && i2 >= 0) {
            int i3 = e.g;
            int f = f();
            if (i3 == 1 || (i3 == 2 && f == 1)) {
                int i4 = (int) ((i2 / i) * 100.0f);
                int i5 = i4;
                if (i4 > 100) {
                    i5 = 100;
                }
                synchronized (this) {
                    if (i5 > this.o) {
                        this.o = i5;
                        d.b(new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.a.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (a.this.e != null) {
                                    a.this.e.a(a.this.j, a.this.o);
                                }
                            }
                        });
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Boolean bool, String str, Throwable th) {
    }

    public boolean b() {
        return this.n.get() == 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c() {
        this.n.compareAndSet(0, 2);
    }

    public boolean d() {
        return this.n.get() == 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e() throws com.bytedance.sdk.openadsdk.k.c.a {
        if (b()) {
            throw new com.bytedance.sdk.openadsdk.k.c.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int f() {
        return this.i != null ? this.i.f9780c.f9781a : this.f9663a instanceof com.bytedance.sdk.openadsdk.k.a.b ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean g() {
        return f() == 1;
    }
}
