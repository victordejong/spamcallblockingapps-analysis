package com.google.android.exoplayer2.text.p252l;

import android.text.Layout;
import com.google.android.exoplayer2.text.C5317b;
/* renamed from: com.google.android.exoplayer2.text.l.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/l/b.class */
final class C5331b extends C5317b implements Comparable<C5331b> {

    /* renamed from: s */
    public final int f16972s;

    public C5331b(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4, int i5) {
        super(charSequence, alignment, f, i, i2, f2, i3, f3, z, i4);
        this.f16972s = i5;
    }

    /* renamed from: a */
    public int compareTo(C5331b c5331b) {
        int i = c5331b.f16972s;
        int i2 = this.f16972s;
        if (i < i2) {
            return -1;
        }
        return i > i2 ? 1 : 0;
    }
}
