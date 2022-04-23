package p081h.p203i.p204a.p294f.p295a;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.RestrictTo;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.interpolator.view.animation.LinearOutSlowInInterpolator;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.a.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/a/a.class */
public class C9167a {

    /* renamed from: a */
    public static final TimeInterpolator f20879a = new LinearInterpolator();

    /* renamed from: b */
    public static final TimeInterpolator f20880b = new FastOutSlowInInterpolator();

    /* renamed from: c */
    public static final TimeInterpolator f20881c = new FastOutLinearInInterpolator();

    /* renamed from: d */
    public static final TimeInterpolator f20882d = new LinearOutSlowInInterpolator();

    /* renamed from: e */
    public static final TimeInterpolator f20883e = new DecelerateInterpolator();

    /* renamed from: a */
    public static float m15974a(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    /* renamed from: a */
    public static int m15973a(int i, int i2, float f) {
        return i + Math.round(f * (i2 - i));
    }
}
