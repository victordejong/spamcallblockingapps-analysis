package com.callapp.contacts.widget.login;

import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.contacts.activity.setup.SetupWizardActivity;
import com.callapp.contacts.manager.PhoneVerifierManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.widget.login.LoginButton;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/login/PhoneLoginButton.class */
public class PhoneLoginButton extends LoginButton<Manager> {

    /* renamed from: a */
    private Manager f29299a;

    /* renamed from: b */
    private PhoneVerifierManager.PhoneVerifierCallback f29300b = new C81641();

    /* renamed from: com.callapp.contacts.widget.login.PhoneLoginButton$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/login/PhoneLoginButton$1.class */
    class C81641 implements PhoneVerifierManager.PhoneVerifierCallback {
        C81641() {
            PhoneLoginButton.this = r4;
        }

        @Override // com.callapp.contacts.manager.PhoneVerifierManager.PhoneVerifierCallback
        /* renamed from: a */
        public final void mo26376a(Phone phone, final String str, final AuthenticatorsConfiguration.AUTHENTICATORS_TYPES authenticators_types) {
            Prefs.f26241aR.set(phone.getRawNumber());
            AnalyticsManager.get().mo28428b();
            if (HttpUtils.m26985a()) {
                PhoneLoginButton.this.f29299a.mo26370a(new SetupWizardActivity.TokenHelper() { // from class: com.callapp.contacts.widget.login._$$Lambda$PhoneLoginButton$1$rFlIuM_juxxskxH55qk04Od8l6w
                    @Override // com.callapp.contacts.activity.setup.SetupWizardActivity.TokenHelper
                    public final Pair getTokenAndSource() {
                        Pair create;
                        create = Pair.create(str, authenticators_types);
                        return create;
                    }
                });
            } else {
                PhoneLoginButton.this.f29299a.mo26368c();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/login/PhoneLoginButton$Manager.class */
    public interface Manager {
        /* renamed from: a */
        void mo26370a(SetupWizardActivity.TokenHelper tokenHelper);

        /* renamed from: a */
        void mo26374a(LoginButton.LoginButtonType loginButtonType, PermissionManager.PermissionGroup... permissionGroupArr);

        /* renamed from: b */
        void mo26369b();

        /* renamed from: c */
        void mo26368c();
    }

    public PhoneLoginButton(Context context) {
        super(context);
    }

    public PhoneLoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PhoneLoginButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: b */
    public /* synthetic */ void m26377b(View view) {
        mo26373a(LoginButton.LoginButtonType.PHONE);
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    /* renamed from: a */
    public final void mo26379a() {
        super.mo26379a();
        PhoneVerifierManager.get().m28520a(this.f29300b);
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    /* renamed from: a */
    protected final void mo26373a(LoginButton.LoginButtonType loginButtonType) {
        this.f29299a.mo26369b();
        this.f29299a.mo26374a(loginButtonType, PermissionManager.PermissionGroup.SMS, PermissionManager.PermissionGroup.CORE_PERMISSIONS);
        AnalyticsManager.get().m28443a(Constants.REGISTRATION, "User clicked sign up with phone number ", "", 0L);
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    public int getButtonBackground(int i) {
        return i != 1 ? 2131232047 : 2131232043;
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    protected int getButtonIcon(int i) {
        return i != 1 ? 2131231835 : 2131231534;
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
        return i == 1 ? getResources().getString(2131887655) : getResources().getString(2131887654);
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    public void setButtonData(int i) {
        super.setButtonData(i);
        setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.login._$$Lambda$PhoneLoginButton$fxeohNyl__NTvf2wBI22wJICYnI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneLoginButton.this.m26377b(view);
            }
        });
    }

    public void setManager(Manager manager) {
        this.f29299a = manager;
        PhoneVerifierManager.get().f25760a = this.f29300b;
    }
}
