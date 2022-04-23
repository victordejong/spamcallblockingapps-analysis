package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efe.class */
final class efe implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ View f27771a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ efb f27772b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public efe(efb efbVar, View view) {
        this.f27772b = efbVar;
        this.f27771a = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        efb efbVar = this.f27772b;
        View view = this.f27771a;
        try {
            eev eevVar = new eev(efbVar.e, efbVar.f, efbVar.g, efbVar.h, efbVar.i, efbVar.j, efbVar.k, efbVar.n);
            Context b2 = zzr.zzky().b();
            if (b2 != null && !TextUtils.isEmpty(efbVar.l)) {
                String str = (String) view.getTag(b2.getResources().getIdentifier((String) ekb.e().a(aq.O), "id", b2.getPackageName()));
                if (str != null && str.equals(efbVar.l)) {
                    return;
                }
            }
            eff a2 = efbVar.a(view, eevVar);
            eevVar.b();
            if (a2.f27773a != 0 || a2.f27774b != 0) {
                if (a2.f27774b != 0 || eevVar.f27748b != 0) {
                    if (a2.f27774b != 0 || !efbVar.f27766d.a(eevVar)) {
                        efbVar.f27766d.c(eevVar);
                    }
                }
            }
        } catch (Exception e) {
            zzd.zzc("Exception in fetchContentOnUIThread", e);
            zzr.zzkz().a(e, "ContentFetchTask.fetchContent");
        }
    }
}
