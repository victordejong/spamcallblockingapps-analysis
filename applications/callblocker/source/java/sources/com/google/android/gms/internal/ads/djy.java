package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.internal.ads.atw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/djy.class */
public final class djy extends djz {

    /* renamed from: d */
    private final View f14499d;

    public djy(din dinVar, String str, String str2, atw.C2798a.C2799a c2799a, int i, int i2, View view) {
        super(dinVar, str, str2, c2799a, i, 57);
        this.f14499d = view;
    }

    @Override // com.google.android.gms.internal.ads.djz
    /* renamed from: a */
    protected final void mo9365a() {
        if (this.f14499d != null) {
            Boolean bool = (Boolean) dyx.m8158e().m7876a(edi.f16434bn);
            div divVar = new div((String) this.f14502c.invoke(null, this.f14499d, this.f14500a.m9422a().getResources().getDisplayMetrics(), bool));
            atw.C2798a.C2805f.C2806a m12482a = atw.C2798a.C2805f.m12482a();
            m12482a.m12472a(divVar.f14458a.longValue()).m12471b(divVar.f14459b.longValue()).m12470c(divVar.f14460c.longValue());
            if (bool.booleanValue()) {
                m12482a.m12469d(divVar.f14461d.longValue());
            }
            this.f14501b.m12590a((atw.C2798a.C2805f) ((dcw) m12482a.mo9987g()));
        }
    }
}
