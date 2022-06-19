package com.allinone.callerid.mvc.view.recorder;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import androidx.core.widget.NestedScrollView;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/view/recorder/MyNestedScrollView.class */
public class MyNestedScrollView extends NestedScrollView {

    /* renamed from: F */
    private int f11426F;

    /* renamed from: G */
    private int f11427G;

    /* renamed from: H */
    private int f11428H;

    public MyNestedScrollView(Context context) {
        super(context);
        this.f11428H = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    public MyNestedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11428H = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    public MyNestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11428H = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    @Override // androidx.core.widget.NestedScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f11426F = (int) motionEvent.getRawX();
            this.f11427G = (int) motionEvent.getRawY();
        } else if (action == 2 && Math.abs(((int) motionEvent.getRawY()) - this.f11427G) > this.f11428H) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }
}
