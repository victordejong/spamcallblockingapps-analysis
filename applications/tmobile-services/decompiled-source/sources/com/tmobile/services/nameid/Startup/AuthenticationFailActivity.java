package com.tmobile.services.nameid.Startup;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.NameIDPage;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.IamWrapper;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.NetworkChecks;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.Objects;
import java.util.UUID;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Startup/AuthenticationFailActivity.class */
public class AuthenticationFailActivity extends AppCompatActivity {

    /* renamed from: g */
    Button f12944g;

    /* renamed from: h */
    TextView f12945h;

    /* renamed from: i */
    LinearLayout f12946i;

    /* renamed from: j */
    TextView f12947j;

    /* renamed from: k */
    TextView f12948k;

    /* renamed from: l */
    TextView f12949l;

    /* renamed from: m */
    Button f12950m;
    @Nullable

    /* renamed from: n */
    private AlertDialog f12951n;

    /* renamed from: t */
    private String f12957t;

    /* renamed from: f */
    ClickableSpan f12943f = new ClickableSpan() { // from class: com.tmobile.services.nameid.Startup.AuthenticationFailActivity.1
        @Override // android.text.style.ClickableSpan
        public void onClick(@NonNull View view) {
            Intent intent = new Intent("android.intent.action.DIAL");
            intent.setData(Uri.parse("tel:" + AuthenticationFailActivity.this.f12954q));
            AuthenticationFailActivity.this.startActivity(intent);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(@NonNull TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(ContextCompat.m19675d(AuthenticationFailActivity.this.getApplicationContext(), C1517R.C1518color.magenta_or_gold_orange));
            textPaint.setUnderlineText(false);
        }
    };

    /* renamed from: o */
    private boolean f12952o = false;

    /* renamed from: p */
    private Disposable f12953p = null;

    /* renamed from: q */
    private String f12954q = "";

    /* renamed from: r */
    private boolean f12955r = false;

    /* renamed from: s */
    private FlowController f12956s = new FlowController(this);

    /* renamed from: u */
    private int f12958u = 0;

    /* renamed from: v */
    private int f12959v = 0;

    /* renamed from: w */
    private int f12960w = 0;

    /* renamed from: B */
    private void m7271B() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        View inflate = getLayoutInflater().inflate(C1517R.layout.progress_dialog, (ViewGroup) null);
        ((TextView) inflate.findViewById(C1517R.C1520id.progress_dialog_textview)).setText(C1517R.string.progress_dialog_authenticating);
        builder.mo9811n(inflate);
        AlertDialog a = builder.mo9823a();
        this.f12951n = a;
        a.setCanceledOnTouchOutside(false);
        this.f12951n.show();
    }

    /* renamed from: C */
    private void m7270C() {
        int i;
        if (isDestroyed() || isFinishing()) {
            LogUtil.m5631p("AuthenticationFailActivity#updateSubtext", "activity is no longer active - returning");
            return;
        }
        this.f12944g.setEnabled(true);
        boolean b = PreferenceUtils.m5395b("PREF_PREPAID_USER_AUTH_ERROR", false);
        boolean b2 = PreferenceUtils.m5395b("PREF_HAS_SEEN_VPN_USER_AUTH_ERROR", false);
        int i2 = C1517R.string.startup_authentication_fail_title;
        if (b) {
            String str = this.f12957t;
            if (str != null) {
                AnalyticsWrapper.m5876d(str, this.f12960w, this.f12958u, this.f12959v, 21);
            }
            this.f12955r = true;
            i2 = C1517R.string.startup_authentication_fail_subtitle_prepaid;
            i = C1517R.string.startup_authentication_fail_subtitle_prepaid_2;
            this.f12944g.setVisibility(4);
        } else if (!m7263o() || b2) {
            String str2 = this.f12957t;
            if (str2 != null) {
                AnalyticsWrapper.m5876d(str2, this.f12960w, this.f12958u, this.f12959v, 12);
            }
            i = C1517R.string.startup_auth_fail_text_turn_off_wifi;
            this.f12946i.setVisibility(0);
            this.f12949l.setVisibility(0);
            this.f12948k.setVisibility(8);
            this.f12954q = getString(SubscriptionHelper.m5332B() ? C1517R.string.call_care_number_xp : C1517R.string.call_611_number);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(getString(SubscriptionHelper.m5332B() ? C1517R.string.startup_auth_fail_call_prompt_xp : C1517R.string.startup_auth_fail_call_prompt));
            int indexOf = spannableStringBuilder.toString().indexOf(this.f12954q);
            spannableStringBuilder.setSpan(this.f12943f, indexOf, this.f12954q.length() + indexOf, 0);
            this.f12949l.setText(spannableStringBuilder);
            this.f12949l.setMovementMethod(LinkMovementMethod.getInstance());
        } else {
            String str3 = this.f12957t;
            if (str3 != null) {
                AnalyticsWrapper.m5876d(str3, this.f12960w, this.f12958u, this.f12959v, 11);
            }
            i = C1517R.string.startup_auth_fail_text_turn_off_vpn;
            PreferenceUtils.m5386k("PREF_HAS_SEEN_VPN_USER_AUTH_ERROR", true);
            this.f12948k.setVisibility(8);
        }
        this.f12947j.setText(i2);
        this.f12945h.setText(i);
    }

