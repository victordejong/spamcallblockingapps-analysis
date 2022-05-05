package p081h.p203i.p204a.p294f.p301g;

import android.graphics.Canvas;
import android.os.Build;
import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.g.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/g/a.class */
public class C9188a {
    /* renamed from: a */
    public static int m15915a(Canvas canvas, float f, float f2, float f3, float f4, int i) {
        return Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(f, f2, f3, f4, i) : canvas.saveLayerAlpha(f, f2, f3, f4, i, 31);
    }
}
