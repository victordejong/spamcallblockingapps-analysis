package com.facebook.appevents.p280b;

import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.C10181g;
import com.facebook.appevents.C10046g;
import com.facebook.appevents.p280b.p281a.C9973a;
import com.facebook.appevents.p280b.p281a.C9981f;
import com.facebook.appevents.p285f.C10033b;
import com.facebook.internal.p299b.p301b.C10249a;
import java.lang.ref.WeakReference;
/* renamed from: com.facebook.appevents.b.d */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/d.class */
public class C9991d {

    /* renamed from: a */
    private static final String f33226a = "com.facebook.appevents.b.d";

    /* renamed from: com.facebook.appevents.b.d$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/d$a.class */
    public static final class View$OnTouchListenerC9992a implements View.OnTouchListener {

        /* renamed from: a */
        boolean f33227a;

        /* renamed from: b */
        private C9973a f33228b;

        /* renamed from: c */
        private WeakReference<View> f33229c;

        /* renamed from: d */
        private WeakReference<View> f33230d;

        /* renamed from: e */
        private View.OnTouchListener f33231e;

        public View$OnTouchListenerC9992a(C9973a c9973a, View view, View view2) {
            this.f33227a = false;
            if (c9973a == null || view == null || view2 == null) {
                return;
            }
            this.f33231e = C9981f.m23694h(view2);
            this.f33228b = c9973a;
            this.f33229c = new WeakReference<>(view2);
            this.f33230d = new WeakReference<>(view);
            this.f33227a = true;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            C9973a c9973a;
            if (motionEvent.getAction() == 1 && (c9973a = this.f33228b) != null) {
                final String str = c9973a.f33173a;
                final Bundle m23671a = C9987c.m23671a(this.f33228b, this.f33230d.get(), this.f33229c.get());
                if (m23671a.containsKey("_valueToSum")) {
                    m23671a.putDouble("_valueToSum", C10033b.m23559a(m23671a.getString("_valueToSum")));
                }
                m23671a.putString("_is_fb_codeless", "1");
                C10181g.m23293f().execute(new Runnable() { // from class: com.facebook.appevents.b.d.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (C10249a.m23108a(this)) {
                            return;
                        }
                        try {
                            C10046g.m23537a(C10181g.m23290i()).m23534a(str, m23671a);
                        } catch (Throwable th) {
                            C10249a.m23106a(th, this);
                        }
                    }
                });
            }
            View.OnTouchListener onTouchListener = this.f33231e;
            return onTouchListener != null && onTouchListener.onTouch(view, motionEvent);
        }
    }

    /* renamed from: a */
    public static View$OnTouchListenerC9992a m23657a(C9973a c9973a, View view, View view2) {
        if (C10249a.m23108a(C9991d.class)) {
            return null;
        }
        try {
            return new View$OnTouchListenerC9992a(c9973a, view, view2);
        } catch (Throwable th) {
            C10249a.m23106a(th, C9991d.class);
            return null;
        }
    }
}
