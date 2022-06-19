package com.google.protobuf;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import java.util.Map;
import p124i4.C3102d;
import p287x6.AbstractC4890c;
/* renamed from: com.google.protobuf.v */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/v.class */
public final class C1918v {
    /* renamed from: a */
    public static final String m4237a(String str) {
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

    /* renamed from: b */
    public static final void m4236b(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m4236b(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m4236b(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                AbstractC4890c abstractC4890c = AbstractC4890c.f14961b;
                sb.append(C3102d.m2622q(new AbstractC4890c.C4896f(((String) obj).getBytes(C1895k.f7092a))));
                sb.append('\"');
            } else if (obj instanceof AbstractC4890c) {
                sb.append(": \"");
                sb.append(C3102d.m2622q((AbstractC4890c) obj));
                sb.append('\"');
            } else if (obj instanceof AbstractC1888i) {
                sb.append(" {");
                m4235c((AbstractC1888i) obj, sb, i + 2);
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
                m4236b(sb, i4, "key", entry2.getKey());
                m4236b(sb, i4, AppMeasurementSdk.ConditionalUserProperty.VALUE, entry2.getValue());
                sb.append("\n");
                for (int i5 = 0; i5 < i; i5++) {
                    sb.append(' ');
                }
                sb.append("}");
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x02e4, code lost:
        if (((java.lang.Integer) r0).intValue() == 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x02fc, code lost:
        if (((java.lang.Float) r0).floatValue() == 0.0f) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0314, code lost:
        if (((java.lang.Double) r0).doubleValue() == 0.0d) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0371, code lost:
        r18 = true;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m4235c(com.google.protobuf.AbstractC1916u r7, java.lang.StringBuilder r8, int r9) {
        /*
            Method dump skipped, instructions count: 1075
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C1918v.m4235c(com.google.protobuf.u, java.lang.StringBuilder, int):void");
    }
}
