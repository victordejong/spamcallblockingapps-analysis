package p081h.p203i.p204a.p224e.p259j.p271l;

import androidx.core.app.Person;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.util.List;
import java.util.Map;
import p459j.p460a.p541n0.C13032a;
/* renamed from: h.i.a.e.j.l.za */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/za.class */
public final class C8483za {
    /* renamed from: a */
    public static String m17907a(AbstractC8390ua uaVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        m17906a(uaVar, sb, 0);
        return sb.toString();
    }

    /* renamed from: a */
    public static final String m17905a(String str) {
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

    /* JADX WARN: Code restructure failed: missing block: B:83:0x032a, code lost:
        if (((java.lang.Boolean) r0).booleanValue() == false) goto L_0x032d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x032d, code lost:
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0349, code lost:
        if (((java.lang.Integer) r0).intValue() == 0) goto L_0x032d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0361, code lost:
        if (((java.lang.Float) r0).floatValue() == 0.0f) goto L_0x032d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0379, code lost:
        if (((java.lang.Double) r0).doubleValue() == 0.0d) goto L_0x032d;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m17906a(p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8390ua r7, java.lang.StringBuilder r8, int r9) {
        /*
            Method dump skipped, instructions count: 1117
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p271l.C8483za.m17906a(h.i.a.e.j.l.ua, java.lang.StringBuilder, int):void");
    }

    /* renamed from: a */
    public static final void m17904a(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m17904a(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m17904a(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(C7990a.m18701a(AbstractC8209k8.m18380a((String) obj)));
                sb.append('\"');
            } else if (obj instanceof AbstractC8209k8) {
                sb.append(": \"");
                sb.append(C7990a.m18701a((AbstractC8209k8) obj));
                sb.append('\"');
            } else if (obj instanceof AbstractC8228l9) {
                sb.append(" {");
                m17906a((AbstractC8228l9) obj, sb, i + 2);
                sb.append("\n");
                for (int i3 = 0; i3 < i; i3++) {
                    sb.append(' ');
                }
                sb.append(CssParser.BLOCK_END);
            } else if (obj instanceof Map.Entry) {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                m17904a(sb, i4, Person.KEY_KEY, entry2.getKey());
                m17904a(sb, i4, C13032a.f29462d, entry2.getValue());
                sb.append("\n");
                for (int i5 = 0; i5 < i; i5++) {
                    sb.append(' ');
                }
                sb.append(CssParser.BLOCK_END);
            } else {
                sb.append(": ");
                sb.append(obj.toString());
            }
        }
    }
}
