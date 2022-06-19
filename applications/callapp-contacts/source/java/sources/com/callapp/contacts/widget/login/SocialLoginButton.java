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

    /* renamed from: a */
    private Manager f29302a;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/login/SocialLoginButton$Manager.class */
    public interface Manager {
        /* renamed from: a */
        void mo26370a(SetupWizardActivity.TokenHelper tokenHelper);

        /* renamed from: b */
        void mo26369b();

        /* renamed from: c */
        void mo26368c();

        /* renamed from: d */
        void mo26367d();

        /* renamed from: e */
        void mo26366e();
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
    /* renamed from: a */
    protected final void mo26373a(LoginButton.LoginButtonType loginButtonType) {
        if (!HttpUtils.m26985a()) {
            AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Clicked login button, no internet");
            this.f29302a.mo26368c();
            return;
        }
        this.f29302a.mo26369b();
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.m28450a(Constants.REGISTRATION, "Clicked login button: " + getRemoteAccountHelper().getName());
        RemoteAccountHelper remoteAccountHelper = getRemoteAccountHelper();
        final String netIdPrefix = getNetIdPrefix();
        remoteAccountHelper.setLoginListener(new RemoteAccountHelper.DefaultLoginListener(remoteAccountHelper) { // from class: com.callapp.contacts.widget.login.SocialLoginButton.2
            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
            /* renamed from: a */
            public final void mo26206a() {
                super.mo26206a();
                new Task() { // from class: com.callapp.contacts.widget.login.SocialLoginButton.2.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        RemoteAccountHelper remoteAccountHelper2 = SocialLoginButton.this.getRemoteAccountHelper();
                        try {
                            String currentUserId = remoteAccountHelper2.getCurrentUserId();
                            String str = currentUserId;
                            if (StringUtils.m26059a((CharSequence) currentUserId)) {
                                AnalyticsManager analyticsManager2 = AnalyticsManager.get();
                                analyticsManager2.m28450a(Constants.REGISTRATION, "Couldn't get id, 1st try - " + remoteAccountHelper2.getName());
                                try {
                                    Thread.sleep(2000L);
                                } catch (InterruptedException e) {
                                }
                                str = remoteAccountHelper2.getCurrentUserId();
                            }
                            if (StringUtils.m26059a((CharSequence) str)) {
                                AnalyticsManager analyticsManager3 = AnalyticsManager.get();
                                analyticsManager3.m28450a(Constants.REGISTRATION, "Couldn't get id, 2nd try - " + SocialLoginButton.this.getRemoteAccountHelper().getName());
                                AnalyticsManager.get().m28449a(Constants.REGISTRATION, "Error after successful login", "Could not get user ID");
                                remoteAccountHelper2.mo29101e();
                                SocialLoginButton.this.f29302a.mo26368c();
                                return;
                            }
                            Prefs.f26241aR.set(netIdPrefix + str);
                            AnalyticsManager.get().mo28428b();
                            SocialLoginButton.this.f29302a.mo26370a(SocialLoginButton.this.getTokenHelper());
                        } catch (Exception e2) {
                            AnalyticsManager.get().m28449a(Constants.REGISTRATION, "Error after successful login", e2.getMessage());
                            remoteAccountHelper2.mo29101e();
                            SocialLoginButton.this.f29302a.mo26368c();
                        }
                    }
                }.execute();
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
            /* renamed from: b */
            public final void mo26205b() {
                super.mo26205b();
                if (!HttpUtils.m26985a()) {
                    SocialLoginButton.this.f29302a.mo26368c();
                } else {
                    SocialLoginButton.this.f29302a.mo26367d();
                }
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
            /* renamed from: c */
            public final void mo26203c() {
                super.mo26203c();
                if (!HttpUtils.m26985a()) {
                    SocialLoginButton.this.f29302a.mo26368c();
                } else {
                    SocialLoginButton.this.f29302a.mo26366e();
                }
            }
        });
        if (getContext() == null) {
            return;
        }
        remoteAccountHelper.m29241b((Activity) getContext());
    }

    public abstract String getNetIdPrefix();

    public abstract RemoteAccountHelper getRemoteAccountHelper();

    public abstract SetupWizardActivity.TokenHelper getTokenHelper();

    @Override // com.callapp.contacts.widget.login.LoginButton
    public void setButtonData(int i) {
        super.setButtonData(i);
        setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.widget.login.SocialLoginButton.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                SocialLoginButton.this.mo26373a(LoginButton.LoginButtonType.SOCIAL);
            }
        });
    }

    public void setManager(Manager manager) {
        this.f29302a = manager;
    }
}
