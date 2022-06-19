package p225r9;

import p204p9.AbstractC4125t;
import p204p9.C4084b0;
/* renamed from: r9.b */
/* loaded from: classes2-dex2jar.jar:r9/b.class */
public final class C4239b implements AbstractC4125t {

    /* renamed from: a */
    public final AbstractC4250g f13282a;

    public C4239b(AbstractC4250g abstractC4250g) {
        this.f13282a = abstractC4250g;
    }

    /* renamed from: b */
    public static boolean m1256b(String str) {
        return "Content-Length".equalsIgnoreCase(str) || "Content-Encoding".equalsIgnoreCase(str) || "Content-Type".equalsIgnoreCase(str);
    }

    /* renamed from: c */
    public static boolean m1255c(String str) {
        return !"Connection".equalsIgnoreCase(str) && !"Keep-Alive".equalsIgnoreCase(str) && !"Proxy-Authenticate".equalsIgnoreCase(str) && !"Proxy-Authorization".equalsIgnoreCase(str) && !"TE".equalsIgnoreCase(str) && !"Trailers".equalsIgnoreCase(str) && !"Transfer-Encoding".equalsIgnoreCase(str) && !"Upgrade".equalsIgnoreCase(str);
    }

    /* renamed from: d */
    public static C4084b0 m1254d(C4084b0 c4084b0) {
        C4084b0 c4084b02 = c4084b0;
        if (c4084b0 != null) {
            c4084b02 = c4084b0;
            if (c4084b0.f12803g != null) {
                C4084b0.C4085a c4085a = new C4084b0.C4085a(c4084b0);
                c4085a.f12816g = null;
                c4084b02 = c4085a.m1434b();
            }
        }
        return c4084b02;
    }

    /* JADX WARN: Code restructure failed: missing block: B:90:0x0451, code lost:
        if (r0 > 0) goto L106;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0a19  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0a1e  */
    /* JADX WARN: Type inference failed for: r0v346, types: [long] */
    /* JADX WARN: Type inference failed for: r0v349, types: [long] */
    /* JADX WARN: Type inference failed for: r0v351, types: [long] */
    /* JADX WARN: Type inference failed for: r0v367, types: [long] */
    /* JADX WARN: Type inference failed for: r0v369, types: [long] */
    /* JADX WARN: Type inference failed for: r0v378, types: [long] */
    /* JADX WARN: Type inference failed for: r0v382, types: [long] */
    /* JADX WARN: Type inference failed for: r0v384, types: [long] */
    /* JADX WARN: Type inference failed for: r0v386, types: [long] */
    /* JADX WARN: Type inference failed for: r0v389, types: [long] */
    /* JADX WARN: Type inference failed for: r0v410, types: [long] */
    /* JADX WARN: Type inference failed for: r0v412, types: [long] */
    @Override // p204p9.AbstractC4125t
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p204p9.C4084b0 mo921a(p204p9.AbstractC4125t.AbstractC4126a r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2764
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p225r9.C4239b.mo921a(p9.t$a):p9.b0");
    }
}
