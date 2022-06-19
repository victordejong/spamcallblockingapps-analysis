package com.flurry.sdk;

import android.text.TextUtils;
import java.util.Arrays;
/* renamed from: com.flurry.sdk.jq */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/jq.class */
public class C0447jq {

    /* renamed from: a */
    public static String f3405a = "com.flurry.sdk.jq";

    /* renamed from: a */
    public static String m4687a(String str) {
        String str2 = "a=" + C0462kg.m4652a().f3463d;
        if (!TextUtils.isEmpty(str)) {
            return String.format("%s&%s", str2, "cid=" + m4686b(str));
        }
        return str2;
    }

    /* renamed from: b */
    private static String m4686b(String str) {
        byte[] bArr = null;
        if (str != null) {
            bArr = null;
            if (str.trim().length() > 0) {
                try {
                    byte[] m4477e = C0505md.m4477e(str);
                    if (m4477e == null || m4477e.length != 20) {
                        C0478ku.m4596a(6, f3405a, "sha1 is not 20 bytes long: " + Arrays.toString(m4477e));
                        bArr = null;
                    } else {
                        try {
                            C0478ku.m4596a(5, f3405a, "syndication hashedId is:" + new String(m4477e));
                            bArr = m4477e;
                        } catch (Exception e) {
                            bArr = m4477e;
                            C0478ku.m4596a(6, f3405a, "Exception in getHashedSyndicationIdString()");
                            return C0505md.m4483a(bArr);
                        }
                    }
                } catch (Exception e2) {
                    bArr = null;
                }
            }
        }
        return C0505md.m4483a(bArr);
    }
}
