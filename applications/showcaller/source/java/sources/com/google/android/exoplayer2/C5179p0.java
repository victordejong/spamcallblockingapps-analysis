package com.google.android.exoplayer2;

import android.os.Handler;
import com.google.android.exoplayer2.util.C5508e;
/* renamed from: com.google.android.exoplayer2.p0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/p0.class */
public final class C5179p0 {

    /* renamed from: a */
    private final AbstractC5181b f16260a;

    /* renamed from: b */
    private final AbstractC5180a f16261b;

    /* renamed from: c */
    private final AbstractC5585y0 f16262c;

    /* renamed from: d */
    private int f16263d;

    /* renamed from: e */
    private Object f16264e;

    /* renamed from: f */
    private Handler f16265f;

    /* renamed from: g */
    private int f16266g;

    /* renamed from: h */
    private long f16267h = -9223372036854775807L;

    /* renamed from: i */
    private boolean f16268i = true;

    /* renamed from: j */
    private boolean f16269j;

    /* renamed from: k */
    private boolean f16270k;

    /* renamed from: l */
    private boolean f16271l;

    /* renamed from: m */
    private boolean f16272m;

    /* renamed from: com.google.android.exoplayer2.p0$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/p0$a.class */
    public interface AbstractC5180a {
        /* renamed from: b */
        void mo20215b(C5179p0 c5179p0);
    }

    /* renamed from: com.google.android.exoplayer2.p0$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/p0$b.class */
    public interface AbstractC5181b {
        /* renamed from: r */
        void mo18503r(int i, Object obj);
    }

    public C5179p0(AbstractC5180a abstractC5180a, AbstractC5181b abstractC5181b, AbstractC5585y0 abstractC5585y0, int i, Handler handler) {
        this.f16261b = abstractC5180a;
        this.f16260a = abstractC5181b;
        this.f16262c = abstractC5585y0;
        this.f16265f = handler;
        this.f16266g = i;
    }

    /* renamed from: a */
    public boolean m20229a() {
        boolean z;
        synchronized (this) {
            C5508e.m18910f(this.f16269j);
            C5508e.m18910f(this.f16265f.getLooper().getThread() != Thread.currentThread());
            while (!this.f16271l) {
                wait();
            }
            z = this.f16270k;
        }
        return z;
    }

    /* renamed from: b */
    public boolean m20228b() {
        return this.f16268i;
    }

    /* renamed from: c */
    public Handler m20227c() {
        return this.f16265f;
    }

    /* renamed from: d */
    public Object m20226d() {
        return this.f16264e;
    }

    /* renamed from: e */
    public long m20225e() {
        return this.f16267h;
    }

    /* renamed from: f */
    public AbstractC5181b m20224f() {
        return this.f16260a;
    }

    /* renamed from: g */
    public AbstractC5585y0 m20223g() {
        return this.f16262c;
    }

    /* renamed from: h */
    public int m20222h() {
        return this.f16263d;
    }

    /* renamed from: i */
    public int m20221i() {
        return this.f16266g;
    }

    /* renamed from: j */
    public boolean m20220j() {
        boolean z;
        synchronized (this) {
            z = this.f16272m;
        }
        return z;
    }

    /* renamed from: k */
    public void m20219k(boolean z) {
        synchronized (this) {
            this.f16270k = z | this.f16270k;
            this.f16271l = true;
            notifyAll();
        }
    }

    /* renamed from: l */
    public C5179p0 m20218l() {
        C5508e.m18910f(!this.f16269j);
        if (this.f16267h == -9223372036854775807L) {
            C5508e.m18915a(this.f16268i);
        }
        this.f16269j = true;
        this.f16261b.mo20215b(this);
        return this;
    }

    /* renamed from: m */
    public C5179p0 m20217m(Object obj) {
        C5508e.m18910f(!this.f16269j);
        this.f16264e = obj;
        return this;
    }

    /* renamed from: n */
    public C5179p0 m20216n(int i) {
        C5508e.m18910f(!this.f16269j);
        this.f16263d = i;
        return this;
    }
}
