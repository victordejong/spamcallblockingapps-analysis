package com.privacystar.core.p011ui.walkthrough;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
/* renamed from: com.privacystar.core.ui.walkthrough.OnSwipeTouchListener */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/walkthrough/OnSwipeTouchListener.class */
public class OnSwipeTouchListener implements View.OnTouchListener {
    private final GestureDetector gestureDetector;

    /* renamed from: com.privacystar.core.ui.walkthrough.OnSwipeTouchListener$GestureListener */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/walkthrough/OnSwipeTouchListener$GestureListener.class */
    private final class GestureListener extends GestureDetector.SimpleOnGestureListener {
        private static final int SWIPE_THRESHOLD = 100;
        private static final int SWIPE_VELOCITY_THRESHOLD = 100;

        private GestureListener() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            boolean z;
            float y;
            float x;
            try {
                y = motionEvent2.getY() - motionEvent.getY();
                x = motionEvent2.getX() - motionEvent.getX();
            } catch (Exception e) {
                e.printStackTrace();
                z = false;
            }
            if (Math.abs(x) > Math.abs(y)) {
                z = false;
                if (Math.abs(x) > 100.0f) {
                    z = false;
                    if (Math.abs(f) > 100.0f) {
                        if (x > 0.0f) {
                            OnSwipeTouchListener.this.onSwipeRight();
                        } else {
                            OnSwipeTouchListener.this.onSwipeLeft();
                        }
                    }
                }
                return z;
            }
            z = false;
            if (Math.abs(y) > 100.0f) {
                z = false;
                if (Math.abs(f2) > 100.0f) {
                    if (y > 0.0f) {
                        OnSwipeTouchListener.this.onSwipeBottom();
                    } else {
                        OnSwipeTouchListener.this.onSwipeTop();
                    }
                }
            }
            return z;
            z = true;
            return z;
        }
    }

    public OnSwipeTouchListener(Context context) {
        this.gestureDetector = new GestureDetector(context, new GestureListener());
    }

    public void onSwipeBottom() {
    }

    public void onSwipeLeft() {
    }

    public void onSwipeRight() {
    }

    public void onSwipeTop() {
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.gestureDetector.onTouchEvent(motionEvent);
    }
}
