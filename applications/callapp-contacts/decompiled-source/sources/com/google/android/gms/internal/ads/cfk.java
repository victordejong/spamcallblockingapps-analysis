package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import com.mopub.common.AdType;
import java.util.Set;
import java.util.concurrent.Callable;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfk.class */
public final class cfk implements chb<cfl> {

    /* renamed from: a  reason: collision with root package name */
    final Context f25732a;

    /* renamed from: b  reason: collision with root package name */
    final Set<String> f25733b;

    /* renamed from: c  reason: collision with root package name */
    private final dbs f25734c;

    public cfk(dbs dbsVar, Context context, Set<String> set) {
        this.f25734c = dbsVar;
        this.f25732a = context;
        this.f25733b = set;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cfl> a() {
        return this.f25734c.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cfn

            /* renamed from: a  reason: collision with root package name */
            private final cfk f25739a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25739a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                cfk cfkVar = this.f25739a;
                if (((Boolean) ekb.e().a(aq.cT)).booleanValue()) {
                    Set<String> set = cfkVar.f25733b;
                    if (set.contains(Reporting.AdFormat.REWARDED) || set.contains(AdType.INTERSTITIAL) || set.contains("native") || set.contains("banner")) {
                        return new cfl(zzr.zzlk().b(cfkVar.f25732a));
                    }
                }
                return new cfl(null);
            }
        });
    }
}
