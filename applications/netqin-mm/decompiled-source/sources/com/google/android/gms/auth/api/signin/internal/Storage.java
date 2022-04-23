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
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/Storage.class */
public class Storage {

    /* renamed from: c */
    public static final Lock f22961c = new ReentrantLock();

    /* renamed from: d */
    public static Storage f22962d;

    /* renamed from: a */
    public final Lock f22963a = new ReentrantLock();

    /* renamed from: b */
    public final SharedPreferences f22964b;

    @VisibleForTesting
    public Storage(Context context) {
        this.f22964b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    @KeepForSdk
    /* renamed from: a */
    public static Storage m17857a(Context context) {
        Preconditions.m17288a(context);
        f22961c.lock();
        try {
            if (f22962d == null) {
                f22962d = new Storage(context.getApplicationContext());
            }
            Storage storage = f22962d;
            f22961c.unlock();
            return storage;
        } catch (Throwable th) {
            f22961c.unlock();
            throw th;
        }
    }

    /* renamed from: a */
    public static String m17855a(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    @KeepForSdk
    /* renamed from: a */
    public GoogleSignInAccount m17858a() {
        return m17856a(m17854b("defaultGoogleSignInAccount"));
    }

    @VisibleForTesting
    /* renamed from: a */
    public final GoogleSignInAccount m17856a(String str) {
        String b;
        if (TextUtils.isEmpty(str) || (b = m17854b(m17855a("googleSignInAccount", str))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.m17883a(b);
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: b */
    public final String m17854b(String str) {
        this.f22963a.lock();
        try {
            return this.f22964b.getString(str, null);
        } finally {
            this.f22963a.unlock();
        }
    }
}
