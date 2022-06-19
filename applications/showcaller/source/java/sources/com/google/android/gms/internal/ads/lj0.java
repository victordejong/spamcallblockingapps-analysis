package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lj0.class */
public final class lj0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ String f26140d;

    /* renamed from: e */
    final /* synthetic */ String f26141e;

    /* renamed from: f */
    final /* synthetic */ zzcig f26142f;

    public lj0(zzcig zzcigVar, String str, String str2) {
        this.f26142f = zzcigVar;
        this.f26140d = str;
        this.f26141e = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        rj0 rj0Var;
        rj0 rj0Var2;
        rj0Var = this.f26142f.f33875v;
        if (rj0Var != null) {
            rj0Var2 = this.f26142f.f33875v;
            rj0Var2.mo8038i(this.f26140d, this.f26141e);
        }
    }
}
