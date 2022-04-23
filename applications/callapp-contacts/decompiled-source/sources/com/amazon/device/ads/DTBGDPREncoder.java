package com.amazon.device.ads;

import android.util.Base64;
import com.amazon.device.ads.AdRegistration;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBGDPREncoder.class */
public class DTBGDPREncoder {
    DTBGDPREncoder() {
    }

    private static String a(int i, int i2) {
        String binaryString = Integer.toBinaryString(i);
        String str = "";
        for (int i3 = 0; i3 < i2 - binaryString.length(); i3++) {
            str = str + "0";
        }
        return str + binaryString;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(List<Integer> list) {
        String str;
        if (!list.isEmpty()) {
            int intValue = ((Integer) Collections.max(list)).intValue();
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < intValue + 1; i++) {
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
        for (int i2 = 0; i2 < 32; i2++) {
            sb2.append("0");
        }
        sb2.replace(6, 11, a(1, 5));
        AdRegistration.CMPFlavor n = AdRegistration.n();
        if (n == AdRegistration.CMPFlavor.GOOGLE_CMP) {
            sb2.replace(11, 15, a(1, 4));
        } else if (n == AdRegistration.CMPFlavor.MOPUB_CMP) {
            sb2.replace(11, 15, a(2, 4));
        }
        AdRegistration.ConsentStatus m = AdRegistration.m();
        if (m == AdRegistration.ConsentStatus.EXPLICIT_YES) {
            sb2.replace(15, 18, a(7, 3));
        } else if (m == AdRegistration.ConsentStatus.EXPLICIT_NO) {
            sb2.replace(15, 18, a(0, 3));
        } else {
            sb2.replace(15, 18, a(1, 3));
        }
        if (str.length() > 0) {
            sb2.replace(18, 32, a(str.length() - 1, 14));
        }
        sb2.append(str);
        String sb3 = sb2.toString();
        int length = sb3.length();
        byte[] bArr = new byte[(length / 8) + ((length % 8 == 0 ? 1 : 0) ^ 1)];
        for (int i3 = 0; i3 < length; i3++) {
            if (sb3.charAt(i3) == '1') {
                int i4 = i3 / 8;
                bArr[i4] = (byte) ((1 << ((((i4 + 1) * 8) - i3) - 1)) | bArr[i4]);
            } else {
                int i5 = i3 / 8;
                bArr[i5] = (byte) (((1 << ((((i5 + 1) * 8) - i3) - 1)) ^ (-1)) & bArr[i5]);
            }
        }
        return Base64.encodeToString(bArr, 11).trim();
    }
}
