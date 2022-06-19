package com.amazon.device.ads;

import android.util.Base64;
import com.amazon.device.ads.AdRegistration;
import java.util.Collections;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBGDPREncoder.class */
public class DTBGDPREncoder {
    private static final int AMAZON_CONSENT_STRING_VERSION_VALUE = 1;
    private static final int CMP_INDICATOR_RANGE = 4;
    private static final int CMP_INDICATOR_START_INDEX = 11;
    private static final int CONSENT_STATUS_INDICATOR_RANGE = 3;
    private static final int CONSENT_STATUS_START_INDEX = 15;
    private static final int CONSENT_STRING_VERSION_INDICATOR_RANGE = 5;
    private static final int CONSENT_STRING_VERSION_START_INDEX = 6;
    private static final int EXPLICIT_NO_VALUE = 0;
    private static final int EXPLICIT_YES_VALUE = 7;
    private static final int GOOGLE_CMP_VALUE = 1;
    private static final int MAX_VENDOR_ID_INDICATOR_RANGE = 14;
    private static final int MAX_VENDOR_ID_START_INDEX = 18;
    private static final int MOPUB_CMP_VALUE = 2;
    private static final int TOTAL_NUMBER_OF_BITS_FOR_META_INFO = 32;
    private static final int UNKNOWN_CONSENT_STATUS_VALUE = 1;

    public static String getBinaryStringBasedOnPositions(List<Integer> list) {
        if (!list.isEmpty()) {
            int intValue = ((Integer) Collections.max(list)).intValue();
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < intValue + 1; i++) {
                sb.append(DtbConstants.NETWORK_TYPE_UNKNOWN);
            }
            for (Integer num : list) {
                sb.setCharAt(num.intValue(), '1');
            }
            return sb.toString();
        }
        return "";
    }

    public static String getEncodedBinaryString(List<Integer> list) {
        String binaryStringBasedOnPositions = getBinaryStringBasedOnPositions(list);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 32; i++) {
            sb.append(DtbConstants.NETWORK_TYPE_UNKNOWN);
        }
        setBitSetBasedOnConsentStringVersion(sb);
        setBitSetBasedOnCMPFlavor(sb);
        setBitSetBasedOnConsentStatus(sb);
        if (binaryStringBasedOnPositions.length() >= 1) {
            setBitSetBasedOnMaxVendorID(sb, binaryStringBasedOnPositions.length() - 1);
        }
        sb.append(binaryStringBasedOnPositions);
        return sb.toString();
    }

    public static String getEncodedNonIABConsentString(List<Integer> list) {
        String encodedBinaryString = getEncodedBinaryString(list);
        int length = encodedBinaryString.length();
        byte[] bArr = new byte[(length / 8) + ((length % 8 == 0 ? 1 : 0) ^ 1)];
        for (int i = 0; i < length; i++) {
            if (encodedBinaryString.charAt(i) == '1') {
                setBit(bArr, i);
            } else {
                unsetBit(bArr, i);
            }
        }
        return Base64.encodeToString(bArr, 11).trim();
    }

    public static String getValidPaddedStringForInt(int i, int i2) {
        String binaryString = Integer.toBinaryString(i);
        int length = binaryString.length();
        String str = "";
        for (int i3 = 0; i3 < i2 - length; i3++) {
            str = C22128a.m8543z2(str, DtbConstants.NETWORK_TYPE_UNKNOWN);
        }
        return C22128a.m8543z2(str, binaryString);
    }

    public static void setBit(byte[] bArr, int i) {
        int i2 = i / 8;
        bArr[i2] = (byte) ((1 << ((((i2 + 1) * 8) - i) - 1)) | bArr[i2]);
    }

    public static void setBitSetBasedOnCMPFlavor(StringBuilder sb) {
        AdRegistration.CMPFlavor cMPFlavor = AdRegistration.getCMPFlavor();
        if (cMPFlavor == AdRegistration.CMPFlavor.GOOGLE_CMP || cMPFlavor == AdRegistration.CMPFlavor.ADMOB_CMP) {
            sb.replace(11, 15, getValidPaddedStringForInt(1, 4));
        } else if (cMPFlavor != AdRegistration.CMPFlavor.MOPUB_CMP) {
        } else {
            sb.replace(11, 15, getValidPaddedStringForInt(2, 4));
        }
    }

    public static void setBitSetBasedOnConsentStatus(StringBuilder sb) {
        AdRegistration.ConsentStatus consentStatus = AdRegistration.getConsentStatus();
        if (consentStatus == AdRegistration.ConsentStatus.EXPLICIT_YES) {
            sb.replace(15, 18, getValidPaddedStringForInt(7, 3));
        } else if (consentStatus == AdRegistration.ConsentStatus.EXPLICIT_NO) {
            sb.replace(15, 18, getValidPaddedStringForInt(0, 3));
        } else {
            sb.replace(15, 18, getValidPaddedStringForInt(1, 3));
        }
    }

    public static void setBitSetBasedOnConsentStringVersion(StringBuilder sb) {
        sb.replace(6, 11, getValidPaddedStringForInt(1, 5));
    }

    public static void setBitSetBasedOnMaxVendorID(StringBuilder sb, int i) {
        sb.replace(18, 32, getValidPaddedStringForInt(i, 14));
    }

    public static void unsetBit(byte[] bArr, int i) {
        int i2 = i / 8;
        bArr[i2] = (byte) (((1 << ((((i2 + 1) * 8) - i) - 1)) ^ (-1)) & bArr[i2]);
    }
}
