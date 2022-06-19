package com.google.android.exoplayer2.extractor.p333g;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11628u;
import java.io.EOFException;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.g.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/e.class */
final class C11062e {

    /* renamed from: a */
    public int f36030a;

    /* renamed from: b */
    public int f36031b;

    /* renamed from: c */
    public long f36032c;

    /* renamed from: d */
    public long f36033d;

    /* renamed from: e */
    public long f36034e;

    /* renamed from: f */
    public long f36035f;

    /* renamed from: g */
    public int f36036g;

    /* renamed from: h */
    public int f36037h;

    /* renamed from: i */
    public int f36038i;

    /* renamed from: j */
    public final int[] f36039j = new int[255];

    /* renamed from: k */
    private final C11628u f36040k = new C11628u(255);

    /* renamed from: a */
    private static boolean m21563a(AbstractC11121i abstractC11121i, byte[] bArr, int i, boolean z) throws IOException {
        try {
            return abstractC11121i.mo21399b(bArr, 0, i, z);
        } catch (EOFException e) {
            if (!z) {
                throw e;
            }
            return false;
        }
    }

    /* renamed from: a */
    public final void m21567a() {
        this.f36030a = 0;
        this.f36031b = 0;
        this.f36032c = 0L;
        this.f36033d = 0L;
        this.f36034e = 0L;
        this.f36035f = 0L;
        this.f36036g = 0;
        this.f36037h = 0;
        this.f36038i = 0;
    }

    /* renamed from: a */
    public final boolean m21566a(AbstractC11121i abstractC11121i) throws IOException {
        return m21565a(abstractC11121i, -1L);
    }

    /* renamed from: a */
    public final boolean m21565a(AbstractC11121i abstractC11121i, long j) throws IOException {
        int i;
        C11593a.m20022a(abstractC11121i.mo21398c() == abstractC11121i.mo21402b());
        this.f36040k.m19811a(4);
        while (true) {
            i = (j > (-1L) ? 1 : (j == (-1L) ? 0 : -1));
            if ((i == 0 || abstractC11121i.mo21398c() + 4 < j) && m21563a(abstractC11121i, this.f36040k.f38733a, 4, true)) {
                this.f36040k.m19801d(0);
                if (this.f36040k.m19794h() == 1332176723) {
                    abstractC11121i.mo21406a();
                    return true;
                }
                abstractC11121i.mo21401b(1);
            }
        }
        do {
            if (i != 0 && abstractC11121i.mo21398c() >= j) {
                return false;
            }
        } while (abstractC11121i.mo21405a(1) != -1);
        return false;
    }

    /* renamed from: a */
    public final boolean m21564a(AbstractC11121i abstractC11121i, boolean z) throws IOException {
        m21567a();
        this.f36040k.m19811a(27);
        if (!m21563a(abstractC11121i, this.f36040k.f38733a, 27, z) || this.f36040k.m19794h() != 1332176723) {
            return false;
        }
        int m19804c = this.f36040k.m19804c();
        this.f36030a = m19804c;
        if (m19804c != 0) {
            if (!z) {
                throw new ParserException("unsupported bit stream revision");
            }
            return false;
        }
        this.f36031b = this.f36040k.m19804c();
        this.f36032c = this.f36040k.m19789m();
        this.f36033d = this.f36040k.m19793i();
        this.f36034e = this.f36040k.m19793i();
        this.f36035f = this.f36040k.m19793i();
        int m19804c2 = this.f36040k.m19804c();
        this.f36036g = m19804c2;
        this.f36037h = m19804c2 + 27;
        this.f36040k.m19811a(m19804c2);
        abstractC11121i.mo21394d(this.f36040k.f38733a, 0, this.f36036g);
        for (int i = 0; i < this.f36036g; i++) {
            this.f36039j[i] = this.f36040k.m19804c();
            this.f36038i += this.f36039j[i];
        }
        return true;
    }
}
