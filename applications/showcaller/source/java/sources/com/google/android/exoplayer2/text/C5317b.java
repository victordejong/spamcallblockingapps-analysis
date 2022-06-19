package com.google.android.exoplayer2.text;

import android.graphics.Bitmap;
import android.text.Layout;
/* renamed from: com.google.android.exoplayer2.text.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/b.class */
public class C5317b {

    /* renamed from: d */
    public static final C5317b f16903d = new C5317b("");

    /* renamed from: e */
    public final CharSequence f16904e;

    /* renamed from: f */
    public final Layout.Alignment f16905f;

    /* renamed from: g */
    public final Bitmap f16906g;

    /* renamed from: h */
    public final float f16907h;

    /* renamed from: i */
    public final int f16908i;

    /* renamed from: j */
    public final int f16909j;

    /* renamed from: k */
    public final float f16910k;

    /* renamed from: l */
    public final int f16911l;

    /* renamed from: m */
    public final float f16912m;

    /* renamed from: n */
    public final float f16913n;

    /* renamed from: o */
    public final boolean f16914o;

    /* renamed from: p */
    public final int f16915p;

    /* renamed from: q */
    public final int f16916q;

    /* renamed from: r */
    public final float f16917r;

    public C5317b(Bitmap bitmap, float f, int i, float f2, int i2, float f3, float f4) {
        this(null, null, bitmap, f2, 0, i2, f, i, Integer.MIN_VALUE, -3.4028235E38f, f3, f4, false, -16777216);
    }

    public C5317b(CharSequence charSequence) {
        this(charSequence, null, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f);
    }

    public C5317b(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3) {
        this(charSequence, alignment, f, i, i2, f2, i3, f3, false, -16777216);
    }

    public C5317b(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, int i4, float f4) {
        this(charSequence, alignment, null, f, i, i2, f2, i3, i4, f4, f3, -3.4028235E38f, false, -16777216);
    }

    public C5317b(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4) {
        this(charSequence, alignment, null, f, i, i2, f2, i3, Integer.MIN_VALUE, -3.4028235E38f, f3, -3.4028235E38f, z, i4);
    }

    private C5317b(CharSequence charSequence, Layout.Alignment alignment, Bitmap bitmap, float f, int i, int i2, float f2, int i3, int i4, float f3, float f4, float f5, boolean z, int i5) {
        this.f16904e = charSequence;
        this.f16905f = alignment;
        this.f16906g = bitmap;
        this.f16907h = f;
        this.f16908i = i;
        this.f16909j = i2;
        this.f16910k = f2;
        this.f16911l = i3;
        this.f16912m = f4;
        this.f16913n = f5;
        this.f16914o = z;
        this.f16915p = i5;
        this.f16916q = i4;
        this.f16917r = f3;
    }
}
