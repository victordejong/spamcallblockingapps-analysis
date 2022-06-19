package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.util.C5531s;
import com.google.android.exoplayer2.util.C5536v;
import com.google.android.exoplayer2.video.C5558h;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.extractor.flv.e */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/e.class */
public final class C5058e extends TagPayloadReader {

    /* renamed from: b */
    private final C5536v f15751b = new C5536v(C5531s.f17917a);

    /* renamed from: c */
    private final C5536v f15752c = new C5536v(4);

    /* renamed from: d */
    private int f15753d;

    /* renamed from: e */
    private boolean f15754e;

    /* renamed from: f */
    private boolean f15755f;

    /* renamed from: g */
    private int f15756g;

    public C5058e(AbstractC4996v abstractC4996v) {
        super(abstractC4996v);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: b */
    protected boolean mo20725b(C5536v c5536v) {
        int m18653z = c5536v.m18653z();
        int i = (m18653z >> 4) & 15;
        int i2 = m18653z & 15;
        if (i2 == 7) {
            this.f15756g = i;
            return i != 5;
        }
        throw new TagPayloadReader.UnsupportedFormatException("Video format not supported: " + i2);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: c */
    protected boolean mo20724c(C5536v c5536v, long j) {
        int m18653z = c5536v.m18653z();
        long m18667l = c5536v.m18667l();
        if (m18653z == 0 && !this.f15754e) {
            C5536v c5536v2 = new C5536v(new byte[c5536v.m18678a()]);
            c5536v.m18671h(c5536v2.f17941a, 0, c5536v.m18678a());
            C5558h m18557b = C5558h.m18557b(c5536v2);
            this.f15753d = m18557b.f18050b;
            this.f15727a.mo19983d(Format.m21758D(null, "video/avc", null, -1, -1, m18557b.f18051c, m18557b.f18052d, -1.0f, m18557b.f18049a, -1, m18557b.f18053e, null));
            this.f15754e = true;
            return false;
        } else if (m18653z != 1 || !this.f15754e) {
            return false;
        } else {
            int i = this.f15756g == 1 ? 1 : 0;
            if (!this.f15755f && i == 0) {
                return false;
            }
            byte[] bArr = this.f15752c.f17941a;
            bArr[0] = (byte) 0;
            bArr[1] = (byte) 0;
            bArr[2] = (byte) 0;
            int i2 = this.f15753d;
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (c5536v.m18678a() <= 0) {
                    this.f15727a.mo19984c(j + (m18667l * 1000), i, i4, 0, null);
                    this.f15755f = true;
                    return true;
                }
                c5536v.m18671h(this.f15752c.f17941a, 4 - i2, this.f15753d);
                this.f15752c.m18680M(0);
                int m18689D = this.f15752c.m18689D();
                this.f15751b.m18680M(0);
                this.f15727a.mo19985b(this.f15751b, 4);
                this.f15727a.mo19985b(c5536v, m18689D);
                i3 = i4 + 4 + m18689D;
            }
        }
    }
}
