package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import androidx.fragment.app.FragmentActivity;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.Loader;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b.C6744f;
import p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b.C6751m;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
@KeepName
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/SignInHubActivity.class */
public class SignInHubActivity extends FragmentActivity {

    /* renamed from: f */
    public static boolean f6474f = false;

    /* renamed from: a */
    public boolean f6475a = false;

    /* renamed from: b */
    public SignInConfiguration f6476b;

    /* renamed from: c */
    public boolean f6477c;

    /* renamed from: d */
    public int f6478d;

    /* renamed from: e */
    public Intent f6479e;

    /* renamed from: com.google.android.gms.auth.api.signin.internal.SignInHubActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/SignInHubActivity$a.class */
    public final class C3559a implements LoaderManager.LoaderCallbacks<Void> {
        public C3559a() {
        }

        @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
        public final Loader<Void> onCreateLoader(int i, Bundle bundle) {
            return new C6744f(SignInHubActivity.this, AbstractC6825f.m21826i());
        }

        @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<Void> loader, Void r6) {
            SignInHubActivity signInHubActivity = SignInHubActivity.this;
            signInHubActivity.setResult(signInHubActivity.f6478d, SignInHubActivity.this.f6479e);
            SignInHubActivity.this.finish();
        }

        @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Void> loader) {
        }
    }

    /* renamed from: D */
    public final void m32008D() {
        getSupportLoaderManager().initLoader(0, null, new C3559a());
        f6474f = false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    /* renamed from: e */
    public final void m32005e(int i) {
        Status status = new Status(i);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
        f6474f = false;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (!this.f6475a) {
            setResult(0);
            if (i == 40962) {
                if (intent != null) {
                    SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra("signInAccount");
                    if (signInAccount != null && signInAccount.m32011c() != null) {
                        GoogleSignInAccount c = signInAccount.m32011c();
                        C6751m.m21953a(this).m21952a(this.f6476b.m32009c(), c);
                        intent.removeExtra("signInAccount");
                        intent.putExtra("googleSignInAccount", c);
                        this.f6477c = true;
                        this.f6478d = i2;
                        this.f6479e = intent;
                        m32008D();
                        return;
                    } else if (intent.hasExtra("errorCode")) {
                        int intExtra = intent.getIntExtra("errorCode", 8);
                        int i3 = intExtra;
                        if (intExtra == 13) {
                            i3 = 12501;
                        }
                        m32005e(i3);
                        return;
                    }
                }
                m32005e(8);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String action = intent.getAction();
        if ("com.google.android.gms.auth.NO_IMPL".equals(action)) {
            m32005e(12500);
        } else if (action.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") || action.equals("com.google.android.gms.auth.APPAUTH_SIGN_IN")) {
            this.f6476b = (SignInConfiguration) intent.getBundleExtra("config").getParcelable("config");
            if (this.f6476b == null) {
                Log.e("AuthSignInClient", "Activity started with invalid configuration.");
                setResult(0);
                finish();
                return;
            }
            if (!(bundle == null)) {
                this.f6477c = bundle.getBoolean("signingInGoogleApiClients");
                if (this.f6477c) {
                    this.f6478d = bundle.getInt("signInResultCode");
                    this.f6479e = (Intent) bundle.getParcelable("signInResultData");
                    m32008D();
                }
            } else if (f6474f) {
                setResult(0);
                m32005e(12502);
            } else {
                f6474f = true;
                Intent intent2 = new Intent(action);
                if (action.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN")) {
                    intent2.setPackage("com.google.android.gms");
                } else {
                    intent2.setPackage(getPackageName());
                }
                intent2.putExtra("config", this.f6476b);
                try {
                    startActivityForResult(intent2, 40962);
                } catch (ActivityNotFoundException e) {
                    this.f6475a = true;
                    m32005e(17);
                }
            }
        } else {
            String valueOf = String.valueOf(intent.getAction());
            Log.e("AuthSignInClient", valueOf.length() != 0 ? "Unknown action: ".concat(valueOf) : new String("Unknown action: "));
            finish();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.f6477c);
        if (this.f6477c) {
            bundle.putInt("signInResultCode", this.f6478d);
            bundle.putParcelable("signInResultData", this.f6479e);
        }
    }
}
