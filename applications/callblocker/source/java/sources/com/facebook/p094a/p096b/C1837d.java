package com.facebook.p094a.p096b;

import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.C2095j;
import com.facebook.p094a.C1904g;
import com.facebook.p094a.p096b.p097a.C1821a;
import com.facebook.p094a.p096b.p097a.C1829f;
import com.facebook.p094a.p099d.C1862b;
import java.lang.ref.WeakReference;
/* renamed from: com.facebook.a.b.d */
/* loaded from: classes-dex2jar.jar:com/facebook/a/b/d.class */
public class C1837d {

    /* renamed from: a */
    private static final String f5599a = C1837d.class.getCanonicalName();

    /* renamed from: com.facebook.a.b.d$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/b/d$a.class */
    public static class View$OnTouchListenerC1838a implements View.OnTouchListener {

        /* renamed from: a */
        private C1821a f5600a;

        /* renamed from: b */
        private WeakReference<View> f5601b;

        /* renamed from: c */
        private WeakReference<View> f5602c;

        /* renamed from: d */
        private View.OnTouchListener f5603d;

        /* renamed from: e */
        private boolean f5604e;

        public View$OnTouchListenerC1838a(C1821a c1821a, View view, View view2) {
            this.f5604e = false;
            if (c1821a == null || view == null || view2 == null) {
                return;
            }
            this.f5603d = C1829f.m16167h(view2);
            this.f5600a = c1821a;
            this.f5601b = new WeakReference<>(view2);
            this.f5602c = new WeakReference<>(view);
            this.f5604e = true;
        }

        /* renamed from: b */
        private void m16124b() {
            if (this.f5600a == null) {
                return;
            }
            final String m16193c = this.f5600a.m16193c();
            final Bundle m16144a = C1833c.m16144a(this.f5600a, this.f5602c.get(), this.f5601b.get());
            if (m16144a.containsKey("_valueToSum")) {
                m16144a.putDouble("_valueToSum", C1862b.m16064a(m16144a.getString("_valueToSum")));
            }
            m16144a.putString("_is_fb_codeless", "1");
            C2095j.m15362f().execute(new Runnable() { // from class: com.facebook.a.b.d.a.1
                @Override // java.lang.Runnable
                public void run() {
                    C1904g.m15933a(C2095j.m15360h()).m15931a(m16193c, m16144a);
                }
            });
        }

        /* renamed from: a */
        public boolean m16125a() {
            return this.f5604e;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            boolean z = true;
            if (motionEvent.getAction() == 1) {
                m16124b();
            }
            if (this.f5603d == null || !this.f5603d.onTouch(view, motionEvent)) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: a */
    public static View$OnTouchListenerC1838a m16126a(C1821a c1821a, View view, View view2) {
        return new View$OnTouchListenerC1838a(c1821a, view, view2);
    }
}
