package p193e.p194a.p1066n;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import p193e.p194a.p1066n.C18251b;
/* renamed from: e.a.n.w1 */
/* loaded from: classes5-dex2jar.jar:e/a/n/w1.class */
public final class C18446w1 extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ C18251b.C18255d f52105a;

    public C18446w1(C18251b.C18255d c18255d) {
        this.f52105a = c18255d;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC18449x1 m15382OA = C18251b.this.m15382OA();
        boolean z = false;
        if (intent != null) {
            z = intent.getBooleanExtra("com.truecaller.extra.RESTORE_SUCCESSFUL", false);
        }
        m15382OA.mo14921ud(z);
    }
}
