package com.facebook.biddingkit.http.client;

import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.facebook.biddingkit.http.client.g */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/http/client/g.class */
public final class C10163g {
    private C10163g() {
    }

    /* renamed from: a */
    public static String m23317a(byte[] bArr, String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.reset();
        return Base64.encodeToString(messageDigest.digest(bArr), 0);
    }
}
