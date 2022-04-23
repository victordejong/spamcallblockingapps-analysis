package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.upstream.e;
import com.google.android.exoplayer2.util.u;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g.class */
public final class g implements x {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f21105a = new byte[4096];

    @Override // com.google.android.exoplayer2.extractor.x
    public final int a(e eVar, int i, boolean z) throws IOException {
        int a2 = eVar.a(this.f21105a, 0, Math.min(this.f21105a.length, i));
        if (a2 != -1) {
            return a2;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // com.google.android.exoplayer2.extractor.x
    public final void a(long j, int i, int i2, int i3, x.a aVar) {
    }

    @Override // com.google.android.exoplayer2.extractor.x
    public final void a(Format format) {
    }

    @Override // com.google.android.exoplayer2.extractor.x
    public final void a(u uVar, int i) {
        uVar.e(i);
    }

    @Override // com.google.android.exoplayer2.extractor.x
    public /* synthetic */ int b(e eVar, int i, boolean z) {
        int a2;
        a2 = a(eVar, i, z);
        return a2;
    }

    @Override // com.google.android.exoplayer2.extractor.x
    public /* synthetic */ void b(u uVar, int i) {
        a(uVar, i);
    }
}
