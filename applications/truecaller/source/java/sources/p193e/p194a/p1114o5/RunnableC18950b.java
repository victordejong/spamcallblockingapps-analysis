package p193e.p194a.p1114o5;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewParent;
/* renamed from: e.a.o5.b */
/* loaded from: classes15-dex2jar.jar:e/a/o5/b.class */
public final /* synthetic */ class RunnableC18950b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ View f53100a;

    /* renamed from: b */
    public final /* synthetic */ int f53101b;

    /* renamed from: c */
    public final /* synthetic */ int f53102c;

    public /* synthetic */ RunnableC18950b(View view, int i, int i2) {
        this.f53100a = view;
        this.f53101b = i;
        this.f53102c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TouchDelegate touchDelegate;
        View view = this.f53100a;
        int i = this.f53101b;
        int i2 = this.f53102c;
        Rect rect = new Rect();
        view.getHitRect(rect);
        float max = Math.max(i - rect.width(), 0) / 2;
        float max2 = Math.max(i2 - rect.height(), 0) / 2;
        if (max == 0.0f && max2 == 0.0f) {
            touchDelegate = null;
        } else {
            rect.left = (int) (rect.left - max);
            rect.right = (int) (rect.right + max);
            rect.top = (int) (rect.top - max2);
            rect.bottom = (int) (rect.bottom + max2);
            touchDelegate = new TouchDelegate(rect, view);
        }
        if (touchDelegate == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (!(parent instanceof View)) {
            return;
        }
        ((View) parent).setTouchDelegate(touchDelegate);
    }
}
