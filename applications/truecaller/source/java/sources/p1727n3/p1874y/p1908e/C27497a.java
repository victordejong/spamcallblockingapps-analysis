package p1727n3.p1874y.p1908e;

import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;
/* renamed from: n3.y.e.a */
/* loaded from: classes-dex2jar.jar:n3/y/e/a.class */
public final class C27497a {

    /* renamed from: k */
    public static final C27497a f77407k = new C27497a(-1, -16777216, 0, -16777216, 255, null);

    /* renamed from: a */
    public final int f77408a;

    /* renamed from: b */
    public final int f77409b;

    /* renamed from: c */
    public final int f77410c;

    /* renamed from: d */
    public final int f77411d;

    /* renamed from: e */
    public final boolean f77412e;

    /* renamed from: f */
    public final boolean f77413f;

    /* renamed from: g */
    public final boolean f77414g;

    /* renamed from: h */
    public final boolean f77415h;

    /* renamed from: i */
    public final boolean f77416i;

    /* renamed from: j */
    public Typeface f77417j;

    public C27497a(int i, int i2, int i3, int i4, int i5, Typeface typeface) {
        boolean m197a = m197a(i);
        this.f77412e = m197a;
        boolean m197a2 = m197a(i2);
        this.f77413f = m197a2;
        boolean z = i3 != -1;
        this.f77414g = z;
        boolean m197a3 = m197a(i4);
        this.f77415h = m197a3;
        this.f77416i = m197a(i5);
        this.f77408a = !m197a ? -1 : i;
        this.f77409b = !m197a2 ? -16777216 : i2;
        this.f77410c = !z ? 0 : i3;
        this.f77411d = !m197a3 ? -16777216 : i4;
        this.f77417j = typeface;
    }

    public C27497a(CaptioningManager.CaptionStyle captionStyle) {
        this(captionStyle.foregroundColor, captionStyle.backgroundColor, captionStyle.edgeType, captionStyle.edgeColor, captionStyle.windowColor, captionStyle.getTypeface());
    }

    /* renamed from: a */
    public static boolean m197a(int i) {
        return (i >>> 24) != 0 || (i & 16776960) == 0;
    }
}
