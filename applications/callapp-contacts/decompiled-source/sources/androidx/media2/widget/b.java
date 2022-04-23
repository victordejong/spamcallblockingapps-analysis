package androidx.media2.widget;

import android.graphics.Typeface;
import android.os.Build;
import android.view.accessibility.CaptioningManager;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/b.class */
final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f5158a = new b(-1, -16777216, 0, -16777216, 255, null);

    /* renamed from: b  reason: collision with root package name */
    public final int f5159b;

    /* renamed from: c  reason: collision with root package name */
    public final int f5160c;

    /* renamed from: d  reason: collision with root package name */
    public final int f5161d;
    public final int e;
    public final int f;
    final boolean g;
    final boolean h;
    final boolean i;
    final boolean j;
    Typeface k;
    private final boolean l;

    b(int i, int i2, int i3, int i4, int i5, Typeface typeface) {
        boolean a2 = a(i);
        this.g = a2;
        boolean a3 = a(i2);
        this.h = a3;
        boolean z = i3 != -1;
        this.i = z;
        boolean a4 = a(i4);
        this.j = a4;
        boolean a5 = a(i5);
        this.l = a5;
        this.f5159b = !a2 ? -1 : i;
        this.f5160c = !a3 ? -16777216 : i2;
        this.f5161d = !z ? 0 : i3;
        this.e = !a4 ? -16777216 : i4;
        this.f = !a5 ? 255 : i5;
        this.k = typeface;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(CaptioningManager.CaptionStyle captionStyle) {
        this(captionStyle.foregroundColor, captionStyle.backgroundColor, captionStyle.edgeType, captionStyle.edgeColor, Build.VERSION.SDK_INT >= 21 ? captionStyle.windowColor : 255, captionStyle.getTypeface());
    }

    private static boolean a(int i) {
        return (i >>> 24) != 0 || (i & 16776960) == 0;
    }
}
