package com.firstorion.libcyd;

import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/ContentMoveManager.class */
final class ContentMoveManager implements View.OnTouchListener {
    private final int height;
    private boolean inMove;
    private float pointerStartY;
    private float viewStartY;
    private final WindowManager windowManager;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ContentMoveManager(WindowManager windowManager) {
        this.windowManager = windowManager;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        this.height = displayMetrics.heightPixels;
    }

    private int ensureBetween(int i, int i2, int i3) {
        return Math.min(Math.max(i, i3), i2);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) view.getLayoutParams();
        if (motionEvent.getAction() == 0) {
            this.inMove = true;
            this.viewStartY = layoutParams.y;
            this.pointerStartY = motionEvent.getRawY();
            return true;
        } else if (!this.inMove) {
            return false;
        } else {
            if (motionEvent.getAction() == 2) {
                layoutParams.y = ensureBetween(0, this.height - layoutParams.height, (int) ((motionEvent.getRawY() - this.pointerStartY) + this.viewStartY));
                this.windowManager.updateViewLayout(view, layoutParams);
                return true;
            } else if (motionEvent.getAction() != 1 && motionEvent.getAction() != 3) {
                return true;
            } else {
                this.inMove = false;
                return true;
            }
        }
    }
}
