package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efh.class */
public abstract class efh {

    /* renamed from: b  reason: collision with root package name */
    private static MessageDigest f27776b;

    /* renamed from: a  reason: collision with root package name */
    protected Object f27777a = new Object();

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0035 -> B:14:0x0022). Please submit an issue!!! */
    public final MessageDigest a() {
        synchronized (this.f27777a) {
            MessageDigest messageDigest = f27776b;
            if (messageDigest != null) {
                return messageDigest;
            }
            for (int i = 0; i < 2; i++) {
                try {
                    f27776b = MessageDigest.getInstance("MD5");
                } catch (NoSuchAlgorithmException e) {
                }
            }
            return f27776b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte[] a(String str);
}
