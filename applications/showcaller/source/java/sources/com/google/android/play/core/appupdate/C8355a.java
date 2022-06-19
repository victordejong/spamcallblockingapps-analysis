package com.google.android.play.core.appupdate;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.play.core.install.InstallState;
import com.google.android.play.core.internal.C8466a;
import p078c.p084c.p085a.p110c.p111a.p112a.AbstractC1967c;
/* renamed from: com.google.android.play.core.appupdate.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/appupdate/a.class */
public final class C8355a extends AbstractC1967c<InstallState> {
    public C8355a(Context context) {
        super(new C8466a("AppUpdateListenerRegistry"), new IntentFilter("com.google.android.play.core.install.ACTION_INSTALL_STATUS"), context);
    }

    @Override // p078c.p084c.p085a.p110c.p111a.p112a.AbstractC1967c
    /* renamed from: a */
    public final void mo3332a(Context context, Intent intent) {
        if (!context.getPackageName().equals(intent.getStringExtra("package.name"))) {
            this.f7049a.m3567a("ListenerRegistryBroadcastReceiver received broadcast for third party app: %s", intent.getStringExtra("package.name"));
            return;
        }
        this.f7049a.m3567a("List of extras in received intent:", new Object[0]);
        for (String str : intent.getExtras().keySet()) {
            this.f7049a.m3567a("Key: %s; value: %s", str, intent.getExtras().get(str));
        }
        C8466a c8466a = this.f7049a;
        c8466a.m3567a("List of extras in received intent needed by fromUpdateIntent:", new Object[0]);
        c8466a.m3567a("Key: %s; value: %s", "install.status", Integer.valueOf(intent.getIntExtra("install.status", 0)));
        c8466a.m3567a("Key: %s; value: %s", "error.code", Integer.valueOf(intent.getIntExtra("error.code", 0)));
        InstallState m3574a = InstallState.m3574a(intent.getIntExtra("install.status", 0), intent.getLongExtra("bytes.downloaded", 0L), intent.getLongExtra("total.bytes.to.download", 0L), intent.getIntExtra("error.code", 0), intent.getStringExtra("package.name"));
        this.f7049a.m3567a("ListenerRegistryBroadcastReceiver.onReceive: %s", m3574a);
        m28430d(m3574a);
    }
}
