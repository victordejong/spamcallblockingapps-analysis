package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* renamed from: com.google.android.gms.internal.ads.na */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/na.class */
public final class C6768na implements AbstractC7026u9 {

    /* renamed from: d */
    private final AbstractC7210z8 f27042d;

    /* renamed from: e */
    private boolean f27043e;

    /* renamed from: f */
    private long f27044f;

    /* renamed from: g */
    private long f27045g;

    /* renamed from: h */
    private C6392d6 f27046h = C6392d6.f21486a;

    public C6768na(AbstractC7210z8 abstractC7210z8) {
        this.f27042d = abstractC7210z8;
    }

    /* renamed from: a */
    public final void m12958a() {
        if (!this.f27043e) {
            this.f27045g = SystemClock.elapsedRealtime();
            this.f27043e = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7026u9
    /* renamed from: b */
    public final void mo9314b(C6392d6 c6392d6) {
        if (this.f27043e) {
            m12956d(mo9312v());
        }
        this.f27046h = c6392d6;
    }

    /* renamed from: c */
    public final void m12957c() {
        if (this.f27043e) {
            m12956d(mo9312v());
            this.f27043e = false;
        }
    }

    /* renamed from: d */
    public final void m12956d(long j) {
        this.f27044f = j;
        if (this.f27043e) {
            this.f27045g = SystemClock.elapsedRealtime();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7026u9
    /* renamed from: u */
    public final C6392d6 mo9313u() {
        return this.f27046h;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC7026u9
    /* renamed from: v */
    public final long mo9312v() {
        ?? r0 = this.f27044f;
        char c = r0;
        if (this.f27043e) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.f27045g;
            C6392d6 c6392d6 = this.f27046h;
            c = r0 + (c6392d6.f21488c == 1.0f ? C7130x2.m9368b(elapsedRealtime) : c6392d6.m15946a(elapsedRealtime));
        }
        return c;
    }
}
