package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/Storage.class */
public class Storage {

    /* renamed from: c */
    private static final Lock f6902c = new ReentrantLock();
    @GuardedBy

    /* renamed from: d */
    private static Storage f6903d;

    /* renamed from: a */
    private final Lock f6904a = new ReentrantLock();
    @GuardedBy

    /* renamed from: b */
    private final SharedPreferences f6905b;

    @VisibleForTesting
    private Storage(Context context) {
        this.f6905b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    @KeepForSdk
    /* renamed from: a */
    public static Storage m15140a(Context context) {
        Preconditions.m14523k(context);
        f6902c.lock();
        try {
            if (f6903d == null) {
                f6903d = new Storage(context.getApplicationContext());
            }
            Storage storage = f6903d;
            f6902c.unlock();
            return storage;
        } catch (Throwable th) {
            f6902c.unlock();
            throw th;
        }
    }

    /* renamed from: c */
    private static String m15138c(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    @VisibleForTesting
    @Nullable
    /* renamed from: d */
    private final GoogleSignInAccount m15137d(String str) {
        String e;
        if (TextUtils.isEmpty(str) || (e = m15136e(m15138c("googleSignInAccount", str))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.m15159y0(e);
        } catch (JSONException e2) {
            return null;
        }
    }

    @Nullable
    /* renamed from: e */
    private final String m15136e(String str) {
        this.f6904a.lock();
        try {
            return this.f6905b.getString(str, null);
        } finally {
            this.f6904a.unlock();
        }
    }

    /* renamed from: g */
    private final void m15134g(String str) {
        this.f6904a.lock();
        try {
            this.f6905b.edit().remove(str).apply();
        } finally {
            this.f6904a.unlock();
        }
    }

    @Nullable
    @KeepForSdk
    /* renamed from: b */
    public GoogleSignInAccount m15139b() {
        return m15137d(m15136e("defaultGoogleSignInAccount"));
    }

    /* renamed from: f */
    public final void m15135f() {
        String e = m15136e("defaultGoogleSignInAccount");
        m15134g("defaultGoogleSignInAccount");
        if (!TextUtils.isEmpty(e)) {
            m15134g(m15138c("googleSignInAccount", e));
            m15134g(m15138c("googleSignInOptions", e));
        }
    }
}
