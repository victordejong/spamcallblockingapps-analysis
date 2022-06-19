package com.google.android.gms.internal.vision;

import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzid.class */
public final class zzid {
    public static String zza(zzic zzicVar, String str) {
        StringBuilder m8696K = C22128a.m8696K("# ", str);
        zza(zzicVar, m8696K, 0);
        return m8696K.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x0372, code lost:
        r18 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x02d0, code lost:
        if (((java.lang.Boolean) r0).booleanValue() == false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x02e6, code lost:
        if (((java.lang.Integer) r0).intValue() == 0) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x02fe, code lost:
        if (((java.lang.Float) r0).floatValue() == 0.0f) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0316, code lost:
        if (((java.lang.Double) r0).doubleValue() == com.google.android.libraries.places.api.model.PlaceLikelihood.LIKELIHOOD_MIN_VALUE) goto L106;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zza(com.google.android.gms.internal.vision.zzic r7, java.lang.StringBuilder r8, int r9) {
        /*
            Method dump skipped, instructions count: 1044
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzid.zza(com.google.android.gms.internal.vision.zzic, java.lang.StringBuilder, int):void");
    }

    public static final void zza(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                zza(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                zza(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(zzjf.zzd(zzfh.zzw((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzfh) {
                sb.append(": \"");
                sb.append(zzjf.zzd((zzfh) obj));
                sb.append('\"');
            } else if (obj instanceof zzgs) {
                sb.append(" {");
                zza((zzgs) obj, sb, i + 2);
                sb.append(StringConstant.NEW_LINE);
                for (int i3 = 0; i3 < i; i3++) {
                    sb.append(' ');
                }
                sb.append("}");
            } else if (!(obj instanceof Map.Entry)) {
                sb.append(": ");
                sb.append(obj.toString());
            } else {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                zza(sb, i4, AnalyticsConstants.KEY, entry2.getKey());
                zza(sb, i4, "value", entry2.getValue());
                sb.append(StringConstant.NEW_LINE);
                for (int i5 = 0; i5 < i; i5++) {
                    sb.append(' ');
                }
                sb.append("}");
            }
        }
    }

    private static final String zzz(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append(AnalyticsConstants.DELIMITER_MAIN);
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }
}
