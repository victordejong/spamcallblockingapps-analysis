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
import com.facebook.common.a;
import com.facebook.login.LoginClient;
/* loaded from: classes3-dex2jar.jar:com/facebook/login/e.class */
public class e extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    LoginClient f20070a;

    /* renamed from: b  reason: collision with root package name */
    private String f20071b;

    /* renamed from: c  reason: collision with root package name */
    private LoginClient.Request f20072c;

    static /* synthetic */ void a(e eVar, LoginClient.Result result) {
        eVar.f20072c = null;
        int i = result.code == LoginClient.Result.a.CANCEL ? 0 : -1;
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.facebook.LoginFragment:Result", result);
        Intent intent = new Intent();
        intent.putExtras(bundle);
        if (eVar.isAdded()) {
            eVar.getActivity().setResult(i, intent);
            eVar.getActivity().finish();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.f20070a.onActivityResult(i, i2, intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        Bundle bundleExtra;
        super.onCreate(bundle);
        if (bundle != null) {
            LoginClient loginClient = (LoginClient) bundle.getParcelable("loginClient");
            this.f20070a = loginClient;
            loginClient.setFragment(this);
        } else {
            this.f20070a = new LoginClient(this);
        }
        this.f20070a.setOnCompletedListener(new LoginClient.b() { // from class: com.facebook.login.e.1
            @Override // com.facebook.login.LoginClient.b
            public final void a(LoginClient.Result result) {
                e.a(e.this, result);
            }
        });
        FragmentActivity activity = getActivity();
        if (activity != null) {
            ComponentName callingActivity = activity.getCallingActivity();
            if (callingActivity != null) {
                this.f20071b = callingActivity.getPackageName();
            }
            Intent intent = activity.getIntent();
            if (intent != null && (bundleExtra = intent.getBundleExtra("com.facebook.LoginFragment:Request")) != null) {
                this.f20072c = (LoginClient.Request) bundleExtra.getParcelable("request");
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(a.e.com_facebook_login_fragment, viewGroup, false);
        final View findViewById = inflate.findViewById(a.d.com_facebook_login_fragment_progress_bar);
        this.f20070a.setBackgroundProcessingListener(new LoginClient.a() { // from class: com.facebook.login.e.2
            @Override // com.facebook.login.LoginClient.a
            public final void a() {
                findViewById.setVisibility(0);
            }

            @Override // com.facebook.login.LoginClient.a
            public final void b() {
                findViewById.setVisibility(8);
            }
        });
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f20070a.cancelCurrentHandler();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        View findViewById = getView() == null ? null : getView().findViewById(a.d.com_facebook_login_fragment_progress_bar);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f20071b == null) {
            Log.e("LoginFragment", "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance.");
            getActivity().finish();
            return;
        }
        this.f20070a.startOrContinueAuth(this.f20072c);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("loginClient", this.f20070a);
    }
}
