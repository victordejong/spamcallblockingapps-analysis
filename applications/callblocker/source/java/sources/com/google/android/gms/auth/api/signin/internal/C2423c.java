package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.C2662s;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
/* renamed from: com.google.android.gms.auth.api.signin.internal.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/c.class */
public class C2423c {

    /* renamed from: a */
    private static final Lock f6953a = new ReentrantLock();
    @GuardedBy("sLk")

    /* renamed from: b */
    private static C2423c f6954b;

    /* renamed from: c */
    private final Lock f6955c = new ReentrantLock();
    @GuardedBy("mLk")

    /* renamed from: d */
    private final SharedPreferences f6956d;

    private C2423c(Context context) {
        this.f6956d = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    @Nullable
    /* renamed from: a */
    private final GoogleSignInAccount m14528a(String str) {
        GoogleSignInAccount googleSignInAccount;
        if (TextUtils.isEmpty(str)) {
            googleSignInAccount = null;
        } else {
            String m14522c = m14522c(m14524b("googleSignInAccount", str));
            googleSignInAccount = null;
            if (m14522c != null) {
                try {
                    googleSignInAccount = GoogleSignInAccount.m14596a(m14522c);
                } catch (JSONException e) {
                    googleSignInAccount = null;
                }
            }
        }
        return googleSignInAccount;
    }

    /* renamed from: a */
    public static C2423c m14530a(Context context) {
        C2662s.m13981a(context);
        f6953a.lock();
        try {
            if (f6954b == null) {
                f6954b = new C2423c(context.getApplicationContext());
            }
            C2423c c2423c = f6954b;
            f6953a.unlock();
            return c2423c;
        } catch (Throwable th) {
            f6953a.unlock();
            throw th;
        }
    }

    /* renamed from: a */
    private final void m14527a(String str, String str2) {
        this.f6955c.lock();
        try {
            this.f6956d.edit().putString(str, str2).apply();
        } finally {
            this.f6955c.unlock();
        }
    }

    @Nullable
    /* renamed from: b */
    private final GoogleSignInOptions m14525b(String str) {
        GoogleSignInOptions googleSignInOptions;
        if (TextUtils.isEmpty(str)) {
            googleSignInOptions = null;
        } else {
            String m14522c = m14522c(m14524b("googleSignInOptions", str));
            googleSignInOptions = null;
            if (m14522c != null) {
                try {
                    googleSignInOptions = GoogleSignInOptions.m14580a(m14522c);
                } catch (JSONException e) {
                    googleSignInOptions = null;
                }
            }
        }
        return googleSignInOptions;
    }

    /* renamed from: b */
    private static String m14524b(String str, String str2) {
        return new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length()).append(str).append(":").append(str2).toString();
    }

    @Nullable
    /* renamed from: c */
    private final String m14522c(String str) {
        this.f6955c.lock();
        try {
            return this.f6956d.getString(str, null);
        } finally {
            this.f6955c.unlock();
        }
    }

    @Nullable
    /* renamed from: a */
    public GoogleSignInAccount m14531a() {
        return m14528a(m14522c("defaultGoogleSignInAccount"));
    }

    /* renamed from: a */
    public void m14529a(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        C2662s.m13981a(googleSignInAccount);
        C2662s.m13981a(googleSignInOptions);
        m14527a("defaultGoogleSignInAccount", googleSignInAccount.m14586j());
        C2662s.m13981a(googleSignInAccount);
        C2662s.m13981a(googleSignInOptions);
        String m14586j = googleSignInAccount.m14586j();
        m14527a(m14524b("googleSignInAccount", m14586j), googleSignInAccount.m14584l());
        m14527a(m14524b("googleSignInOptions", m14586j), googleSignInOptions.m14563i());
    }

    @Nullable
    /* renamed from: b */
    public GoogleSignInOptions m14526b() {
        return m14525b(m14522c("defaultGoogleSignInAccount"));
    }

    @Nullable
    /* renamed from: c */
    public String m14523c() {
        return m14522c("refreshToken");
    }

    /* renamed from: d */
    public void m14521d() {
        this.f6955c.lock();
        try {
            this.f6956d.edit().clear().apply();
        } finally {
            this.f6955c.unlock();
        }
    }
}
