package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
/* renamed from: com.google.android.gms.internal.ads.ul */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ul.class */
public final class C3547ul {

    /* renamed from: a */
    private final Object f17438a;

    /* renamed from: b */
    private volatile int f17439b;

    /* renamed from: c */
    private volatile long f17440c;

    private C3547ul() {
        this.f17438a = new Object();
        this.f17439b = C3546uk.f17434a;
        this.f17440c = 0L;
    }

    public /* synthetic */ C3547ul(C3544ui c3544ui) {
        this();
    }

    /* renamed from: a */
    public final void m7073a() {
        long mo13862a = C2341q.m14737j().mo13862a();
        synchronized (this.f17438a) {
            if (this.f17439b == C3546uk.f17436c) {
                if (this.f17440c + ((Long) dyx.m8158e().m7876a(edi.f16462cO)).longValue() <= mo13862a) {
                    this.f17439b = C3546uk.f17434a;
                }
            }
        }
        long mo13862a2 = C2341q.m14737j().mo13862a();
        synchronized (this.f17438a) {
            if (this.f17439b != 2) {
                return;
            }
            this.f17439b = 3;
            if (this.f17439b == C3546uk.f17436c) {
                this.f17440c = mo13862a2;
            }
        }
    }
}
