package androidx.transition;

import android.graphics.PointF;
import android.util.Property;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$g.class */
final class ChangeBounds$g extends Property<View, PointF> {
    ChangeBounds$g(Class cls, String str) {
        super(cls, str);
    }

    /* renamed from: a */
    public PointF get(View view) {
        return null;
    }

    /* renamed from: b */
    public void set(View view, PointF pointF) {
        int round = Math.round(pointF.x);
        int round2 = Math.round(pointF.y);
        C0497j0.m12017g(view, round, round2, view.getWidth() + round, view.getHeight() + round2);
    }
}
