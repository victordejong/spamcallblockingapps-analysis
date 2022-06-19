package p193e.p194a.p195a.p237h1;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Build;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.urgent.DismissKeyguardActivity;
import com.truecaller.messaging.urgent.KeyguardOverlay;
import s1.z.c.l;
/* renamed from: e.a.a.h1.b */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/b.class */
public final class C6320b extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a */
    public final /* synthetic */ KeyguardOverlay f21139a;

    /* renamed from: b */
    public final /* synthetic */ Context f21140b;

    /* renamed from: e.a.a.h1.b$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/h1/b$a.class */
    public static final class RunnableC6321a implements Runnable {
        public RunnableC6321a() {
            C6320b.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C6320b.this.f21139a.setVisibility(0);
        }
    }

    public C6320b(KeyguardOverlay keyguardOverlay, Context context) {
        this.f21139a = keyguardOverlay;
        this.f21140b = context;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        l.e(motionEvent, "e");
        this.f21139a.f13891a = MotionEvent.obtain(motionEvent);
        return false;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        boolean z;
        l.e(motionEvent, "e");
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        KeyguardOverlay keyguardOverlay = this.f21139a;
        keyguardOverlay.f13892b = obtain;
        l.d(obtain, "event");
        ViewParent parent = keyguardOverlay.getParent();
        if (!(parent instanceof View)) {
            parent = null;
        }
        View view = (View) parent;
        if (view != null) {
            Rect rect = new Rect();
            for (Number number : C6322c.f21143b) {
                View findViewById = view.findViewById(number.intValue());
                if (findViewById != null) {
                    findViewById.getGlobalVisibleRect(rect);
                    if (rect.contains((int) obtain.getRawX(), (int) obtain.getRawY())) {
                        z = true;
                        break;
                    }
                }
            }
        }
        z = false;
        if (z) {
            this.f21139a.m34878a(true);
            this.f21139a.post(new RunnableC6321a());
            return false;
        }
        Context context = this.f21140b;
        if (!(context instanceof Activity)) {
            context = null;
        }
        Activity activity = (Activity) context;
        if (activity == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f21139a.f13893c.requestDismissKeyguard(activity, new KeyguardManager$KeyguardDismissCallbackC6319a(this));
            return false;
        }
        l.e(activity, AnalyticsConstants.CONTEXT);
        activity.startActivity(new Intent(activity, DismissKeyguardActivity.class).addFlags(268435456));
        return false;
    }
}
