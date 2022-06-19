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

    /* renamed from: a */
    private boolean f29007a;

    /* renamed from: b */
    private final Sensitivity f29008b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SwipeGestureListener$Sensitivity.class */
    public enum Sensitivity {
        HIGH((int) Activities.m27699a(65.0f)),
        MEDIUM((int) Activities.m27699a(115.0f)),
        LOW((int) Activities.m27699a(165.0f));
        
        private static final int THRESHOLD = (int) Activities.m27699a(60.0f);
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
        this.f29008b = sensitivity;
        this.f29007a = !z;
    }

    /* renamed from: b */
    private boolean m26555b() {
        if (!isUnlocked()) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.widget.SwipeGestureListener.1
                @Override // java.lang.Runnable
                public void run() {
                    FeedbackManager.get().m28669a(Activities.getString(2131886786), (Integer) 17);
                }
            });
            return true;
        }
        return true;
    }

    /* renamed from: a */
    protected boolean mo26557a() {
        return false;
    }

    /* renamed from: a */
    protected boolean mo26556a(float f) {
        return false;
    }

    /* renamed from: b */
    protected boolean mo26554b(float f) {
        return false;
    }

    public boolean isUnlocked() {
        return this.f29007a;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        return m26555b();
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return m26555b();
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
                if (Math.abs(x) > this.f29008b.getThreshold()) {
                    z = false;
                    if (Math.abs(f) > this.f29008b.getVelocityThreshold()) {
                        if (x > BitmapDescriptorFactory.HUE_RED) {
                            z = false;
                            if (f > BitmapDescriptorFactory.HUE_RED) {
                                z = mo26554b(f);
                            }
                        } else {
                            z = false;
                            if (f < BitmapDescriptorFactory.HUE_RED) {
                                z = mo26556a(f);
                            }
                        }
                    }
                }
            } else {
                z = false;
                if (Math.abs(y) > this.f29008b.getThreshold()) {
                    z = false;
                    if (Math.abs(f2) > this.f29008b.getVelocityThreshold()) {
                        z = false;
                        if (y > BitmapDescriptorFactory.HUE_RED) {
                            z = mo26557a();
                        }
                    }
                }
            }
        } catch (Exception e) {
            CLog.m27611a(SwipeGestureListener.class, "onFling error");
            z = false;
        }
        return z;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        m26555b();
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        return m26555b();
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return true;
    }
}
