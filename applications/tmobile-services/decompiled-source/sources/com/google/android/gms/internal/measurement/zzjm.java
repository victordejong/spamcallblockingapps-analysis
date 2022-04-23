package com.google.android.gms.internal.measurement;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjm.class */
public final class zzjm {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m12280a(zzjh zzjhVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        m12278c(zzjhVar, sb, 0);
        return sb.toString();
    }

    /* renamed from: b */
    private static final String m12279b(String str) {
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
        if (((java.lang.Float) r0).floatValue() == 0.0f) goto L_0x0334;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0380, code lost:
        if (((java.lang.Double) r0).doubleValue() == 0.0d) goto L_0x0334;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m12278c(com.google.android.gms.internal.measurement.zzjh r7, java.lang.StringBuilder r8, int r9) {
        /*
            Method dump skipped, instructions count: 1125
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzjm.m12278c(com.google.android.gms.internal.measurement.zzjh, java.lang.StringBuilder, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static final void m12277d(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m12277d(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m12277d(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(zzkn.m12135a(zzgr.m12634h((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzgr) {
                sb.append(": \"");
                sb.append(zzkn.m12135a((zzgr) obj));
                sb.append('\"');
            } else if (obj instanceof zzhz) {
                sb.append(" {");
                m12278c((zzhz) obj, sb, i + 2);
                sb.append("\n");
                for (int i3 = 0; i3 < i; i3++) {
                    sb.append(' ');
                }
                sb.append("}");
            } else if (obj instanceof Map.Entry) {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                m12277d(sb, i4, "key", entry2.getKey());
                m12277d(sb, i4, FirebaseAnalytics.Param.VALUE, entry2.getValue());
                sb.append("\n");
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
