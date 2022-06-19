package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.upstream.AbstractC11563e;
import com.google.android.exoplayer2.util.C11628u;
import java.io.EOFException;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g.class */
public final class C11054g implements AbstractC11150x {

    /* renamed from: a */
    private final byte[] f36001a = new byte[4096];

    @Override // com.google.android.exoplayer2.extractor.AbstractC11150x
    /* renamed from: a */
    public final int mo20827a(AbstractC11563e abstractC11563e, int i, boolean z) throws IOException {
        int mo20033a = abstractC11563e.mo20033a(this.f36001a, 0, Math.min(this.f36001a.length, i));
        if (mo20033a == -1) {
            if (!z) {
                throw new EOFException();
            }
            return -1;
        }
        return mo20033a;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11150x
    /* renamed from: a */
    public final void mo20835a(long j, int i, int i2, int i3, AbstractC11150x.C11151a c11151a) {
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11150x
    /* renamed from: a */
    public final void mo20831a(Format format) {
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11150x
    /* renamed from: a */
    public final void mo20826a(C11628u c11628u, int i) {
        c11628u.m19799e(i);
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11150x
    /* renamed from: b */
    public /* synthetic */ int mo20820b(AbstractC11563e abstractC11563e, int i, boolean z) {
        int mo20827a;
        mo20827a = mo20827a(abstractC11563e, i, z);
        return mo20827a;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11150x
    /* renamed from: b */
    public /* synthetic */ void mo20819b(C11628u c11628u, int i) {
        mo20826a(c11628u, i);
    }
}
