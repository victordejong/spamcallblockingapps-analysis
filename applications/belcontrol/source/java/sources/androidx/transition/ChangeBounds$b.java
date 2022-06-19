package androidx.transition;

import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Property;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$b.class */
public final class ChangeBounds$b extends Property<Drawable, PointF> {

    /* renamed from: a */
    public Rect f1484a = new Rect();

    public ChangeBounds$b(Class cls, String str) {
        super(cls, str);
    }

    /* renamed from: a */
    public PointF get(Drawable drawable) {
        drawable.copyBounds(this.f1484a);
        Rect rect = this.f1484a;
        return new PointF(rect.left, rect.top);
    }

    /* renamed from: b */
    public void set(Drawable drawable, PointF pointF) {
        drawable.copyBounds(this.f1484a);
        this.f1484a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
        drawable.setBounds(this.f1484a);
    }
}
