package com.google.android.exoplayer2.extractor.g;

import com.google.android.exoplayer2.extractor.g.h;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.extractor.o;
import com.google.android.exoplayer2.extractor.p;
import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.u;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/b.class */
final class b extends h {
    private p j;
    private a k;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/b$a.class */
    static final class a implements f {

        /* renamed from: b  reason: collision with root package name */
        private p f21112b;

        /* renamed from: c  reason: collision with root package name */
        private p.a f21113c;

        /* renamed from: a  reason: collision with root package name */
        long f21111a = -1;

        /* renamed from: d  reason: collision with root package name */
        private long f21114d = -1;

        public a(p pVar, p.a aVar) {
            this.f21112b = pVar;
            this.f21113c = aVar;
        }

        @Override // com.google.android.exoplayer2.extractor.g.f
        public final long a(i iVar) {
            long j = this.f21114d;
            if (j < 0) {
                return -1L;
            }
            long j2 = -(j + 2);
            this.f21114d = -1L;
            return j2;
        }

        @Override // com.google.android.exoplayer2.extractor.g.f
        public final v a() {
            com.google.android.exoplayer2.util.a.b(this.f21111a != -1);
            return new o(this.f21112b, this.f21111a);
        }

        @Override // com.google.android.exoplayer2.extractor.g.f
        public final void a(long j) {
            long[] jArr = this.f21113c.f21317a;
            this.f21114d = jArr[af.a(jArr, j, true)];
        }
    }

    public static boolean a(u uVar) {
        return uVar.a() >= 5 && uVar.c() == 127 && uVar.h() == 1179402563;
    }

    private static boolean a(byte[] bArr) {
        return bArr[0] == -1;
    }

    @Override // com.google.android.exoplayer2.extractor.g.h
    protected final void a(boolean z) {
        super.a(z);
        if (z) {
            this.j = null;
            this.k = null;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.g.h
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected final boolean a(u uVar, long j, h.a aVar) {
        byte[] bArr = uVar.f22335a;
        p pVar = this.j;
        if (pVar == null) {
            p pVar2 = new p(bArr, 17);
            this.j = pVar2;
            aVar.f21131a = pVar2.a(Arrays.copyOfRange(bArr, 9, uVar.f22337c), (Metadata) null);
            return true;
        } else if ((bArr[0] & Byte.MAX_VALUE) == 3) {
            p.a a2 = n.a(uVar);
            p a3 = pVar.a(a2);
            this.j = a3;
            this.k = new a(a3, a2);
            return true;
        } else if (!a(bArr)) {
            return true;
        } else {
            a aVar2 = this.k;
            if (aVar2 != null) {
                aVar2.f21111a = j;
                aVar.f21132b = this.k;
            }
            com.google.android.exoplayer2.util.a.b(aVar.f21131a);
            return false;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.g.h
    protected final long b(u uVar) {
        if (!a(uVar.f22335a)) {
            return -1L;
        }
        int i = (uVar.f22335a[2] & 255) >> 4;
        if (i == 6 || i == 7) {
            uVar.e(4);
            uVar.u();
        }
        int a2 = m.a(uVar, i);
        uVar.d(0);
        return a2;
    }
}
