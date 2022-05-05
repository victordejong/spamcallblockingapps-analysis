package androidx.core.view;

import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/core/view/DragStartHelper.class */
public class DragStartHelper {

    /* renamed from: a */
    private final OnDragStartListener f3223a;

    /* renamed from: b */
    private int f3224b;

    /* renamed from: c */
    private int f3225c;

    /* renamed from: d */
    private boolean f3226d;

    /* renamed from: androidx.core.view.DragStartHelper$1 */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/DragStartHelper$1.class */
    class View$OnLongClickListenerC02261 implements View.OnLongClickListener {

        /* renamed from: f */
        final /* synthetic */ DragStartHelper f3227f;

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            return this.f3227f.m19316a(view);
        }
    }

    /* renamed from: androidx.core.view.DragStartHelper$2 */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/DragStartHelper$2.class */
    class View$OnTouchListenerC02272 implements View.OnTouchListener {

        /* renamed from: f */
        final /* synthetic */ DragStartHelper f3228f;

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return this.f3228f.m19315b(view, motionEvent);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/DragStartHelper$OnDragStartListener.class */
    public interface OnDragStartListener {
        /* renamed from: a */
        boolean m19314a(View view, DragStartHelper dragStartHelper);
    }

    /* renamed from: a */
    public boolean m19316a(View view) {
        return this.f3223a.m19314a(view, this);
    }

    /* renamed from: b */
    public boolean m19315b(View view, MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 3) {
                        return false;
                    }
                } else if (!MotionEventCompat.m19273i(motionEvent, 8194) || (motionEvent.getButtonState() & 1) == 0 || this.f3226d) {
                    return false;
                } else {
                    if (this.f3224b == x && this.f3225c == y) {
                        return false;
                    }
                    this.f3224b = x;
                    this.f3225c = y;
                    boolean a = this.f3223a.m19314a(view, this);
                    this.f3226d = a;
                    return a;
                }
            }
            this.f3226d = false;
            return false;
        }
        this.f3224b = x;
        this.f3225c = y;
        return false;
    }
}
