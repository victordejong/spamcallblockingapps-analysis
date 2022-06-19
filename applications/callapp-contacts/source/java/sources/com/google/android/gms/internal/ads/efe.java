package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efe.class */
final class efe implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ View f48951a;

    /* renamed from: b */
    private final /* synthetic */ efb f48952b;

    public efe(efb efbVar, View view) {
        this.f48952b = efbVar;
        this.f48951a = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        efb efbVar = this.f48952b;
        View view = this.f48951a;
        try {
            eev eevVar = new eev(efbVar.f48933e, efbVar.f48934f, efbVar.f48935g, efbVar.f48936h, efbVar.f48937i, efbVar.f48938j, efbVar.f48939k, efbVar.f48942n);
            Context m15112b = zzr.zzky().m15112b();
            if (m15112b != null && !TextUtils.isEmpty(efbVar.f48940l)) {
                String str = (String) view.getTag(m15112b.getResources().getIdentifier((String) ekb.m14831e().m18571a(C12187aq.f42625O), "id", m15112b.getPackageName()));
                if (str != null && str.equals(efbVar.f48940l)) {
                    return;
                }
            }
            eff m15097a = efbVar.m15097a(view, eevVar);
            eevVar.m15116b();
            if (m15097a.f48953a == 0 && m15097a.f48954b == 0) {
                return;
            }
            if (m15097a.f48954b == 0 && eevVar.f48895b == 0) {
                return;
            }
            if (m15097a.f48954b == 0 && efbVar.f48932d.m15110a(eevVar)) {
                return;
            }
            efbVar.f48932d.m15107c(eevVar);
        } catch (Exception e) {
            zzd.zzc("Exception in fetchContentOnUIThread", e);
            zzr.zzkz().m13979a(e, "ContentFetchTask.fetchContent");
        }
    }
}
