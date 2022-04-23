package android.app;

import android.app.KeyguardManager;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:android/app/a.class */
public final class a extends KeyguardManager {

    /* renamed from: a  reason: collision with root package name */
    private KeyguardManager f377a;

    public a(KeyguardManager keyguardManager) {
        this.f377a = null;
        this.f377a = keyguardManager;
    }

    @Override // android.app.KeyguardManager
    public final Intent createConfirmDeviceCredentialIntent(CharSequence charSequence, CharSequence charSequence2) {
        return this.f377a.createConfirmDeviceCredentialIntent(charSequence, charSequence2);
    }

    @Override // android.app.KeyguardManager
    public final void exitKeyguardSecurely(KeyguardManager.OnKeyguardExitResult onKeyguardExitResult) {
        this.f377a.exitKeyguardSecurely(onKeyguardExitResult);
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
        return this.f377a.isDeviceSecure();
    }

    @Override // android.app.KeyguardManager
    public final boolean isKeyguardLocked() {
        return false;
    }

    @Override // android.app.KeyguardManager
    public final boolean isKeyguardSecure() {
        return this.f377a.isKeyguardSecure();
    }

    @Override // android.app.KeyguardManager
    public final KeyguardManager.KeyguardLock newKeyguardLock(String str) {
        return this.f377a.newKeyguardLock(str);
    }

    @Override // android.app.KeyguardManager
    public final void requestDismissKeyguard(Activity activity, KeyguardManager.KeyguardDismissCallback keyguardDismissCallback) {
        this.f377a.requestDismissKeyguard(activity, keyguardDismissCallback);
    }
}
