package p208q3;

import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
/* renamed from: q3.a */
/* loaded from: classes-dex2jar.jar:q3/a.class */
public class View$OnTouchListenerC4153a implements View.OnTouchListener {

    /* renamed from: a */
    public final Dialog f13107a;

    /* renamed from: b */
    public final int f13108b;

    /* renamed from: c */
    public final int f13109c;

    /* renamed from: d */
    public final int f13110d;

    public View$OnTouchListenerC4153a(Dialog dialog, Rect rect) {
        this.f13107a = dialog;
        this.f13108b = rect.left;
        this.f13109c = rect.top;
        this.f13110d = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        View findViewById = view.findViewById(16908290);
        int left = findViewById.getLeft() + this.f13108b;
        int width = findViewById.getWidth();
        int top = findViewById.getTop() + this.f13109c;
        if (new RectF(left, top, width + left, findViewById.getHeight() + top).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            obtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            obtain.setAction(0);
            int i = this.f13110d;
            obtain.setLocation((-i) - 1, (-i) - 1);
        }
        view.performClick();
        return this.f13107a.onTouchEvent(obtain);
    }
}
