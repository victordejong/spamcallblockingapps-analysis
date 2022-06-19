package com.google.android.gms.security;

import android.content.Context;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamite.DynamiteModule;
import java.lang.reflect.Method;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/security/ProviderInstaller.class */
public class ProviderInstaller {

    /* renamed from: a */
    public static final GoogleApiAvailabilityLight f6462a = GoogleApiAvailabilityLight.f5675b;

    /* renamed from: b */
    public static final Object f6463b = new Object();

    /* renamed from: c */
    public static Method f6464c;

    /* renamed from: d */
    public static Method f6465d;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/security/ProviderInstaller$ProviderInstallListener.class */
    public interface ProviderInstallListener {
    }

    /* renamed from: a */
    public static void m38549a(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        Context context2;
        Preconditions.m38897k(context, "Context must not be null");
        Objects.requireNonNull(f6462a);
        GooglePlayServicesUtilLight.ensurePlayServicesAvailable(context, 11925000);
        synchronized (f6463b) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            try {
                context2 = DynamiteModule.m38737d(context, DynamiteModule.f6178d, "com.google.android.gms.providerinstaller.dynamite").f6189a;
            } catch (DynamiteModule.LoadingException e) {
                String valueOf = String.valueOf(e.getMessage());
                if (valueOf.length() != 0) {
                    "Failed to load providerinstaller module: ".concat(valueOf);
                } else {
                    new String("Failed to load providerinstaller module: ");
                }
                context2 = null;
            }
            if (context2 != null) {
                m38548b(context2, context, "com.google.android.gms.providerinstaller.ProviderInstallerImpl");
                return;
            }
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            if (remoteContext != null) {
                try {
                    if (f6465d == null) {
                        Class<?> cls = Long.TYPE;
                        f6465d = remoteContext.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("reportRequestStats", Context.class, cls, cls);
                    }
                    f6465d.invoke(null, context, Long.valueOf(elapsedRealtime), Long.valueOf(elapsedRealtime2));
                } catch (Exception e2) {
                    String valueOf2 = String.valueOf(e2.getMessage());
                    if (valueOf2.length() != 0) {
                        "Failed to report request stats: ".concat(valueOf2);
                    } else {
                        new String("Failed to report request stats: ");
                    }
                }
            }
            if (remoteContext == null) {
                throw new GooglePlayServicesNotAvailableException(8);
            }
            m38548b(remoteContext, context, "com.google.android.gms.common.security.ProviderInstallerImpl");
        }
    }

    /* renamed from: b */
    public static void m38548b(Context context, Context context2, String str) throws GooglePlayServicesNotAvailableException {
        try {
            if (f6464c == null) {
                f6464c = context.getClassLoader().loadClass(str).getMethod("insertProvider", Context.class);
            }
            f6464c.invoke(null, context);
        } catch (Exception e) {
            Throwable cause = e.getCause();
            if (Log.isLoggable("ProviderInstaller", 6)) {
                String valueOf = String.valueOf(cause == null ? e.getMessage() : cause.getMessage());
                if (valueOf.length() != 0) {
                    "Failed to install provider: ".concat(valueOf);
                } else {
                    new String("Failed to install provider: ");
                }
            }
            throw new GooglePlayServicesNotAvailableException(8);
        }
    }
}
