package p1727n3.p1807k.p1809b.p1811d;

import android.content.res.ColorStateList;
import android.graphics.Shader;
/* renamed from: n3.k.b.d.b */
/* loaded from: classes-dex2jar.jar:n3/k/b/d/b.class */
public final class C26482b {

    /* renamed from: a */
    public final Shader f74249a;

    /* renamed from: b */
    public final ColorStateList f74250b;

    /* renamed from: c */
    public int f74251c;

    public C26482b(Shader shader, ColorStateList colorStateList, int i) {
        this.f74249a = shader;
        this.f74250b = colorStateList;
        this.f74251c = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x02ff, code lost:
        throw new org.xmlpull.v1.XmlPullParserException(r0.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p1727n3.p1807k.p1809b.p1811d.C26482b m1769a(android.content.res.Resources r10, int r11, android.content.res.Resources.Theme r12) throws java.io.IOException, org.xmlpull.v1.XmlPullParserException {
        /*
            Method dump skipped, instructions count: 1085
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1809b.p1811d.C26482b.m1769a(android.content.res.Resources, int, android.content.res.Resources$Theme):n3.k.b.d.b");
    }

    /* renamed from: b */
    public boolean m1768b() {
        return this.f74249a != null;
    }

    /* renamed from: c */
    public boolean m1767c() {
        ColorStateList colorStateList;
        return this.f74249a == null && (colorStateList = this.f74250b) != null && colorStateList.isStateful();
    }

    /* renamed from: d */
    public boolean m1766d(int[] iArr) {
        boolean z;
        ColorStateList colorStateList;
        int colorForState;
        if (!m1767c() || (colorForState = (colorStateList = this.f74250b).getColorForState(iArr, colorStateList.getDefaultColor())) == this.f74251c) {
            z = false;
        } else {
            z = true;
            this.f74251c = colorForState;
        }
        return z;
    }
}
