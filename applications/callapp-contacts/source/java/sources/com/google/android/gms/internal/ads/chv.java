package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chv.class */
public final class chv implements chb<chs> {

    /* renamed from: a */
    final String f45819a;

    /* renamed from: b */
    private final AbstractC13059xz f45820b;

    /* renamed from: c */
    private final Executor f45821c;

    /* renamed from: d */
    private final PackageInfo f45822d;

    /* renamed from: e */
    private final int f45823e;

    public chv(AbstractC13059xz abstractC13059xz, Executor executor, String str, PackageInfo packageInfo, int i) {
        this.f45820b = abstractC13059xz;
        this.f45821c = executor;
        this.f45819a = str;
        this.f45822d = packageInfo;
        this.f45823e = i;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<chs> mo17449a() {
        return dac.m16972a(daj.m16942a(this.f45820b.mo13985a(this.f45819a), chu.f45818a, this.f45821c), Throwable.class, new daq(this) { // from class: com.google.android.gms.internal.ads.chy

            /* renamed from: a */
            private final chv f45826a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45826a = this;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return dbh.m16899a(new chs(this.f45826a.f45819a));
            }
        }, this.f45821c);
    }
}
