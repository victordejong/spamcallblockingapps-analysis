package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.C0458d;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.C12110n;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/btw.class */
public final class btw implements bsk<azi> {

    /* renamed from: a */
    private final Context f44732a;

    /* renamed from: b */
    private final bai f44733b;

    /* renamed from: c */
    private final Executor f44734c;

    /* renamed from: d */
    private final cot f44735d;

    public btw(Context context, Executor executor, bai baiVar, cot cotVar) {
        this.f44732a = context;
        this.f44733b = baiVar;
        this.f44734c = executor;
        this.f44735d = cotVar;
    }

    /* renamed from: a */
    private static String m17610a(cov covVar) {
        try {
            return covVar.f46274u.getString("tab_url");
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public final /* synthetic */ dbt m17611a(Uri uri, cpk cpkVar, cov covVar) throws Exception {
        try {
            C0458d m45466a = new C0458d.C0459a().m45466a();
            m45466a.f1796a.setData(uri);
            zzb zzbVar = new zzb(m45466a.f1796a, null);
            C13103zp c13103zp = new C13103zp();
            azk mo18274a = this.f44733b.mo18274a(new aof(cpkVar, covVar, null), new azj(new bap(c13103zp) { // from class: com.google.android.gms.internal.ads.bty

                /* renamed from: a */
                private final C13103zp f44738a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f44738a = c13103zp;
                }

                @Override // com.google.android.gms.internal.ads.bap
                /* renamed from: a */
                public final void mo17566a(boolean z, Context context) {
                    C13103zp c13103zp2 = this.f44738a;
                    try {
                        zzr.zzku();
                        zzo.zza(context, (AdOverlayInfoParcel) c13103zp2.get(), true);
                    } catch (Exception e) {
                    }
                }
            }));
            c13103zp.set(new AdOverlayInfoParcel(zzbVar, null, mo18274a.mo18307i(), null, new zzbar(0, 0, false), null));
            this.f44735d.m17370a(cow.f46281b, cow.f46282c);
            return dbh.m16899a(mo18274a.mo18308h());
        } catch (Throwable th) {
            zzd.zzc("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: a */
    public final boolean mo17575a(cpk cpkVar, cov covVar) {
        return (this.f44732a instanceof Activity) && C12110n.m19021a() && C12250br.m17658a(this.f44732a) && !TextUtils.isEmpty(m17610a(covVar));
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: b */
    public final dbt<azi> mo17574b(cpk cpkVar, cov covVar) {
        String m17610a = m17610a(covVar);
        return daj.m16941a(dbh.m16899a((Object) null), new daq(this, m17610a != null ? Uri.parse(m17610a) : null, cpkVar, covVar) { // from class: com.google.android.gms.internal.ads.btz

            /* renamed from: a */
            private final btw f44739a;

            /* renamed from: b */
            private final Uri f44740b;

            /* renamed from: c */
            private final cpk f44741c;

            /* renamed from: d */
            private final cov f44742d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44739a = this;
                this.f44740b = parse;
                this.f44741c = cpkVar;
                this.f44742d = covVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return this.f44739a.m17611a(this.f44740b, this.f44741c, this.f44742d);
            }
        }, this.f44734c);
    }
}
