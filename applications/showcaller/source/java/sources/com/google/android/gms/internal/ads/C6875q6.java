package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.gms.internal.ads.q6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q6.class */
public final class C6875q6 {

    /* renamed from: a */
    private final AbstractC6838p6 f28319a;

    /* renamed from: b */
    private final AbstractC6801o6 f28320b;

    /* renamed from: c */
    private final AbstractC7210z8 f28321c;

    /* renamed from: d */
    private final AbstractC6839p7 f28322d;

    /* renamed from: e */
    private int f28323e;

    /* renamed from: f */
    private Object f28324f;

    /* renamed from: g */
    private final Looper f28325g;

    /* renamed from: h */
    private final int f28326h;

    /* renamed from: i */
    private boolean f28327i;

    /* renamed from: j */
    private boolean f28328j;

    /* renamed from: k */
    private boolean f28329k;

    public C6875q6(AbstractC6801o6 abstractC6801o6, AbstractC6838p6 abstractC6838p6, AbstractC6839p7 abstractC6839p7, int i, AbstractC7210z8 abstractC7210z8, Looper looper) {
        this.f28320b = abstractC6801o6;
        this.f28319a = abstractC6838p6;
        this.f28322d = abstractC6839p7;
        this.f28325g = looper;
        this.f28321c = abstractC7210z8;
        this.f28326h = i;
    }

    /* renamed from: a */
    public final AbstractC6838p6 m12027a() {
        return this.f28319a;
    }

    /* renamed from: b */
    public final C6875q6 m12026b(int i) {
        C7173y8.m8895d(!this.f28327i);
        this.f28323e = i;
        return this;
    }

    /* renamed from: c */
    public final int m12025c() {
        return this.f28323e;
    }

    /* renamed from: d */
    public final C6875q6 m12024d(Object obj) {
        C7173y8.m8895d(!this.f28327i);
        this.f28324f = obj;
        return this;
    }

    /* renamed from: e */
    public final Object m12023e() {
        return this.f28324f;
    }

    /* renamed from: f */
    public final Looper m12022f() {
        return this.f28325g;
    }

    /* renamed from: g */
    public final C6875q6 m12021g() {
        C7173y8.m8895d(!this.f28327i);
        this.f28327i = true;
        this.f28320b.mo12410b(this);
        return this;
    }

    /* renamed from: h */
    public final boolean m12020h() {
        synchronized (this) {
        }
        return false;
    }

    /* renamed from: i */
    public final void m12019i(boolean z) {
        synchronized (this) {
            this.f28328j = z | this.f28328j;
            this.f28329k = true;
            notifyAll();
        }
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* renamed from: j */
    public final boolean m12018j(long j) {
        boolean z;
        synchronized (this) {
            C7173y8.m8895d(this.f28327i);
            C7173y8.m8895d(this.f28325g.getThread() != Thread.currentThread());
            long elapsedRealtime = SystemClock.elapsedRealtime();
            char c = 2000;
            while (!this.f28329k) {
                if (c <= 0) {
                    throw new TimeoutException("Message delivery timed out.");
                }
                wait(c);
                c = (elapsedRealtime + 2000) - SystemClock.elapsedRealtime();
            }
            z = this.f28328j;
        }
        return z;
    }
}
