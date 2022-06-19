package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.TrafficStats;
import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzm;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aeb.class */
public final class aeb {
    /* renamed from: a */
    public static adt m18830a(Context context, afh afhVar, String str, boolean z, boolean z2, die dieVar, C12256bw c12256bw, zzbar zzbarVar, zzm zzmVar, zzb zzbVar, ehk ehkVar, cov covVar, coz cozVar) throws zzbfu {
        C12187aq.m18474a(context);
        try {
            return (adt) zzbr.zza(new cyn(context, afhVar, str, z, z2, dieVar, c12256bw, zzbarVar, null, zzmVar, zzbVar, ehkVar, covVar, cozVar) { // from class: com.google.android.gms.internal.ads.aed

                /* renamed from: a */
                private final Context f40042a;

                /* renamed from: b */
                private final afh f40043b;

                /* renamed from: c */
                private final String f40044c;

                /* renamed from: d */
                private final boolean f40045d;

                /* renamed from: e */
                private final boolean f40046e;

                /* renamed from: f */
                private final die f40047f;

                /* renamed from: g */
                private final C12256bw f40048g;

                /* renamed from: h */
                private final zzbar f40049h;

                /* renamed from: i */
                private final C12241bi f40050i = null;

                /* renamed from: j */
                private final zzm f40051j;

                /* renamed from: k */
                private final zzb f40052k;

                /* renamed from: l */
                private final ehk f40053l;

                /* renamed from: m */
                private final cov f40054m;

                /* renamed from: n */
                private final coz f40055n;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f40042a = context;
                    this.f40043b = afhVar;
                    this.f40044c = str;
                    this.f40045d = z;
                    this.f40046e = z2;
                    this.f40047f = dieVar;
                    this.f40048g = c12256bw;
                    this.f40049h = zzbarVar;
                    this.f40051j = zzmVar;
                    this.f40052k = zzbVar;
                    this.f40053l = ehkVar;
                    this.f40054m = covVar;
                    this.f40055n = cozVar;
                }

                @Override // com.google.android.gms.internal.ads.cyn
                /* renamed from: a */
                public final Object mo17050a() {
                    return aeb.m18829b(this.f40042a, this.f40043b, this.f40044c, this.f40045d, this.f40046e, this.f40047f, this.f40048g, this.f40049h, this.f40051j, this.f40052k, this.f40053l, this.f40054m, this.f40055n);
                }
            });
        } catch (Throwable th) {
            throw new zzbfu("Webview initialization failed.", th);
        }
    }

    /* renamed from: b */
    public static final /* synthetic */ adt m18829b(Context context, afh afhVar, String str, boolean z, boolean z2, die dieVar, C12256bw c12256bw, zzbar zzbarVar, zzm zzmVar, zzb zzbVar, ehk ehkVar, cov covVar, coz cozVar) {
        try {
            TrafficStats.setThreadStatsTag(264);
            zzbft zzbftVar = new zzbft(aeh.m18821a(context, afhVar, str, z, z2, dieVar, c12256bw, zzbarVar, null, zzmVar, zzbVar, ehkVar, covVar, cozVar));
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
