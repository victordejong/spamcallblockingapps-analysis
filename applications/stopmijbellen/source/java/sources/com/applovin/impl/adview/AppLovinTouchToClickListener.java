package com.applovin.impl.adview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.C1492g;
import com.applovin.sdk.AppLovinSdkUtils;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AppLovinTouchToClickListener.class */
public class AppLovinTouchToClickListener implements View.OnTouchListener {

    /* renamed from: a */
    private final long f3375a;

    /* renamed from: b */
    private final int f3376b;

    /* renamed from: c */
    private final int f3377c;

    /* renamed from: d */
    private final ClickRecognitionState f3378d;

    /* renamed from: e */
    private long f3379e;

    /* renamed from: f */
    private PointF f3380f;

    /* renamed from: g */
    private boolean f3381g;

    /* renamed from: h */
    private final Context f3382h;

    /* renamed from: i */
    private final OnClickListener f3383i;

    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AppLovinTouchToClickListener$ClickRecognitionState.class */
    public enum ClickRecognitionState {
        DISABLED,
        ACTION_DOWN,
        ACTION_POINTER_UP,
        ACTION_UP
    }

    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener.class */
    public interface OnClickListener {
        void onClick(View view, PointF pointF);
    }

    public AppLovinTouchToClickListener(C1408l c1408l, C1314b<Integer> c1314b, Context context, OnClickListener onClickListener) {
        this.f3375a = ((Long) c1408l.m5511a(C1314b.f4729aK)).longValue();
        this.f3376b = ((Integer) c1408l.m5511a(C1314b.f4730aL)).intValue();
        this.f3377c = AppLovinSdkUtils.dpToPx(context, ((Integer) c1408l.m5511a(C1314b.f4733aO)).intValue());
        this.f3378d = ClickRecognitionState.values()[((Integer) c1408l.m5511a(c1314b)).intValue()];
        this.f3382h = context;
        this.f3383i = onClickListener;
    }

    /* renamed from: a */
    private float m7088a(float f) {
        return f / this.f3382h.getResources().getDisplayMetrics().density;
    }

    /* renamed from: a */
    private float m7087a(PointF pointF, PointF pointF2) {
        float f = pointF.x - pointF2.x;
        float f2 = pointF.y - pointF2.y;
        return m7088a((float) Math.sqrt((f2 * f2) + (f * f)));
    }

    /* renamed from: a */
    private void m7085a(View view, MotionEvent motionEvent) {
        this.f3383i.onClick(view, new PointF(motionEvent.getRawX(), motionEvent.getRawY()));
        this.f3381g = true;
    }

    /* renamed from: a */
    private boolean m7086a(MotionEvent motionEvent) {
        if (this.f3377c <= 0) {
            return true;
        }
        Point m5075a = C1492g.m5075a(this.f3382h);
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        int i = this.f3377c;
        return rawX >= ((float) i) && rawY >= ((float) i) && rawX <= ((float) (m5075a.x - i)) && rawY <= ((float) (m5075a.y - i));
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 6 || this.f3381g || this.f3378d != ClickRecognitionState.ACTION_POINTER_UP) {
                    return true;
                }
            } else if (this.f3381g || this.f3378d != ClickRecognitionState.ACTION_UP) {
                if (this.f3378d != ClickRecognitionState.DISABLED) {
                    return true;
                }
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = this.f3379e;
                float m7087a = m7087a(this.f3380f, new PointF(motionEvent.getX(), motionEvent.getY()));
                if (this.f3381g) {
                    return true;
                }
                long j2 = this.f3375a;
                if (j2 >= 0 && elapsedRealtime - j >= j2) {
                    return true;
                }
                int i = this.f3376b;
                if (i >= 0 && m7087a >= i) {
                    return true;
                }
            }
        } else if (this.f3378d != ClickRecognitionState.ACTION_DOWN) {
            this.f3379e = SystemClock.elapsedRealtime();
            this.f3380f = new PointF(motionEvent.getX(), motionEvent.getY());
            this.f3381g = false;
            return true;
        } else if (!m7086a(motionEvent)) {
            return true;
        }
        m7085a(view, motionEvent);
        return true;
    }
}
