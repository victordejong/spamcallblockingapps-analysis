package com.google.android.exoplayer2.text;

import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;
import com.google.android.exoplayer2.util.C11599af;
/* renamed from: com.google.android.exoplayer2.text.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a.class */
public final class C11343a {

    /* renamed from: a */
    public static final C11343a f37307a = new C11343a(-1, -16777216, 0, 0, -1, null);

    /* renamed from: b */
    public final int f37308b;

    /* renamed from: c */
    public final int f37309c;

    /* renamed from: d */
    public final int f37310d;

    /* renamed from: e */
    public final int f37311e;

    /* renamed from: f */
    public final int f37312f;

    /* renamed from: g */
    public final Typeface f37313g;

    public C11343a(int i, int i2, int i3, int i4, int i5, Typeface typeface) {
        this.f37308b = i;
        this.f37309c = i2;
        this.f37310d = i3;
        this.f37311e = i4;
        this.f37312f = i5;
        this.f37313g = typeface;
    }

    /* renamed from: a */
    public static C11343a m20805a(CaptioningManager.CaptionStyle captionStyle) {
        if (C11599af.f38648a >= 21) {
            return new C11343a(captionStyle.hasForegroundColor() ? captionStyle.foregroundColor : f37307a.f37308b, captionStyle.hasBackgroundColor() ? captionStyle.backgroundColor : f37307a.f37309c, captionStyle.hasWindowColor() ? captionStyle.windowColor : f37307a.f37310d, captionStyle.hasEdgeType() ? captionStyle.edgeType : f37307a.f37311e, captionStyle.hasEdgeColor() ? captionStyle.edgeColor : f37307a.f37312f, captionStyle.getTypeface());
        }
        return new C11343a(captionStyle.foregroundColor, captionStyle.backgroundColor, 0, captionStyle.edgeType, captionStyle.edgeColor, captionStyle.getTypeface());
    }
}
