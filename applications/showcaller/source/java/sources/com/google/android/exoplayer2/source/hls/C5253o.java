package com.google.android.exoplayer2.source.hls;

import android.util.SparseArray;
import com.google.android.exoplayer2.util.C5509e0;
/* renamed from: com.google.android.exoplayer2.source.hls.o */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/o.class */
public final class C5253o {

    /* renamed from: a */
    private final SparseArray<C5509e0> f16602a = new SparseArray<>();

    /* renamed from: a */
    public C5509e0 m19976a(int i) {
        C5509e0 c5509e0 = this.f16602a.get(i);
        C5509e0 c5509e02 = c5509e0;
        if (c5509e0 == null) {
            c5509e02 = new C5509e0(Long.MAX_VALUE);
            this.f16602a.put(i, c5509e02);
        }
        return c5509e02;
    }

    /* renamed from: b */
    public void m19975b() {
        this.f16602a.clear();
    }
}
