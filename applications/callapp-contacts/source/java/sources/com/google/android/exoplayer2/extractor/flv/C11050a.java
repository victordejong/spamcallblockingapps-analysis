package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.C10880a;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.google.android.exoplayer2.util.C11628u;
import java.util.Collections;
/* renamed from: com.google.android.exoplayer2.extractor.flv.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/a.class */
final class C11050a extends TagPayloadReader {

    /* renamed from: a */
    private static final int[] f35971a = {5512, 11025, 22050, 44100};

    /* renamed from: b */
    private boolean f35972b;

    /* renamed from: c */
    private boolean f35973c;

    /* renamed from: e */
    private int f35974e;

    public C11050a(AbstractC11150x abstractC11150x) {
        super(abstractC11150x);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: a */
    protected final boolean mo21576a(C11628u c11628u) throws TagPayloadReader.UnsupportedFormatException {
        if (this.f35972b) {
            c11628u.m19799e(1);
            return true;
        }
        int m19804c = c11628u.m19804c();
        int i = (m19804c >> 4) & 15;
        this.f35974e = i;
        if (i == 2) {
            int i2 = f35971a[(m19804c >> 2) & 3];
            Format.C10828a c10828a = new Format.C10828a();
            c10828a.f34792k = "audio/mpeg";
            c10828a.f34805x = 1;
            c10828a.f34806y = i2;
            this.f35970d.mo20831a(c10828a.m22321a());
            this.f35973c = true;
        } else if (i == 7 || i == 8) {
            String str = i == 7 ? "audio/g711-alaw" : "audio/g711-mlaw";
            Format.C10828a c10828a2 = new Format.C10828a();
            c10828a2.f34792k = str;
            c10828a2.f34805x = 1;
            c10828a2.f34806y = 8000;
            this.f35970d.mo20831a(c10828a2.m22321a());
            this.f35973c = true;
        } else if (i != 10) {
            throw new TagPayloadReader.UnsupportedFormatException("Audio format not supported: " + this.f35974e);
        }
        this.f35972b = true;
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: a */
    protected final boolean mo21575a(C11628u c11628u, long j) throws ParserException {
        if (this.f35974e == 2) {
            int m19812a = c11628u.m19812a();
            this.f35970d.mo20819b(c11628u, m19812a);
            this.f35970d.mo20835a(j, 1, m19812a, 0, null);
            return true;
        }
        int m19804c = c11628u.m19804c();
        if (m19804c != 0 || this.f35973c) {
            if (this.f35974e == 10 && m19804c != 1) {
                return false;
            }
            int m19812a2 = c11628u.m19812a();
            this.f35970d.mo20819b(c11628u, m19812a2);
            this.f35970d.mo20835a(j, 1, m19812a2, 0, null);
            return true;
        }
        int m19812a3 = c11628u.m19812a();
        byte[] bArr = new byte[m19812a3];
        c11628u.m19807a(bArr, 0, m19812a3);
        C10880a.C10882a m22086a = C10880a.m22086a(bArr);
        Format.C10828a c10828a = new Format.C10828a();
        c10828a.f34792k = "audio/mp4a-latm";
        c10828a.f34789h = m22086a.f35118c;
        c10828a.f34805x = m22086a.f35117b;
        c10828a.f34806y = m22086a.f35116a;
        c10828a.f34794m = Collections.singletonList(bArr);
        this.f35970d.mo20831a(c10828a.m22321a());
        this.f35973c = true;
        return false;
    }
}
