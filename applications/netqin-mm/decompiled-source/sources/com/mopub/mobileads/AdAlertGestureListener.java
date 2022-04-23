package com.mopub.mobileads;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.mopub.common.AdReport;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdAlertGestureListener.class */
public class AdAlertGestureListener extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a */
    public final AdReport f33964a;

    /* renamed from: b */
    public float f33965b;

    /* renamed from: c */
    public float f33966c;

    /* renamed from: d */
    public boolean f33967d;

    /* renamed from: e */
    public boolean f33968e;

    /* renamed from: f */
    public AdAlertReporter f33969f;

    /* renamed from: g */
    public int f33970g;

    /* renamed from: h */
    public float f33971h;

    /* renamed from: i */
    public ZigZagState f33972i = ZigZagState.UNSET;

    /* renamed from: j */
    public View f33973j;

    /* renamed from: k */
    public boolean f33974k;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdAlertGestureListener$ZigZagState.class */
    public enum ZigZagState {
        UNSET,
        GOING_RIGHT,
        GOING_LEFT,
        FINISHED,
        FAILED
    }

    /* renamed from: com.mopub.mobileads.AdAlertGestureListener$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AdAlertGestureListener$a.class */
    public static /* synthetic */ class C8752a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f33975a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[ZigZagState.values().length];
            f33975a = iArr;
            try {
                iArr[ZigZagState.UNSET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33975a[ZigZagState.GOING_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f33975a[ZigZagState.GOING_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f33975a[ZigZagState.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public AdAlertGestureListener(View view, AdReport adReport) {
        this.f33965b = 100.0f;
        if (view != null && view.getWidth() > 0) {
            this.f33965b = Math.min(100.0f, view.getWidth() / 3.0f);
        }
        this.f33974k = false;
        this.f33973j = view;
        this.f33964a = adReport;
    }

    /* renamed from: a */
    public void m4500a() {
        Context context = this.f33973j.getContext();
        if (this.f33972i == ZigZagState.FINISHED && context != null) {
            AdAlertReporter adAlertReporter = new AdAlertReporter(context, this.f33973j, this.f33964a);
            this.f33969f = adAlertReporter;
            adAlertReporter.send();
        }
        m4491e();
    }

    /* renamed from: a */
    public final boolean m4499a(float f) {
        return f < this.f33966c;
    }

    /* renamed from: a */
    public final boolean m4498a(MotionEvent motionEvent, MotionEvent motionEvent2) {
        boolean z = false;
        if (motionEvent != null) {
            if (motionEvent2 == null) {
                z = false;
            } else {
                z = false;
                if (Math.abs(motionEvent2.getY() - motionEvent.getY()) > 100.0f) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public final void m4497b() {
        int i = this.f33970g + 1;
        this.f33970g = i;
        if (i >= 4) {
            this.f33972i = ZigZagState.FINISHED;
        }
    }

    /* renamed from: b */
    public final boolean m4496b(float f) {
        return f > this.f33966c;
    }

    /* renamed from: c */
    public boolean m4495c() {
        return this.f33974k;
    }

    /* renamed from: c */
    public final boolean m4494c(float f) {
        if (this.f33967d) {
            return true;
        }
        if (f > this.f33971h - this.f33965b) {
            return false;
        }
        this.f33968e = false;
        this.f33967d = true;
        m4497b();
        return true;
    }

    /* renamed from: d */
    public void m4493d() {
        this.f33974k = false;
    }

    /* renamed from: d */
    public final boolean m4492d(float f) {
        if (this.f33968e) {
            return true;
        }
        if (f < this.f33971h + this.f33965b) {
            return false;
        }
        this.f33967d = false;
        this.f33968e = true;
        return true;
    }

    /* renamed from: e */
    public void m4491e() {
        this.f33970g = 0;
        this.f33972i = ZigZagState.UNSET;
    }

    /* renamed from: e */
    public final void m4490e(float f) {
        if (f > this.f33971h) {
            this.f33972i = ZigZagState.GOING_RIGHT;
        }
    }

    /* renamed from: f */
    public final void m4489f(float f) {
        if (m4494c(f) && m4496b(f)) {
            this.f33972i = ZigZagState.GOING_RIGHT;
            this.f33971h = f;
        }
    }

    /* renamed from: g */
    public final void m4488g(float f) {
        if (m4492d(f) && m4499a(f)) {
            this.f33972i = ZigZagState.GOING_LEFT;
            this.f33971h = f;
        }
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (this.f33972i == ZigZagState.FINISHED) {
            return super.onScroll(motionEvent, motionEvent2, f, f2);
        }
        if (m4498a(motionEvent, motionEvent2)) {
            this.f33972i = ZigZagState.FAILED;
            return super.onScroll(motionEvent, motionEvent2, f, f2);
        }
        int i = C8752a.f33975a[this.f33972i.ordinal()];
        if (i == 1) {
            this.f33971h = motionEvent.getX();
            m4490e(motionEvent2.getX());
        } else if (i == 2) {
            m4488g(motionEvent2.getX());
        } else if (i == 3) {
            m4489f(motionEvent2.getX());
        }
        this.f33966c = motionEvent2.getX();
        return super.onScroll(motionEvent, motionEvent2, f, f2);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        this.f33974k = true;
        return super.onSingleTapUp(motionEvent);
    }
}
