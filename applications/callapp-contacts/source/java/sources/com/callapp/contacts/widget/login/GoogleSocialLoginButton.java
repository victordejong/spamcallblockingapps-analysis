package com.callapp.contacts.widget.login;

import android.content.Context;
import android.graphics.ColorFilter;
import android.util.AttributeSet;
import android.util.Pair;
import androidx.core.content.C0790b;
import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.contacts.activity.setup.SetupWizardActivity;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.google.GoogleHelper;
import com.callapp.contacts.util.GooglePlayUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/login/GoogleSocialLoginButton.class */
public class GoogleSocialLoginButton extends SocialLoginButton {
    public GoogleSocialLoginButton(Context context) {
        super(context);
    }

    public GoogleSocialLoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GoogleSocialLoginButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: b */
    public static /* synthetic */ Pair m26381b() {
        return Pair.create(GoogleHelper.get().getAccessToken(), AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.USER_GOOGLE);
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    public int getButtonBackground(int i) {
        if (i == 0) {
            return 2131232049;
        }
        return super.getButtonBackground(i);
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    protected int getButtonIcon(int i) {
        return 2131231689;
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    protected ColorFilter getButtonIconColorFilter(int i) {
        return null;
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    protected String getButtonText(int i) {
        return i == 1 ? getResources().getString(2131887118) : getResources().getString(2131887122);
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    protected int getButtonTextColor() {
        return C0790b.m44492c(getContext(), 2131099692);
    }

    @Override // com.callapp.contacts.widget.login.SocialLoginButton
    public String getNetIdPrefix() {
        return "gp.";
    }

    @Override // com.callapp.contacts.widget.login.SocialLoginButton
    public RemoteAccountHelper getRemoteAccountHelper() {
        return GoogleHelper.get();
    }

    @Override // com.callapp.contacts.widget.login.SocialLoginButton
    public SetupWizardActivity.TokenHelper getTokenHelper() {
        return _$$Lambda$GoogleSocialLoginButton$O1eikaFG9VtDc_0CrOs5lcm1BtU.INSTANCE;
    }

    @Override // com.callapp.contacts.widget.login.SocialLoginButton, com.callapp.contacts.widget.login.LoginButton
    public void setButtonData(int i) {
        super.setButtonData(i);
        if (!GooglePlayUtils.isGooglePlayServicesAvailable()) {
            setVisibility(8);
        }
    }
}
