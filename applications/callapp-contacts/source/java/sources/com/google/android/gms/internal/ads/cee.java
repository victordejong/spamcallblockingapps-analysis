package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cee.class */
public final class cee implements chb<cef> {

    /* renamed from: a */
    final Context f45615a;

    /* renamed from: b */
    private final dbs f45616b;

    public cee(Context context, dbs dbsVar) {
        this.f45615a = context;
        this.f45616b = dbsVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cef> mo17449a() {
        return this.f45616b.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.ced

            /* renamed from: a */
            private final cee f45614a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45614a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                cee ceeVar = this.f45614a;
                zzr.zzkv();
                String zzay = zzj.zzay(ceeVar.f45615a);
                String str = "";
                if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42804dH)).booleanValue()) {
                    str = ceeVar.f45615a.getSharedPreferences("mobileads_consent", 0).getString("fc_consent", "");
                }
                zzr.zzkv();
                return new cef(zzay, str, zzj.zzaz(ceeVar.f45615a));
            }
        });
    }
}
