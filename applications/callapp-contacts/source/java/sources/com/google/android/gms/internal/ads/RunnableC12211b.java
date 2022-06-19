package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.C12759mz;
/* renamed from: com.google.android.gms.internal.ads.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/b.class */
public final class RunnableC12211b implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f43383a;

    /* renamed from: b */
    private final /* synthetic */ long f43384b;

    /* renamed from: c */
    private final /* synthetic */ AbstractC13087z f43385c;

    public RunnableC12211b(AbstractC13087z abstractC13087z, String str, long j) {
        this.f43385c = abstractC13087z;
        this.f43383a = str;
        this.f43384b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C12759mz.C12760a c12760a;
        C12759mz.C12760a c12760a2;
        c12760a = this.f43385c.zzao;
        c12760a.m14476a(this.f43383a, this.f43384b);
        c12760a2 = this.f43385c.zzao;
        c12760a2.m14477a(this.f43385c.toString());
    }
}
