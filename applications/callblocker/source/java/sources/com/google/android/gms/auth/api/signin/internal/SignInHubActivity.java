package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import androidx.fragment.app.ActivityC0664d;
import androidx.p037g.p038a.AbstractC0714a;
import androidx.p037g.p039b.C0723b;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.AbstractC2492d;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.p135b.C3699b;
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/SignInHubActivity.class */
public class SignInHubActivity extends ActivityC0664d {

    /* renamed from: k */
    private static boolean f6941k = false;

    /* renamed from: l */
    private boolean f6942l = false;

    /* renamed from: m */
    private SignInConfiguration f6943m;

    /* renamed from: n */
    private boolean f6944n;

    /* renamed from: o */
    private int f6945o;

    /* renamed from: p */
    private Intent f6946p;

    /* renamed from: com.google.android.gms.auth.api.signin.internal.SignInHubActivity$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/SignInHubActivity$a.class */
    public final class C2420a implements AbstractC0714a.AbstractC0715a<Void> {
        private C2420a() {
            SignInHubActivity.this = r4;
        }

        @Override // androidx.p037g.p038a.AbstractC0714a.AbstractC0715a
        /* renamed from: a */
        public final C0723b<Void> mo14538a(int i, Bundle bundle) {
            return new C2428h(SignInHubActivity.this, AbstractC2492d.m14421a());
        }

        @Override // androidx.p037g.p038a.AbstractC0714a.AbstractC0715a
        /* renamed from: a */
        public final void mo14537a(C0723b<Void> c0723b) {
        }

        @Override // androidx.p037g.p038a.AbstractC0714a.AbstractC0715a
        /* renamed from: a */
        public final /* synthetic */ void mo14536a(C0723b<Void> c0723b, Void r6) {
            SignInHubActivity.this.setResult(SignInHubActivity.this.f6945o, SignInHubActivity.this.f6946p);
            SignInHubActivity.this.finish();
        }
    }

    /* renamed from: a */
    private final void m14542a(int i) {
        Status status = new Status(i);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
        f6941k = false;
    }

    /* renamed from: f */
    private final void m14539f() {
        m19873n().mo19599a(0, null, new C2420a());
        f6941k = false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    @Override // androidx.fragment.app.ActivityC0664d, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.f6942l) {
            return;
        }
        setResult(0);
        switch (i) {
            case 40962:
                if (intent != null) {
                    SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra("signInAccount");
                    if (signInAccount != null && signInAccount.m14554a() != null) {
                        GoogleSignInAccount m14554a = signInAccount.m14554a();
                        C2435o.m14507a(this).m14506a(this.f6943m.m14543a(), (GoogleSignInAccount) C3699b.m6537a(m14554a));
                        intent.removeExtra("signInAccount");
                        intent.putExtra("googleSignInAccount", m14554a);
                        this.f6944n = true;
                        this.f6945o = i2;
                        this.f6946p = intent;
                        m14539f();
                        return;
                    } else if (intent.hasExtra("errorCode")) {
                        int intExtra = intent.getIntExtra("errorCode", 8);
                        int i3 = intExtra;
                        if (intExtra == 13) {
                            i3 = 12501;
                        }
                        m14542a(i3);
                        return;
                    }
                }
                m14542a(8);
                return;
            default:
                return;
        }
    }

    @Override // androidx.fragment.app.ActivityC0664d, androidx.activity.ActivityC0078b, androidx.core.app.ActivityC0469e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String str = (String) C3699b.m6537a(intent.getAction());
        if ("com.google.android.gms.auth.NO_IMPL".equals(str)) {
            m14542a(12500);
        } else if (!str.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") && !str.equals("com.google.android.gms.auth.APPAUTH_SIGN_IN")) {
            String valueOf = String.valueOf(intent.getAction());
            Log.e("AuthSignInClient", valueOf.length() != 0 ? "Unknown action: ".concat(valueOf) : new String("Unknown action: "));
            finish();
        } else {
            SignInConfiguration signInConfiguration = (SignInConfiguration) ((Bundle) C3699b.m6537a(intent.getBundleExtra("config"))).getParcelable("config");
            if (signInConfiguration == null) {
                Log.e("AuthSignInClient", "Activity started with invalid configuration.");
                setResult(0);
                finish();
                return;
            }
            this.f6943m = signInConfiguration;
            if (bundle != null) {
                this.f6944n = bundle.getBoolean("signingInGoogleApiClients");
                if (!this.f6944n) {
                    return;
                }
                this.f6945o = bundle.getInt("signInResultCode");
                this.f6946p = (Intent) C3699b.m6537a((Intent) bundle.getParcelable("signInResultData"));
                m14539f();
            } else if (f6941k) {
                setResult(0);
                m14542a(12502);
            } else {
                f6941k = true;
                Intent intent2 = new Intent(str);
                if (str.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN")) {
                    intent2.setPackage("com.google.android.gms");
                } else {
                    intent2.setPackage(getPackageName());
                }
                intent2.putExtra("config", this.f6943m);
                try {
                    startActivityForResult(intent2, 40962);
                } catch (ActivityNotFoundException e) {
                    this.f6942l = true;
                    Log.w("AuthSignInClient", "Could not launch sign in Intent. Google Play Service is probably being updated...");
                    m14542a(17);
                }
            }
        }
    }

    @Override // androidx.fragment.app.ActivityC0664d, androidx.activity.ActivityC0078b, androidx.core.app.ActivityC0469e, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.f6944n);
        if (this.f6944n) {
            bundle.putInt("signInResultCode", this.f6945o);
            bundle.putParcelable("signInResultData", this.f6946p);
        }
    }
}
