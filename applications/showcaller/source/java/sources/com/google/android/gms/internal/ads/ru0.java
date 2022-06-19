package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ru0.class */
final class ru0 implements f03<String> {

    /* renamed from: a */
    final /* synthetic */ tu0 f29239a;

    public ru0(tu0 tu0Var) {
        this.f29239a = tu0Var;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(String str) {
        hk2 hk2Var;
        yo2 yo2Var;
        rj2 rj2Var;
        ej2 ej2Var;
        ej2 ej2Var2;
        Context context;
        hk2Var = this.f29239a.f30361k;
        yo2Var = this.f29239a.f30360j;
        rj2Var = this.f29239a.f30358h;
        ej2Var = this.f29239a.f30359i;
        ej2Var2 = this.f29239a.f30359i;
        List<String> m8750b = yo2Var.m8750b(rj2Var, ej2Var, false, "", str, ej2Var2.f22223c);
        C5667s.m18160d();
        context = this.f29239a.f30354d;
        int i = 1;
        if (true == C5679c2.m18066i(context)) {
            i = 2;
        }
        hk2Var.m14599b(m8750b, i);
    }
}
