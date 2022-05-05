package com.facebook.login;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.common.R$id;
import com.facebook.common.R$layout;
import com.facebook.login.LoginClient;
/* renamed from: com.facebook.login.e */
/* loaded from: classes-dex2jar.jar:com/facebook/login/e.class */
public class C2535e extends Fragment {

    /* renamed from: a */
    public String f3343a;

    /* renamed from: b */
    public LoginClient f3344b;

    /* renamed from: c */
    public LoginClient.Request f3345c;

    /* renamed from: com.facebook.login.e$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/e$a.class */
    public class C2536a implements LoginClient.AbstractC2527c {
        public C2536a() {
        }

        @Override // com.facebook.login.LoginClient.AbstractC2527c
        /* renamed from: a */
        public void mo34382a(LoginClient.Result result) {
            C2535e.this.m34384a(result);
        }
    }

    /* renamed from: com.facebook.login.e$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/e$b.class */
    public class C2537b implements LoginClient.AbstractC2526b {

        /* renamed from: a */
        public final /* synthetic */ View f3347a;

        public C2537b(C2535e eVar, View view) {
            this.f3347a = view;
        }

        @Override // com.facebook.login.LoginClient.AbstractC2526b
        /* renamed from: a */
        public void mo34381a() {
            this.f3347a.setVisibility(0);
        }

        @Override // com.facebook.login.LoginClient.AbstractC2526b
        /* renamed from: b */
        public void mo34380b() {
            this.f3347a.setVisibility(8);
        }
    }

    /* renamed from: J */
    public LoginClient m34388J() {
        return new LoginClient(this);
    }

    @LayoutRes
    /* renamed from: K */
    public int m34387K() {
        return R$layout.com_facebook_login_fragment;
    }

    /* renamed from: L */
    public LoginClient m34386L() {
        return this.f3344b;
    }

    /* renamed from: a */
    public final void m34385a(Activity activity) {
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity != null) {
            this.f3343a = callingActivity.getPackageName();
        }
    }

    /* renamed from: a */
    public final void m34384a(LoginClient.Result result) {
        this.f3345c = null;
        int i = result.f3297a == LoginClient.Result.EnumC2524b.CANCEL ? 0 : -1;
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.facebook.LoginFragment:Result", result);
        Intent intent = new Intent();
        intent.putExtras(bundle);
        if (isAdded()) {
            getActivity().setResult(i, intent);
            getActivity().finish();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.f3344b.m34477a(i, i2, intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        Bundle bundleExtra;
        super.onCreate(bundle);
        if (bundle != null) {
            this.f3344b = (LoginClient) bundle.getParcelable("loginClient");
            this.f3344b.m34476a(this);
        } else {
            this.f3344b = m34388J();
        }
        this.f3344b.m34472a(new C2536a());
        FragmentActivity activity = getActivity();
        if (activity != null) {
            m34385a(activity);
            Intent intent = activity.getIntent();
            if (intent != null && (bundleExtra = intent.getBundleExtra("com.facebook.LoginFragment:Request")) != null) {
                this.f3345c = (LoginClient.Request) bundleExtra.getParcelable("request");
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(m34387K(), viewGroup, false);
        this.f3344b.m34473a(new C2537b(this, inflate.findViewById(R$id.com_facebook_login_fragment_progress_bar)));
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f3344b.m34478a();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        View findViewById = getView() == null ? null : getView().findViewById(R$id.com_facebook_login_fragment_progress_bar);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f3343a == null) {
            Log.e("LoginFragment", "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance.");
            getActivity().finish();
            return;
        }
        this.f3344b.m34463c(this.f3345c);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("loginClient", this.f3344b);
    }
}
