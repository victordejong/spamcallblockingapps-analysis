package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/b43.class */
public final class b43 {

    /* renamed from: a */
    private static final Logger f20267a = Logger.getLogger(b43.class.getName());

    /* renamed from: b */
    private static final AtomicBoolean f20268b = new AtomicBoolean(false);

    private b43() {
    }

    /* renamed from: a */
    public static boolean m16450a() {
        return f20268b.get();
    }

    /* renamed from: b */
    public static Boolean m16449b() {
        try {
            return (Boolean) Class.forName("org.conscrypt.Conscrypt").getMethod("isBoringSslFIPSBuild", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            f20267a.logp(Level.INFO, "com.google.crypto.tink.config.internal.TinkFipsUtil", "checkConscryptIsAvailableAndUsesFipsBoringSsl", "Conscrypt is not available or does not support checking for FIPS build.");
            return Boolean.FALSE;
        }
    }
}
