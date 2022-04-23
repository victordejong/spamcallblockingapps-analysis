package com.facebook.biddingkit.http.client;

import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/http/client/g.class */
public final class g {
    private g() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(byte[] bArr, String str) throws NoSuchAlgorithmException {
        MessageDigest instance = MessageDigest.getInstance(str);
        instance.reset();
        return Base64.encodeToString(instance.digest(bArr), 0);
    }
}
