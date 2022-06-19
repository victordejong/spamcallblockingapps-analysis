package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzfr;
import io.fabric.sdk.android.services.p069c.AbstractC1507b;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzfs.class */
public final class zzfs {
    public static String zza(zzfr zzfrVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        zza(zzfrVar, sb, 0);
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x032a, code lost:
        if (((java.lang.Boolean) r0).booleanValue() == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x032d, code lost:
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0349, code lost:
        if (((java.lang.Integer) r0).intValue() == 0) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0361, code lost:
        if (((java.lang.Float) r0).floatValue() == com.google.android.flexbox.FlexItem.FLEX_GROW_DEFAULT) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0379, code lost:
        if (((java.lang.Double) r0).doubleValue() == com.google.firebase.remoteconfig.FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) goto L84;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zza(com.google.android.gms.internal.firebase-perf.zzfr r7, java.lang.StringBuilder r8, int r9) {
        /*
            Method dump skipped, instructions count: 1120
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_perf.zzfs.zza(com.google.android.gms.internal.firebase-perf.zzfr, java.lang.StringBuilder, int):void");
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
                sb.append(zzgs.zzd(zzdd.zzae((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzdd) {
                sb.append(": \"");
                sb.append(zzgs.zzd((zzdd) obj));
                sb.append('\"');
            } else if (obj instanceof zzeh) {
                sb.append(" {");
                zza((zzeh) obj, sb, i + 2);
                sb.append("\n");
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
                zza(sb, i4, "key", entry2.getKey());
                zza(sb, i4, "value", entry2.getValue());
                sb.append("\n");
                for (int i5 = 0; i5 < i; i5++) {
                    sb.append(' ');
                }
                sb.append("}");
            }
        }
    }

    private static final String zzah(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append(AbstractC1507b.ROLL_OVER_FILE_NAME_SEPARATOR);
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }
}
