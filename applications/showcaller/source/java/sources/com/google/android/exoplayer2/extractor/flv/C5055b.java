package com.google.android.exoplayer2.extractor.flv;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.util.C5512g;
import com.google.android.exoplayer2.util.C5536v;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.extractor.flv.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/b.class */
public final class C5055b extends TagPayloadReader {

    /* renamed from: b */
    private static final int[] f15729b = {5512, 11025, 22050, 44100};

    /* renamed from: c */
    private boolean f15730c;

    /* renamed from: d */
    private boolean f15731d;

    /* renamed from: e */
    private int f15732e;

    public C5055b(AbstractC4996v abstractC4996v) {
        super(abstractC4996v);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: b */
    protected boolean mo20725b(C5536v c5536v) {
        if (this.f15730c) {
            c5536v.m18679N(1);
            return true;
        }
        int m18653z = c5536v.m18653z();
        int i = (m18653z >> 4) & 15;
        this.f15732e = i;
        if (i == 2) {
            this.f15727a.mo19983d(Format.m21740o(null, "audio/mpeg", null, -1, -1, 1, f15729b[(m18653z >> 2) & 3], null, null, 0, null));
            this.f15731d = true;
        } else if (i == 7 || i == 8) {
            this.f15727a.mo19983d(Format.m21741n(null, i == 7 ? "audio/g711-alaw" : "audio/g711-mlaw", null, -1, -1, 1, 8000, -1, null, null, 0, null));
            this.f15731d = true;
        } else if (i != 10) {
            throw new TagPayloadReader.UnsupportedFormatException("Audio format not supported: " + this.f15732e);
        }
        this.f15730c = true;
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: c */
    protected boolean mo20724c(C5536v c5536v, long j) {
        if (this.f15732e == 2) {
            int m18678a = c5536v.m18678a();
            this.f15727a.mo19985b(c5536v, m18678a);
            this.f15727a.mo19984c(j, 1, m18678a, 0, null);
            return true;
        }
        int m18653z = c5536v.m18653z();
        if (m18653z != 0 || this.f15731d) {
            if (this.f15732e == 10 && m18653z != 1) {
                return false;
            }
            int m18678a2 = c5536v.m18678a();
            this.f15727a.mo19985b(c5536v, m18678a2);
            this.f15727a.mo19984c(j, 1, m18678a2, 0, null);
            return true;
        }
        int m18678a3 = c5536v.m18678a();
        byte[] bArr = new byte[m18678a3];
        c5536v.m18671h(bArr, 0, m18678a3);
        Pair<Integer, Integer> m18883g = C5512g.m18883g(bArr);
        this.f15727a.mo19983d(Format.m21740o(null, "audio/mp4a-latm", null, -1, -1, ((Integer) m18883g.second).intValue(), ((Integer) m18883g.first).intValue(), Collections.singletonList(bArr), null, 0, null));
        this.f15731d = true;
        return false;
    }
}
