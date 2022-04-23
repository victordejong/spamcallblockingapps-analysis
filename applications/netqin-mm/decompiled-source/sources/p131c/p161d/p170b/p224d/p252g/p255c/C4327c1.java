package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzbb;
import com.google.android.gms.internal.clearcut.zzcg;
import com.google.android.gms.internal.clearcut.zzdo;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.c.c1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/c1.class */
public final class C4327c1 {
    /* renamed from: a */
    public static String m25988a(zzdo zzdoVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        m25987a(zzdoVar, sb, 0);
        return sb.toString();
    }

    /* renamed from: a */
    public static final String m25986a(String str) {
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

    /* JADX WARN: Code restructure failed: missing block: B:79:0x0327, code lost:
        if (((java.lang.Boolean) r0).booleanValue() == false) goto L_0x032a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x032a, code lost:
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0346, code lost:
        if (((java.lang.Integer) r0).intValue() == 0) goto L_0x032a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x035e, code lost:
        if (((java.lang.Float) r0).floatValue() == 0.0f) goto L_0x032a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0376, code lost:
        if (((java.lang.Double) r0).doubleValue() == 0.0d) goto L_0x032a;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m25987a(com.google.android.gms.internal.clearcut.zzdo r7, java.lang.StringBuilder r8, int r9) {
        /*
            Method dump skipped, instructions count: 1168
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p255c.C4327c1.m25987a(com.google.android.gms.internal.clearcut.zzdo, java.lang.StringBuilder, int):void");
    }

    /* renamed from: a */
    public static final void m25985a(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m25985a(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m25985a(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(C4328c2.m25984a(zzbb.zzf((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzbb) {
                sb.append(": \"");
                sb.append(C4328c2.m25984a((zzbb) obj));
                sb.append('\"');
            } else if (obj instanceof zzcg) {
                sb.append(" {");
                m25987a((zzcg) obj, sb, i + 2);
                sb.append("\n");
                for (int i3 = 0; i3 < i; i3++) {
                    sb.append(' ');
                }
                sb.append("}");
            } else if (obj instanceof Map.Entry) {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                m25985a(sb, i4, "key", entry2.getKey());
                m25985a(sb, i4, "value", entry2.getValue());
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
