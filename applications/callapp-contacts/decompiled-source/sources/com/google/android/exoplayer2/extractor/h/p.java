package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.a;
import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.u;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/p.class */
public final class p implements j {

    /* renamed from: a  reason: collision with root package name */
    private final String f21246a;

    /* renamed from: b  reason: collision with root package name */
    private final u f21247b;

    /* renamed from: c  reason: collision with root package name */
    private final t f21248c;

    /* renamed from: d  reason: collision with root package name */
    private x f21249d;
    private String e;
    private Format f;
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
    private String u;

    public p(String str) {
        this.f21246a = str;
        u uVar = new u(1024);
        this.f21247b = uVar;
        this.f21248c = new t(uVar.f22335a);
    }

    private int a(t tVar) throws ParserException {
        int a2 = tVar.a();
        a.C0421a a3 = a.a(tVar, true);
        this.u = a3.f20728c;
        this.r = a3.f20726a;
        this.t = a3.f20727b;
        return a2 - tVar.a();
    }

    private int b(t tVar) throws ParserException {
        int c2;
        int i;
        if (this.o == 0) {
            int i2 = 0;
            do {
                c2 = tVar.c(8);
                i = i2 + c2;
                i2 = i;
            } while (c2 == 255);
            return i;
        }
        throw new ParserException();
    }

    private static long c(t tVar) {
        return tVar.c((tVar.c(2) + 1) * 8);
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a() {
        this.g = 0;
        this.l = false;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(long j, int i) {
        this.k = j;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(j jVar, ad.d dVar) {
        dVar.a();
        this.f21249d = jVar.a(dVar.b(), 1);
        this.e = dVar.c();
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x0247, code lost:
        if (r8.l != false) goto L_0x024a;
     */
    @Override // com.google.android.exoplayer2.extractor.h.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.google.android.exoplayer2.util.u r9) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 897
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.h.p.a(com.google.android.exoplayer2.util.u):void");
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void b() {
    }
}
