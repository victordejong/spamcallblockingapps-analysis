package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.u;
import com.google.android.exoplayer2.video.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/d.class */
final class d extends TagPayloadReader {

    /* renamed from: a  reason: collision with root package name */
    private final u f21102a = new u(s.f22320a);

    /* renamed from: b  reason: collision with root package name */
    private final u f21103b = new u(4);

    /* renamed from: c  reason: collision with root package name */
    private int f21104c;
    private boolean e;
    private boolean f;
    private int g;

    public d(x xVar) {
        super(xVar);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected final boolean a(u uVar) throws TagPayloadReader.UnsupportedFormatException {
        int c2 = uVar.c();
        int i = (c2 >> 4) & 15;
        int i2 = c2 & 15;
        if (i2 == 7) {
            this.g = i;
            return i != 5;
        }
        throw new TagPayloadReader.UnsupportedFormatException("Video format not supported: ".concat(String.valueOf(i2)));
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected final boolean a(u uVar, long j) throws ParserException {
        int c2 = uVar.c();
        byte[] bArr = uVar.f22335a;
        int i = uVar.f22336b;
        uVar.f22336b = i + 1;
        byte b2 = bArr[i];
        byte[] bArr2 = uVar.f22335a;
        int i2 = uVar.f22336b;
        uVar.f22336b = i2 + 1;
        byte b3 = bArr2[i2];
        byte[] bArr3 = uVar.f22335a;
        int i3 = uVar.f22336b;
        uVar.f22336b = i3 + 1;
        long j2 = (((b2 & 255) << 24) >> 8) | ((b3 & 255) << 8) | (bArr3[i3] & 255);
        if (c2 == 0 && !this.e) {
            u uVar2 = new u(new byte[uVar.a()]);
            uVar.a(uVar2.f22335a, 0, uVar.a());
            a a2 = a.a(uVar2);
            this.f21104c = a2.f22366b;
            Format.a aVar = new Format.a();
            aVar.k = "video/avc";
            aVar.h = a2.f;
            aVar.p = a2.f22367c;
            aVar.q = a2.f22368d;
            aVar.t = a2.e;
            aVar.m = a2.f22365a;
            this.f21091d.a(aVar.a());
            this.e = true;
            return false;
        } else if (c2 != 1 || !this.e) {
            return false;
        } else {
            int i4 = this.g == 1 ? 1 : 0;
            if (!this.f && i4 == 0) {
                return false;
            }
            byte[] bArr4 = this.f21103b.f22335a;
            bArr4[0] = (byte) 0;
            bArr4[1] = (byte) 0;
            bArr4[2] = (byte) 0;
            int i5 = this.f21104c;
            int i6 = 0;
            while (uVar.a() > 0) {
                uVar.a(this.f21103b.f22335a, 4 - i5, this.f21104c);
                this.f21103b.d(0);
                int o = this.f21103b.o();
                this.f21102a.d(0);
                this.f21091d.b(this.f21102a, 4);
                this.f21091d.b(uVar, o);
                i6 = i6 + 4 + o;
            }
            this.f21091d.a(j + (j2 * 1000), i4, i6, 0, null);
            this.f = true;
            return true;
        }
    }
}
