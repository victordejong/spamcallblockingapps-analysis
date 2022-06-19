package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.google.android.exoplayer2.util.C11624s;
import com.google.android.exoplayer2.util.C11628u;
import com.google.android.exoplayer2.video.C11640a;
/* renamed from: com.google.android.exoplayer2.extractor.flv.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/d.class */
final class C11053d extends TagPayloadReader {

    /* renamed from: a */
    private final C11628u f35995a = new C11628u(C11624s.f38709a);

    /* renamed from: b */
    private final C11628u f35996b = new C11628u(4);

    /* renamed from: c */
    private int f35997c;

    /* renamed from: e */
    private boolean f35998e;

    /* renamed from: f */
    private boolean f35999f;

    /* renamed from: g */
    private int f36000g;

    public C11053d(AbstractC11150x abstractC11150x) {
        super(abstractC11150x);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: a */
    protected final boolean mo21576a(C11628u c11628u) throws TagPayloadReader.UnsupportedFormatException {
        int m19804c = c11628u.m19804c();
        int i = (m19804c >> 4) & 15;
        int i2 = m19804c & 15;
        if (i2 == 7) {
            this.f36000g = i;
            return i != 5;
        }
        throw new TagPayloadReader.UnsupportedFormatException("Video format not supported: ".concat(String.valueOf(i2)));
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: a */
    protected final boolean mo21575a(C11628u c11628u, long j) throws ParserException {
        int m19804c = c11628u.m19804c();
        byte[] bArr = c11628u.f38733a;
        int i = c11628u.f38734b;
        c11628u.f38734b = i + 1;
        byte b = bArr[i];
        byte[] bArr2 = c11628u.f38733a;
        int i2 = c11628u.f38734b;
        c11628u.f38734b = i2 + 1;
        byte b2 = bArr2[i2];
        byte[] bArr3 = c11628u.f38733a;
        int i3 = c11628u.f38734b;
        c11628u.f38734b = i3 + 1;
        long j2 = (((b & 255) << 24) >> 8) | ((b2 & 255) << 8) | (bArr3[i3] & 255);
        if (m19804c == 0 && !this.f35998e) {
            C11628u c11628u2 = new C11628u(new byte[c11628u.m19812a()]);
            c11628u.m19807a(c11628u2.f38733a, 0, c11628u.m19812a());
            C11640a m19754a = C11640a.m19754a(c11628u2);
            this.f35997c = m19754a.f38775b;
            Format.C10828a c10828a = new Format.C10828a();
            c10828a.f34792k = "video/avc";
            c10828a.f34789h = m19754a.f38779f;
            c10828a.f34797p = m19754a.f38776c;
            c10828a.f34798q = m19754a.f38777d;
            c10828a.f34801t = m19754a.f38778e;
            c10828a.f34794m = m19754a.f38774a;
            this.f35970d.mo20831a(c10828a.m22321a());
            this.f35998e = true;
            return false;
        } else if (m19804c != 1 || !this.f35998e) {
            return false;
        } else {
            int i4 = this.f36000g == 1 ? 1 : 0;
            if (!this.f35999f && i4 == 0) {
                return false;
            }
            byte[] bArr4 = this.f35996b.f38733a;
            bArr4[0] = (byte) 0;
            bArr4[1] = (byte) 0;
            bArr4[2] = (byte) 0;
            int i5 = this.f35997c;
            int i6 = 0;
            while (true) {
                int i7 = i6;
                if (c11628u.m19812a() <= 0) {
                    this.f35970d.mo20835a(j + (j2 * 1000), i4, i7, 0, null);
                    this.f35999f = true;
                    return true;
                }
                c11628u.m19807a(this.f35996b.f38733a, 4 - i5, this.f35997c);
                this.f35996b.m19801d(0);
                int m19787o = this.f35996b.m19787o();
                this.f35995a.m19801d(0);
                this.f35970d.mo20819b(this.f35995a, 4);
                this.f35970d.mo20819b(c11628u, m19787o);
                i6 = i7 + 4 + m19787o;
            }
        }
    }
}
