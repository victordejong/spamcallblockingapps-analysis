package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chv.class */
public final class chv implements chb<chs> {

    /* renamed from: a  reason: collision with root package name */
    final String f25859a;

    /* renamed from: b  reason: collision with root package name */
    private final xz f25860b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f25861c;

    /* renamed from: d  reason: collision with root package name */
    private final PackageInfo f25862d;
    private final int e;

    public chv(xz xzVar, Executor executor, String str, PackageInfo packageInfo, int i) {
        this.f25860b = xzVar;
        this.f25861c = executor;
        this.f25859a = str;
        this.f25862d = packageInfo;
        this.e = i;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<chs> a() {
        return dac.a(daj.a(this.f25860b.a(this.f25859a), chu.f25858a, this.f25861c), Throwable.class, new daq(this) { // from class: com.google.android.gms.internal.ads.chy

            /* renamed from: a  reason: collision with root package name */
            private final chv f25865a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25865a = this;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return dbh.a(new chs(this.f25865a.f25859a));
            }
        }, this.f25861c);
    }
}
