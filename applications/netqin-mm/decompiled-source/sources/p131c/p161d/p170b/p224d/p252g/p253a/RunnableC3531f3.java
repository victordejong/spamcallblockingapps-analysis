package p131c.p161d.p170b.p224d.p252g.p253a;

import android.app.Activity;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzapx;
/* renamed from: c.d.b.d.g.a.f3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/f3.class */
public final class RunnableC3531f3 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AdOverlayInfoParcel f12873a;

    /* renamed from: b */
    public final /* synthetic */ zzapx f12874b;

    public RunnableC3531f3(zzapx zzapxVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f12874b = zzapxVar;
        this.f12873a = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Activity activity;
        zzp.m17970b();
        activity = this.f12874b.f24246a;
        zzl.m18002a(activity, this.f12873a, true);
    }
}
