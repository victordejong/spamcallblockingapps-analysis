package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zt2.class */
public abstract class zt2 {

    /* renamed from: b */
    private static MessageDigest f9442b;

    /* renamed from: a */
    protected final Object f9443a = new Object();

    /* renamed from: a */
    public abstract byte[] m4515a(String str);

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x003b -> B:14:0x0022). Please submit an issue!!! */
    /* renamed from: b */
    protected final MessageDigest m4514b() {
        synchronized (this.f9443a) {
            try {
                MessageDigest messageDigest = f9442b;
                if (messageDigest != null) {
                    return messageDigest;
                }
                for (int i = 0; i < 2; i++) {
                    try {
                        f9442b = MessageDigest.getInstance("MD5");
                    } catch (NoSuchAlgorithmException e) {
                    }
                }
                return f9442b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
