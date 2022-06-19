package com.google.android.play.core.appupdate;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.play.core.install.AbstractC15005a;
import com.google.android.play.core.install.C15007c;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.p377a.AbstractC14871c;
/* renamed from: com.google.android.play.core.appupdate.e */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/e.class */
public final class C14877e extends AbstractC14871c<AbstractC15005a> {
    public C14877e(Context context) {
        super(new C15072h("AppUpdateListenerRegistry"), new IntentFilter("com.google.android.play.core.install.ACTION_INSTALL_STATUS"), context);
    }

    @Override // com.google.android.play.core.p377a.AbstractC14871c
    /* renamed from: a */
    public final void mo9393a(Context context, Intent intent) {
        if (!context.getPackageName().equals(intent.getStringExtra("package.name"))) {
            this.f54301d.m9511a("ListenerRegistryBroadcastReceiver received broadcast for third party app: %s", intent.getStringExtra("package.name"));
            return;
        }
        this.f54301d.m9511a("List of extras in received intent:", new Object[0]);
        for (String str : intent.getExtras().keySet()) {
            this.f54301d.m9511a("Key: %s; value: %s", str, intent.getExtras().get(str));
        }
        C15072h c15072h = this.f54301d;
        c15072h.m9511a("List of extras in received intent needed by fromUpdateIntent:", new Object[0]);
        c15072h.m9511a("Key: %s; value: %s", "install.status", Integer.valueOf(intent.getIntExtra("install.status", 0)));
        c15072h.m9511a("Key: %s; value: %s", "error.code", Integer.valueOf(intent.getIntExtra("error.code", 0)));
        C15007c c15007c = new C15007c(intent.getIntExtra("install.status", 0), intent.getLongExtra("bytes.downloaded", 0L), intent.getLongExtra("total.bytes.to.download", 0L), intent.getIntExtra("error.code", 0), intent.getStringExtra("package.name"));
        this.f54301d.m9511a("ListenerRegistryBroadcastReceiver.onReceive: %s", c15007c);
        m9831a((C14877e) c15007c);
    }
}
