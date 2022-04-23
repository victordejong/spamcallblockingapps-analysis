package com.google.android.gms.auth;

import android.accounts.Account;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.a.a;
import com.google.android.gms.common.d;
import com.google.android.gms.common.internal.g;
import com.google.android.gms.common.internal.o;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/e.class */
public class e {

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f22532c = {"com.google", "com.google.work", "cn.google"};

    /* renamed from: a  reason: collision with root package name */
    public static final String f22530a = "callerUid";

    /* renamed from: b  reason: collision with root package name */
    public static final String f22531b = "androidPackageName";

    /* renamed from: d  reason: collision with root package name */
    private static final ComponentName f22533d = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
    private static final a e = new a("Auth", "GoogleAuthUtil");

    private static <T> T a(Context context, ComponentName componentName, h<T> hVar) throws IOException, GoogleAuthException {
        com.google.android.gms.common.a aVar = new com.google.android.gms.common.a();
        g a2 = g.a(context);
        try {
            if (a2.a(componentName, aVar, "GoogleAuthUtil")) {
                try {
                    o.c("BlockingServiceConnection.getService() called on main thread");
                    if (!aVar.f22596a) {
                        aVar.f22596a = true;
                        T a3 = hVar.a(aVar.f22597b.take());
                        a2.b(componentName, aVar, "GoogleAuthUtil");
                        return a3;
                    }
                    throw new IllegalStateException("Cannot call get on this connection more than once");
                } catch (RemoteException | InterruptedException e2) {
                    e.d("GoogleAuthUtil", "Error on service connection.", e2);
                    throw new IOException("Error on service connection.", e2);
                }
            } else {
                throw new IOException("Could not bind to service.");
            }
        } catch (Throwable th) {
            a2.b(componentName, aVar, "GoogleAuthUtil");
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object a(Object obj) throws IOException {
        if (obj != null) {
            return obj;
        }
        e.b("GoogleAuthUtil", "Binder call returned null.");
        throw new IOException("Service unavailable.");
    }

    public static String a(Context context, Account account, String str, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        a(account);
        o.c("Calling this from your main thread can lead to deadlock");
        o.a(str, (Object) "Scope cannot be empty or null.");
        a(account);
        a(context);
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        String str2 = context.getApplicationInfo().packageName;
        bundle2.putString("clientPackageName", str2);
        String str3 = f22531b;
        if (TextUtils.isEmpty(bundle2.getString(str3))) {
            bundle2.putString(str3, str2);
        }
        bundle2.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
        return ((TokenData) a(context, f22533d, new f(account, str, bundle2))).zzb();
    }

    private static void a(Account account) {
        if (account == null) {
            throw new IllegalArgumentException("Account cannot be null");
        } else if (!TextUtils.isEmpty(account.name)) {
            for (String str : f22532c) {
                if (str.equals(account.type)) {
                    return;
                }
            }
            throw new IllegalArgumentException("Account type not supported");
        } else {
            throw new IllegalArgumentException("Account name cannot be empty!");
        }
    }

    private static void a(Context context) throws GoogleAuthException {
        try {
            d.ensurePlayServicesAvailable(context.getApplicationContext(), 8400000);
        } catch (GooglePlayServicesNotAvailableException e2) {
            throw new GoogleAuthException(e2.getMessage());
        } catch (GooglePlayServicesRepairableException e3) {
            throw new GooglePlayServicesAvailabilityException(e3.f22590a, e3.getMessage(), e3.a());
        }
    }

    public static void b(Context context, String str) throws GooglePlayServicesAvailabilityException, GoogleAuthException, IOException {
        o.c("Calling this from your main thread can lead to deadlock");
        a(context);
        Bundle bundle = new Bundle();
        String str2 = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", str2);
        String str3 = f22531b;
        if (!bundle.containsKey(str3)) {
            bundle.putString(str3, str2);
        }
        a(context, f22533d, new g(str, bundle));
    }
}
