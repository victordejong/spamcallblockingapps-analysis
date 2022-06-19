package androidx.media2.widget;

import android.graphics.Typeface;
import android.os.Build;
import android.view.accessibility.CaptioningManager;
/* renamed from: androidx.media2.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/b.class */
final class C2531b {

    /* renamed from: a */
    public static final C2531b f9610a = new C2531b(-1, -16777216, 0, -16777216, 255, null);

    /* renamed from: b */
    public final int f9611b;

    /* renamed from: c */
    public final int f9612c;

    /* renamed from: d */
    public final int f9613d;

    /* renamed from: e */
    public final int f9614e;

    /* renamed from: f */
    public final int f9615f;

    /* renamed from: g */
    final boolean f9616g;

    /* renamed from: h */
    final boolean f9617h;

    /* renamed from: i */
    final boolean f9618i;

    /* renamed from: j */
    final boolean f9619j;

    /* renamed from: k */
    Typeface f9620k;

    /* renamed from: l */
    private final boolean f9621l;

    C2531b(int i, int i2, int i3, int i4, int i5, Typeface typeface) {
        boolean m40733a = m40733a(i);
        this.f9616g = m40733a;
        boolean m40733a2 = m40733a(i2);
        this.f9617h = m40733a2;
        boolean z = i3 != -1;
        this.f9618i = z;
        boolean m40733a3 = m40733a(i4);
        this.f9619j = m40733a3;
        boolean m40733a4 = m40733a(i5);
        this.f9621l = m40733a4;
        this.f9611b = !m40733a ? -1 : i;
        this.f9612c = !m40733a2 ? -16777216 : i2;
        this.f9613d = !z ? 0 : i3;
        this.f9614e = !m40733a3 ? -16777216 : i4;
        this.f9615f = !m40733a4 ? 255 : i5;
        this.f9620k = typeface;
    }

    public C2531b(CaptioningManager.CaptionStyle captionStyle) {
        this(captionStyle.foregroundColor, captionStyle.backgroundColor, captionStyle.edgeType, captionStyle.edgeColor, Build.VERSION.SDK_INT >= 21 ? captionStyle.windowColor : 255, captionStyle.getTypeface());
    }

    /* renamed from: a */
    private static boolean m40733a(int i) {
        return (i >>> 24) != 0 || (i & 16776960) == 0;
    }
}
