package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ts1.class */
public final class ts1 implements u51 {

    /* renamed from: d */
    private final Context f30334d;

    /* renamed from: e */
    private final lg0 f30335e;

    public ts1(Context context, lg0 lg0Var) {
        this.f30334d = context;
        this.f30335e = lg0Var;
    }

    @Override // com.google.android.gms.internal.ads.u51
    /* renamed from: S */
    public final void mo10409S(rj2 rj2Var) {
        if (!TextUtils.isEmpty(rj2Var.f28999b.f28519b.f24899d)) {
            this.f30335e.m13544i(this.f30334d, rj2Var.f28998a.f27577a.f32077d);
            this.f30335e.m13532u(this.f30334d, rj2Var.f28999b.f28519b.f24899d);
        }
    }

    @Override // com.google.android.gms.internal.ads.u51
    /* renamed from: u */
    public final void mo10408u(zzcbj zzcbjVar) {
    }
}
