package p131c.p161d.p170b.p224d.p252g.p253a;

import com.facebook.ads.AdError;
import com.google.android.gms.internal.ads.zzdp;
import com.google.android.gms.internal.ads.zzdtc;
import com.google.android.gms.internal.ads.zzdy;
/* renamed from: c.d.b.d.g.a.h10 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/h10.class */
public final class h10 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        zzdtc zzdtcVar;
        zzdp zzdpVar;
        zzdp zzdpVar2;
        try {
            zzdpVar = zzdy.f27950y;
            zzdpVar.m13382a();
            zzdpVar2 = zzdy.f27950y;
            zzdpVar2.m13375b();
        } catch (Exception e) {
            zzdtcVar = zzdy.f27945A;
            zzdtcVar.m13221a(AdError.INTERNAL_ERROR_CODE, -1L, e);
        }
    }
}
