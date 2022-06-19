package com.google.android.gms.auth.api.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.util.VisibleForTesting;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1642f.p1644b.p1646b.p1649c.C24889b;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/Storage.class */
public class Storage {

    /* renamed from: c */
    public static final Lock f5560c = new ReentrantLock();

    /* renamed from: d */
    public static Storage f5561d;

    /* renamed from: a */
    public final Lock f5562a = new ReentrantLock();

    /* renamed from: b */
    public final SharedPreferences f5563b;

    @VisibleForTesting
    public Storage(Context context) {
        this.f5563b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    @RecentlyNonNull
    @KeepForSdk
    /* renamed from: a */
    public static Storage m39113a(@RecentlyNonNull Context context) {
        Objects.requireNonNull(context, "null reference");
        Lock lock = f5560c;
        lock.lock();
        try {
            if (f5561d == null) {
                f5561d = new Storage(context.getApplicationContext());
            }
            Storage storage = f5561d;
            lock.unlock();
            return storage;
        } catch (Throwable th) {
            f5560c.unlock();
            throw th;
        }
    }

    /* renamed from: g */
    public static final String m39107g(String str, String str2) {
        return C22128a.m8610j(new StringBuilder(str.length() + 1 + String.valueOf(str2).length()), str, StringConstant.COLON, str2);
    }

    @RecentlyNullable
    @KeepForSdk
    /* renamed from: b */
    public GoogleSignInAccount m39112b() {
        GoogleSignInAccount googleSignInAccount;
        String m39108f = m39108f("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(m39108f)) {
            googleSignInAccount = null;
        } else {
            String m39108f2 = m39108f(m39107g("googleSignInAccount", m39108f));
            googleSignInAccount = null;
            if (m39108f2 != null) {
                try {
                    googleSignInAccount = GoogleSignInAccount.m39126p2(m39108f2);
                } catch (JSONException e) {
                    googleSignInAccount = null;
                }
            }
        }
        return googleSignInAccount;
    }

    @RecentlyNullable
    @KeepForSdk
    /* renamed from: c */
    public GoogleSignInOptions m39111c() {
        GoogleSignInOptions googleSignInOptions;
        String m39108f = m39108f("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(m39108f)) {
            googleSignInOptions = null;
        } else {
            String m39108f2 = m39108f(m39107g("googleSignInOptions", m39108f));
            googleSignInOptions = null;
            if (m39108f2 != null) {
                try {
                    googleSignInOptions = GoogleSignInOptions.m39122p2(m39108f2);
                } catch (JSONException e) {
                    googleSignInOptions = null;
                }
            }
        }
        return googleSignInOptions;
    }

    @KeepForSdk
    /* renamed from: d */
    public void m39110d(@RecentlyNonNull GoogleSignInAccount googleSignInAccount, @RecentlyNonNull GoogleSignInOptions googleSignInOptions) {
        Objects.requireNonNull(googleSignInAccount, "null reference");
        Objects.requireNonNull(googleSignInOptions, "null reference");
        m39109e("defaultGoogleSignInAccount", googleSignInAccount.f5510i);
        String str = googleSignInAccount.f5510i;
        String m39107g = m39107g("googleSignInAccount", str);
        JSONObject jSONObject = new JSONObject();
        try {
            String str2 = googleSignInAccount.f5503b;
            if (str2 != null) {
                jSONObject.put("id", str2);
            }
            String str3 = googleSignInAccount.f5504c;
            if (str3 != null) {
                jSONObject.put("tokenId", str3);
            }
            String str4 = googleSignInAccount.f5505d;
            if (str4 != null) {
                jSONObject.put(AnalyticsConstants.EMAIL, str4);
            }
            String str5 = googleSignInAccount.f5506e;
            if (str5 != null) {
                jSONObject.put("displayName", str5);
            }
            String str6 = googleSignInAccount.f5512k;
            if (str6 != null) {
                jSONObject.put("givenName", str6);
            }
            String str7 = googleSignInAccount.f5513l;
            if (str7 != null) {
                jSONObject.put("familyName", str7);
            }
            Uri uri = googleSignInAccount.f5507f;
            if (uri != null) {
                jSONObject.put("photoUrl", uri.toString());
            }
            String str8 = googleSignInAccount.f5508g;
            if (str8 != null) {
                jSONObject.put("serverAuthCode", str8);
            }
            jSONObject.put("expirationTime", googleSignInAccount.f5509h);
            jSONObject.put("obfuscatedIdentifier", googleSignInAccount.f5510i);
            JSONArray jSONArray = new JSONArray();
            List<Scope> list = googleSignInAccount.f5511j;
            Scope[] scopeArr = (Scope[]) list.toArray(new Scope[list.size()]);
            Arrays.sort(scopeArr, C24889b.f69785a);
            for (Scope scope : scopeArr) {
                jSONArray.put(scope.f5721b);
            }
            jSONObject.put("grantedScopes", jSONArray);
            jSONObject.remove("serverAuthCode");
            m39109e(m39107g, jSONObject.toString());
            String m39107g2 = m39107g("googleSignInOptions", str);
            JSONObject jSONObject2 = new JSONObject();
            try {
                JSONArray jSONArray2 = new JSONArray();
                Collections.sort(googleSignInOptions.f5524b, GoogleSignInOptions.f5522r);
                Iterator<Scope> it = googleSignInOptions.f5524b.iterator();
                while (it.hasNext()) {
                    jSONArray2.put(it.next().f5721b);
                }
                jSONObject2.put("scopes", jSONArray2);
                Account account = googleSignInOptions.f5525c;
                if (account != null) {
                    jSONObject2.put("accountName", account.name);
                }
                jSONObject2.put("idTokenRequested", googleSignInOptions.f5526d);
                jSONObject2.put("forceCodeForRefreshToken", googleSignInOptions.f5528f);
                jSONObject2.put("serverAuthRequested", googleSignInOptions.f5527e);
                if (!TextUtils.isEmpty(googleSignInOptions.f5529g)) {
                    jSONObject2.put("serverClientId", googleSignInOptions.f5529g);
                }
                if (!TextUtils.isEmpty(googleSignInOptions.f5530h)) {
                    jSONObject2.put("hostedDomain", googleSignInOptions.f5530h);
                }
                m39109e(m39107g2, jSONObject2.toString());
            } catch (JSONException e) {
                throw new RuntimeException(e);
            }
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* renamed from: e */
    public final void m39109e(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        this.f5562a.lock();
        try {
            this.f5563b.edit().putString(str, str2).apply();
        } finally {
            this.f5562a.unlock();
        }
    }

    @RecentlyNullable
    /* renamed from: f */
    public final String m39108f(@RecentlyNonNull String str) {
        this.f5562a.lock();
        try {
            return this.f5563b.getString(str, null);
        } finally {
            this.f5562a.unlock();
        }
    }
}
