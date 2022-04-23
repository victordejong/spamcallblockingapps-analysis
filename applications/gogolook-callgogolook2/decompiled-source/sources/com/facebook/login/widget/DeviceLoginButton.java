package com.facebook.login.widget;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import com.facebook.login.C2532b;
import com.facebook.login.C2539g;
import com.facebook.login.EnumC2534d;
import com.facebook.login.widget.LoginButton;
/* loaded from: classes-dex2jar.jar:com/facebook/login/widget/DeviceLoginButton.class */
public class DeviceLoginButton extends LoginButton {

    /* renamed from: t */
    public Uri f3382t;

    /* renamed from: com.facebook.login.widget.DeviceLoginButton$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/DeviceLoginButton$b.class */
    public class C2555b extends LoginButton.View$OnClickListenerC2561e {
        public C2555b() {
            super();
        }

        @Override // com.facebook.login.widget.LoginButton.View$OnClickListenerC2561e
        /* renamed from: a */
        public C2539g mo34297a() {
            C2532b b = C2532b.m34397b();
            b.m34357a(DeviceLoginButton.this.m34305j());
            b.m34356a(EnumC2534d.DEVICE_AUTH);
            b.m34398a(DeviceLoginButton.this.m34321n());
            return b;
        }
    }

    public DeviceLoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DeviceLoginButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.facebook.login.widget.LoginButton
    /* renamed from: l */
    public LoginButton.View$OnClickListenerC2561e mo34303l() {
        return new C2555b();
    }

    /* renamed from: n */
    public Uri m34321n() {
        return this.f3382t;
    }
}
