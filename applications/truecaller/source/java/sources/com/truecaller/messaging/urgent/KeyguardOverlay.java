package com.truecaller.messaging.urgent;

import android.app.KeyguardManager;
import android.content.Context;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p195a.p237h1.C6320b;
import p193e.p194a.p195a.p237h1.C6322c;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��9\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b*\u0001\u000f\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\n\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0018R\u001e\u0010!\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lcom/truecaller/messaging/urgent/KeyguardOverlay;", "Landroid/view/View;", "Landroid/view/MotionEvent;", "event", "", "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "Lkotlin/Function0;", "Ls1/s;", "listener", "setOnInteractionListener", "(Ls1/z/b/a;)V", "ignoreKeyguard", "a", "(Z)V", "e/a/a/h1/b", "e", "Le/a/a/h1/b;", "gestureListener", "Landroid/view/GestureDetector;", "f", "Landroid/view/GestureDetector;", "gestureDetector", C22021b.f61237c, "Landroid/view/MotionEvent;", "upEvent", "Landroid/app/KeyguardManager;", AbstractC2405c.f7629a, "Landroid/app/KeyguardManager;", "keyguardManager", "downEvent", "d", "Ls1/z/b/a;", "onInteractionListener", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/urgent/KeyguardOverlay.class */
public final class KeyguardOverlay extends View {

    /* renamed from: g */
    public static final /* synthetic */ int f13890g = 0;

    /* renamed from: a */
    public MotionEvent f13891a;

    /* renamed from: b */
    public MotionEvent f13892b;

    /* renamed from: c */
    public final KeyguardManager f13893c;

    /* renamed from: d */
    public a<s> f13894d;

    /* renamed from: e */
    public final C6320b f13895e;

    /* renamed from: f */
    public final GestureDetector f13896f;

    /* renamed from: com.truecaller.messaging.urgent.KeyguardOverlay$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/urgent/KeyguardOverlay$a.class */
    public static final class RunnableC4269a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f13897a;

        /* renamed from: b */
        public final /* synthetic */ MotionEvent f13898b;

        /* renamed from: c */
        public final /* synthetic */ MotionEvent f13899c;

        public RunnableC4269a(View view, MotionEvent motionEvent, MotionEvent motionEvent2) {
            this.f13897a = view;
            this.f13898b = motionEvent;
            this.f13899c = motionEvent2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f13897a.dispatchTouchEvent(this.f13898b);
            this.f13897a.dispatchTouchEvent(this.f13899c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardOverlay(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        Object systemService = context.getSystemService("keyguard");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.KeyguardManager");
        this.f13893c = (KeyguardManager) systemService;
        C6320b c6320b = new C6320b(this, context);
        this.f13895e = c6320b;
        this.f13896f = new GestureDetector(context, c6320b);
    }

    /* renamed from: a */
    public final void m34878a(boolean z) {
        if (this.f13893c.isKeyguardLocked() && !z) {
            setVisibility(0);
            return;
        }
        MotionEvent motionEvent = this.f13891a;
        MotionEvent motionEvent2 = this.f13892b;
        setVisibility(8);
        ViewParent parent = getParent();
        ViewParent viewParent = parent;
        if (!(parent instanceof View)) {
            viewParent = null;
        }
        View view = (View) viewParent;
        if (view != null && motionEvent != null && motionEvent2 != null && SystemClock.uptimeMillis() - motionEvent2.getEventTime() < C6322c.f21142a) {
            motionEvent.offsetLocation(getLeft(), getTop());
            motionEvent2.offsetLocation(getLeft(), getTop());
            view.post(new RunnableC4269a(view, motionEvent, motionEvent2));
        }
        this.f13891a = null;
        this.f13892b = null;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        l.e(motionEvent, "event");
        this.f13896f.onTouchEvent(motionEvent);
        return true;
    }

    public final void setOnInteractionListener(a<s> aVar) {
        l.e(aVar, "listener");
        this.f13894d = aVar;
    }
}
