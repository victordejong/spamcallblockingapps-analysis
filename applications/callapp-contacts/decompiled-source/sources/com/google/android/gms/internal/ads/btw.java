package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.d;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.n;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/btw.class */
public final class btw implements bsk<azi> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f25091a;

    /* renamed from: b  reason: collision with root package name */
    private final bai f25092b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f25093c;

    /* renamed from: d  reason: collision with root package name */
    private final cot f25094d;

    public btw(Context context, Executor executor, bai baiVar, cot cotVar) {
        this.f25091a = context;
        this.f25092b = baiVar;
        this.f25093c = executor;
        this.f25094d = cotVar;
    }

    private static String a(cov covVar) {
        try {
            return covVar.u.getString("tab_url");
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ dbt a(Uri uri, cpk cpkVar, cov covVar) throws Exception {
        try {
            d a2 = new d.a().a();
            a2.f1233a.setData(uri);
            zzb zzbVar = new zzb(a2.f1233a, null);
            final zp zpVar = new zp();
            azk a3 = this.f25092b.a(new aof(cpkVar, covVar, null), new azj(new bap(zpVar) { // from class: com.google.android.gms.internal.ads.bty

                /* renamed from: a  reason: collision with root package name */
                private final zp f25097a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f25097a = zpVar;
                }

                @Override // com.google.android.gms.internal.ads.bap
                public final void a(boolean z, Context context) {
                    zp zpVar2 = this.f25097a;
                    try {
                        zzr.zzku();
                        zzo.zza(context, (AdOverlayInfoParcel) zpVar2.get(), true);
                    } catch (Exception e) {
                    }
                }
            }));
            zpVar.set(new AdOverlayInfoParcel(zzbVar, null, a3.i(), null, new zzbar(0, 0, false), null));
            this.f25094d.a(cow.f26188b, cow.f26189c);
            return dbh.a(a3.h());
        } catch (Throwable th) {
            zzd.zzc("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final boolean a(cpk cpkVar, cov covVar) {
        return (this.f25091a instanceof Activity) && n.a() && br.a(this.f25091a) && !TextUtils.isEmpty(a(covVar));
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final dbt<azi> b(final cpk cpkVar, final cov covVar) {
        String a2 = a(covVar);
        final Uri parse = a2 != null ? Uri.parse(a2) : null;
        return daj.a(dbh.a((Object) null), new daq(this, parse, cpkVar, covVar) { // from class: com.google.android.gms.internal.ads.btz

            /* renamed from: a  reason: collision with root package name */
            private final btw f25098a;

            /* renamed from: b  reason: collision with root package name */
            private final Uri f25099b;

            /* renamed from: c  reason: collision with root package name */
            private final cpk f25100c;

            /* renamed from: d  reason: collision with root package name */
            private final cov f25101d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25098a = this;
                this.f25099b = parse;
                this.f25100c = cpkVar;
                this.f25101d = covVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return this.f25098a.a(this.f25099b, this.f25100c, this.f25101d);
            }
        }, this.f25093c);
    }
}
