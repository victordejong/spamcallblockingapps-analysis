package com.facebook.appevents.p036r;

import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import com.facebook.appevents.C2271g;
import com.facebook.appevents.p036r.p037g.C2318a;
import com.facebook.appevents.p036r.p037g.C2326f;
import com.facebook.appevents.p038s.C2334b;
import java.lang.ref.WeakReference;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.appevents.r.d */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/d.class */
public class C2307d {

    /* renamed from: com.facebook.appevents.r.d$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/d$a.class */
    public static class View$OnTouchListenerC2308a implements View.OnTouchListener {

        /* renamed from: a */
        public C2318a f2771a;

        /* renamed from: b */
        public WeakReference<View> f2772b;

        /* renamed from: c */
        public WeakReference<View> f2773c;
        @Nullable

        /* renamed from: d */
        public View.OnTouchListener f2774d;

        /* renamed from: e */
        public boolean f2775e;

        /* renamed from: com.facebook.appevents.r.d$a$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/d$a$a.class */
        public class RunnableC2309a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ String f2776a;

            /* renamed from: b */
            public final /* synthetic */ Bundle f2777b;

            public RunnableC2309a(View$OnTouchListenerC2308a aVar, String str, Bundle bundle) {
                this.f2776a = str;
                this.f2777b = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2271g.m35329b(C6135n.m23746e()).m35331a(this.f2776a, this.f2777b);
            }
        }

        public View$OnTouchListenerC2308a(C2318a aVar, View view, View view2) {
            this.f2775e = false;
            if (aVar != null && view != null && view2 != null) {
                this.f2774d = C2326f.m35160g(view2);
                this.f2771a = aVar;
                this.f2772b = new WeakReference<>(view2);
                this.f2773c = new WeakReference<>(view);
                this.f2775e = true;
            }
        }

        /* renamed from: a */
        public boolean m35203a() {
            return this.f2775e;
        }

        /* renamed from: b */
        public final void m35202b() {
            C2318a aVar = this.f2771a;
            if (aVar != null) {
                String b = aVar.m35184b();
                Bundle a = C2303c.m35221a(this.f2771a, this.f2773c.get(), this.f2772b.get());
                if (a.containsKey("_valueToSum")) {
                    a.putDouble("_valueToSum", C2334b.m35128a(a.getString("_valueToSum")));
                }
                a.putString("_is_fb_codeless", "1");
                C6135n.m23737n().execute(new RunnableC2309a(this, b, a));
            }
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            boolean z = true;
            if (motionEvent.getAction() == 1) {
                m35202b();
            }
            View.OnTouchListener onTouchListener = this.f2774d;
            if (onTouchListener == null || !onTouchListener.onTouch(view, motionEvent)) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: a */
    public static View$OnTouchListenerC2308a m35204a(C2318a aVar, View view, View view2) {
        return new View$OnTouchListenerC2308a(aVar, view, view2);
    }
}
