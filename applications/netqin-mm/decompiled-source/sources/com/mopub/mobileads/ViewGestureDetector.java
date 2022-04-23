package com.mopub.mobileads;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.mopub.common.AdReport;
import com.mopub.common.VisibleForTesting;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/ViewGestureDetector.class */
public class ViewGestureDetector extends GestureDetector {

    /* renamed from: a */
    public final View f34430a;

    /* renamed from: b */
    public AdAlertGestureListener f34431b;

    public ViewGestureDetector(Context context, View view, AdReport adReport) {
        this(context, view, new AdAlertGestureListener(view, adReport));
    }

    public ViewGestureDetector(Context context, View view, AdAlertGestureListener adAlertGestureListener) {
        super(context, adAlertGestureListener);
        this.f34431b = adAlertGestureListener;
        this.f34430a = view;
        setIsLongpressEnabled(false);
    }

    /* renamed from: a */
    public void m4161a() {
        this.f34431b.m4491e();
    }

    /* renamed from: a */
    public final boolean m4160a(MotionEvent motionEvent, View view) {
        boolean z = false;
        if (motionEvent != null) {
            if (view == null) {
                z = false;
            } else {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                z = false;
                if (x >= 0.0f) {
                    z = false;
                    if (x <= view.getWidth()) {
                        z = false;
                        if (y >= 0.0f) {
                            z = false;
                            if (y <= view.getHeight()) {
                                z = true;
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public boolean isClicked() {
        return this.f34431b.m4495c();
    }

    public void onResetUserClick() {
        this.f34431b.m4493d();
    }

    @Override // android.view.GestureDetector
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean onTouchEvent = super.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 1) {
            this.f34431b.m4500a();
        } else if (action == 2 && !m4160a(motionEvent, this.f34430a)) {
            m4161a();
        }
        return onTouchEvent;
    }

    @VisibleForTesting
    public void setClicked(boolean z) {
        this.f34431b.f33974k = z;
    }
}
