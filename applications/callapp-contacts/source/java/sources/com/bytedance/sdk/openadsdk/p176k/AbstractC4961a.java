package com.bytedance.sdk.openadsdk.p176k;

import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.openadsdk.p176k.C5034i;
import com.bytedance.sdk.openadsdk.p176k.C5041l;
import com.bytedance.sdk.openadsdk.p176k.p177a.AbstractC4963a;
import com.bytedance.sdk.openadsdk.p176k.p177a.C4964b;
import com.bytedance.sdk.openadsdk.p176k.p178b.C4982c;
import com.bytedance.sdk.openadsdk.p176k.p179c.C4987a;
import com.bytedance.sdk.openadsdk.p176k.p180d.AbstractC5000a;
import com.bytedance.sdk.openadsdk.p176k.p181e.AbstractC5003a;
import com.bytedance.sdk.openadsdk.p176k.p181e.AbstractC5004b;
import com.bytedance.sdk.openadsdk.p176k.p181e.C5005c;
import com.bytedance.sdk.openadsdk.p176k.p181e.C5009f;
import com.bytedance.sdk.openadsdk.p176k.p183g.C5030d;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.bytedance.sdk.openadsdk.k.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/a.class */
public abstract class AbstractC4961a implements AbstractRunnableC5040k {

    /* renamed from: m */
    private static final AtomicLong f18035m = new AtomicLong();

    /* renamed from: a */
    protected volatile AbstractC4963a f18036a;

    /* renamed from: b */
    protected final C4982c f18037b;

    /* renamed from: e */
    protected AbstractC5000a f18040e;

    /* renamed from: f */
    protected volatile List<C5034i.C5036b> f18041f;

    /* renamed from: g */
    protected volatile String f18042g;

    /* renamed from: h */
    protected volatile String f18043h;

    /* renamed from: i */
    protected volatile C5034i f18044i;

    /* renamed from: j */
    protected volatile C5041l f18045j;

    /* renamed from: c */
    protected final AtomicInteger f18038c = new AtomicInteger();

    /* renamed from: d */
    protected final AtomicLong f18039d = new AtomicLong();

    /* renamed from: k */
    protected volatile boolean f18046k = false;

    /* renamed from: l */
    public final long f18047l = f18035m.incrementAndGet();

    /* renamed from: n */
    private final AtomicInteger f18048n = new AtomicInteger(0);

    /* renamed from: o */
    private int f18049o = -1;

    public AbstractC4961a(AbstractC4963a abstractC4963a, C4982c c4982c) {
        this.f18036a = abstractC4963a;
        this.f18037b = c4982c;
    }

    /* renamed from: a */
    public AbstractC5003a m33415a(C5041l.C5042a c5042a, int i, int i2, String str) throws IOException, VAdError {
        AbstractC5004b m33327b = C5005c.m33328a().m33327b();
        C5009f c5009f = new C5009f();
        HashMap hashMap = new HashMap();
        c5009f.f18154b = c5042a.f18251a;
        c5009f.f18153a = 0;
        if ("HEAD".equalsIgnoreCase(str)) {
            c5009f.f18153a = 4;
        }
        List<C5034i.C5036b> list = this.f18041f;
        if (list != null && !list.isEmpty()) {
            for (C5034i.C5036b c5036b : list) {
                if (!"Range".equalsIgnoreCase(c5036b.f18235a) && !"Connection".equalsIgnoreCase(c5036b.f18235a) && !"Proxy-Connection".equalsIgnoreCase(c5036b.f18235a) && !"Host".equalsIgnoreCase(c5036b.f18235a)) {
                    hashMap.put(c5036b.f18235a, c5036b.f18236b);
                }
            }
        }
        String m33233a = C5030d.m33233a(i, i2);
        if (m33233a != null) {
            hashMap.put("Range", m33233a);
        }
        if (C5001e.f18143f) {
            hashMap.put("Cache-Control", "no-cache");
        }
        C4991d m33345c = C4991d.m33345c();
        C5011f m33315a = C5011f.m33315a();
        boolean z = this.f18044i == null;
        C4986c m33359a = z ? m33345c.m33359a() : m33315a.m33306b();
        C4986c m33347b = z ? m33345c.m33347b() : m33315a.m33303c();
        if (m33359a != null || m33347b != null) {
            if (m33359a != null) {
                c5009f.f18155c = m33359a.m33360a(c5042a.f18252b);
            }
            if (m33347b != null) {
                c5009f.f18156d = m33347b.m33360a(c5042a.f18252b);
            }
        }
        c5009f.f18157e = hashMap;
        if (this.f18046k) {
            this.f18046k = false;
            return null;
        }
        return m33327b.mo33325a(c5009f);
    }

    /* renamed from: a */
    public void mo33272a() {
        this.f18048n.compareAndSet(0, 1);
    }

    /* renamed from: a */
    public void m33417a(int i, int i2) {
        if (i <= 0 || i2 < 0) {
            return;
        }
        int i3 = C5001e.f18144g;
        int m33409f = m33409f();
        if (i3 != 1 && (i3 != 2 || m33409f != 1)) {
            return;
        }
        int i4 = (int) ((i2 / i) * 100.0f);
        int i5 = i4;
        if (i4 > 100) {
            i5 = 100;
        }
        synchronized (this) {
            if (i5 <= this.f18049o) {
                return;
            }
            this.f18049o = i5;
            C5030d.m33215b(new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.a.1
                @Override // java.lang.Runnable
                public void run() {
                    if (AbstractC4961a.this.f18040e != null) {
                        AbstractC4961a.this.f18040e.m33343a(AbstractC4961a.this.f18045j, AbstractC4961a.this.f18049o);
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public void m33414a(Boolean bool, String str, Throwable th) {
    }

    /* renamed from: b */
    public boolean m33413b() {
        return this.f18048n.get() == 1;
    }

    /* renamed from: c */
    public void m33412c() {
        this.f18048n.compareAndSet(0, 2);
    }

    /* renamed from: d */
    public boolean m33411d() {
        return this.f18048n.get() == 2;
    }

    /* renamed from: e */
    public void m33410e() throws C4987a {
        if (!m33413b()) {
            return;
        }
        throw new C4987a();
    }

    /* renamed from: f */
    public int m33409f() {
        return this.f18044i != null ? this.f18044i.f18227c.f18228a : this.f18036a instanceof C4964b ? 1 : 0;
    }

    /* renamed from: g */
    public boolean m33408g() {
        return m33409f() == 1;
    }
}
