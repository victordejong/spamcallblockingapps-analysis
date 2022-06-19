package p078c.p084c.p085a.p096b.p098n;

import android.graphics.Canvas;
import android.os.Build;
/* renamed from: c.c.a.b.n.a */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/n/a.class */
public class C1908a {
    /* renamed from: a */
    public static int m28719a(Canvas canvas, float f, float f2, float f3, float f4, int i) {
        return Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(f, f2, f3, f4, i) : canvas.saveLayerAlpha(f, f2, f3, f4, i, 31);
    }
}
