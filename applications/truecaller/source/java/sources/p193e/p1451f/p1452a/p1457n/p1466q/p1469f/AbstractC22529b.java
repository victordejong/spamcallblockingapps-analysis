package p193e.p1451f.p1452a.p1457n.p1466q.p1469f;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import java.util.Objects;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22389s;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
import p193e.p1451f.p1452a.p1457n.p1466q.p1471h.C22538c;
/* renamed from: e.f.a.n.q.f.b */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/f/b.class */
public abstract class AbstractC22529b<T extends Drawable> implements AbstractC22394w<T>, AbstractC22389s {

    /* renamed from: a */
    public final T f62425a;

    public AbstractC22529b(T t) {
        Objects.requireNonNull(t, "Argument must not be null");
        this.f62425a = t;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    public Object get() {
        Drawable.ConstantState constantState = this.f62425a.getConstantState();
        return constantState == null ? this.f62425a : constantState.newDrawable();
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22389s
    public void initialize() {
        T t = this.f62425a;
        if (t instanceof BitmapDrawable) {
            ((BitmapDrawable) t).getBitmap().prepareToDraw();
        } else if (!(t instanceof C22538c)) {
        } else {
            ((C22538c) t).m8155b().prepareToDraw();
        }
    }
}
