package com.facebook.login;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.common.C10165a;
import com.facebook.login.LoginClient;
/* renamed from: com.facebook.login.e */
/* loaded from: classes3-dex2jar.jar:com/facebook/login/e.class */
public class C10383e extends Fragment {

    /* renamed from: a */
    LoginClient f34008a;

    /* renamed from: b */
    private String f34009b;

    /* renamed from: c */
    private LoginClient.Request f34010c;

    /* renamed from: a */
    static /* synthetic */ void m22895a(C10383e c10383e, LoginClient.Result result) {
        c10383e.f34010c = null;
        int i = result.code == LoginClient.Result.EnumC10373a.CANCEL ? 0 : -1;
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.facebook.LoginFragment:Result", result);
        Intent intent = new Intent();
        intent.putExtras(bundle);
        if (c10383e.isAdded()) {
            c10383e.getActivity().setResult(i, intent);
            c10383e.getActivity().finish();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.f34008a.onActivityResult(i, i2, intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        Bundle bundleExtra;
        super.onCreate(bundle);
        if (bundle != null) {
            LoginClient loginClient = (LoginClient) bundle.getParcelable("loginClient");
            this.f34008a = loginClient;
            loginClient.setFragment(this);
        } else {
            this.f34008a = new LoginClient(this);
        }
        this.f34008a.setOnCompletedListener(new LoginClient.AbstractC10375b() { // from class: com.facebook.login.e.1
            @Override // com.facebook.login.LoginClient.AbstractC10375b
            /* renamed from: a */
            public final void mo22894a(LoginClient.Result result) {
                C10383e.m22895a(C10383e.this, result);
            }
        });
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity != null) {
            this.f34009b = callingActivity.getPackageName();
        }
        Intent intent = activity.getIntent();
        if (intent == null || (bundleExtra = intent.getBundleExtra("com.facebook.LoginFragment:Request")) == null) {
            return;
        }
        this.f34010c = (LoginClient.Request) bundleExtra.getParcelable("request");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C10165a.C10170e.com_facebook_login_fragment, viewGroup, false);
        final View findViewById = inflate.findViewById(C10165a.C10169d.com_facebook_login_fragment_progress_bar);
        this.f34008a.setBackgroundProcessingListener(new LoginClient.AbstractC10374a() { // from class: com.facebook.login.e.2
            @Override // com.facebook.login.LoginClient.AbstractC10374a
            /* renamed from: a */
            public final void mo22893a() {
                findViewById.setVisibility(0);
            }

            @Override // com.facebook.login.LoginClient.AbstractC10374a
            /* renamed from: b */
            public final void mo22892b() {
                findViewById.setVisibility(8);
            }
        });
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f34008a.cancelCurrentHandler();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        View findViewById = getView() == null ? null : getView().findViewById(C10165a.C10169d.com_facebook_login_fragment_progress_bar);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f34009b != null) {
            this.f34008a.startOrContinueAuth(this.f34010c);
            return;
        }
        Log.e("LoginFragment", "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance.");
        getActivity().finish();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("loginClient", this.f34008a);
    }
}
