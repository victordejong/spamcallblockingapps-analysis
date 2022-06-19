package com.google.android.exoplayer2.p243c1;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.util.C5536v;
import java.io.EOFException;
/* renamed from: com.google.android.exoplayer2.c1.g */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/g.class */
public final class C4977g implements AbstractC4996v {
    @Override // com.google.android.exoplayer2.p243c1.AbstractC4996v
    /* renamed from: a */
    public int mo19986a(AbstractC4979i abstractC4979i, int i, boolean z) {
        int mo21005e = abstractC4979i.mo21005e(i);
        if (mo21005e == -1) {
            if (!z) {
                throw new EOFException();
            }
            return -1;
        }
        return mo21005e;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4996v
    /* renamed from: b */
    public void mo19985b(C5536v c5536v, int i) {
        c5536v.m18679N(i);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4996v
    /* renamed from: c */
    public void mo19984c(long j, int i, int i2, int i3, AbstractC4996v.C4997a c4997a) {
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4996v
    /* renamed from: d */
    public void mo19983d(Format format) {
    }
}
