package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.common.util.C6233k;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fl0.class */
public final class fl0 implements AbstractC6886qh {

    /* renamed from: b */
    private final AbstractC6330bi<AbstractC6886qh> f22946b;

    /* renamed from: c */
    private final Context f22947c;

    /* renamed from: d */
    private final AbstractC6886qh f22948d;

    /* renamed from: e */
    private final el0 f22949e;

    /* renamed from: f */
    private final String f22950f;

    /* renamed from: g */
    private final int f22951g;

    /* renamed from: i */
    private InputStream f22953i;

    /* renamed from: j */
    private boolean f22954j;

    /* renamed from: k */
    private Uri f22955k;

    /* renamed from: l */
    private volatile zzayn f22956l;

    /* renamed from: m */
    private boolean f22957m = false;

    /* renamed from: n */
    private boolean f22958n = false;

    /* renamed from: o */
    private boolean f22959o = false;

    /* renamed from: p */
    private boolean f22960p = false;

    /* renamed from: q */
    private long f22961q = 0;

    /* renamed from: s */
    private final AtomicLong f22963s = new AtomicLong(-1);

    /* renamed from: r */
    private r03<Long> f22962r = null;

    /* renamed from: h */
    private final boolean f22952h = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25736l1)).booleanValue();

    public fl0(Context context, AbstractC6886qh abstractC6886qh, String str, int i, AbstractC6330bi<AbstractC6886qh> abstractC6330bi, el0 el0Var) {
        this.f22947c = context;
        this.f22948d = abstractC6886qh;
        this.f22946b = abstractC6330bi;
        this.f22949e = el0Var;
        this.f22950f = str;
        this.f22951g = i;
    }

    /* renamed from: m */
    private final void m15143m(C6923rh c6923rh) {
        AbstractC6330bi<AbstractC6886qh> abstractC6330bi = this.f22946b;
        if (abstractC6330bi != null) {
            ((rl0) abstractC6330bi).mo11400f(this, c6923rh);
        }
    }

    /* renamed from: n */
    private final boolean m15142n() {
        if (!this.f22952h) {
            return false;
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25526L2)).booleanValue() && !this.f22959o) {
            return true;
        }
        return ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25534M2)).booleanValue() && !this.f22960p;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6886qh
    /* renamed from: b */
    public final int mo10691b(byte[] bArr, int i, int i2) {
        AbstractC6330bi<AbstractC6886qh> abstractC6330bi;
        if (this.f22954j) {
            InputStream inputStream = this.f22953i;
            int read = inputStream != null ? inputStream.read(bArr, i, i2) : this.f22948d.mo10691b(bArr, i, i2);
            if ((!this.f22952h || this.f22953i != null) && (abstractC6330bi = this.f22946b) != null) {
                ((rl0) abstractC6330bi).m11402d0(this, read);
            }
            return read;
        }
        throw new IOException("Attempt to read closed CacheDataSource.");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6886qh
    /* renamed from: c */
    public final Uri mo10690c() {
        return this.f22955k;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0332  */
    /* JADX WARN: Type inference failed for: r0v111, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC6886qh
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo10689d(com.google.android.gms.internal.ads.C6923rh r14) {
        /*
            Method dump skipped, instructions count: 873
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.fl0.mo10689d(com.google.android.gms.internal.ads.rh):long");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6886qh
    /* renamed from: e */
    public final void mo10688e() {
        if (this.f22954j) {
            this.f22954j = false;
            this.f22955k = null;
            InputStream inputStream = this.f22953i;
            if (inputStream == null) {
                this.f22948d.mo10688e();
                return;
            }
            C6233k.m16790a(inputStream);
            this.f22953i = null;
            return;
        }
        throw new IOException("Attempt to close an already closed CacheDataSource.");
    }

    /* renamed from: f */
    public final boolean m15150f() {
        return this.f22957m;
    }

    /* renamed from: g */
    public final boolean m15149g() {
        return this.f22958n;
    }

    /* renamed from: h */
    public final boolean m15148h() {
        return this.f22959o;
    }

    /* renamed from: i */
    public final boolean m15147i() {
        return this.f22960p;
    }

    /* renamed from: j */
    public final long m15146j() {
        return this.f22961q;
    }

    /* renamed from: k */
    public final long m15145k() {
        if (this.f22956l == null) {
            return -1L;
        }
        if (this.f22963s.get() != -1) {
            return this.f22963s.get();
        }
        synchronized (this) {
            if (this.f22962r == null) {
                this.f22962r = qi0.f28495a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.dl0

                    /* renamed from: a */
                    private final fl0 f21672a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f21672a = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f21672a.m15144l();
                    }
                });
            }
        }
        if (!this.f22962r.isDone()) {
            return -1L;
        }
        try {
            this.f22963s.compareAndSet(-1L, this.f22962r.get().longValue());
            return this.f22963s.get();
        } catch (InterruptedException | ExecutionException e) {
            return -1L;
        }
    }

    /* renamed from: l */
    public final /* synthetic */ Long m15144l() {
        return Long.valueOf(C5667s.m18154j().m8784g(this.f22956l));
    }
}
