package com.facebook.login;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.CustomTabMainActivity;
import com.facebook.common.C1107R;
import com.facebook.login.LoginClient;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.ArrayList;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1538j.C23222c0;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
@Metadata(d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018�� +2\u00020\u0001:\u0001+B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0010\u001a\u00020\nH\u0014J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\"\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0012\u0010\u001a\u001a\u00020\u00122\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J&\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\b\u0010#\u001a\u00020\u0012H\u0016J\u0010\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020&H\u0002J\b\u0010'\u001a\u00020\u0012H\u0016J\b\u0010(\u001a\u00020\u0012H\u0016J\u0010\u0010)\u001a\u00020\u00122\u0006\u0010*\u001a\u00020\u001cH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\u00020\u00068UX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0086.¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n��¨\u0006,"}, d2 = {"Lcom/facebook/login/LoginFragment;", "Landroidx/fragment/app/Fragment;", "()V", "callingPackage", "", "layoutResId", "", "getLayoutResId", "()I", "<set-?>", "Lcom/facebook/login/LoginClient;", "loginClient", "getLoginClient", "()Lcom/facebook/login/LoginClient;", "request", "Lcom/facebook/login/LoginClient$Request;", "createLoginClient", "initializeCallingPackage", "", "activity", "Landroid/app/Activity;", "onActivityResult", "requestCode", "resultCode", RemoteMessageConst.DATA, "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onDestroy", "onLoginClientCompleted", "outcome", "Lcom/facebook/login/LoginClient$Result;", "onPause", "onResume", "onSaveInstanceState", "outState", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.login.t */
/* loaded from: classes2-dex2jar.jar:com/facebook/login/t.class */
public class C1280t extends Fragment {

    /* renamed from: d */
    public static final /* synthetic */ int f3488d = 0;

    /* renamed from: a */
    public String f3489a;

    /* renamed from: b */
    public LoginClient f3490b;

    /* renamed from: c */
    public LoginClient.Request f3491c;

    @Metadata(d1 = {"��\u0013\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, d2 = {"com/facebook/login/LoginFragment$onCreateView$1", "Lcom/facebook/login/LoginClient$BackgroundProcessingListener;", "onBackgroundProcessingStarted", "", "onBackgroundProcessingStopped", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.login.t$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/t$a.class */
    public static final class C1281a implements LoginClient.AbstractC1251a {

        /* renamed from: a */
        public final /* synthetic */ View f3492a;

        public C1281a(View view) {
            this.f3492a = view;
        }

        @Override // com.facebook.login.LoginClient.AbstractC1251a
        /* renamed from: a */
        public void mo41555a() {
            this.f3492a.setVisibility(0);
        }

        @Override // com.facebook.login.LoginClient.AbstractC1251a
        /* renamed from: b */
        public void mo41554b() {
            this.f3492a.setVisibility(8);
        }
    }

    /* renamed from: OA */
    public final LoginClient m41556OA() {
        LoginClient loginClient = this.f3490b;
        if (loginClient != null) {
            return loginClient;
        }
        l.l("loginClient");
        throw null;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        C1280t.super.onActivityResult(i, i2, intent);
        LoginClient m41556OA = m41556OA();
        m41556OA.f3376k++;
        if (m41556OA.f3372g != null) {
            if (intent != null && intent.getBooleanExtra(CustomTabMainActivity.f2520j, false)) {
                m41556OA.m41590i();
                return;
            }
            LoginMethodHandler m41593f = m41556OA.m41593f();
            if (m41593f == null) {
                return;
            }
            if (m41593f.mo41577p() && intent == null && m41556OA.f3376k < m41556OA.f3377l) {
                return;
            }
            m41593f.mo41576m(i, i2, intent);
        }
    }

    public void onCreate(Bundle bundle) {
        Bundle bundleExtra;
        C1280t.super.onCreate(bundle);
        LoginClient loginClient = bundle == null ? null : (LoginClient) bundle.getParcelable("loginClient");
        if (loginClient == null) {
            loginClient = new LoginClient((Fragment) this);
        } else if (loginClient.f3368c != null) {
            throw new C23222c0("Can't set fragment once it is already set.");
        } else {
            loginClient.f3368c = this;
        }
        this.f3490b = loginClient;
        m41556OA().f3369d = new C1263c(this);
        n3.r.a.l activity = getActivity();
        if (activity == null) {
            return;
        }
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity != null) {
            this.f3489a = callingActivity.getPackageName();
        }
        Intent intent = activity.getIntent();
        if (intent == null || (bundleExtra = intent.getBundleExtra("com.facebook.LoginFragment:Request")) == null) {
            return;
        }
        this.f3491c = (LoginClient.Request) bundleExtra.getParcelable("request");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C1107R.layout.com_facebook_login_fragment, viewGroup, false);
        View findViewById = inflate.findViewById(C1107R.C1109id.com_facebook_login_fragment_progress_bar);
        m41556OA().f3370e = new C1281a(findViewById);
        return inflate;
    }

    public void onDestroy() {
        LoginMethodHandler m41593f = m41556OA().m41593f();
        if (m41593f != null) {
            m41593f.mo41566b();
        }
        C1280t.super.onDestroy();
    }

    public void onPause() {
        C1280t.super.onPause();
        View view = getView();
        View findViewById = view == null ? null : view.findViewById(C1107R.C1109id.com_facebook_login_fragment_progress_bar);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
    }

    public void onResume() {
        C1280t.super.onResume();
        if (this.f3489a == null) {
            n3.r.a.l activity = getActivity();
            if (activity == null) {
                return;
            }
            activity.finish();
            return;
        }
        LoginClient m41556OA = m41556OA();
        LoginClient.Request request = this.f3491c;
        LoginClient.Request request2 = m41556OA.f3372g;
        if ((request2 != null && m41556OA.f3367b >= 0) || request == null) {
            return;
        }
        if (request2 != null) {
            throw new C23222c0("Attempted to authorize while a request is pending.");
        }
        AccessToken.C0907c c0907c = AccessToken.f2460l;
        if (AccessToken.C0907c.m42029c() && !m41556OA.m41597b()) {
            return;
        }
        m41556OA.f3372g = request;
        l.e(request, "request");
        ArrayList arrayList = new ArrayList();
        EnumC1278q enumC1278q = request.f3378a;
        if (!request.m41588b()) {
            if (enumC1278q.f3479a) {
                arrayList.add(new GetTokenLoginMethodHandler(m41556OA));
            }
            if (!C23228f0.f64306p && enumC1278q.f3480b) {
                arrayList.add(new KatanaProxyLoginMethodHandler(m41556OA));
            }
        } else if (!C23228f0.f64306p && enumC1278q.f3484f) {
            arrayList.add(new InstagramAppLoginMethodHandler(m41556OA));
        }
        if (enumC1278q.f3483e) {
            arrayList.add(new CustomTabLoginMethodHandler(m41556OA));
        }
        if (enumC1278q.f3481c) {
            arrayList.add(new WebViewLoginMethodHandler(m41556OA));
        }
        if (!request.m41588b() && enumC1278q.f3482d) {
            arrayList.add(new DeviceAuthMethodHandler(m41556OA));
        }
        Object[] array = arrayList.toArray(new LoginMethodHandler[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        m41556OA.f3366a = (LoginMethodHandler[]) array;
        m41556OA.m41590i();
    }

    public void onSaveInstanceState(Bundle bundle) {
        l.e(bundle, "outState");
        C1280t.super.onSaveInstanceState(bundle);
        bundle.putParcelable("loginClient", m41556OA());
    }
}
