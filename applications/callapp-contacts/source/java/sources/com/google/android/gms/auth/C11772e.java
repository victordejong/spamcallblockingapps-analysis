package com.google.android.gms.auth;

import android.accounts.Account;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.common.C11943d;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.ServiceConnectionC11805a;
import com.google.android.gms.common.internal.AbstractC12034g;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.p349a.C11806a;
import java.io.IOException;
/* renamed from: com.google.android.gms.auth.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/e.class */
public class C11772e {

    /* renamed from: c */
    private static final String[] f39086c = {"com.google", "com.google.work", "cn.google"};

    /* renamed from: a */
    public static final String f39084a = "callerUid";

    /* renamed from: b */
    public static final String f39085b = "androidPackageName";

    /* renamed from: d */
    private static final ComponentName f39087d = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");

    /* renamed from: e */
    private static final C11806a f39088e = new C11806a("Auth", "GoogleAuthUtil");

    /* renamed from: a */
    private static <T> T m19512a(Context context, ComponentName componentName, AbstractC11775h<T> abstractC11775h) throws IOException, GoogleAuthException {
        ServiceConnectionC11805a serviceConnectionC11805a = new ServiceConnectionC11805a();
        AbstractC12034g m19180a = AbstractC12034g.m19180a(context);
        try {
            if (!m19180a.m19181a(componentName, serviceConnectionC11805a, "GoogleAuthUtil")) {
                throw new IOException("Could not bind to service.");
            }
            try {
                C12045o.m19152c("BlockingServiceConnection.getService() called on main thread");
                if (serviceConnectionC11805a.f39161a) {
                    throw new IllegalStateException("Cannot call get on this connection more than once");
                }
                serviceConnectionC11805a.f39161a = true;
                T mo19509a = abstractC11775h.mo19509a(serviceConnectionC11805a.f39162b.take());
                m19180a.m19176b(componentName, serviceConnectionC11805a, "GoogleAuthUtil");
                return mo19509a;
            } catch (RemoteException | InterruptedException e) {
                f39088e.m19473d("GoogleAuthUtil", "Error on service connection.", e);
                throw new IOException("Error on service connection.", e);
            }
        } catch (Throwable th) {
            m19180a.m19176b(componentName, serviceConnectionC11805a, "GoogleAuthUtil");
            throw th;
        }
    }

    /* renamed from: a */
    public static /* synthetic */ Object m19511a(Object obj) throws IOException {
        if (obj != null) {
            return obj;
        }
        f39088e.m19475b("GoogleAuthUtil", "Binder call returned null.");
        throw new IOException("Service unavailable.");
    }

    /* renamed from: a */
    public static String m19513a(Context context, Account account, String str, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        m19515a(account);
        C12045o.m19152c("Calling this from your main thread can lead to deadlock");
        C12045o.m19159a(str, (Object) "Scope cannot be empty or null.");
        m19515a(account);
        m19514a(context);
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        String str2 = context.getApplicationInfo().packageName;
        bundle2.putString("clientPackageName", str2);
        String str3 = f39085b;
        if (TextUtils.isEmpty(bundle2.getString(str3))) {
            bundle2.putString(str3, str2);
        }
        bundle2.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
        return ((TokenData) m19512a(context, f39087d, new C11773f(account, str, bundle2))).zzb();
    }

    /* renamed from: a */
    private static void m19515a(Account account) {
        if (account != null) {
            if (TextUtils.isEmpty(account.name)) {
                throw new IllegalArgumentException("Account name cannot be empty!");
            }
            for (String str : f39086c) {
                if (str.equals(account.type)) {
                    return;
                }
            }
            throw new IllegalArgumentException("Account type not supported");
        }
        throw new IllegalArgumentException("Account cannot be null");
    }

    /* renamed from: a */
    private static void m19514a(Context context) throws GoogleAuthException {
        try {
            C11943d.ensurePlayServicesAvailable(context.getApplicationContext(), 8400000);
        } catch (GooglePlayServicesNotAvailableException e) {
            throw new GoogleAuthException(e.getMessage());
        } catch (GooglePlayServicesRepairableException e2) {
            throw new GooglePlayServicesAvailabilityException(e2.f39155a, e2.getMessage(), e2.m19477a());
        }
    }

    /* renamed from: b */
    public static void m19510b(Context context, String str) throws GooglePlayServicesAvailabilityException, GoogleAuthException, IOException {
        C12045o.m19152c("Calling this from your main thread can lead to deadlock");
        m19514a(context);
        Bundle bundle = new Bundle();
        String str2 = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", str2);
        String str3 = f39085b;
        if (!bundle.containsKey(str3)) {
            bundle.putString(str3, str2);
        }
        m19512a(context, f39087d, new C11774g(str, bundle));
    }
}
