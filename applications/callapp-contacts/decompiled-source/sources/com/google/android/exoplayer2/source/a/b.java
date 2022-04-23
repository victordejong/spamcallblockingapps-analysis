package com.google.android.exoplayer2.source.a;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.upstream.h;
import com.google.android.exoplayer2.upstream.j;
import com.google.android.exoplayer2.util.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/a/b.class */
public abstract class b extends a {
    public final long j;

    public b(h hVar, j jVar, Format format, int i, Object obj, long j, long j2, long j3) {
        super(hVar, jVar, 1, format, i, obj, j, j2);
        a.b(format);
        this.j = j3;
    }
}
