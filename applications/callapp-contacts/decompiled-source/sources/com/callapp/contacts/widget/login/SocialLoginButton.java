package com.callapp.contacts.widget.login;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.callapp.contacts.activity.setup.SetupWizardActivity;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.widget.login.LoginButton;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/login/SocialLoginButton.class */
public abstract class SocialLoginButton extends LoginButton<Manager> {

    /* renamed from: a  reason: collision with root package name */
    private Manager f16828a;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/login/SocialLoginButton$Manager.class */
    public interface Manager {
        void a(SetupWizardActivity.TokenHelper tokenHelper);

        void b();

        void c();

        void d();

        void e();
    }

    public SocialLoginButton(Context context) {
        super(context);
    }

    public SocialLoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SocialLoginButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.callapp.contacts.widget.login.LoginButton
    protected final void a(LoginButton.LoginButtonType loginButtonType) {
        if (!HttpUtils.a()) {
            AnalyticsManager.get().a(Constants.REGISTRATION, "Clicked login button, no internet");
            this.f16828a.c();
            return;
        }
        this.f16828a.b();
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.a(Constants.REGISTRATION, "Clicked login button: " + getRemoteAccountHelper().getName());
        RemoteAccountHelper remoteAccountHelper = getRemoteAccountHelper();
        final String netIdPrefix = getNetIdPrefix();
        remoteAccountHelper.setLoginListener(new RemoteAccountHelper.DefaultLoginListener(remoteAccountHelper) { // from class: com.callapp.contacts.widget.login.SocialLoginButton.2
            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
            public final void a() {
                super.a();
                new Task() { // from class: com.callapp.contacts.widget.login.SocialLoginButton.2.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        RemoteAccountHelper remoteAccountHelper2 = SocialLoginButton.this.getRemoteAccountHelper();
                        try {
                            String currentUserId = remoteAccountHelper2.getCurrentUserId();
                            String str = currentUserId;
                            if (StringUtils.a((CharSequence) currentUserId)) {
                                AnalyticsManager analyticsManager2 = AnalyticsManager.get();
                                analyticsManager2.a(Constants.REGISTRATION, "Couldn't get id, 1st try - " + remoteAccountHelper2.getName());
                                try {
                                    Thread.sleep(2000L);
                                } catch (InterruptedException e) {
                                }
                                str = remoteAccountHelper2.getCurrentUserId();
                            }
                            if (StringUtils.a((CharSequence) str)) {
                                AnalyticsManager analyticsManager3 = AnalyticsManager.get();
                                analyticsManager3.a(Constants.REGISTRATION, "Couldn't get id, 2nd try - " + SocialLoginButton.this.getRemoteAccountHelper().getName());
                                AnalyticsManager.get().a(Constants.REGISTRATION, "Error after successful login", "Could not get user ID");
                                remoteAccountHelper2.e();
                                SocialLoginButton.this.f16828a.c();
                                return;
                            }
                            Prefs.aR.set(netIdPrefix + str);
                            AnalyticsManager.get().b();
                            SocialLoginButton.this.f16828a.a(SocialLoginButton.this.getTokenHelper());
                        } catch (Exception e2) {
                            AnalyticsManager.get().a(Constants.REGISTRATION, "Error after successful login", e2.getMessage());
                            remoteAccountHelper2.e();
                            SocialLoginButton.this.f16828a.c();
                        }
                    }
                }.execute();
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
            public final void b() {
                super.b();
                if (!HttpUtils.a()) {
                    SocialLoginButton.this.f16828a.c();
                } else {
                    SocialLoginButton.this.f16828a.d();
                }
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
            public final void c() {
                super.c();
                if (!HttpUtils.a()) {
                    SocialLoginButton.this.f16828a.c();
                } else {
                    SocialLoginButton.this.f16828a.e();
                }
            }
        });
        if (getContext() != null) {
            remoteAccountHelper.b((Activity) getContext());
        }
    }

    public abstract String getNetIdPrefix();

    public abstract RemoteAccountHelper getRemoteAccountHelper();

    public abstract SetupWizardActivity.TokenHelper getTokenHelper();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.widget.login.LoginButton
    public void setButtonData(int i) {
        super.setButtonData(i);
        setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.widget.login.SocialLoginButton.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                SocialLoginButton.this.a(LoginButton.LoginButtonType.SOCIAL);
            }
        });
    }

    public void setManager(Manager manager) {
        this.f16828a = manager;
    }
}
