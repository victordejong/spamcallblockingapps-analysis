package p124i4;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import p167m4.C3640a;
import p200p4.AbstractC4015c;
import p201p6.C4018c;
/* renamed from: i4.f */
/* loaded from: classes-dex2jar.jar:i4/f.class */
public final class C3104f extends AbstractC4015c {
    public C3104f(Context context) {
        super(new C4018c("AppUpdateListenerRegistry"), new IntentFilter("com.google.android.play.core.install.ACTION_INSTALL_STATUS"), context);
    }

    @Override // p200p4.AbstractC4015c
    /* renamed from: a */
    public final void mo1515a(Context context, Intent intent) {
        if (!context.getPackageName().equals(intent.getStringExtra("package.name"))) {
            this.f12626a.m1510b("ListenerRegistryBroadcastReceiver received broadcast for third party app: %s", intent.getStringExtra("package.name"));
            return;
        }
        this.f12626a.m1510b("List of extras in received intent:", new Object[0]);
        for (String str : intent.getExtras().keySet()) {
            this.f12626a.m1510b("Key: %s; value: %s", str, intent.getExtras().get(str));
        }
        C4018c c4018c = this.f12626a;
        c4018c.m1510b("List of extras in received intent needed by fromUpdateIntent:", new Object[0]);
        c4018c.m1510b("Key: %s; value: %s", "install.status", Integer.valueOf(intent.getIntExtra("install.status", 0)));
        c4018c.m1510b("Key: %s; value: %s", "error.code", Integer.valueOf(intent.getIntExtra("error.code", 0)));
        C3640a c3640a = new C3640a(intent.getIntExtra("install.status", 0), intent.getLongExtra("bytes.downloaded", 0L), intent.getLongExtra("total.bytes.to.download", 0L), intent.getIntExtra("error.code", 0), intent.getStringExtra("package.name"));
        this.f12626a.m1510b("ListenerRegistryBroadcastReceiver.onReceive: %s", c3640a);
        m1513c(c3640a);
    }
}
