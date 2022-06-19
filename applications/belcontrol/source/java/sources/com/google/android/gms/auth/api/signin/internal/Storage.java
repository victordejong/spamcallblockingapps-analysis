package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/Storage.class */
public class Storage {
    private static final Lock zaa = new ReentrantLock();
    @GuardedBy("sLk")
    private static Storage zab;
    private final Lock zac = new ReentrantLock();
    @GuardedBy("mLk")
    private final SharedPreferences zad;

    @VisibleForTesting
    private Storage(Context context) {
        this.zad = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    @KeepForSdk
    public static Storage getInstance(Context context) {
        Preconditions.checkNotNull(context);
        Lock lock = zaa;
        lock.lock();
        try {
            if (zab == null) {
                zab = new Storage(context.getApplicationContext());
            }
            Storage storage = zab;
            lock.unlock();
            return storage;
        } catch (Throwable th) {
            zaa.unlock();
            throw th;
        }
    }

    @VisibleForTesting
    private final GoogleSignInAccount zaa(String str) {
        String zac;
        if (!TextUtils.isEmpty(str) && (zac = zac(zab("googleSignInAccount", str))) != null) {
            try {
                return GoogleSignInAccount.zaa(zac);
            } catch (JSONException e) {
                return null;
            }
        }
        return null;
    }

    private final void zaa(String str, String str2) {
        this.zac.lock();
        try {
            this.zad.edit().putString(str, str2).apply();
        } finally {
            this.zac.unlock();
        }
    }

    @VisibleForTesting
    private final GoogleSignInOptions zab(String str) {
        String zac;
        if (!TextUtils.isEmpty(str) && (zac = zac(zab("googleSignInOptions", str))) != null) {
            try {
                return GoogleSignInOptions.zaa(zac);
            } catch (JSONException e) {
                return null;
            }
        }
        return null;
    }

    private static String zab(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    private final String zac(String str) {
        this.zac.lock();
        try {
            return this.zad.getString(str, null);
        } finally {
            this.zac.unlock();
        }
    }

    private final void zad(String str) {
        this.zac.lock();
        try {
            this.zad.edit().remove(str).apply();
        } finally {
            this.zac.unlock();
        }
    }

    @KeepForSdk
    public void clear() {
        this.zac.lock();
        try {
            this.zad.edit().clear().apply();
        } finally {
            this.zac.unlock();
        }
    }

    @KeepForSdk
    public GoogleSignInAccount getSavedDefaultGoogleSignInAccount() {
        return zaa(zac("defaultGoogleSignInAccount"));
    }

    @KeepForSdk
    public GoogleSignInOptions getSavedDefaultGoogleSignInOptions() {
        return zab(zac("defaultGoogleSignInAccount"));
    }

    @KeepForSdk
    public String getSavedRefreshToken() {
        return zac("refreshToken");
    }

    @KeepForSdk
    public void saveDefaultGoogleSignInAccount(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        Preconditions.checkNotNull(googleSignInAccount);
        Preconditions.checkNotNull(googleSignInOptions);
        zaa("defaultGoogleSignInAccount", googleSignInAccount.zaa());
        Preconditions.checkNotNull(googleSignInAccount);
        Preconditions.checkNotNull(googleSignInOptions);
        String zaa2 = googleSignInAccount.zaa();
        zaa(zab("googleSignInAccount", zaa2), googleSignInAccount.zab());
        zaa(zab("googleSignInOptions", zaa2), googleSignInOptions.zaa());
    }

    public final void zaa() {
        String zac = zac("defaultGoogleSignInAccount");
        zad("defaultGoogleSignInAccount");
        if (!TextUtils.isEmpty(zac)) {
            zad(zab("googleSignInAccount", zac));
            zad(zab("googleSignInOptions", zac));
        }
    }
}
