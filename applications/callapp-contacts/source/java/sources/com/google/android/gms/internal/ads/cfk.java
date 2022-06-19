package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import com.mopub.common.AdType;
import java.util.Set;
import java.util.concurrent.Callable;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfk.class */
public final class cfk implements chb<cfl> {

    /* renamed from: a */
    final Context f45667a;

    /* renamed from: b */
    final Set<String> f45668b;

    /* renamed from: c */
    private final dbs f45669c;

    public cfk(dbs dbsVar, Context context, Set<String> set) {
        this.f45669c = dbsVar;
        this.f45667a = context;
        this.f45668b = set;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cfl> mo17449a() {
        return this.f45669c.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cfn

            /* renamed from: a */
            private final cfk f45674a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45674a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                cfk cfkVar = this.f45674a;
                if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42763cT)).booleanValue()) {
                    Set<String> set = cfkVar.f45668b;
                    if (set.contains(Reporting.AdFormat.REWARDED) || set.contains(AdType.INTERSTITIAL) || set.contains("native") || set.contains("banner")) {
                        return new cfl(zzr.zzlk().m14218b(cfkVar.f45667a));
                    }
                }
                return new cfl(null);
            }
        });
    }
}
