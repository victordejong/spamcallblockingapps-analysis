package androidx.appcompat.widget;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$o.class */
class SearchView$o extends TouchDelegate {

    /* renamed from: a */
    private final View f475a;

    /* renamed from: e */
    private final int f479e;

    /* renamed from: f */
    private boolean f480f;

    /* renamed from: b */
    private final Rect f476b = new Rect();

    /* renamed from: d */
    private final Rect f478d = new Rect();

    /* renamed from: c */
    private final Rect f477c = new Rect();

    public SearchView$o(Rect rect, Rect rect2, View view) {
        super(rect, view);
        this.f479e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        m14718a(rect, rect2);
        this.f475a = view;
    }

    /* renamed from: a */
    public void m14718a(Rect rect, Rect rect2) {
        this.f476b.set(rect);
        this.f478d.set(rect);
        Rect rect3 = this.f478d;
        int i = this.f479e;
        rect3.inset(-i, -i);
        this.f477c.set(rect2);
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
                boolean z3 = this.f480f;
                z2 = z3;
                if (z3) {
                    z2 = z3;
                    if (!this.f478d.contains(x, y)) {
                        z2 = z3;
                        z = false;
                    }
                }
            } else {
                if (action == 3) {
                    z2 = this.f480f;
                    this.f480f = false;
                }
                z = true;
                z2 = false;
            }
            z = true;
        } else {
            if (this.f476b.contains(x, y)) {
                this.f480f = true;
                z = true;
            }
            z = true;
            z2 = false;
        }
        boolean z4 = false;
        if (z2) {
            if (!z || this.f477c.contains(x, y)) {
                Rect rect = this.f477c;
                f = x - rect.left;
                i = y - rect.top;
            } else {
                f = this.f475a.getWidth() / 2;
                i = this.f475a.getHeight() / 2;
            }
            motionEvent.setLocation(f, i);
            z4 = this.f475a.dispatchTouchEvent(motionEvent);
        }
        return z4;
    }
}
