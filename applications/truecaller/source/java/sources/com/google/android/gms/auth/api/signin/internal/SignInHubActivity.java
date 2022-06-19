package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.RecentlyNonNull;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import java.util.Objects;
import n3.r.a.l;
import p193e.p1577m.p1578a.p1642f.p1644b.p1646b.p1649c.p1650a.C24888f;
@KeepName
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/SignInHubActivity.class */
public class SignInHubActivity extends l {

    /* renamed from: f */
    public static boolean f5554f = false;

    /* renamed from: a */
    public boolean f5555a = false;

    /* renamed from: b */
    public SignInConfiguration f5556b;

    /* renamed from: c */
    public boolean f5557c;

    /* renamed from: d */
    public int f5558d;

    /* renamed from: e */
    public Intent f5559e;

    public final boolean dispatchPopulateAccessibilityEvent(@RecentlyNonNull AccessibilityEvent accessibilityEvent) {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void onActivityResult(int i, int i2, Intent intent) {
        GoogleSignInAccount googleSignInAccount;
        if (this.f5555a) {
            return;
        }
        setResult(0);
        if (i != 40962) {
            return;
        }
        if (intent != null) {
            SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra("signInAccount");
            if (signInAccount != null && (googleSignInAccount = signInAccount.f5546b) != null) {
                zbn m39098a = zbn.m39098a(this);
                GoogleSignInOptions googleSignInOptions = this.f5556b.f5553b;
                synchronized (m39098a) {
                    m39098a.f5572a.m39110d(googleSignInAccount, googleSignInOptions);
                    m39098a.f5573b = googleSignInAccount;
                }
                intent.removeExtra("signInAccount");
                intent.putExtra("googleSignInAccount", googleSignInAccount);
                this.f5557c = true;
                this.f5558d = i2;
                this.f5559e = intent;
                getSupportLoaderManager().mo977c(0, null, new C24888f(this));
                f5554f = false;
                return;
            } else if (intent.hasExtra("errorCode")) {
                int intExtra = intent.getIntExtra("errorCode", 8);
                int i3 = intExtra;
                if (intExtra == 13) {
                    i3 = 12501;
                }
                m39114pa(i3);
                return;
            }
        }
        m39114pa(8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void onCreate(Bundle bundle) {
        SignInHubActivity.super.onCreate(bundle);
        Intent intent = getIntent();
        String action = intent.getAction();
        Objects.requireNonNull(action);
        if ("com.google.android.gms.auth.NO_IMPL".equals(action)) {
            m39114pa(12500);
        } else if (!action.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") && !action.equals("com.google.android.gms.auth.APPAUTH_SIGN_IN")) {
            String valueOf = String.valueOf(intent.getAction());
            if (valueOf.length() != 0) {
                "Unknown action: ".concat(valueOf);
            } else {
                new String("Unknown action: ");
            }
            finish();
        } else {
            Bundle bundleExtra = intent.getBundleExtra(DTBMetricsConfiguration.CONFIG_DIR);
            Objects.requireNonNull(bundleExtra);
            SignInConfiguration signInConfiguration = (SignInConfiguration) bundleExtra.getParcelable(DTBMetricsConfiguration.CONFIG_DIR);
            if (signInConfiguration == null) {
                setResult(0);
                finish();
                return;
            }
            this.f5556b = signInConfiguration;
            if (bundle != null) {
                boolean z = bundle.getBoolean("signingInGoogleApiClients");
                this.f5557c = z;
                if (!z) {
                    return;
                }
                this.f5558d = bundle.getInt("signInResultCode");
                Intent intent2 = (Intent) bundle.getParcelable("signInResultData");
                Objects.requireNonNull(intent2);
                this.f5559e = intent2;
                getSupportLoaderManager().mo977c(0, null, new C24888f(this));
                f5554f = false;
            } else if (f5554f) {
                setResult(0);
                m39114pa(12502);
            } else {
                f5554f = true;
                Intent intent3 = new Intent(action);
                if (action.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN")) {
                    intent3.setPackage("com.google.android.gms");
                } else {
                    intent3.setPackage(getPackageName());
                }
                intent3.putExtra(DTBMetricsConfiguration.CONFIG_DIR, this.f5556b);
                try {
                    startActivityForResult(intent3, 40962);
                } catch (ActivityNotFoundException e) {
                    this.f5555a = true;
                    m39114pa(17);
                }
            }
        }
    }

    public final void onDestroy() {
        SignInHubActivity.super.onDestroy();
        f5554f = false;
    }

    public final void onSaveInstanceState(@RecentlyNonNull Bundle bundle) {
        SignInHubActivity.super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.f5557c);
        if (this.f5557c) {
            bundle.putInt("signInResultCode", this.f5558d);
            bundle.putParcelable("signInResultData", this.f5559e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: pa */
    public final void m39114pa(int i) {
        Status status = new Status(i, null);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
        f5554f = false;
    }
}
