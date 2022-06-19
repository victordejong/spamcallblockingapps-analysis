package com.google.android.exoplayer2.source.p251e0;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.upstream.AbstractC5478j;
import com.google.android.exoplayer2.upstream.C5481l;
import com.google.android.exoplayer2.util.C5508e;
/* renamed from: com.google.android.exoplayer2.source.e0.d */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/e0/d.class */
public abstract class AbstractC5221d extends AbstractC5219b {

    /* renamed from: i */
    public final long f16406i;

    public AbstractC5221d(AbstractC5478j abstractC5478j, C5481l c5481l, Format format, int i, Object obj, long j, long j2, long j3) {
        super(abstractC5478j, c5481l, 1, format, i, obj, j, j2);
        C5508e.m18911e(format);
        this.f16406i = j3;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: g */
    public long m20098g() {
        long j = this.f16406i;
        char c = 65535;
        if (j != -1) {
            c = 1 + j;
        }
        return c;
    }
}
