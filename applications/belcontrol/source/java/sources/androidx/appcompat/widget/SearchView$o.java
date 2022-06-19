package androidx.appcompat.widget;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$o.class */
public class SearchView$o extends TouchDelegate {

    /* renamed from: a */
    public final View f603a;

    /* renamed from: e */
    public final int f607e;

    /* renamed from: f */
    public boolean f608f;

    /* renamed from: b */
    public final Rect f604b = new Rect();

    /* renamed from: d */
    public final Rect f606d = new Rect();

    /* renamed from: c */
    public final Rect f605c = new Rect();

    public SearchView$o(Rect rect, Rect rect2, View view) {
        super(rect, view);
        this.f607e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        m6934a(rect, rect2);
        this.f603a = view;
    }

    /* renamed from: a */
    public void m6934a(Rect rect, Rect rect2) {
        this.f604b.set(rect);
        this.f606d.set(rect);
        Rect rect3 = this.f606d;
        int i = this.f607e;
        rect3.inset(-i, -i);
        this.f605c.set(rect2);
    }

    @Override // android.view.TouchDelegate
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        float f;
        int i;
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        boolean z2 = true;
        if (action != 0) {
            if (action == 1 || action == 2) {
                boolean z3 = this.f608f;
                z2 = z3;
                if (z3) {
                    z2 = z3;
                    if (!this.f606d.contains(x, y)) {
                        z2 = z3;
                        z = false;
                    }
                }
            } else {
                if (action == 3) {
                    z2 = this.f608f;
                    this.f608f = false;
                }
                z = true;
                z2 = false;
            }
            z = true;
        } else {
            if (this.f604b.contains(x, y)) {
                this.f608f = true;
                z = true;
            }
            z = true;
            z2 = false;
        }
        boolean z4 = false;
        if (z2) {
            if (!z || this.f605c.contains(x, y)) {
                Rect rect = this.f605c;
                f = x - rect.left;
                i = y - rect.top;
            } else {
                f = this.f603a.getWidth() / 2;
                i = this.f603a.getHeight() / 2;
            }
            motionEvent.setLocation(f, i);
            z4 = this.f603a.dispatchTouchEvent(motionEvent);
        }
        return z4;
    }
}
