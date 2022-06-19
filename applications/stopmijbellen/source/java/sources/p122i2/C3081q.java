package p122i2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.appcompat.widget.C0302z;
import com.google.android.gms.internal.play_billing.zzb;
import p229s2.C4281c;
/* renamed from: i2.q */
/* loaded from: classes-dex2jar.jar:i2/q.class */
public final class C3081q extends BroadcastReceiver {

    /* renamed from: a */
    public final C4281c f10437a;

    /* renamed from: b */
    public boolean f10438b;

    /* renamed from: c */
    public final /* synthetic */ C0302z f10439c;

    public /* synthetic */ C3081q(C0302z c0302z, C4281c c4281c) {
        this.f10439c = c0302z;
        this.f10437a = c4281c;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f10437a.m1116e(zzb.zzh(intent, "BillingBroadcastManager"), zzb.zzl(intent.getExtras()));
    }
}
