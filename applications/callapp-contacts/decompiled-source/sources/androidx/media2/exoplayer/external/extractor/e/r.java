package androidx.media2.exoplayer.external.extractor.e;

import android.util.Pair;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.c;
import androidx.media2.exoplayer.external.util.o;
import androidx.media2.exoplayer.external.util.p;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/r.class */
public final class r implements m {

    /* renamed from: a  reason: collision with root package name */
    private final String f3250a;

    /* renamed from: b  reason: collision with root package name */
    private final p f3251b;

    /* renamed from: c  reason: collision with root package name */
    private final o f3252c;

    /* renamed from: d  reason: collision with root package name */
    private q f3253d;
    private Format e;
    private String f;
    private int g;
    private int h;
    private int i;
    private int j;
    private long k;
    private boolean l;
    private int m;
    private int n;
    private int o;
    private boolean p;
    private long q;
    private int r;
    private long s;
    private int t;

    public r(String str) {
        this.f3250a = str;
        p pVar = new p(1024);
        this.f3251b = pVar;
        this.f3252c = new o(pVar.f4166a);
    }

    private int a(o oVar) throws ParserException {
        int a2 = oVar.a();
        Pair<Integer, Integer> a3 = c.a(oVar, true);
        this.r = ((Integer) a3.first).intValue();
        this.t = ((Integer) a3.second).intValue();
        return a2 - oVar.a();
    }

    private int b(o oVar) throws ParserException {
        int c2;
        int i;
        if (this.o == 0) {
            int i2 = 0;
            do {
                c2 = oVar.c(8);
                i = i2 + c2;
                i2 = i;
            } while (c2 == 255);
            return i;
        }
        throw new ParserException();
    }

    private static long c(o oVar) {
        return oVar.c((oVar.c(2) + 1) * 8);
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a() {
        this.g = 0;
        this.l = false;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(long j, int i) {
        this.k = j;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(i iVar, ah.d dVar) {
        dVar.a();
        this.f3253d = iVar.a(dVar.b(), 1);
        this.f = dVar.c();
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x0212, code lost:
        if (r12.l != false) goto L_0x0215;
     */
    @Override // androidx.media2.exoplayer.external.extractor.e.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(androidx.media2.exoplayer.external.util.p r13) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 843
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.e.r.a(androidx.media2.exoplayer.external.util.p):void");
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void b() {
    }
}
