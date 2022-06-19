package com.facebook.login.widget;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.Profile;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$e.class */
public class LoginButton$e implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ LoginButton f2571a;

    /* renamed from: com.facebook.login.widget.LoginButton$e$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$e$a.class */
    public class DialogInterface$OnClickListenerC0354a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ wn0 f2572a;

        public DialogInterface$OnClickListenerC0354a(LoginButton$e loginButton$e, wn0 wn0Var) {
            this.f2572a = wn0Var;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f2572a.n();
        }
    }

    public LoginButton$e(LoginButton loginButton) {
        this.f2571a = loginButton;
    }

    /* renamed from: a */
    public wn0 m5021a() {
        wn0 e = wn0.e();
        e.u(this.f2571a.getDefaultAudience());
        e.w(this.f2571a.getLoginBehavior());
        e.t(this.f2571a.getAuthType());
        return e;
    }

    /* renamed from: b */
    public void m5020b() {
        List list;
        List list2;
        List list3;
        wn0 m5021a = m5021a();
        if (this.f2571a.getFragment() != null) {
            Fragment fragment = this.f2571a.getFragment();
            list3 = LoginButton.s(this.f2571a).f2568b;
            m5021a.k(fragment, list3);
        } else if (this.f2571a.getNativeFragment() != null) {
            android.app.Fragment nativeFragment = this.f2571a.getNativeFragment();
            list2 = LoginButton.s(this.f2571a).f2568b;
            m5021a.j(nativeFragment, list2);
        } else {
            Activity t = LoginButton.t(this.f2571a);
            list = LoginButton.s(this.f2571a).f2568b;
            m5021a.i(t, list);
        }
    }

    /* renamed from: c */
    public void m5019c(Context context) {
        wn0 m5021a = m5021a();
        if (!LoginButton.u(this.f2571a)) {
            m5021a.n();
            return;
        }
        String string = this.f2571a.getResources().getString(co0.com_facebook_loginview_log_out_action);
        String string2 = this.f2571a.getResources().getString(co0.com_facebook_loginview_cancel_action);
        Profile m5133c = Profile.m5133c();
        String string3 = (m5133c == null || m5133c.m5132d() == null) ? this.f2571a.getResources().getString(co0.com_facebook_loginview_logged_in_using_facebook) : String.format(this.f2571a.getResources().getString(co0.com_facebook_loginview_logged_in_as), m5133c.m5132d());
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage(string3).setCancelable(true).setPositiveButton(string, new DialogInterface$OnClickListenerC0354a(this, m5021a)).setNegativeButton(string2, (DialogInterface.OnClickListener) null);
        builder.create().show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        LoginButton.q(this.f2571a, view);
        AccessToken m5251g = AccessToken.m5251g();
        if (AccessToken.m5239s()) {
            m5019c(this.f2571a.getContext());
        } else {
            m5020b();
        }
        xj0 xj0Var = new xj0(this.f2571a.getContext());
        Bundle bundle = new Bundle();
        bundle.putInt("logging_in", m5251g != null ? 0 : 1);
        bundle.putInt("access_token_expired", AccessToken.m5239s() ? 1 : 0);
        xj0Var.i(LoginButton.r(this.f2571a), bundle);
    }
}
