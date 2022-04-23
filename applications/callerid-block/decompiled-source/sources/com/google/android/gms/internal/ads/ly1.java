package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ly1.class */
final class ly1 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ rz1 f7189b;

    /* renamed from: c */
    final /* synthetic */ int f7190c;

    /* renamed from: d */
    final /* synthetic */ ny1 f7191d;

    ly1(ny1 ny1Var, rz1 rz1Var, int i) {
        this.f7191d = ny1Var;
        this.f7189b = rz1Var;
        this.f7190c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.f7189b.isCancelled()) {
                ny1.U(this.f7191d, (zzedb) null);
                this.f7191d.cancel(false);
            } else {
                ny1.V(this.f7191d, this.f7190c, this.f7189b);
            }
        } finally {
            ny1.L(this.f7191d, (zzedb) null);
        }
    }
}
