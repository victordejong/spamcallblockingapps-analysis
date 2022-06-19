package androidx.transition;

import android.graphics.PointF;
import android.util.Property;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$f.class */
public final class ChangeBounds$f extends Property<View, PointF> {
    public ChangeBounds$f(Class cls, String str) {
        super(cls, str);
    }

    /* renamed from: a */
    public PointF get(View view) {
        return null;
    }

    /* renamed from: b */
    public void set(View view, PointF pointF) {
        i30.g(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
    }
}
