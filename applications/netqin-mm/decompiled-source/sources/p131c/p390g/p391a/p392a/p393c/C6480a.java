package p131c.p390g.p391a.p392a.p393c;

import android.graphics.RectF;
/* renamed from: c.g.a.a.c.a */
/* loaded from: classes2-dex2jar.jar:c/g/a/a/c/a.class */
public class C6480a {
    /* renamed from: a */
    public static void m20730a(RectF rectF, float f, float f2, float f3, float f4) {
        float width = rectF.width() * f;
        float height = rectF.height() * f2;
        float width2 = (rectF.left + (rectF.width() * f3)) - (f3 * width);
        float height2 = (rectF.top + (rectF.height() * f4)) - (f4 * height);
        rectF.set(width2, height2, width + width2, height + height2);
    }
}
