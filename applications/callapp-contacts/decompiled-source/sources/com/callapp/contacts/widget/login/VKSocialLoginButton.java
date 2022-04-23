package com.callapp.contacts.widget.login;

import android.content.Context;
import android.graphics.ColorFilter;
import android.util.AttributeSet;
import android.util.Pair;
import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.contacts.activity.setup.SetupWizardActivity;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.vk.VKHelper;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/login/VKSocialLoginButton.class */
public class VKSocialLoginButton extends SocialLoginButton {
    public VKSocialLoginButton(Context context) {
        super(context);
    }

    public VKSocialLoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VKSocialLoginButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Pair b() {
        return Pair.create(StringUtils.b((CharSequence) Prefs.fJ.get()) ? Prefs.fJ.get() : null, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.VK);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.widget.login.LoginButton
    public int getButtonBackground(int i) {
        return 2131232051;
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    protected int getButtonIcon(int i) {
        return 2131231967;
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    protected ColorFilter getButtonIconColorFilter(int i) {
        return null;
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    protected String getButtonText(int i) {
        return getResources().getString(2131887124);
    }

    @Override // com.callapp.contacts.widget.login.SocialLoginButton
    public String getNetIdPrefix() {
        return "vk.";
    }

    @Override // com.callapp.contacts.widget.login.SocialLoginButton
    public RemoteAccountHelper getRemoteAccountHelper() {
        return VKHelper.get();
    }

    @Override // com.callapp.contacts.widget.login.SocialLoginButton
    public SetupWizardActivity.TokenHelper getTokenHelper() {
        return _$$Lambda$VKSocialLoginButton$MtsSMdomjxK5VyFALf8le1Blp9I.INSTANCE;
    }
}
