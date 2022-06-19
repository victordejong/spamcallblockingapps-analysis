package com.google.android.gms.auth;

import android.accounts.Account;
import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.common.C6094e;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.ServiceConnectionC5982a;
import com.google.android.gms.common.internal.AbstractC6128g;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.p269i.C6099a;
import java.io.IOException;
/* renamed from: com.google.android.gms.auth.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/f.class */
public class C5949f {

    /* renamed from: a */
    private static final String[] f19079a = {"com.google", "com.google.work", "cn.google"};
    @SuppressLint({"InlinedApi"})

    /* renamed from: b */
    public static final String f19080b = "callerUid";
    @SuppressLint({"InlinedApi"})

    /* renamed from: c */
    public static final String f19081c = "androidPackageName";

    /* renamed from: d */
    private static final ComponentName f19082d = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");

    /* renamed from: e */
    private static final C6099a f19083e = new C6099a("Auth", "GoogleAuthUtil");

    /* renamed from: a */
    public static void m17561a(Context context, String str) {
        C6155o.m17019i("Calling this from your main thread can lead to deadlock");
        m17560b(context, 8400000);
        Bundle bundle = new Bundle();
        String str2 = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", str2);
        String str3 = f19081c;
        if (!bundle.containsKey(str3)) {
            bundle.putString(str3, str2);
        }
        m17555g(context, f19082d, new C5951h(str, bundle));
    }

    /* renamed from: b */
    private static void m17560b(Context context, int i) {
        try {
            C6094e.m17210a(context.getApplicationContext(), i);
        } catch (GooglePlayServicesNotAvailableException e) {
            throw new GoogleAuthException(e.getMessage());
        } catch (GooglePlayServicesRepairableException e2) {
            throw new GooglePlayServicesAvailabilityException(e2.getConnectionStatusCode(), e2.getMessage(), e2.getIntent());
        }
    }

    /* renamed from: c */
    public static String m17559c(Context context, Account account, String str) {
        return m17558d(context, account, str, new Bundle());
    }

    /* renamed from: d */
    public static String m17558d(Context context, Account account, String str, Bundle bundle) {
        m17551k(account);
        return m17553i(context, account, str, bundle).m17724l0();
    }

    @Deprecated
    /* renamed from: e */
    public static String m17557e(Context context, String str, String str2) {
        return m17559c(context, new Account(str, "com.google"), str2);
    }

    /* renamed from: g */
    private static <T> T m17555g(Context context, ComponentName componentName, AbstractC5952i<T> abstractC5952i) {
        ServiceConnectionC5982a serviceConnectionC5982a = new ServiceConnectionC5982a();
        AbstractC6128g m17058c = AbstractC6128g.m17058c(context);
        try {
            if (!m17058c.m17060a(componentName, serviceConnectionC5982a, "GoogleAuthUtil")) {
                throw new IOException("Could not bind to service.");
            }
            try {
                T mo17550a = abstractC5952i.mo17550a(serviceConnectionC5982a.m17496a());
                m17058c.m17057d(componentName, serviceConnectionC5982a, "GoogleAuthUtil");
                return mo17550a;
            } catch (RemoteException | InterruptedException e) {
                f19083e.m17180d("GoogleAuthUtil", "Error on service connection.", e);
                throw new IOException("Error on service connection.", e);
            }
        } catch (Throwable th) {
            m17058c.m17057d(componentName, serviceConnectionC5982a, "GoogleAuthUtil");
            throw th;
        }
    }

    /* renamed from: h */
    public static <T> T m17554h(T t) {
        if (t != null) {
            return t;
        }
        f19083e.m17178f("GoogleAuthUtil", "Binder call returned null.");
        throw new IOException("Service unavailable.");
    }

    /* renamed from: i */
    public static TokenData m17553i(Context context, Account account, String str, Bundle bundle) {
        C6155o.m17019i("Calling this from your main thread can lead to deadlock");
        C6155o.m17021g(str, "Scope cannot be empty or null.");
        m17551k(account);
        m17560b(context, 8400000);
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        String str2 = context.getApplicationInfo().packageName;
        bundle2.putString("clientPackageName", str2);
        String str3 = f19081c;
        if (TextUtils.isEmpty(bundle2.getString(str3))) {
            bundle2.putString(str3, str2);
        }
        bundle2.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
        return (TokenData) m17555g(context, f19082d, new C5950g(account, str, bundle2));
    }

    /* renamed from: k */
    private static void m17551k(Account account) {
        if (account != null) {
            if (TextUtils.isEmpty(account.name)) {
                throw new IllegalArgumentException("Account name cannot be empty!");
            }
            for (String str : f19079a) {
                if (str.equals(account.type)) {
                    return;
                }
            }
            throw new IllegalArgumentException("Account type not supported");
        }
        throw new IllegalArgumentException("Account cannot be null");
    }
}
