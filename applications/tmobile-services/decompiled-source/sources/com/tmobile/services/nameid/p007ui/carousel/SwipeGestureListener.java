package com.tmobile.services.nameid.p007ui.carousel;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.tmobile.services.nameid.utility.LogUtil;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\b&\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0016\u0010\u0010J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J3\u0010\f\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH&¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH&¢\u0006\u0004\b\u0011\u0010\u0010R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0015\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/tmobile/services/nameid/ui/carousel/SwipeGestureListener;", "android/view/GestureDetector$SimpleOnGestureListener", "Landroid/view/MotionEvent;", "e", "", "onDown", "(Landroid/view/MotionEvent;)Z", "start", "end", "", "xVelocity", "yVelocity", "onFling", "(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z", "", "onLeftSwipe", "()V", "onRightSwipe", "", "SWIPE_DISTANCE_THRESHOLD", "I", "SWIPE_VELOCITY_THRESHOLD", "<init>", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.carousel.SwipeGestureListener */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/carousel/SwipeGestureListener.class */
public abstract class SwipeGestureListener extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: f */
    private final int f13919f = 100;

    /* renamed from: g */
    private final int f13920g = 100;

    /* renamed from: a */
    public abstract void m6185a();

    /* renamed from: b */
    public abstract void m6184b();

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(@Nullable MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onFling(@Nullable MotionEvent motionEvent, @Nullable MotionEvent motionEvent2, float f, float f2) {
        if (motionEvent == null || motionEvent2 == null) {
            return false;
        }
        float x = motionEvent2.getX() - motionEvent.getX();
        LogUtil.m5643d("SwipeGestureListener", "Checking fling with xDistance = [" + x + "] and xVelocity = [" + f + ']');
        if (Math.abs(x) <= this.f13919f || Math.abs(f) <= this.f13920g) {
            return false;
        }
        if (x < 0) {
            m6185a();
            return true;
        }
        m6184b();
        return true;
    }
}
