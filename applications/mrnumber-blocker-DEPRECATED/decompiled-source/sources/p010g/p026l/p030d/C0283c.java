package p010g.p026l.p030d;

import java.util.Locale;
/* renamed from: g.l.d.c */
/* loaded from: classes2-dex2jar.jar:g/l/d/c.class */
public class C0283c {
    /* renamed from: a */
    public static String m488a(Long l) {
        return m487b(l, true);
    }

    /* renamed from: b */
    public static String m487b(Long l, boolean z) {
        String str = "";
        if (l == null || l.longValue() < 0) {
            return "";
        }
        int i = z ? 1000 : 1024;
        if (l.longValue() < i) {
            return l + " B";
        }
        double d = i;
        int log = (int) (Math.log(l.longValue()) / Math.log(d));
        StringBuilder sb = new StringBuilder();
        sb.append((z ? "kMGTPE" : "KMGTPE").charAt(log - 1));
        if (!z) {
            str = "i";
        }
        sb.append(str);
        return String.format(Locale.US, "%.1f %sB", Double.valueOf(l.longValue() / Math.pow(d, log)), sb.toString());
    }
}
