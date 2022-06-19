package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abs.class */
public final class abs extends AbstractC3552uq {

    /* renamed from: a */
    final aad f7758a;

    /* renamed from: b */
    final abt f7759b;

    /* renamed from: c */
    private final String f7760c;

    /* renamed from: d */
    private final String[] f7761d;

    public abs(aad aadVar, abt abtVar, String str, String[] strArr) {
        this.f7758a = aadVar;
        this.f7759b = abtVar;
        this.f7760c = str;
        this.f7761d = strArr;
        C2341q.m14722y().m13654a(this);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3552uq
    /* renamed from: a */
    public final void mo6839a() {
        try {
            this.f7759b.mo13636a(this.f7760c, this.f7761d);
            C3567ve.f17498a.post(new abr(this));
        } catch (Throwable th) {
            C3567ve.f17498a.post(new abr(this));
            throw th;
        }
    }
}
