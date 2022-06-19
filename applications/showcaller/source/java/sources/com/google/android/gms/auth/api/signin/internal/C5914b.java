package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.C6155o;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
/* renamed from: com.google.android.gms.auth.api.signin.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/b.class */
public class C5914b {

    /* renamed from: a */
    private static final Lock f19040a = new ReentrantLock();

    /* renamed from: b */
    private static C5914b f19041b;

    /* renamed from: c */
    private final Lock f19042c = new ReentrantLock();

    /* renamed from: d */
    private final SharedPreferences f19043d;

    C5914b(Context context) {
        this.f19043d = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static C5914b m17599b(@RecentlyNonNull Context context) {
        C6155o.m17018j(context);
        Lock lock = f19040a;
        lock.lock();
        try {
            if (f19041b == null) {
                f19041b = new C5914b(context.getApplicationContext());
            }
            C5914b c5914b = f19041b;
            lock.unlock();
            return c5914b;
        } catch (Throwable th) {
            f19040a.unlock();
            throw th;
        }
    }

    /* renamed from: i */
    private static final String m17592i(String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: a */
    public void m17600a() {
        this.f19042c.lock();
        try {
            this.f19043d.edit().clear().apply();
        } finally {
            this.f19042c.unlock();
        }
    }

    @RecentlyNullable
    /* renamed from: c */
    public GoogleSignInAccount m17598c() {
        GoogleSignInAccount googleSignInAccount;
        String m17593h = m17593h("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(m17593h)) {
            googleSignInAccount = null;
        } else {
            String m17593h2 = m17593h(m17592i("googleSignInAccount", m17593h));
            googleSignInAccount = null;
            if (m17593h2 != null) {
                try {
                    googleSignInAccount = GoogleSignInAccount.m17654t0(m17593h2);
                } catch (JSONException e) {
                    googleSignInAccount = null;
                }
            }
        }
        return googleSignInAccount;
    }

    @RecentlyNullable
    /* renamed from: d */
    public GoogleSignInOptions m17597d() {
        GoogleSignInOptions googleSignInOptions;
        String m17593h = m17593h("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(m17593h)) {
            googleSignInOptions = null;
        } else {
            String m17593h2 = m17593h(m17592i("googleSignInOptions", m17593h));
            googleSignInOptions = null;
            if (m17593h2 != null) {
                try {
                    googleSignInOptions = GoogleSignInOptions.m17638r0(m17593h2);
                } catch (JSONException e) {
                    googleSignInOptions = null;
                }
            }
        }
        return googleSignInOptions;
    }

    @RecentlyNullable
    /* renamed from: e */
    public String m17596e() {
        return m17593h("refreshToken");
    }

    /* renamed from: f */
    public void m17595f(@RecentlyNonNull GoogleSignInAccount googleSignInAccount, @RecentlyNonNull GoogleSignInOptions googleSignInOptions) {
        C6155o.m17018j(googleSignInAccount);
        C6155o.m17018j(googleSignInOptions);
        m17594g("defaultGoogleSignInAccount", googleSignInAccount.m17652v0());
        C6155o.m17018j(googleSignInAccount);
        C6155o.m17018j(googleSignInOptions);
        String m17652v0 = googleSignInAccount.m17652v0();
        m17594g(m17592i("googleSignInAccount", m17652v0), googleSignInAccount.m17651w0());
        m17594g(m17592i("googleSignInOptions", m17652v0), googleSignInOptions.m17637s0());
    }

    /* renamed from: g */
    protected final void m17594g(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        this.f19042c.lock();
        try {
            this.f19043d.edit().putString(str, str2).apply();
        } finally {
            this.f19042c.unlock();
        }
    }

    @RecentlyNullable
    /* renamed from: h */
    protected final String m17593h(@RecentlyNonNull String str) {
        this.f19042c.lock();
        try {
            return this.f19043d.getString(str, null);
        } finally {
            this.f19042c.unlock();
        }
    }
}
