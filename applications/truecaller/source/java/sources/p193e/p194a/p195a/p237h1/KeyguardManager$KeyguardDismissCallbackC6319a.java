package p193e.p194a.p195a.p237h1;

import android.app.KeyguardManager;
import com.truecaller.messaging.urgent.KeyguardOverlay;
/* renamed from: e.a.a.h1.a */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/a.class */
public final class KeyguardManager$KeyguardDismissCallbackC6319a extends KeyguardManager.KeyguardDismissCallback {

    /* renamed from: a */
    public final /* synthetic */ C6320b f21138a;

    public KeyguardManager$KeyguardDismissCallbackC6319a(C6320b c6320b) {
        this.f21138a = c6320b;
    }

    @Override // android.app.KeyguardManager.KeyguardDismissCallback
    public void onDismissSucceeded() {
        KeyguardOverlay keyguardOverlay = this.f21138a.f21139a;
        int i = KeyguardOverlay.f13890g;
        keyguardOverlay.m34878a(false);
    }
}
