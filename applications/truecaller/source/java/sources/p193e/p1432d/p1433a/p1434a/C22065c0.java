package p193e.p1432d.p1433a.p1434a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.play_billing.zza;
/* renamed from: e.d.a.a.c0 */
/* loaded from: classes-dex2jar.jar:e/d/a/a/c0.class */
public final class C22065c0 extends BroadcastReceiver {

    /* renamed from: a */
    public final AbstractC22093q f61326a;

    /* renamed from: b */
    public boolean f61327b;

    /* renamed from: c */
    public final /* synthetic */ C22067d0 f61328c;

    public /* synthetic */ C22065c0(C22067d0 c22067d0, AbstractC22093q abstractC22093q) {
        this.f61328c = c22067d0;
        this.f61326a = abstractC22093q;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f61326a.onPurchasesUpdated(zza.zzg(intent, "BillingBroadcastManager"), zza.zzi(intent.getExtras()));
    }
}
