package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import androidx.fragment.app.FragmentActivity;
import androidx.loader.content.C0833b;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.AbstractC5999d;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth_api.C7271a;
import p020b.p065o.p066a.AbstractC1757a;
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/SignInHubActivity.class */
public class SignInHubActivity extends FragmentActivity {

    /* renamed from: s */
    private static boolean f19031s = false;

    /* renamed from: t */
    private boolean f19032t = false;

    /* renamed from: u */
    private SignInConfiguration f19033u;

    /* renamed from: v */
    private boolean f19034v;

    /* renamed from: w */
    private int f19035w;

    /* renamed from: x */
    private Intent f19036x;

    /* renamed from: com.google.android.gms.auth.api.signin.internal.SignInHubActivity$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/SignInHubActivity$a.class */
    public final class C5912a implements AbstractC1757a.AbstractC1758a<Void> {
        private C5912a() {
            SignInHubActivity.this = r4;
        }

        @Override // p020b.p065o.p066a.AbstractC1757a.AbstractC1758a
        /* renamed from: a */
        public final /* synthetic */ void mo17606a(C0833b<Void> c0833b, Void r6) {
            SignInHubActivity signInHubActivity = SignInHubActivity.this;
            signInHubActivity.setResult(signInHubActivity.f19035w, SignInHubActivity.this.f19036x);
            SignInHubActivity.this.finish();
        }

        @Override // p020b.p065o.p066a.AbstractC1757a.AbstractC1758a
        /* renamed from: b */
        public final C0833b<Void> mo17605b(int i, Bundle bundle) {
            return new C5917e(SignInHubActivity.this, AbstractC5999d.m17458b());
        }

        @Override // p020b.p065o.p066a.AbstractC1757a.AbstractC1758a
        /* renamed from: c */
        public final void mo17604c(C0833b<Void> c0833b) {
        }
    }

    /* renamed from: K */
    private final void m17609K(int i) {
        Status status = new Status(i);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
        f19031s = false;
    }

    /* renamed from: M */
    private final void m17607M() {
        m32876B().mo28967c(0, null, new C5912a());
        f19031s = false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.f19032t) {
            return;
        }
        setResult(0);
        if (i != 40962) {
            return;
        }
        if (intent != null) {
            SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra("signInAccount");
            if (signInAccount != null && signInAccount.m17623N() != null) {
                GoogleSignInAccount m17623N = signInAccount.m17623N();
                C5928p.m17577c(this).m17578b(this.f19033u.m17611k0(), (GoogleSignInAccount) C7271a.m7822a(m17623N));
                intent.removeExtra("signInAccount");
                intent.putExtra("googleSignInAccount", m17623N);
                this.f19034v = true;
                this.f19035w = i2;
                this.f19036x = intent;
                m17607M();
                return;
            } else if (intent.hasExtra("errorCode")) {
                int intExtra = intent.getIntExtra("errorCode", 8);
                int i3 = intExtra;
                if (intExtra == 13) {
                    i3 = 12501;
                }
                m17609K(i3);
                return;
            }
        }
        m17609K(8);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String str = (String) C7271a.m7822a(intent.getAction());
        if ("com.google.android.gms.auth.NO_IMPL".equals(str)) {
            m17609K(12500);
        } else if (!str.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") && !str.equals("com.google.android.gms.auth.APPAUTH_SIGN_IN")) {
            String valueOf = String.valueOf(intent.getAction());
            Log.e("AuthSignInClient", valueOf.length() != 0 ? "Unknown action: ".concat(valueOf) : new String("Unknown action: "));
            finish();
        } else {
            SignInConfiguration signInConfiguration = (SignInConfiguration) ((Bundle) C7271a.m7822a(intent.getBundleExtra("config"))).getParcelable("config");
            if (signInConfiguration == null) {
                Log.e("AuthSignInClient", "Activity started with invalid configuration.");
                setResult(0);
                finish();
                return;
            }
            this.f19033u = signInConfiguration;
            if (bundle != null) {
                boolean z = bundle.getBoolean("signingInGoogleApiClients");
                this.f19034v = z;
                if (!z) {
                    return;
                }
                this.f19035w = bundle.getInt("signInResultCode");
                this.f19036x = (Intent) C7271a.m7822a((Intent) bundle.getParcelable("signInResultData"));
                m17607M();
            } else if (f19031s) {
                setResult(0);
                m17609K(12502);
            } else {
                f19031s = true;
                Intent intent2 = new Intent(str);
                if (str.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN")) {
                    intent2.setPackage("com.google.android.gms");
                } else {
                    intent2.setPackage(getPackageName());
                }
                intent2.putExtra("config", this.f19033u);
                try {
                    startActivityForResult(intent2, 40962);
                } catch (ActivityNotFoundException e) {
                    this.f19032t = true;
                    Log.w("AuthSignInClient", "Could not launch sign in Intent. Google Play Service is probably being updated...");
                    m17609K(17);
                }
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.f19034v);
        if (this.f19034v) {
            bundle.putInt("signInResultCode", this.f19035w);
            bundle.putParcelable("signInResultData", this.f19036x);
        }
    }
}
