package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cee.class */
public final class cee implements chb<cef> {

    /* renamed from: a  reason: collision with root package name */
    final Context f25680a;

    /* renamed from: b  reason: collision with root package name */
    private final dbs f25681b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cee(Context context, dbs dbsVar) {
        this.f25680a = context;
        this.f25681b = dbsVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cef> a() {
        return this.f25681b.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.ced

            /* renamed from: a  reason: collision with root package name */
            private final cee f25679a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25679a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                cee ceeVar = this.f25679a;
                zzr.zzkv();
                String zzay = zzj.zzay(ceeVar.f25680a);
                String str = "";
                if (((Boolean) ekb.e().a(aq.dH)).booleanValue()) {
                    str = ceeVar.f25680a.getSharedPreferences("mobileads_consent", 0).getString("fc_consent", "");
                }
                zzr.zzkv();
                return new cef(zzay, str, zzj.zzaz(ceeVar.f25680a));
            }
        });
    }
}
