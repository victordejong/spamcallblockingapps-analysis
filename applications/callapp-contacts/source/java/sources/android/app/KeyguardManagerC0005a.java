package android.app;

import android.app.KeyguardManager;
import android.content.Intent;
/* renamed from: android.app.a */
/* loaded from: classes-dex2jar.jar:android/app/a.class */
public final class KeyguardManagerC0005a extends KeyguardManager {

    /* renamed from: a */
    private KeyguardManager f12a;

    public KeyguardManagerC0005a(KeyguardManager keyguardManager) {
        this.f12a = null;
        this.f12a = keyguardManager;
    }

    @Override // android.app.KeyguardManager
    public final Intent createConfirmDeviceCredentialIntent(CharSequence charSequence, CharSequence charSequence2) {
        return this.f12a.createConfirmDeviceCredentialIntent(charSequence, charSequence2);
    }

    @Override // android.app.KeyguardManager
    public final void exitKeyguardSecurely(KeyguardManager.OnKeyguardExitResult onKeyguardExitResult) {
        this.f12a.exitKeyguardSecurely(onKeyguardExitResult);
    }

    @Override // android.app.KeyguardManager
    public final boolean inKeyguardRestrictedInputMode() {
        return false;
    }

    @Override // android.app.KeyguardManager
    public final boolean isDeviceLocked() {
        return false;
    }

    @Override // android.app.KeyguardManager
    public final boolean isDeviceSecure() {
        return this.f12a.isDeviceSecure();
    }

    @Override // android.app.KeyguardManager
    public final boolean isKeyguardLocked() {
        return false;
    }

    @Override // android.app.KeyguardManager
    public final boolean isKeyguardSecure() {
        return this.f12a.isKeyguardSecure();
    }

    @Override // android.app.KeyguardManager
    public final KeyguardManager.KeyguardLock newKeyguardLock(String str) {
        return this.f12a.newKeyguardLock(str);
    }

    @Override // android.app.KeyguardManager
    public final void requestDismissKeyguard(Activity activity, KeyguardManager.KeyguardDismissCallback keyguardDismissCallback) {
        this.f12a.requestDismissKeyguard(activity, keyguardDismissCallback);
    }
}
