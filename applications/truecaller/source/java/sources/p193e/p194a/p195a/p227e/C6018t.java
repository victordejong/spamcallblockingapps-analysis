package p193e.p194a.p195a.p227e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import s1.z.c.l;
/* renamed from: e.a.a.e.t */
/* loaded from: classes7-dex2jar.jar:e/a/a/e/t.class */
public final class C6018t extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ C5953b f20034a;

    public C6018t(C5953b c5953b) {
        this.f20034a = c5953b;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (l.a(intent != null ? intent.getAction() : null, "com.truecaller.inboxcleanup.CLEANUP_DONE")) {
            this.f20034a.m32112PA().mo31963fd(intent.getIntExtra("deleted_otp", 0), intent.getIntExtra("deleted_promotional", 0), intent.getIntExtra("deleted_spam", 0));
            return;
        }
        String str = null;
        if (intent != null) {
            str = intent.getAction();
        }
        if (!l.a(str, "com.truecaller.inboxcleanup.CLEANUP_IN_PROGRESS")) {
            return;
        }
        this.f20034a.m32112PA().mo31957nf();
    }
}
