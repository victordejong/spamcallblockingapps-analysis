package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efh.class */
public abstract class efh {

    /* renamed from: b */
    private static MessageDigest f48956b;

    /* renamed from: a */
    protected Object f48957a = new Object();

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0035 -> B:14:0x0022). Please submit an issue!!! */
    /* renamed from: a */
    public final MessageDigest m15095a() {
        synchronized (this.f48957a) {
            MessageDigest messageDigest = f48956b;
            if (messageDigest != null) {
                return messageDigest;
            }
            for (int i = 0; i < 2; i++) {
                try {
                    f48956b = MessageDigest.getInstance("MD5");
                } catch (NoSuchAlgorithmException e) {
                }
            }
            return f48956b;
        }
    }

    /* renamed from: a */
    public abstract byte[] mo15082a(String str);
}
