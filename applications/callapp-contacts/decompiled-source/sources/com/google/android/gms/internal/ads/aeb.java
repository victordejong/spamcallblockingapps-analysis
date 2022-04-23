package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.TrafficStats;
import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzm;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aeb.class */
public final class aeb {
    public static adt a(final Context context, final afh afhVar, final String str, final boolean z, final boolean z2, final die dieVar, final bw bwVar, final zzbar zzbarVar, final zzm zzmVar, final zzb zzbVar, final ehk ehkVar, final cov covVar, final coz cozVar) throws zzbfu {
        aq.a(context);
        try {
            return (adt) zzbr.zza(new cyn(context, afhVar, str, z, z2, dieVar, bwVar, zzbarVar, null, zzmVar, zzbVar, ehkVar, covVar, cozVar) { // from class: com.google.android.gms.internal.ads.aed

                /* renamed from: a  reason: collision with root package name */
                private final Context f23181a;

                /* renamed from: b  reason: collision with root package name */
                private final afh f23182b;

                /* renamed from: c  reason: collision with root package name */
                private final String f23183c;

                /* renamed from: d  reason: collision with root package name */
                private final boolean f23184d;
                private final boolean e;
                private final die f;
                private final bw g;
                private final zzbar h;
                private final bi i = null;
                private final zzm j;
                private final zzb k;
                private final ehk l;
                private final cov m;
                private final coz n;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23181a = context;
                    this.f23182b = afhVar;
                    this.f23183c = str;
                    this.f23184d = z;
                    this.e = z2;
                    this.f = dieVar;
                    this.g = bwVar;
                    this.h = zzbarVar;
                    this.j = zzmVar;
                    this.k = zzbVar;
                    this.l = ehkVar;
                    this.m = covVar;
                    this.n = cozVar;
                }

                @Override // com.google.android.gms.internal.ads.cyn
                public final Object a() {
                    return aeb.b(this.f23181a, this.f23182b, this.f23183c, this.f23184d, this.e, this.f, this.g, this.h, this.j, this.k, this.l, this.m, this.n);
                }
            });
        } catch (Throwable th) {
            throw new zzbfu("Webview initialization failed.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ adt b(Context context, afh afhVar, String str, boolean z, boolean z2, die dieVar, bw bwVar, zzbar zzbarVar, zzm zzmVar, zzb zzbVar, ehk ehkVar, cov covVar, coz cozVar) {
        try {
            TrafficStats.setThreadStatsTag(264);
            zzbft zzbftVar = new zzbft(aeh.a(context, afhVar, str, z, z2, dieVar, bwVar, zzbarVar, null, zzmVar, zzbVar, ehkVar, covVar, cozVar));
            zzbftVar.setWebViewClient(zzr.zzkx().zza(zzbftVar, ehkVar, z2));
            zzbftVar.setWebChromeClient(new adl(zzbftVar));
            TrafficStats.clearThreadStatsTag();
            return zzbftVar;
        } catch (Throwable th) {
            TrafficStats.clearThreadStatsTag();
            throw th;
        }
    }
}
