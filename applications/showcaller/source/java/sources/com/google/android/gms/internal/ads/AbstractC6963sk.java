package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.google.android.gms.internal.ads.sk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sk.class */
public abstract class AbstractC6963sk {

    /* renamed from: a */
    private static MessageDigest f29552a;

    /* renamed from: b */
    protected final Object f29553b = new Object();

    /* renamed from: a */
    public abstract byte[] mo9147a(String str);

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0035 -> B:14:0x0022). Please submit an issue!!! */
    /* renamed from: b */
    public final MessageDigest m11001b() {
        synchronized (this.f29553b) {
            MessageDigest messageDigest = f29552a;
            if (messageDigest != null) {
                return messageDigest;
            }
            for (int i = 0; i < 2; i++) {
                try {
                    f29552a = MessageDigest.getInstance("MD5");
                } catch (NoSuchAlgorithmException e) {
                }
            }
            return f29552a;
        }
    }
}
