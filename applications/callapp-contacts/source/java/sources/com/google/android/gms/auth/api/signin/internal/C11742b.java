package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.C12045o;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
/* renamed from: com.google.android.gms.auth.api.signin.internal.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/b.class */
public final class C11742b {

    /* renamed from: c */
    private static final Lock f39062c = new ReentrantLock();

    /* renamed from: d */
    private static C11742b f39063d;

    /* renamed from: a */
    final Lock f39064a = new ReentrantLock();

    /* renamed from: b */
    final SharedPreferences f39065b;

    C11742b(Context context) {
        this.f39065b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    /* renamed from: a */
    public static C11742b m19548a(Context context) {
        C12045o.m19162a(context);
        Lock lock = f39062c;
        lock.lock();
        try {
            if (f39063d == null) {
                f39063d = new C11742b(context.getApplicationContext());
            }
            C11742b c11742b = f39063d;
            lock.unlock();
            return c11742b;
        } catch (Throwable th) {
            f39062c.unlock();
            throw th;
        }
    }

    /* renamed from: b */
    public static final String m19544b(String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: a */
    public final GoogleSignInAccount m19549a() {
        GoogleSignInAccount googleSignInAccount;
        String m19547a = m19547a("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(m19547a)) {
            googleSignInAccount = null;
        } else {
            String m19547a2 = m19547a(m19544b("googleSignInAccount", m19547a));
            googleSignInAccount = null;
            if (m19547a2 != null) {
                try {
                    googleSignInAccount = GoogleSignInAccount.zaa(m19547a2);
                } catch (JSONException e) {
                    googleSignInAccount = null;
                }
            }
        }
        return googleSignInAccount;
    }

    /* renamed from: a */
    public String m19547a(String str) {
        this.f39064a.lock();
        try {
            return this.f39065b.getString(str, null);
        } finally {
            this.f39064a.unlock();
        }
    }

    /* renamed from: a */
    public void m19546a(String str, String str2) {
        this.f39064a.lock();
        try {
            this.f39065b.edit().putString(str, str2).apply();
        } finally {
            this.f39064a.unlock();
        }
    }

    /* renamed from: b */
    public final GoogleSignInOptions m19545b() {
        GoogleSignInOptions googleSignInOptions;
        String m19547a = m19547a("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(m19547a)) {
            googleSignInOptions = null;
        } else {
            String m19547a2 = m19547a(m19544b("googleSignInOptions", m19547a));
            googleSignInOptions = null;
            if (m19547a2 != null) {
                try {
                    googleSignInOptions = GoogleSignInOptions.zaa(m19547a2);
                } catch (JSONException e) {
                    googleSignInOptions = null;
                }
            }
        }
        return googleSignInOptions;
    }
}
