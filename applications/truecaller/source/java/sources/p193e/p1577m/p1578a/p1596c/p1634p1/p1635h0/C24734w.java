package p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0;

import com.tenor.android.core.constant.StringConstant;
import java.io.File;
import java.util.regex.Pattern;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.c.p1.h0.w */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/w.class */
public final class C24734w extends C24718l {

    /* renamed from: g */
    public static final Pattern f69320g = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);

    /* renamed from: h */
    public static final Pattern f69321h = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);

    /* renamed from: i */
    public static final Pattern f69322i = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);

    public C24734w(String str, long j, long j2, long j3, File file) {
        super(str, j, j2, j3, file);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0106, code lost:
        if (r17 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0165, code lost:
        if (r11.renameTo(r0) == false) goto L32;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24734w m4691c(java.io.File r11, long r12, long r14, p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24723o r16) {
        /*
            Method dump skipped, instructions count: 511
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24734w.m4691c(java.io.File, long, long, e.m.a.c.p1.h0.o):e.m.a.c.p1.h0.w");
    }

    /* renamed from: d */
    public static File m4690d(File file, int i, long j, long j2) {
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append(StringConstant.DOT);
        sb.append(j);
        sb.append(StringConstant.DOT);
        return new File(file, C22128a.m8693K2(sb, j2, ".v3.exo"));
    }
}
