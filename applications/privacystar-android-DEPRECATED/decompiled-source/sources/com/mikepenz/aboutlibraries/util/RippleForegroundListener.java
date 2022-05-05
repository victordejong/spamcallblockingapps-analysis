package com.mikepenz.aboutlibraries.util;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/util/RippleForegroundListener.class */
public class RippleForegroundListener implements View.OnTouchListener {
    private int rippleViewId;

    public RippleForegroundListener(int i) {
        this.rippleViewId = -1;
        this.rippleViewId = i;
    }

    public View findRippleView(View view) {
        if (view.getId() == this.rippleViewId) {
            return view;
        }
        if (view.getParent() instanceof View) {
            return findRippleView((View) view.getParent());
        }
        return null;
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float left = view.getLeft();
        float y = motionEvent.getY();
        float top = view.getTop();
        View findRippleView = findRippleView(view);
        if (findRippleView == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            findRippleView.drawableHotspotChanged(x + left, y + top);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 3) {
            switch (actionMasked) {
                case 0:
                    findRippleView.setPressed(true);
                    return false;
                case 1:
                    break;
                default:
                    return false;
            }
        }
        findRippleView.setPressed(false);
        return false;
    }
}
