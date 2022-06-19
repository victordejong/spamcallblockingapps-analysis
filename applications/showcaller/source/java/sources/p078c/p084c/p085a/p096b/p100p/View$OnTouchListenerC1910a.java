package p078c.p084c.p085a.p096b.p100p;

import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
/* renamed from: c.c.a.b.p.a */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/p/a.class */
public class View$OnTouchListenerC1910a implements View.OnTouchListener {

    /* renamed from: d */
    private final Dialog f6836d;

    /* renamed from: e */
    private final int f6837e;

    /* renamed from: f */
    private final int f6838f;

    /* renamed from: g */
    private final int f6839g;

    public View$OnTouchListenerC1910a(Dialog dialog, Rect rect) {
        this.f6836d = dialog;
        this.f6837e = rect.left;
        this.f6838f = rect.top;
        this.f6839g = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        View findViewById = view.findViewById(16908290);
        int left = this.f6837e + findViewById.getLeft();
        int width = findViewById.getWidth();
        int top = this.f6838f + findViewById.getTop();
        if (new RectF(left, top, width + left, findViewById.getHeight() + top).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            obtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            obtain.setAction(0);
            int i = this.f6839g;
            obtain.setLocation((-i) - 1, (-i) - 1);
        }
        view.performClick();
        return this.f6836d.onTouchEvent(obtain);
    }
}
