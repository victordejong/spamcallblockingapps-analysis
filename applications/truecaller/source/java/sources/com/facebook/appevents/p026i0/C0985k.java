package com.facebook.appevents.p026i0;

import android.view.MotionEvent;
import android.view.View;
import com.facebook.appevents.p026i0.p027n.C0993a;
import com.facebook.appevents.p026i0.p027n.C1000f;
import com.tenor.android.core.constant.ViewAction;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018��2\u00020\u0001:\u0001\nB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0007¨\u0006\u000b"}, d2 = {"Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener;", "", "()V", "getOnTouchListener", "Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;", "mapping", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "rootView", "Landroid/view/View;", "hostView", "AutoLoggingOnTouchListener", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.i0.k */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/k.class */
public final class C0985k {

    @Metadata(d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\u0018\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0001X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00050\tX\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0014"}, d2 = {"Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;", "Landroid/view/View$OnTouchListener;", "mapping", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "rootView", "Landroid/view/View;", "hostView", "(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)V", "existingOnTouchListener", "Ljava/lang/ref/WeakReference;", "supportCodelessLogging", "", "getSupportCodelessLogging", "()Z", "setSupportCodelessLogging", "(Z)V", "onTouch", ViewAction.VIEW, "motionEvent", "Landroid/view/MotionEvent;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.i0.k$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/k$a.class */
    public static final class View$OnTouchListenerC0986a implements View.OnTouchListener {

        /* renamed from: a */
        public final C0993a f2717a;

        /* renamed from: b */
        public final WeakReference<View> f2718b;

        /* renamed from: c */
        public final WeakReference<View> f2719c;

        /* renamed from: d */
        public final View.OnTouchListener f2720d;

        /* renamed from: e */
        public boolean f2721e = true;

        public View$OnTouchListenerC0986a(C0993a c0993a, View view, View view2) {
            l.e(c0993a, "mapping");
            l.e(view, "rootView");
            l.e(view2, "hostView");
            this.f2717a = c0993a;
            this.f2718b = new WeakReference<>(view2);
            this.f2719c = new WeakReference<>(view);
            C1000f c1000f = C1000f.f2756a;
            this.f2720d = C1000f.m41923g(view2);
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            l.e(view, ViewAction.VIEW);
            l.e(motionEvent, "motionEvent");
            View view2 = this.f2719c.get();
            View view3 = this.f2718b.get();
            boolean z = true;
            if (view2 != null && view3 != null && motionEvent.getAction() == 1) {
                C0977h.m41954a(this.f2717a, view2, view3);
            }
            View.OnTouchListener onTouchListener = this.f2720d;
            if (onTouchListener == null || !onTouchListener.onTouch(view, motionEvent)) {
                z = false;
            }
            return z;
        }
    }
}
