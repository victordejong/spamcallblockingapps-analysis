package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.o;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/b.class */
public final class b {

    /* renamed from: c  reason: collision with root package name */
    private static final Lock f22508c = new ReentrantLock();

    /* renamed from: d  reason: collision with root package name */
    private static b f22509d;

    /* renamed from: a  reason: collision with root package name */
    final Lock f22510a = new ReentrantLock();

    /* renamed from: b  reason: collision with root package name */
    final SharedPreferences f22511b;

    b(Context context) {
        this.f22511b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static b a(Context context) {
        o.a(context);
        Lock lock = f22508c;
        lock.lock();
        try {
            if (f22509d == null) {
                f22509d = new b(context.getApplicationContext());
            }
            b bVar = f22509d;
            lock.unlock();
            return bVar;
        } catch (Throwable th) {
            f22508c.unlock();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final String b(String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    public final GoogleSignInAccount a() {
        GoogleSignInAccount googleSignInAccount;
        String a2 = a("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(a2)) {
            googleSignInAccount = null;
        } else {
            String a3 = a(b("googleSignInAccount", a2));
            googleSignInAccount = null;
            if (a3 != null) {
                try {
                    googleSignInAccount = GoogleSignInAccount.zaa(a3);
                } catch (JSONException e) {
                    googleSignInAccount = null;
                }
            }
        }
        return googleSignInAccount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(String str) {
        this.f22510a.lock();
        try {
            return this.f22511b.getString(str, null);
        } finally {
            this.f22510a.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2) {
        this.f22510a.lock();
        try {
            this.f22511b.edit().putString(str, str2).apply();
        } finally {
            this.f22510a.unlock();
        }
    }

    public final GoogleSignInOptions b() {
        GoogleSignInOptions googleSignInOptions;
        String a2 = a("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(a2)) {
            googleSignInOptions = null;
        } else {
            String a3 = a(b("googleSignInOptions", a2));
            googleSignInOptions = null;
            if (a3 != null) {
                try {
                    googleSignInOptions = GoogleSignInOptions.zaa(a3);
                } catch (JSONException e) {
                    googleSignInOptions = null;
                }
            }
        }
        return googleSignInOptions;
    }
}
