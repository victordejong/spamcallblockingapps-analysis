package com.google.android.exoplayer2.extractor.p330d;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.util.C11593a;
import java.io.IOException;
import java.util.ArrayDeque;
/* renamed from: com.google.android.exoplayer2.extractor.d.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/d/a.class */
final class C10999a implements AbstractC11003c {

    /* renamed from: a */
    private final byte[] f35602a = new byte[8];

    /* renamed from: b */
    private final ArrayDeque<C11001a> f35603b = new ArrayDeque<>();

    /* renamed from: c */
    private final C11010f f35604c = new C11010f();

    /* renamed from: d */
    private AbstractC11002b f35605d;

    /* renamed from: e */
    private int f35606e;

    /* renamed from: f */
    private int f35607f;

    /* renamed from: g */
    private long f35608g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.extractor.d.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/d/a$a.class */
    public static final class C11001a {

        /* renamed from: a */
        final int f35609a;

        /* renamed from: b */
        final long f35610b;

        private C11001a(int i, long j) {
            this.f35609a = i;
            this.f35610b = j;
        }
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: a */
    private long m21750a(AbstractC11121i abstractC11121i, int i) throws IOException {
        abstractC11121i.mo21400b(this.f35602a, 0, i);
        char c = 0;
        for (int i2 = 0; i2 < i; i2++) {
            c = (c << '\b') | (this.f35602a[i2] & 255);
        }
        return c;
    }

    /* renamed from: b */
    private static String m21749b(AbstractC11121i abstractC11121i, int i) throws IOException {
        if (i == 0) {
            return "";
        }
        byte[] bArr = new byte[i];
        abstractC11121i.mo21400b(bArr, 0, i);
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        return new String(bArr, 0, i);
    }

    @Override // com.google.android.exoplayer2.extractor.p330d.AbstractC11003c
    /* renamed from: a */
    public final void mo21748a() {
        this.f35606e = 0;
        this.f35603b.clear();
        this.f35604c.m21712a();
    }

    @Override // com.google.android.exoplayer2.extractor.p330d.AbstractC11003c
    /* renamed from: a */
    public final void mo21747a(AbstractC11002b abstractC11002b) {
        this.f35605d = abstractC11002b;
    }

    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [double] */
    /* JADX WARN: Type inference failed for: r0v81, types: [double] */
    /* JADX WARN: Type inference failed for: r0v94, types: [long] */
    @Override // com.google.android.exoplayer2.extractor.p330d.AbstractC11003c
    /* renamed from: a */
    public final boolean mo21746a(AbstractC11121i abstractC11121i) throws IOException {
        long m21750a;
        int m21711a;
        int m21709a;
        C11593a.m20024a(this.f35605d);
        while (true) {
            C11001a peek = this.f35603b.peek();
            if (peek != null && abstractC11121i.mo21398c() >= peek.f35610b) {
                this.f35605d.mo21720c(this.f35603b.pop().f35609a);
                return true;
            }
            if (this.f35606e == 0) {
                ?? m21710a = this.f35604c.m21710a(abstractC11121i, true, false, 4);
                char c = m21710a;
                if (m21710a == -2) {
                    abstractC11121i.mo21406a();
                    while (true) {
                        abstractC11121i.mo21394d(this.f35602a, 0, 4);
                        m21711a = C11010f.m21711a(this.f35602a[0]);
                        if (m21711a != -1 && m21711a <= 4) {
                            m21709a = (int) C11010f.m21709a(this.f35602a, m21711a, false);
                            if (this.f35605d.mo21721b(m21709a)) {
                                break;
                            }
                        }
                        abstractC11121i.mo21401b(1);
                    }
                    abstractC11121i.mo21401b(m21711a);
                    c = m21709a;
                }
                if (c == -1) {
                    return false;
                }
                this.f35607f = c;
                this.f35606e = 1;
            }
            if (this.f35606e == 1) {
                this.f35608g = this.f35604c.m21710a(abstractC11121i, false, true, 8);
                this.f35606e = 2;
            }
            int mo21727a = this.f35605d.mo21727a(this.f35607f);
            if (mo21727a != 0) {
                if (mo21727a == 1) {
                    long mo21398c = abstractC11121i.mo21398c();
                    this.f35603b.push(new C11001a(this.f35607f, this.f35608g + mo21398c));
                    this.f35605d.mo21723a(this.f35607f, mo21398c, this.f35608g);
                    this.f35606e = 0;
                    return true;
                } else if (mo21727a == 2) {
                    long j = this.f35608g;
                    if (j <= 8) {
                        this.f35605d.mo21724a(this.f35607f, m21750a(abstractC11121i, (int) j));
                        this.f35606e = 0;
                        return true;
                    }
                    throw new ParserException("Invalid integer size: " + this.f35608g);
                } else if (mo21727a == 3) {
                    long j2 = this.f35608g;
                    if (j2 <= 2147483647L) {
                        this.f35605d.mo21722a(this.f35607f, m21749b(abstractC11121i, (int) j2));
                        this.f35606e = 0;
                        return true;
                    }
                    throw new ParserException("String element size: " + this.f35608g);
                } else if (mo21727a == 4) {
                    this.f35605d.mo21725a(this.f35607f, (int) this.f35608g, abstractC11121i);
                    this.f35606e = 0;
                    return true;
                } else if (mo21727a != 5) {
                    throw new ParserException("Invalid element type ".concat(String.valueOf(mo21727a)));
                } else {
                    long j3 = this.f35608g;
                    if (j3 != 4 && j3 != 8) {
                        throw new ParserException("Invalid float size: " + this.f35608g);
                    }
                    int i = (int) j3;
                    this.f35605d.mo21726a(this.f35607f, (double) (i == 4 ? Float.intBitsToFloat((int) m21750a) : Double.longBitsToDouble(m21750a(abstractC11121i, i))));
                    this.f35606e = 0;
                    return true;
                }
            }
            abstractC11121i.mo21401b((int) this.f35608g);
            this.f35606e = 0;
        }
    }
}
