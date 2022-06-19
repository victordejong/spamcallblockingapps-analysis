package com.google.android.exoplayer2.extractor.p333g;

import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11628u;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.g.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/d.class */
final class C11061d {

    /* renamed from: a */
    final C11062e f36025a = new C11062e();

    /* renamed from: b */
    final C11628u f36026b = new C11628u(new byte[65025], 0);

    /* renamed from: c */
    int f36027c = -1;

    /* renamed from: d */
    boolean f36028d;

    /* renamed from: e */
    private int f36029e;

    /* renamed from: a */
    private int m21569a(int i) {
        int i2;
        int i3;
        int i4 = 0;
        this.f36029e = 0;
        do {
            i2 = i4;
            if (this.f36029e + i >= this.f36025a.f36036g) {
                break;
            }
            int[] iArr = this.f36025a.f36039j;
            int i5 = this.f36029e;
            this.f36029e = i5 + 1;
            i3 = iArr[i5 + i];
            i2 = i4 + i3;
            i4 = i2;
        } while (i3 == 255);
        return i2;
    }

    /* renamed from: a */
    public final boolean m21568a(AbstractC11121i abstractC11121i) throws IOException {
        int i;
        C11593a.m20019b(abstractC11121i != null);
        if (this.f36028d) {
            this.f36028d = false;
            this.f36026b.m19811a(0);
        }
        while (!this.f36028d) {
            if (this.f36027c < 0) {
                if (!this.f36025a.m21566a(abstractC11121i) || !this.f36025a.m21564a(abstractC11121i, true)) {
                    return false;
                }
                int i2 = this.f36025a.f36037h;
                if ((this.f36025a.f36031b & 1) == 1 && this.f36026b.f38735c == 0) {
                    i2 += m21569a(0);
                    i = this.f36029e + 0;
                } else {
                    i = 0;
                }
                abstractC11121i.mo21401b(i2);
                this.f36027c = i;
            }
            int m21569a = m21569a(this.f36027c);
            int i3 = this.f36027c + this.f36029e;
            if (m21569a > 0) {
                C11628u c11628u = this.f36026b;
                c11628u.m19805b(c11628u.f38735c + m21569a);
                abstractC11121i.mo21400b(this.f36026b.f38733a, this.f36026b.f38735c, m21569a);
                C11628u c11628u2 = this.f36026b;
                c11628u2.m19803c(c11628u2.f38735c + m21569a);
                this.f36028d = this.f36025a.f36039j[i3 - 1] != 255;
            }
            int i4 = i3;
            if (i3 == this.f36025a.f36036g) {
                i4 = -1;
            }
            this.f36027c = i4;
        }
        return true;
    }
}
