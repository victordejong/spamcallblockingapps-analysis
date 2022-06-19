package com.facebook.login.widget;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.DeviceLoginManager;
import com.facebook.login.LoginBehavior;
import com.facebook.login.LoginManager;
import com.facebook.login.widget.LoginButton;
/* loaded from: classes-dex2jar.jar:com/facebook/login/widget/DeviceLoginButton.class */
public class DeviceLoginButton extends LoginButton {
    private Uri deviceRedirectUri;

    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener.class */
    private class DeviceLoginClickListener extends LoginButton.LoginClickListener {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private DeviceLoginClickListener() {
            super();
            DeviceLoginButton.this = r4;
        }

        @Override // com.facebook.login.widget.LoginButton.LoginClickListener
        protected LoginManager getLoginManager() {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            try {
                DeviceLoginManager deviceLoginManager = DeviceLoginManager.getInstance();
                deviceLoginManager.setDefaultAudience(DeviceLoginButton.this.getDefaultAudience());
                deviceLoginManager.setLoginBehavior(LoginBehavior.DEVICE_AUTH);
                deviceLoginManager.setDeviceRedirectUri(DeviceLoginButton.this.getDeviceRedirectUri());
                return deviceLoginManager;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
                return null;
            }
        }
    }

    public DeviceLoginButton(Context context) {
        super(context);
    }

    public DeviceLoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DeviceLoginButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public Uri getDeviceRedirectUri() {
        return this.deviceRedirectUri;
    }

    @Override // com.facebook.login.widget.LoginButton
    protected LoginButton.LoginClickListener getNewLoginClickListener() {
        return new DeviceLoginClickListener();
    }

    public void setDeviceRedirectUri(Uri uri) {
        this.deviceRedirectUri = uri;
    }
}
