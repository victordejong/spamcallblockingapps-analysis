package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import androidx.fragment.app.FragmentActivity;
import androidx.p049h.p050a.AbstractC1160a;
import androidx.p049h.p051b.C1170c;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth_api.C13132a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/SignInHubActivity.class */
public class SignInHubActivity extends FragmentActivity {

    /* renamed from: a */
    private static boolean f39053a = false;

    /* renamed from: b */
    private boolean f39054b = false;

    /* renamed from: c */
    private SignInConfiguration f39055c;

    /* renamed from: d */
    private boolean f39056d;

    /* renamed from: e */
    private int f39057e;

    /* renamed from: f */
    private Intent f39058f;

    /* renamed from: com.google.android.gms.auth.api.signin.internal.SignInHubActivity$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/SignInHubActivity$a.class */
    public final class C11740a implements AbstractC1160a.AbstractC1161a<Void> {
        private C11740a() {
            SignInHubActivity.this = r4;
        }

        @Override // androidx.p049h.p050a.AbstractC1160a.AbstractC1161a
        /* renamed from: a */
        public final C1170c<Void> mo19553a() {
            return new C11745e(SignInHubActivity.this, AbstractC11826g.m19445a());
        }

        @Override // androidx.p049h.p050a.AbstractC1160a.AbstractC1161a
        /* renamed from: a */
        public final /* synthetic */ void mo19552a(C1170c<Void> c1170c, Void r6) {
            SignInHubActivity signInHubActivity = SignInHubActivity.this;
            signInHubActivity.setResult(signInHubActivity.f39057e, SignInHubActivity.this.f39058f);
            SignInHubActivity.this.finish();
        }
    }

    /* renamed from: a */
    private final void m19557a() {
        getSupportLoaderManager().mo43457a(0, new C11740a());
        f39053a = false;
    }

    /* renamed from: a */
    private final void m19556a(int i) {
        Status status = new Status(i);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
        f39053a = false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.f39054b) {
            return;
        }
        setResult(0);
        if (i != 40962) {
            return;
        }
        if (intent != null) {
            SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra("signInAccount");
            if (signInAccount != null && signInAccount.getGoogleSignInAccount() != null) {
                GoogleSignInAccount googleSignInAccount = signInAccount.getGoogleSignInAccount();
                C11758r.m19530a(this).m19529a(this.f39055c.zzu(), (GoogleSignInAccount) C13132a.m13614a(googleSignInAccount));
                intent.removeExtra("signInAccount");
                intent.putExtra("googleSignInAccount", googleSignInAccount);
                this.f39056d = true;
                this.f39057e = i2;
                this.f39058f = intent;
                m19557a();
                return;
            } else if (intent.hasExtra("errorCode")) {
                int intExtra = intent.getIntExtra("errorCode", 8);
                int i3 = intExtra;
                if (intExtra == 13) {
                    i3 = 12501;
                }
                m19556a(i3);
                return;
            }
        }
        m19556a(8);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String str = (String) C13132a.m13614a(intent.getAction());
        if ("com.google.android.gms.auth.NO_IMPL".equals(str)) {
            m19556a(12500);
        } else if (!str.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") && !str.equals("com.google.android.gms.auth.APPAUTH_SIGN_IN")) {
            String valueOf = String.valueOf(intent.getAction());
            Log.e("AuthSignInClient", valueOf.length() != 0 ? "Unknown action: ".concat(valueOf) : new String("Unknown action: "));
            finish();
        } else {
            SignInConfiguration signInConfiguration = (SignInConfiguration) ((Bundle) C13132a.m13614a(intent.getBundleExtra("config"))).getParcelable("config");
            if (signInConfiguration == null) {
                Log.e("AuthSignInClient", "Activity started with invalid configuration.");
                setResult(0);
                finish();
                return;
            }
            this.f39055c = signInConfiguration;
            if (bundle != null) {
                boolean z = bundle.getBoolean("signingInGoogleApiClients");
                this.f39056d = z;
                if (!z) {
                    return;
                }
                this.f39057e = bundle.getInt("signInResultCode");
                this.f39058f = (Intent) C13132a.m13614a((Intent) bundle.getParcelable("signInResultData"));
                m19557a();
            } else if (f39053a) {
                setResult(0);
                m19556a(12502);
            } else {
                f39053a = true;
                Intent intent2 = new Intent(str);
                if (str.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN")) {
                    intent2.setPackage("com.google.android.gms");
                } else {
                    intent2.setPackage(getPackageName());
                }
                intent2.putExtra("config", this.f39055c);
                try {
                    startActivityForResult(intent2, 40962);
                } catch (ActivityNotFoundException e) {
                    this.f39054b = true;
                    Log.w("AuthSignInClient", "Could not launch sign in Intent. Google Play Service is probably being updated...");
                    m19556a(17);
                }
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.f39056d);
        if (this.f39056d) {
            bundle.putInt("signInResultCode", this.f39057e);
            bundle.putParcelable("signInResultData", this.f39058f);
        }
    }
}
