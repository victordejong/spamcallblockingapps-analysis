package com.callapp.contacts.widget.login;

import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.AttributeSet;
import android.util.Pair;
import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.contacts.activity.setup.SetupWizardActivity;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.util.ThemeUtils;
import com.facebook.AccessToken;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/login/FacebookSocialLoginButton.class */
public class FacebookSocialLoginButton extends SocialLoginButton {
    public FacebookSocialLoginButton(Context context) {
        super(context);
    }

    public FacebookSocialLoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FacebookSocialLoginButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: b */
    public static /* synthetic */ Pair m26382b() {
        return Pair.create(AccessToken.getCurrentAccessToken() != null ? AccessToken.getCurrentAccessToken().getToken() : null, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.FACEBOOK);
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    public int getButtonBackground(int i) {
        if (i != 0) {
            if (i == 1) {
                return 2131232043;
            }
            return super.getButtonBackground(i);
        }
        return 2131232048;
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    protected int getButtonIcon(int i) {
        if (i == 1) {
            return 2131231672;
        }
        return i == 0 ? 2131231676 : 0;
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    protected ColorFilter getButtonIconColorFilter(int i) {
        if (i != 1) {
            return new PorterDuffColorFilter(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN);
        }
        return null;
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    protected String getButtonText(int i) {
        return i == 1 ? getResources().getString(2131887118) : getResources().getString(2131887120);
    }

    @Override // com.callapp.contacts.widget.login.SocialLoginButton
    public String getNetIdPrefix() {
        return "fb.";
    }

    @Override // com.callapp.contacts.widget.login.SocialLoginButton
    public RemoteAccountHelper getRemoteAccountHelper() {
        return FacebookHelper.get();
    }

    @Override // com.callapp.contacts.widget.login.SocialLoginButton
    public SetupWizardActivity.TokenHelper getTokenHelper() {
        return _$$Lambda$FacebookSocialLoginButton$9G_lQ7k5FAD6Ih0KN_mTJW8VOKI.INSTANCE;
    }
}
