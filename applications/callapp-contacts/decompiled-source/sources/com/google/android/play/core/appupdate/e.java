package com.google.android.play.core.appupdate;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.play.core.a.c;
import com.google.android.play.core.install.a;
import com.google.android.play.core.internal.h;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/e.class */
public final class e extends c<a> {
    public e(Context context) {
        super(new h("AppUpdateListenerRegistry"), new IntentFilter("com.google.android.play.core.install.ACTION_INSTALL_STATUS"), context);
    }

    @Override // com.google.android.play.core.a.c
    public final void a(Context context, Intent intent) {
        if (!context.getPackageName().equals(intent.getStringExtra("package.name"))) {
            this.f31030d.a("ListenerRegistryBroadcastReceiver received broadcast for third party app: %s", intent.getStringExtra("package.name"));
            return;
        }
        this.f31030d.a("List of extras in received intent:", new Object[0]);
        for (String str : intent.getExtras().keySet()) {
            this.f31030d.a("Key: %s; value: %s", str, intent.getExtras().get(str));
        }
        h hVar = this.f31030d;
        hVar.a("List of extras in received intent needed by fromUpdateIntent:", new Object[0]);
        hVar.a("Key: %s; value: %s", "install.status", Integer.valueOf(intent.getIntExtra("install.status", 0)));
        hVar.a("Key: %s; value: %s", "error.code", Integer.valueOf(intent.getIntExtra("error.code", 0)));
        com.google.android.play.core.install.c cVar = new com.google.android.play.core.install.c(intent.getIntExtra("install.status", 0), intent.getLongExtra("bytes.downloaded", 0L), intent.getLongExtra("total.bytes.to.download", 0L), intent.getIntExtra("error.code", 0), intent.getStringExtra("package.name"));
        this.f31030d.a("ListenerRegistryBroadcastReceiver.onReceive: %s", cVar);
        a((e) cVar);
    }
}
