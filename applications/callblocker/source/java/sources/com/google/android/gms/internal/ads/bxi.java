package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bxi.class */
public final class bxi implements cah<bxn> {

    /* renamed from: a */
    private final Context f12444a;

    /* renamed from: b */
    private final crs f12445b;

    public bxi(Context context, crs crsVar) {
        this.f12444a = context;
        this.f12445b = crsVar;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<bxn> mo11479a() {
        return this.f12445b.mo10767a(new Callable(this) { // from class: com.google.android.gms.internal.ads.bxl

            /* renamed from: a */
            private final bxi f12451a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12451a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12451a.m11566b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ bxn m11566b() {
        C2341q.m14744c();
        String m6948k = C3567ve.m6948k(this.f12444a);
        String string = !((Boolean) dyx.m8158e().m7876a(edi.f16469cV)).booleanValue() ? "" : this.f12444a.getSharedPreferences("mobileads_consent", 0).getString("fc_consent", "");
        C2341q.m14744c();
        return new bxn(m6948k, string, C3567ve.m6947l(this.f12444a));
    }
}
