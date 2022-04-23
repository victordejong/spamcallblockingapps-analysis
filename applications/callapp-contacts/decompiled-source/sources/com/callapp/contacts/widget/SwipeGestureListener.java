package com.callapp.contacts.widget;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SwipeGestureListener.class */
public class SwipeGestureListener extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a  reason: collision with root package name */
    private boolean f16667a;

    /* renamed from: b  reason: collision with root package name */
    private final Sensitivity f16668b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SwipeGestureListener$Sensitivity.class */
    public enum Sensitivity {
        HIGH((int) Activities.a(65.0f)),
        MEDIUM((int) Activities.a(115.0f)),
        LOW((int) Activities.a(165.0f));
        
        private static final int THRESHOLD = (int) Activities.a(60.0f);
        private final int velocityThreshold;

        Sensitivity(int i) {
            this.velocityThreshold = i;
        }

        public final int getThreshold() {
            return THRESHOLD;
        }

        public final int getVelocityThreshold() {
            return this.velocityThreshold;
        }
    }

    public SwipeGestureListener() {
        this(true, Sensitivity.HIGH);
    }

    public SwipeGestureListener(boolean z, Sensitivity sensitivity) {
        this.f16668b = sensitivity;
        this.f16667a = !z;
    }

    private boolean b() {
        if (isUnlocked()) {
            return true;
        }
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.widget.SwipeGestureListener.1
            @Override // java.lang.Runnable
            public void run() {
                FeedbackManager.get().a(Activities.getString(2131886786), (Integer) 17);
            }
        });
        return true;
    }

    protected boolean a() {
        return false;
    }

    protected boolean a(float f) {
        return false;
    }

    protected boolean b(float f) {
        return false;
    }

    public boolean isUnlocked() {
        return this.f16667a;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        return b();
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return b();
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        boolean z;
        try {
            float y = motionEvent2.getY() - motionEvent.getY();
            float x = motionEvent2.getX() - motionEvent.getX();
            if (Math.abs(x) > Math.abs(y)) {
                z = false;
                if (Math.abs(x) > this.f16668b.getThreshold()) {
                    z = false;
                    if (Math.abs(f) > this.f16668b.getVelocityThreshold()) {
                        if (x > BitmapDescriptorFactory.HUE_RED) {
                            z = false;
                            if (f > BitmapDescriptorFactory.HUE_RED) {
                                z = b(f);
                            }
                        } else {
                            z = false;
                            if (f < BitmapDescriptorFactory.HUE_RED) {
                                z = a(f);
                            }
                        }
                    }
                }
            } else {
                z = false;
                if (Math.abs(y) > this.f16668b.getThreshold()) {
                    z = false;
                    if (Math.abs(f2) > this.f16668b.getVelocityThreshold()) {
                        z = false;
                        if (y > BitmapDescriptorFactory.HUE_RED) {
                            z = a();
                        }
                    }
                }
            }
        } catch (Exception e) {
            CLog.a(SwipeGestureListener.class, "onFling error");
            z = false;
        }
        return z;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        b();
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        return b();
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return true;
    }
}
