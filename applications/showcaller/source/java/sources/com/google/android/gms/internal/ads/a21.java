package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a21.class */
final class a21 implements n41, t31 {

    /* renamed from: d */
    private final Context f19797d;

    /* renamed from: e */
    private final ej2 f19798e;

    /* renamed from: f */
    private final pb0 f19799f;

    public a21(Context context, ej2 ej2Var, pb0 pb0Var, byte[] bArr) {
        this.f19797d = context;
        this.f19798e = ej2Var;
        this.f19799f = pb0Var;
    }

    @Override // com.google.android.gms.internal.ads.t31
    /* renamed from: U */
    public final void mo10844U(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.n41
    /* renamed from: d */
    public final void mo10505d() {
        qb0 qb0Var = this.f19798e.f22218Z;
        if (qb0Var == null || !qb0Var.f28404a) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (this.f19798e.f22218Z.f28405b.isEmpty()) {
            return;
        }
        arrayList.add(this.f19798e.f22218Z.f28405b);
    }

    @Override // com.google.android.gms.internal.ads.t31
    /* renamed from: p */
    public final void mo10843p(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.t31
    /* renamed from: r */
    public final void mo10842r(Context context) {
    }
}
