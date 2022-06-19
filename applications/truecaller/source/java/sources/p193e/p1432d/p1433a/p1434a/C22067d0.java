package p193e.p1432d.p1433a.p1434a;

import android.content.Context;
import com.google.android.gms.internal.play_billing.zza;
/* renamed from: e.d.a.a.d0 */
/* loaded from: classes-dex2jar.jar:e/d/a/a/d0.class */
public final class C22067d0 {

    /* renamed from: a */
    public final Context f61329a;

    /* renamed from: b */
    public final C22065c0 f61330b;

    public C22067d0(Context context, AbstractC22093q abstractC22093q) {
        this.f61329a = context;
        this.f61330b = new C22065c0(this, abstractC22093q);
    }

    /* renamed from: a */
    public final void m8822a() {
        C22065c0 c22065c0 = this.f61330b;
        Context context = this.f61329a;
        if (!c22065c0.f61327b) {
            zza.zzk("BillingBroadcastManager", "Receiver is not registered.");
            return;
        }
        context.unregisterReceiver(c22065c0.f61328c.f61330b);
        c22065c0.f61327b = false;
    }
}
