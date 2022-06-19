package com.google.android.exoplayer2.p243c1.p248e0;

import android.util.Pair;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.e0.d */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/e0/d.class */
final class C4973d {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.c1.e0.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/e0/d$a.class */
    public static final class C4974a {

        /* renamed from: a */
        public final int f15478a;

        /* renamed from: b */
        public final long f15479b;

        private C4974a(int i, long j) {
            this.f15478a = i;
            this.f15479b = j;
        }

        /* renamed from: a */
        public static C4974a m21011a(AbstractC4979i abstractC4979i, C5536v c5536v) {
            abstractC4979i.mo21000j(c5536v.f17941a, 0, 8);
            c5536v.m18680M(0);
            return new C4974a(c5536v.m18668k(), c5536v.m18663p());
        }
    }

    /* renamed from: a */
    public static C4972c m21013a(AbstractC4979i abstractC4979i) {
        C4974a c4974a;
        byte[] bArr;
        C5508e.m18911e(abstractC4979i);
        C5536v c5536v = new C5536v(16);
        if (C4974a.m21011a(abstractC4979i, c5536v).f15478a != 1380533830) {
            return null;
        }
        abstractC4979i.mo21000j(c5536v.f17941a, 0, 4);
        c5536v.m18680M(0);
        int m18668k = c5536v.m18668k();
        if (m18668k != 1463899717) {
            C5526o.m18745c("WavHeaderReader", "Unsupported RIFF format: " + m18668k);
            return null;
        }
        C4974a m21011a = C4974a.m21011a(abstractC4979i, c5536v);
        while (true) {
            c4974a = m21011a;
            if (c4974a.f15478a == 1718449184) {
                break;
            }
            abstractC4979i.mo21006d((int) c4974a.f15479b);
            m21011a = C4974a.m21011a(abstractC4979i, c5536v);
        }
        C5508e.m18910f(c4974a.f15479b >= 16);
        abstractC4979i.mo21000j(c5536v.f17941a, 0, 16);
        c5536v.m18680M(0);
        int m18661r = c5536v.m18661r();
        int m18661r2 = c5536v.m18661r();
        int m18662q = c5536v.m18662q();
        int m18662q2 = c5536v.m18662q();
        int m18661r3 = c5536v.m18661r();
        int m18661r4 = c5536v.m18661r();
        int i = ((int) c4974a.f15479b) - 16;
        if (i > 0) {
            byte[] bArr2 = new byte[i];
            abstractC4979i.mo21000j(bArr2, 0, i);
            bArr = bArr2;
        } else {
            bArr = C5515h0.f17881f;
        }
        return new C4972c(m18661r, m18661r2, m18662q, m18662q2, m18661r3, m18661r4, bArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* renamed from: b */
    public static Pair<Long, Long> m21012b(AbstractC4979i abstractC4979i) {
        C5508e.m18911e(abstractC4979i);
        abstractC4979i.mo21003g();
        C5536v c5536v = new C5536v(8);
        C4974a m21011a = C4974a.m21011a(abstractC4979i, c5536v);
        while (true) {
            C4974a c4974a = m21011a;
            int i = c4974a.f15478a;
            if (i == 1684108385) {
                abstractC4979i.mo21002h(8);
                long mo20999k = abstractC4979i.mo20999k();
                ?? r0 = c4974a.f15479b + mo20999k;
                ?? length = abstractC4979i.getLength();
                char c = r0;
                if (length != -1) {
                    c = r0;
                    if (r0 > length) {
                        C5526o.m18742f("WavHeaderReader", "Data exceeds input length: " + ((long) r0) + ", " + ((long) length));
                        c = length;
                    }
                }
                return Pair.create(Long.valueOf(mo20999k), Long.valueOf(c));
            }
            if (i != 1380533830 && i != 1718449184) {
                C5526o.m18742f("WavHeaderReader", "Ignoring unknown WAV chunk: " + c4974a.f15478a);
            }
            char c2 = c4974a.f15479b + 8;
            if (c4974a.f15478a == 1380533830) {
                c2 = '\f';
            }
            if (c2 > 2147483647L) {
                throw new ParserException("Chunk is too large (~2GB+) to skip; id: " + c4974a.f15478a);
            }
            abstractC4979i.mo21002h(c2);
            m21011a = C4974a.m21011a(abstractC4979i, c5536v);
        }
    }
}
