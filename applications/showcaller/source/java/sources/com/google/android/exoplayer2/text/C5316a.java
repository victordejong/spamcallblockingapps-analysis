package com.google.android.exoplayer2.text;

import android.annotation.TargetApi;
import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;
import com.google.android.exoplayer2.util.C5515h0;
/* renamed from: com.google.android.exoplayer2.text.a */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/a.class */
public final class C5316a {

    /* renamed from: a */
    public static final C5316a f16896a = new C5316a(-1, -16777216, 0, 0, -1, null);

    /* renamed from: b */
    public final int f16897b;

    /* renamed from: c */
    public final int f16898c;

    /* renamed from: d */
    public final int f16899d;

    /* renamed from: e */
    public final int f16900e;

    /* renamed from: f */
    public final int f16901f;

    /* renamed from: g */
    public final Typeface f16902g;

    public C5316a(int i, int i2, int i3, int i4, int i5, Typeface typeface) {
        this.f16897b = i;
        this.f16898c = i2;
        this.f16899d = i3;
        this.f16900e = i4;
        this.f16901f = i5;
        this.f16902g = typeface;
    }

    @TargetApi(19)
    /* renamed from: a */
    public static C5316a m19692a(CaptioningManager.CaptionStyle captionStyle) {
        return C5515h0.f17876a >= 21 ? m19690c(captionStyle) : m19691b(captionStyle);
    }

    @TargetApi(19)
    /* renamed from: b */
    private static C5316a m19691b(CaptioningManager.CaptionStyle captionStyle) {
        return new C5316a(captionStyle.foregroundColor, captionStyle.backgroundColor, 0, captionStyle.edgeType, captionStyle.edgeColor, captionStyle.getTypeface());
    }

    @TargetApi(21)
    /* renamed from: c */
    private static C5316a m19690c(CaptioningManager.CaptionStyle captionStyle) {
        return new C5316a(captionStyle.hasForegroundColor() ? captionStyle.foregroundColor : f16896a.f16897b, captionStyle.hasBackgroundColor() ? captionStyle.backgroundColor : f16896a.f16898c, captionStyle.hasWindowColor() ? captionStyle.windowColor : f16896a.f16899d, captionStyle.hasEdgeType() ? captionStyle.edgeType : f16896a.f16900e, captionStyle.hasEdgeColor() ? captionStyle.edgeColor : f16896a.f16901f, captionStyle.getTypeface());
    }
}
