package com.amazon.device.ads;

import android.util.Base64;
import com.amazon.device.ads.AdRegistration;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBGDPREncoder.class */
public class DTBGDPREncoder {
    DTBGDPREncoder() {
    }

    /* renamed from: a */
    private static String m38931a(int i, int i2) {
        String binaryString = Integer.toBinaryString(i);
        String str = "";
        for (int i3 = 0; i3 < i2 - binaryString.length(); i3++) {
            str = str + "0";
        }
        return str + binaryString;
    }

    /* renamed from: a */
    public static String m38930a(List<Integer> list) {
        String str;
        int i;
        int i2;
        if (!list.isEmpty()) {
            int intValue = ((Integer) Collections.max(list)).intValue();
            StringBuilder sb = new StringBuilder();
            for (int i3 = 0; i3 < intValue + 1; i3++) {
                sb.append("0");
            }
            for (Integer num : list) {
                sb.setCharAt(num.intValue(), '1');
            }
            str = sb.toString();
        } else {
            str = "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i4 = 0; i4 < 32; i4++) {
            sb2.append("0");
        }
        sb2.replace(6, 11, m38931a(1, 5));
        AdRegistration.CMPFlavor m39061n = AdRegistration.m39061n();
        if (m39061n == AdRegistration.CMPFlavor.GOOGLE_CMP) {
            sb2.replace(11, 15, m38931a(1, 4));
        } else if (m39061n == AdRegistration.CMPFlavor.MOPUB_CMP) {
            sb2.replace(11, 15, m38931a(2, 4));
        }
        AdRegistration.ConsentStatus m39062m = AdRegistration.m39062m();
        if (m39062m == AdRegistration.ConsentStatus.EXPLICIT_YES) {
            sb2.replace(15, 18, m38931a(7, 3));
        } else if (m39062m == AdRegistration.ConsentStatus.EXPLICIT_NO) {
            sb2.replace(15, 18, m38931a(0, 3));
        } else {
            sb2.replace(15, 18, m38931a(1, 3));
        }
        if (str.length() > 0) {
            sb2.replace(18, 32, m38931a(str.length() - 1, 14));
        }
        sb2.append(str);
        String sb3 = sb2.toString();
        int length = sb3.length();
        byte[] bArr = new byte[(length / 8) + ((length % 8 == 0 ? 1 : 0) ^ 1)];
        for (int i5 = 0; i5 < length; i5++) {
            if (sb3.charAt(i5) == '1') {
                bArr[i5 / 8] = (byte) ((1 << ((((i2 + 1) * 8) - i5) - 1)) | bArr[i2]);
            } else {
                bArr[i5 / 8] = (byte) (((1 << ((((i + 1) * 8) - i5) - 1)) ^ (-1)) & bArr[i]);
            }
        }
        return Base64.encodeToString(bArr, 11).trim();
    }
}
