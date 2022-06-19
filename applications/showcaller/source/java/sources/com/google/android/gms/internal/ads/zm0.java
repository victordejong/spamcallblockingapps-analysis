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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zm0.class */
public final class zm0 extends AbstractC7169y4 {

    /* renamed from: f */
    private final Context f32980f;

    /* renamed from: g */
    private final AbstractC7098w7 f32981g;

    /* renamed from: h */
    private final ym0 f32982h;

    /* renamed from: i */
    private final String f32983i;

    /* renamed from: j */
    private final int f32984j;

    /* renamed from: l */
    private InputStream f32986l;

    /* renamed from: m */
    private boolean f32987m;

    /* renamed from: n */
    private Uri f32988n;

    /* renamed from: o */
    private volatile zzayn f32989o;

    /* renamed from: p */
    private boolean f32990p = false;

    /* renamed from: q */
    private boolean f32991q = false;

    /* renamed from: r */
    private boolean f32992r = false;

    /* renamed from: s */
    private boolean f32993s = false;

    /* renamed from: t */
    private long f32994t = 0;

    /* renamed from: v */
    private final AtomicLong f32996v = new AtomicLong(-1);

    /* renamed from: u */
    private r03<Long> f32995u = null;

    /* renamed from: k */
    private final boolean f32985k = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25736l1)).booleanValue();

    public zm0(Context context, AbstractC7098w7 abstractC7098w7, String str, int i, AbstractC6816ol abstractC6816ol, ym0 ym0Var) {
        super(false);
        this.f32980f = context;
        this.f32981g = abstractC7098w7;
        this.f32982h = ym0Var;
        this.f32983i = str;
        this.f32984j = i;
        mo8765f(abstractC6816ol);
    }

    /* renamed from: z */
    private final boolean m8325z() {
        if (!this.f32985k) {
            return false;
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25526L2)).booleanValue() && !this.f32992r) {
            return true;
        }
        return ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25534M2)).booleanValue() && !this.f32993s;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7207z5
    /* renamed from: c */
    public final int mo8335c(byte[] bArr, int i, int i2) {
        if (this.f32987m) {
            InputStream inputStream = this.f32986l;
            int read = inputStream != null ? inputStream.read(bArr, i, i2) : this.f32981g.mo8335c(bArr, i, i2);
            if (!this.f32985k || this.f32986l != null) {
                m8961r(read);
            }
            return read;
        }
        throw new IOException("Attempt to read closed GcacheDataSource.");
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x032e  */
    /* JADX WARN: Type inference failed for: r0v111, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo8334e(com.google.android.gms.internal.ads.C6472fb r14) {
        /*
            Method dump skipped, instructions count: 872
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zm0.mo8334e(com.google.android.gms.internal.ads.fb):long");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: g */
    public final void mo8333g() {
        if (this.f32987m) {
            boolean z = false;
            this.f32987m = false;
            this.f32988n = null;
            if (!this.f32985k || this.f32986l != null) {
                z = true;
            }
            InputStream inputStream = this.f32986l;
            if (inputStream != null) {
                C6233k.m16790a(inputStream);
                this.f32986l = null;
            } else {
                this.f32981g.mo8333g();
            }
            if (!z) {
                return;
            }
            m8960s();
            return;
        }
        throw new IOException("Attempt to close an already closed GcacheDataSource.");
    }

    /* renamed from: n */
    public final long m8332n() {
        return this.f32994t;
    }

    /* renamed from: t */
    public final boolean m8331t() {
        return this.f32990p;
    }

    /* renamed from: u */
    public final boolean m8330u() {
        return this.f32991q;
    }

    /* renamed from: v */
    public final boolean m8329v() {
        return this.f32992r;
    }

    /* renamed from: w */
    public final boolean m8328w() {
        return this.f32993s;
    }

    /* renamed from: x */
    public final long m8327x() {
        if (this.f32989o == null) {
            return -1L;
        }
        if (this.f32996v.get() != -1) {
            return this.f32996v.get();
        }
        synchronized (this) {
            if (this.f32995u == null) {
                this.f32995u = qi0.f28495a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.xm0

                    /* renamed from: a */
                    private final zm0 f32111a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f32111a = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f32111a.m8326y();
                    }
                });
            }
        }
        if (!this.f32995u.isDone()) {
            return -1L;
        }
        try {
            this.f32996v.compareAndSet(-1L, this.f32995u.get().longValue());
            return this.f32996v.get();
        } catch (InterruptedException | ExecutionException e) {
            return -1L;
        }
    }

    /* renamed from: y */
    public final /* synthetic */ Long m8326y() {
        return Long.valueOf(C5667s.m18154j().m8784g(this.f32989o));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    public final Uri zzi() {
        return this.f32988n;
    }
}
