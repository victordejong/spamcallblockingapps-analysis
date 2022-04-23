package androidx.transition;

import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Property;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$b.class */
final class ChangeBounds$b extends Property<Drawable, PointF> {

    /* renamed from: a */
    private Rect f2626a = new Rect();

    ChangeBounds$b(Class cls, String str) {
        super(cls, str);
    }

    /* renamed from: a */
    public PointF get(Drawable drawable) {
        drawable.copyBounds(this.f2626a);
        Rect rect = this.f2626a;
        return new PointF(rect.left, rect.top);
    }

    /* renamed from: b */
    public void set(Drawable drawable, PointF pointF) {
        drawable.copyBounds(this.f2626a);
        this.f2626a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
        drawable.setBounds(this.f2626a);
    }
}
