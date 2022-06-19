package com.google.android.gms.auth;

import android.accounts.Account;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.BlockingServiceConnection;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.zzn;
import com.google.android.gms.common.logging.Logger;
import java.io.IOException;
import java.util.Objects;
import p193e.p1577m.p1578a.p1642f.p1644b.AbstractC24896e;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/zzd.class */
public class zzd {

    /* renamed from: a */
    public static final String[] f5575a = {"com.google", "com.google.work", "cn.google"};

    /* renamed from: b */
    public static final ComponentName f5576b = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");

    /* renamed from: c */
    public static final Logger f5577c = new Logger("Auth", "GoogleAuthUtil");

    /* renamed from: a */
    public static void m39095a(Context context, int i) throws GoogleAuthException {
        try {
            GooglePlayServicesUtilLight.ensurePlayServicesAvailable(context.getApplicationContext(), i);
        } catch (GooglePlayServicesNotAvailableException e) {
            throw new GoogleAuthException(e.getMessage());
        } catch (GooglePlayServicesRepairableException e2) {
            throw new GooglePlayServicesAvailabilityException(e2.f5677b, e2.getMessage(), new Intent(e2.f5688a));
        }
    }

    /* renamed from: b */
    public static <T> T m39094b(Context context, ComponentName componentName, AbstractC24896e<T> abstractC24896e) throws IOException, GoogleAuthException {
        BlockingServiceConnection blockingServiceConnection = new BlockingServiceConnection();
        GmsClientSupervisor m38918a = GmsClientSupervisor.m38918a(context);
        Objects.requireNonNull(m38918a);
        try {
            if (!m38918a.mo4246c(new zzn(componentName, 4225), blockingServiceConnection, "GoogleAuthUtil", null)) {
                throw new IOException("Could not bind to service.");
            }
            try {
                T mo4301a = abstractC24896e.mo4301a(blockingServiceConnection.m39079a());
                m38918a.mo4247b(new zzn(componentName, 4225), blockingServiceConnection, "GoogleAuthUtil");
                return mo4301a;
            } catch (RemoteException | InterruptedException e) {
                f5577c.m38817b("GoogleAuthUtil", "Error on service connection.", e);
                throw new IOException("Error on service connection.", e);
            }
        } catch (Throwable th) {
            m38918a.mo4247b(new zzn(componentName, 4225), blockingServiceConnection, "GoogleAuthUtil");
            throw th;
        }
    }

    /* renamed from: c */
    public static Object m39093c(Object obj) throws IOException {
        if (obj != null) {
            return obj;
        }
        f5577c.m38817b("GoogleAuthUtil", "Binder call returned null.");
        throw new IOException("Service unavailable.");
    }

    /* renamed from: d */
    public static void m39092d(Account account) {
        if (account != null) {
            if (TextUtils.isEmpty(account.name)) {
                throw new IllegalArgumentException("Account name cannot be empty!");
            }
            for (String str : f5575a) {
                if (str.equals(account.type)) {
                    return;
                }
            }
            throw new IllegalArgumentException("Account type not supported");
        }
        throw new IllegalArgumentException("Account cannot be null");
    }
}
