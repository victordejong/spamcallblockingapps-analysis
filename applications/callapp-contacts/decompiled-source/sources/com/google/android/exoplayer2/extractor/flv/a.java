package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.a;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.u;
import java.util.Collections;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/a.class */
final class a extends TagPayloadReader {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f21092a = {5512, 11025, 22050, 44100};

    /* renamed from: b  reason: collision with root package name */
    private boolean f21093b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f21094c;
    private int e;

    public a(x xVar) {
        super(xVar);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected final boolean a(u uVar) throws TagPayloadReader.UnsupportedFormatException {
        if (!this.f21093b) {
            int c2 = uVar.c();
            int i = (c2 >> 4) & 15;
            this.e = i;
            if (i == 2) {
                int i2 = f21092a[(c2 >> 2) & 3];
                Format.a aVar = new Format.a();
                aVar.k = "audio/mpeg";
                aVar.x = 1;
                aVar.y = i2;
                this.f21091d.a(aVar.a());
                this.f21094c = true;
            } else if (i == 7 || i == 8) {
                String str = i == 7 ? "audio/g711-alaw" : "audio/g711-mlaw";
                Format.a aVar2 = new Format.a();
                aVar2.k = str;
                aVar2.x = 1;
                aVar2.y = 8000;
                this.f21091d.a(aVar2.a());
                this.f21094c = true;
            } else if (i != 10) {
                throw new TagPayloadReader.UnsupportedFormatException("Audio format not supported: " + this.e);
            }
            this.f21093b = true;
            return true;
        }
        uVar.e(1);
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected final boolean a(u uVar, long j) throws ParserException {
        if (this.e == 2) {
            int a2 = uVar.a();
            this.f21091d.b(uVar, a2);
            this.f21091d.a(j, 1, a2, 0, null);
            return true;
        }
        int c2 = uVar.c();
        if (c2 == 0 && !this.f21094c) {
            int a3 = uVar.a();
            byte[] bArr = new byte[a3];
            uVar.a(bArr, 0, a3);
            a.C0421a a4 = com.google.android.exoplayer2.audio.a.a(bArr);
            Format.a aVar = new Format.a();
            aVar.k = "audio/mp4a-latm";
            aVar.h = a4.f20728c;
            aVar.x = a4.f20727b;
            aVar.y = a4.f20726a;
            aVar.m = Collections.singletonList(bArr);
            this.f21091d.a(aVar.a());
            this.f21094c = true;
            return false;
        } else if (this.e == 10 && c2 != 1) {
            return false;
        } else {
            int a5 = uVar.a();
            this.f21091d.b(uVar, a5);
            this.f21091d.a(j, 1, a5, 0, null);
            return true;
        }
    }
}
