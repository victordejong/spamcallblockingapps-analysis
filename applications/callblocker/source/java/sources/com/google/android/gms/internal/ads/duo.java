package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/duo.class */
public abstract class duo {

    /* renamed from: b */
    private static MessageDigest f15817b = null;

    /* renamed from: a */
    protected Object f15818a = new Object();

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0038 -> B:14:0x0024). Please submit an issue!!! */
    /* renamed from: a */
    public final MessageDigest m8538a() {
        MessageDigest messageDigest;
        synchronized (this.f15818a) {
            if (f15817b != null) {
                messageDigest = f15817b;
            } else {
                for (int i = 0; i < 2; i++) {
                    try {
                        f15817b = MessageDigest.getInstance("MD5");
                    } catch (NoSuchAlgorithmException e) {
                    }
                }
                messageDigest = f15817b;
            }
        }
        return messageDigest;
    }

    /* renamed from: a */
    public abstract byte[] mo8518a(String str);
}
