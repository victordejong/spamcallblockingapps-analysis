package p1727n3.p1874y.p1876b.p1877a.p1900u0.p1901b;

import com.tenor.android.core.constant.StringConstant;
import java.util.regex.Pattern;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.u0.b.b */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/u0/b/b.class */
public final class C27382b {

    /* renamed from: a */
    public static final Pattern f77069a = Pattern.compile("^NOTE(( |\t).*)?$");

    /* renamed from: a */
    public static boolean m435a(C27434m c27434m) {
        String m336e = c27434m.m336e();
        return m336e != null && m336e.startsWith("WEBVTT");
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* renamed from: b */
    public static long m434b(String str) throws NumberFormatException {
        int i = C27445x.f77229a;
        String[] split = str.split("\\.", 2);
        char c = 0;
        for (String str2 : C27445x.m292B(split[0], StringConstant.COLON)) {
            c = (c * '<') + Long.parseLong(str2);
        }
        ?? r0 = c * 1000;
        char c2 = r0;
        if (split.length == 2) {
            c2 = r0 + Long.parseLong(split[1]);
        }
        return c2 * 1000;
    }
}
