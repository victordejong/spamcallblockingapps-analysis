package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/gb.class */
public final class gb extends fc {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ fz f28004a;

    private gb(fz fzVar) {
        this.f28004a = fzVar;
    }

    @Override // com.google.android.gms.internal.ads.ey
    public final void a(eo eoVar, String str) {
        if (this.f28004a.f28001b != null) {
            this.f28004a.f28001b.onCustomClick(this.f28004a.a(eoVar), str);
        }
    }
}
