package com.tmobile.tmoid.helperlib.sit.eap;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/eap/EapAkaUtil.class */
public class EapAkaUtil {
    private EapAkaUtil() {
    }

    /* renamed from: a */
    public static int m4979a(int i) {
        return i * 8;
    }

    /* renamed from: b */
    public static String m4978b(String str) {
        return (str == null || str.length() <= 6) ? null : String.format("nai.epc.mnc%s.mcc%s.3gppnetwork.org", str.substring(3, 6), str.substring(0, 3));
    }

    /* renamed from: c */
    public static byte[] m4977c(int i, int i2) {
        byte[] bArr;
        if (i2 > 0) {
            byte[] bArr2 = new byte[i2];
            while (true) {
                i2--;
                bArr = bArr2;
                if (i2 < 0) {
                    break;
                }
                bArr2[i2] = (byte) (i & 255);
                i >>= 8;
            }
        } else {
            bArr = null;
        }
        return bArr;
    }
}
