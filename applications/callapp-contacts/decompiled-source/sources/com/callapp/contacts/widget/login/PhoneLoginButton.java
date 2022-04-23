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

    /* renamed from: a  reason: collision with root package name */
    private Manager f16825a;

    /* renamed from: b  reason: collision with root package name */
    private PhoneVerifierManager.PhoneVerifierCallback f16826b = new AnonymousClass1();

    /* renamed from: com.callapp.contacts.widget.login.PhoneLoginButton$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/login/PhoneLoginButton$1.class */
    class AnonymousClass1 implements PhoneVerifierManager.PhoneVerifierCallback {
        AnonymousClass1() {
        }

        @Override // com.callapp.contacts.manager.PhoneVerifierManager.PhoneVerifierCallback
        public final void a(Phone phone, final String str, final AuthenticatorsConfiguration.AUTHENTICATORS_TYPES authenticators_types) {
            Prefs.aR.set(phone.getRawNumber());
            AnalyticsManager.get().b();
            if (HttpUtils.a()) {
                PhoneLoginButton.this.f16825a.a(new SetupWizardActivity.TokenHelper() { // from class: com.callapp.contacts.widget.login._$$Lambda$PhoneLoginButton$1$rFlIuM_juxxskxH55qk04Od8l6w
                    @Override // com.callapp.contacts.activity.setup.SetupWizardActivity.TokenHelper
                    public final Pair getTokenAndSource() {
                        Pair create;
                        create = Pair.create(str, authenticators_types);
                        return create;
                    }
                });
            } else {
                PhoneLoginButton.this.f16825a.c();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/login/PhoneLoginButton$Manager.class */
    public interface Manager {
        void a(SetupWizardActivity.TokenHelper tokenHelper);

        void a(LoginButton.LoginButtonType loginButtonType, PermissionManager.PermissionGroup... permissionGroupArr);

        void b();

        void c();
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        a(LoginButton.LoginButtonType.PHONE);
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    public final void a() {
        super.a();
        PhoneVerifierManager.get().a(this.f16826b);
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    protected final void a(LoginButton.LoginButtonType loginButtonType) {
        this.f16825a.b();
        this.f16825a.a(loginButtonType, PermissionManager.PermissionGroup.SMS, PermissionManager.PermissionGroup.CORE_PERMISSIONS);
        AnalyticsManager.get().a(Constants.REGISTRATION, "User clicked sign up with phone number ", "", 0L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.widget.login.LoginButton
    public void setButtonData(int i) {
        super.setButtonData(i);
        setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.login._$$Lambda$PhoneLoginButton$fxeohNyl__NTvf2wBI22wJICYnI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneLoginButton.this.b(view);
            }
        });
    }

    public void setManager(Manager manager) {
        this.f16825a = manager;
        PhoneVerifierManager.get().f14919a = this.f16826b;
    }
}
