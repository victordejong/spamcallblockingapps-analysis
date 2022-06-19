package p134j4;

import java.io.File;
import p189o4.AbstractC3879p;
import p201p6.C4018c;
/* renamed from: j4.k0 */
/* loaded from: classes-dex2jar.jar:j4/k0.class */
public final class C3222k0 {

    /* renamed from: g */
    public static final C4018c f10858g = new C4018c("ExtractChunkTaskHandler");

    /* renamed from: a */
    public final byte[] f10859a = new byte[8192];

    /* renamed from: b */
    public final C3259w f10860b;

    /* renamed from: c */
    public final AbstractC3879p f10861c;

    /* renamed from: d */
    public final AbstractC3879p f10862d;

    /* renamed from: e */
    public final C3245r0 f10863e;

    /* renamed from: f */
    public final C3246r1 f10864f;

    public C3222k0(C3259w c3259w, AbstractC3879p abstractC3879p, AbstractC3879p abstractC3879p2, C3245r0 c3245r0, C3246r1 c3246r1) {
        this.f10860b = c3259w;
        this.f10861c = abstractC3879p;
        this.f10862d = abstractC3879p2;
        this.f10863e = c3245r0;
        this.f10864f = c3246r1;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:157|(3:12|13|(15:15|16|(2:18|(2:20|(7:22|23|24|(5:25|26|(1:28)|29|30)|165|32|(1:34)(2:35|36))(3:37|38|39))(3:40|41|(11:43|74|(9:76|(6:77|78|(2:82|(1:91)(4:86|(2:89|87)|170|90))|92|93|(1:95)(1:168))|169|97|98|(1:100)|101|102|(2:104|(1:106)(2:107|(1:109)(4:110|(2:112|(1:114)(2:115|116))(2:117|118)|119|120))))|122|123|(2:158|125)|129|155|130|133|(4:135|586|139|140)(1:145))(2:44|45)))(3:46|47|(6:49|(6:50|51|(1:53)|54|55|(1:57)(1:166))|167|59|60|(3:62|63|64))(2:67|68))|65|66|74|(0)|122|123|(0)|129|155|130|133|(0)(0))(3:69|70|71))|72|73|74|(0)|122|123|(0)|129|155|130|133|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0537, code lost:
        p134j4.C3222k0.f10858g.m1506f("Could not close file for chunk %s of slice %s of pack %s.", java.lang.Integer.valueOf(r15.f10850h), r15.f10848f, r15.f10747b);
     */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0565  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x05e2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x04a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02d4 A[Catch: all -> 0x0495, TRY_ENTER, TryCatch #3 {all -> 0x0495, blocks: (B:64:0x027f, B:67:0x028e, B:68:0x029d, B:69:0x029e, B:69:0x029e, B:70:0x02a1, B:71:0x02cc, B:76:0x02d4, B:78:0x02e5, B:80:0x02f5, B:82:0x02fc, B:84:0x0304, B:86:0x030c, B:89:0x0355, B:90:0x0372, B:91:0x037a, B:93:0x0389, B:95:0x038f, B:98:0x0397, B:100:0x039d, B:102:0x03ba, B:104:0x03c0, B:106:0x03cb, B:107:0x03ed, B:109:0x03f4, B:110:0x040e, B:112:0x0419, B:115:0x0458, B:116:0x0464, B:117:0x0465, B:117:0x0465, B:118:0x0468, B:120:0x0481), top: B:157:0x006b }] */
    /* JADX WARN: Type inference failed for: r0v102, types: [long] */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v181, types: [long] */
    /* JADX WARN: Type inference failed for: r0v190, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2537a(p134j4.C3218j0 r15) {
        /*
            Method dump skipped, instructions count: 1606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p134j4.C3222k0.m2537a(j4.j0):void");
    }

    /* renamed from: b */
    public final File m2536b(C3218j0 c3218j0) {
        File m2484s = this.f10860b.m2484s(c3218j0.f10747b, c3218j0.f10845c, c3218j0.f10846d, c3218j0.f10848f);
        if (!m2484s.exists()) {
            m2484s.mkdirs();
        }
        return m2484s;
    }
}
