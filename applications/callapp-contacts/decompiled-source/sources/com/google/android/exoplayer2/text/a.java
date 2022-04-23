package com.google.android.exoplayer2.text;

import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f21697a = new a(-1, -16777216, 0, 0, -1, null);

    /* renamed from: b  reason: collision with root package name */
    public final int f21698b;

    /* renamed from: c  reason: collision with root package name */
    public final int f21699c;

    /* renamed from: d  reason: collision with root package name */
    public final int f21700d;
    public final int e;
    public final int f;
    public final Typeface g;

    public a(int i, int i2, int i3, int i4, int i5, Typeface typeface) {
        this.f21698b = i;
        this.f21699c = i2;
        this.f21700d = i3;
        this.e = i4;
        this.f = i5;
        this.g = typeface;
    }

    public static a a(CaptioningManager.CaptionStyle captionStyle) {
        if (af.f22275a < 21) {
            return new a(captionStyle.foregroundColor, captionStyle.backgroundColor, 0, captionStyle.edgeType, captionStyle.edgeColor, captionStyle.getTypeface());
        }
        return new a(captionStyle.hasForegroundColor() ? captionStyle.foregroundColor : f21697a.f21698b, captionStyle.hasBackgroundColor() ? captionStyle.backgroundColor : f21697a.f21699c, captionStyle.hasWindowColor() ? captionStyle.windowColor : f21697a.f21700d, captionStyle.hasEdgeType() ? captionStyle.edgeType : f21697a.e, captionStyle.hasEdgeColor() ? captionStyle.edgeColor : f21697a.f, captionStyle.getTypeface());
    }
}
