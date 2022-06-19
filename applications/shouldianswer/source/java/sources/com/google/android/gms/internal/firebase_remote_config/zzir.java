package com.google.android.gms.internal.firebase_remote_config;

import io.fabric.sdk.android.services.p069c.AbstractC1507b;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzir.class */
public final class zzir {
    public static String zza(zziq zziqVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        zza(zziqVar, sb, 0);
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x0323, code lost:
        if (((java.lang.Boolean) r0).booleanValue() == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0326, code lost:
        r18 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0342, code lost:
        if (((java.lang.Integer) r0).intValue() == 0) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x035a, code lost:
        if (((java.lang.Float) r0).floatValue() == com.google.android.flexbox.FlexItem.FLEX_GROW_DEFAULT) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0372, code lost:
        if (((java.lang.Double) r0).doubleValue() == com.google.firebase.remoteconfig.FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) goto L80;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zza(com.google.android.gms.internal.firebase_remote_config.zziq r7, java.lang.StringBuilder r8, int r9) {
        /*
            Method dump skipped, instructions count: 1111
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zzir.zza(com.google.android.gms.internal.firebase_remote_config.zziq, java.lang.StringBuilder, int):void");
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
                sb.append(zzjt.zze(zzfx.zzbj((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzfx) {
                sb.append(": \"");
                sb.append(zzjt.zze((zzfx) obj));
                sb.append('\"');
            } else if (obj instanceof zzhi) {
                sb.append(" {");
                zza((zzhi) obj, sb, i + 2);
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

    private static final String zzbm(String str) {
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
