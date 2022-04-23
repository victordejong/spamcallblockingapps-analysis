package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import androidx.fragment.app.FragmentActivity;
import androidx.h.a.a;
import androidx.h.b.c;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/SignInHubActivity.class */
public class SignInHubActivity extends FragmentActivity {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f22501a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f22502b = false;

    /* renamed from: c  reason: collision with root package name */
    private SignInConfiguration f22503c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f22504d;
    private int e;
    private Intent f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/SignInHubActivity$a.class */
    public final class a implements a.AbstractC0065a<Void> {
        private a() {
        }

        @Override // androidx.h.a.a.AbstractC0065a
        public final c<Void> a() {
            return new e(SignInHubActivity.this, g.a());
        }

        @Override // androidx.h.a.a.AbstractC0065a
        public final /* synthetic */ void a(c<Void> cVar, Void r6) {
            SignInHubActivity signInHubActivity = SignInHubActivity.this;
            signInHubActivity.setResult(signInHubActivity.e, SignInHubActivity.this.f);
            SignInHubActivity.this.finish();
        }
    }

    private final void a() {
        getSupportLoaderManager().a(0, new a());
        f22501a = false;
    }

    private final void a(int i) {
        Status status = new Status(i);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
        f22501a = false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (!this.f22502b) {
            setResult(0);
            if (i == 40962) {
                if (intent != null) {
                    SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra("signInAccount");
                    if (signInAccount != null && signInAccount.getGoogleSignInAccount() != null) {
                        GoogleSignInAccount googleSignInAccount = signInAccount.getGoogleSignInAccount();
                        r.a(this).a(this.f22503c.zzu(), (GoogleSignInAccount) com.google.android.gms.internal.auth_api.a.a(googleSignInAccount));
                        intent.removeExtra("signInAccount");
                        intent.putExtra("googleSignInAccount", googleSignInAccount);
                        this.f22504d = true;
                        this.e = i2;
                        this.f = intent;
                        a();
                        return;
                    } else if (intent.hasExtra("errorCode")) {
                        int intExtra = intent.getIntExtra("errorCode", 8);
                        int i3 = intExtra;
                        if (intExtra == 13) {
                            i3 = 12501;
                        }
                        a(i3);
                        return;
                    }
                }
                a(8);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String str = (String) com.google.android.gms.internal.auth_api.a.a(intent.getAction());
        if ("com.google.android.gms.auth.NO_IMPL".equals(str)) {
            a(12500);
        } else if (str.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") || str.equals("com.google.android.gms.auth.APPAUTH_SIGN_IN")) {
            SignInConfiguration signInConfiguration = (SignInConfiguration) ((Bundle) com.google.android.gms.internal.auth_api.a.a(intent.getBundleExtra("config"))).getParcelable("config");
            if (signInConfiguration == null) {
                Log.e("AuthSignInClient", "Activity started with invalid configuration.");
                setResult(0);
                finish();
                return;
            }
            this.f22503c = signInConfiguration;
            if (bundle != null) {
                boolean z = bundle.getBoolean("signingInGoogleApiClients");
                this.f22504d = z;
                if (z) {
                    this.e = bundle.getInt("signInResultCode");
                    this.f = (Intent) com.google.android.gms.internal.auth_api.a.a((Intent) bundle.getParcelable("signInResultData"));
                    a();
                }
            } else if (f22501a) {
                setResult(0);
                a(12502);
            } else {
                f22501a = true;
                Intent intent2 = new Intent(str);
                if (str.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN")) {
                    intent2.setPackage("com.google.android.gms");
                } else {
                    intent2.setPackage(getPackageName());
                }
                intent2.putExtra("config", this.f22503c);
                try {
                    startActivityForResult(intent2, 40962);
                } catch (ActivityNotFoundException e) {
                    this.f22502b = true;
                    Log.w("AuthSignInClient", "Could not launch sign in Intent. Google Play Service is probably being updated...");
                    a(17);
                }
            }
        } else {
            String valueOf = String.valueOf(intent.getAction());
            Log.e("AuthSignInClient", valueOf.length() != 0 ? "Unknown action: ".concat(valueOf) : new String("Unknown action: "));
            finish();
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.f22504d);
        if (this.f22504d) {
            bundle.putInt("signInResultCode", this.e);
            bundle.putParcelable("signInResultData", this.f);
        }
    }
}
