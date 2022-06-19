package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.upstream.Loader;
import java.io.FileNotFoundException;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.upstream.s */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/s.class */
public class C5491s implements AbstractC5493u {

    /* renamed from: a */
    private final int f17829a;

    public C5491s() {
        this(-1);
    }

    public C5491s(int i) {
        this.f17829a = i;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    @Override // com.google.android.exoplayer2.upstream.AbstractC5493u
    /* renamed from: a */
    public long mo18960a(int i, long j, IOException iOException, int i2) {
        return ((iOException instanceof ParserException) || (iOException instanceof FileNotFoundException) || (iOException instanceof Loader.UnexpectedLoaderException)) ? (char) 1 : Math.min((i2 - 1) * 1000, 5000);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0032, code lost:
        if (r0 == 416) goto L10;
     */
    @Override // com.google.android.exoplayer2.upstream.AbstractC5493u
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo18959b(int r4, long r5, java.io.IOException r7, int r8) {
        /*
            r3 = this;
            r0 = r7
            boolean r0 = r0 instanceof com.google.android.exoplayer2.upstream.HttpDataSource.InvalidResponseCodeException
            r9 = r0
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r10 = r0
            r0 = r10
            r5 = r0
            r0 = r9
            if (r0 == 0) goto L39
            r0 = r7
            com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException r0 = (com.google.android.exoplayer2.upstream.HttpDataSource.InvalidResponseCodeException) r0
            int r0 = r0.responseCode
            r4 = r0
            r0 = r4
            r1 = 404(0x194, float:5.66E-43)
            if (r0 == r1) goto L35
            r0 = r4
            r1 = 410(0x19a, float:5.75E-43)
            if (r0 == r1) goto L35
            r0 = r10
            r5 = r0
            r0 = r4
            r1 = 416(0x1a0, float:5.83E-43)
            if (r0 != r1) goto L39
        L35:
            r0 = 60000(0xea60, double:2.9644E-319)
            r5 = r0
        L39:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.C5491s.mo18959b(int, long, java.io.IOException, int):long");
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5493u
    /* renamed from: c */
    public int mo18958c(int i) {
        int i2 = this.f17829a;
        if (i2 == -1) {
            return i == 7 ? 6 : 3;
        }
        return i2;
    }
}
