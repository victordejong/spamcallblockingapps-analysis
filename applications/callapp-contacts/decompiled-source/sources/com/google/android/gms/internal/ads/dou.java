package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dou.class */
public final class dou {
    private static final String a(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0331, code lost:
        if (((java.lang.Boolean) r0).booleanValue() == false) goto L_0x0334;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0334, code lost:
        r18 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0350, code lost:
        if (((java.lang.Integer) r0).intValue() == 0) goto L_0x0334;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0368, code lost:
        if (((java.lang.Float) r0).floatValue() == com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) goto L_0x0334;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0380, code lost:
        if (((java.lang.Double) r0).doubleValue() == 0.0d) goto L_0x0334;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.google.android.gms.internal.ads.dot r7, java.lang.StringBuilder r8, int r9) {
        /*
            Method dump skipped, instructions count: 1125
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dou.a(com.google.android.gms.internal.ads.dot, java.lang.StringBuilder, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void a(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                a(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                a(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(dqd.a(dlw.a((String) obj)));
                sb.append('\"');
            } else if (obj instanceof dlw) {
                sb.append(": \"");
                sb.append(dqd.a((dlw) obj));
                sb.append('\"');
            } else if (obj instanceof dnh) {
                sb.append(" {");
                a((dnh) obj, sb, i + 2);
                sb.append(StringUtils.LF);
                for (int i3 = 0; i3 < i; i3++) {
                    sb.append(' ');
                }
                sb.append("}");
            } else if (obj instanceof Map.Entry) {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                a(sb, i4, "key", entry2.getKey());
                a(sb, i4, "value", entry2.getValue());
                sb.append(StringUtils.LF);
                for (int i5 = 0; i5 < i; i5++) {
                    sb.append(' ');
                }
                sb.append("}");
            } else {
                sb.append(": ");
                sb.append(obj.toString());
            }
        }
    }
}