    /* renamed from: j */
    private void m7268j() {
        AlertDialog alertDialog = this.f12951n;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    /* renamed from: k */
    private void m7267k() {
        LogUtil.m5642e(this);
    }

    /* renamed from: l */
    private void m7266l() {
        if (!this.f12952o) {
            boolean b = PreferenceUtils.m5395b("PREF_GOT_INITIAL_SIT", false);
            boolean b2 = PreferenceUtils.m5395b("PREF_GOT_INITIAL_USER_STATUS", false);
            LogUtil.m5632o("AuthenticationFailActivity#", "Attempting to go to next screen, has sit? " + b + " has user status? " + b2);
            if (b && b2) {
                this.f12952o = true;
                LogUtil.m5632o("AuthenticationFailActivity#", "Going to next screen");
                EULAPageActivity.m7237p(this);
                EULAPageActivity.m7244i(this);
                this.f12944g.setEnabled(false);
                this.f12956s.m7223e();
                finish();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public Observable<TmoUserStatus> m7265m(IamWrapper.IamResponse iamResponse) {
        boolean z = false;
        if (iamResponse == IamWrapper.IamResponse.SUCCESS) {
            this.f12958u = 1;
            PreferenceUtils.m5386k("PREF_GOT_INITIAL_SIT", true);
            PreferenceUtils.m5386k("PREF_ENCOUNTERED_IAM_NETWORK_ERROR", false);
            LogUtil.m5632o("AuthenticationFailActivity#", "Successfully got SIT");
            return TmoApiWrapper.m6621s(this, null);
        }
        if (iamResponse == IamWrapper.IamResponse.ERROR_NO_NETWORK) {
            z = true;
        }
        PreferenceUtils.m5386k("PREF_ENCOUNTERED_IAM_NETWORK_ERROR", z);
        return Observable.error(new Exception("IamWrapper.IamResponse." + iamResponse.name()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public void m7264n(TmoUserStatus tmoUserStatus) {
        this.f12959v = 1;
        PreferenceUtils.m5386k("PREF_GOT_INITIAL_USER_STATUS", true);
        LogUtil.m5643d("AuthenticationFailActivity#", "Successfully got Tmobile user status: " + tmoUserStatus.toString());
    }

    /* renamed from: o */
    private boolean m7263o() {
        boolean d = NetworkChecks.f14407b.m5479d(this, NetworkChecks.NetworkType.VPN.f14411b);
        LogUtil.m5643d("AuthenticationFailActivity#", "isVPNEnabled? " + d);
        return d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w */
    public void m7255w(Throwable th) {
        LogUtil.m5631p("AuthenticationFailActivity#", "Error authenticating user: " + th.getMessage());
        PreferenceUtils.m5386k("PREF_IAM_ERROR_ON_STARTUP", true);
        m7270C();
        m7268j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public void m7254x(TmoUserStatus tmoUserStatus) {
        LogUtil.m5643d("AuthenticationFailActivity#", "Successfully authenticated user.");
        PreferenceUtils.m5386k("PREF_IAM_ERROR_ON_STARTUP", false);
        if (!Objects.equals(tmoUserStatus.getCustomerType(), TmoUserStatus.CUSTOMER_TYPE_PREPAID)) {
            PreferenceUtils.m5386k("PREF_PREPAID_USER_AUTH_ERROR", false);
            AnalyticsWrapper.m5876d(this.f12957t, this.f12960w, this.f12958u, this.f12959v, 1);
            m7266l();
        } else {
            LogUtil.m5643d("AuthenticationFailActivity#", "User is prepaid. Do not advance into app.");
            PreferenceUtils.m5386k("PREF_PREPAID_USER_AUTH_ERROR", true);
            m7270C();
        }
        m7268j();
    }

    /* renamed from: A */
    public void m7272A() {
        m7271B();
        this.f12960w++;
        this.f12957t = UUID.randomUUID().toString();
        this.f12953p = IamWrapper.m5683e(this, true, null).flatMap(new Function() { // from class: com.tmobile.services.nameid.Startup.d
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Observable m;
                m = AuthenticationFailActivity.this.m7265m((IamWrapper.IamResponse) obj);
                return m;
            }
        }).doOnNext(new Consumer() { // from class: com.tmobile.services.nameid.Startup.g
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AuthenticationFailActivity.this.m7264n((TmoUserStatus) obj);
            }
        }).observeOn(AndroidSchedulers.m4448c()).subscribe(new Consumer() { // from class: com.tmobile.services.nameid.Startup.f
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AuthenticationFailActivity.this.m7254x((TmoUserStatus) obj);
            }
        }, new Consumer() { // from class: com.tmobile.services.nameid.Startup.b
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AuthenticationFailActivity.this.m7255w((Throwable) obj);
            }
        });
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        finishAffinity();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1517R.layout.activity_authentication_fail);
        this.f12944g = (Button) findViewById(C1517R.C1520id.authentication_fail_refresh);
        this.f12945h = (TextView) findViewById(C1517R.C1520id.startup_authentication_fail_subtitle);
        this.f12946i = (LinearLayout) findViewById(C1517R.C1520id.startup_authentication_fail_remedies);
        this.f12947j = (TextView) findViewById(C1517R.C1520id.startup_authentication_fail_title);
        this.f12950m = (Button) findViewById(C1517R.C1520id.auth_fail_share_log);
        findViewById(C1517R.C1520id.authentication_fail_refresh).setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Startup.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AuthenticationFailActivity.this.m7259s(view);
            }
        });
        this.f12948k = (TextView) findViewById(C1517R.C1520id.authentication_fail_close);
        this.f12949l = (TextView) findViewById(C1517R.C1520id.authentication_fail_call_prompt);
        this.f12948k.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Startup.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AuthenticationFailActivity.this.m7258t(view);
            }
        });
        TextView textView = this.f12948k;
        int i = 8;
        textView.setPaintFlags(textView.getPaintFlags() | 8);
        Button button = this.f12950m;
        if (BuildUtils.m5853a()) {
            i = 0;
        }
        button.setVisibility(i);
        this.f12950m.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Startup.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AuthenticationFailActivity.this.m7257u(view);
            }
        });
        PreferenceUtils.m5386k("PREF_IAM_ERROR_ON_STARTUP", true);
        m7270C();
        ((MainApplication) getApplication()).m7551E(this, NameIDPage.OnboardingPage.AuthenticationFailure.f12681b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        Disposable disposable = this.f12953p;
        if (disposable != null) {
            disposable.dispose();
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        LogUtil.m5643d("AuthenticationFailActivity#", "onStop");
        if (this.f12955r) {
            MainApplication.m7531i();
            finishAffinity();
        }
        super.onStop();
    }

    /* renamed from: s */
    public /* synthetic */ void m7259s(View view) {
        m7272A();
    }

    /* renamed from: t */
    public /* synthetic */ void m7258t(View view) {
        m7253y();
    }

    /* renamed from: u */
    public /* synthetic */ void m7257u(View view) {
        m7267k();
    }

    /* renamed from: y */
    public void m7253y() {
        finishAffinity();
    }
}
