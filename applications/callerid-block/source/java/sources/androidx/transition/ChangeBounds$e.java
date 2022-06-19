package androidx.transition;

import android.graphics.PointF;
import android.util.Property;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$e.class */
final class ChangeBounds$e extends Property<View, PointF> {
    ChangeBounds$e(Class cls, String str) {
        super(cls, str);
    }

    /* renamed from: a */
    public PointF get(View view) {
        return null;
    }

    /* renamed from: b */
    public void set(View view, PointF pointF) {
        C0497j0.m12017g(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
    }
}
