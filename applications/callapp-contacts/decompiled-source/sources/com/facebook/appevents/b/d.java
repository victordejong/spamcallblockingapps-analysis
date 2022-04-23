package com.facebook.appevents.b;

import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.appevents.b.a.f;
import com.facebook.appevents.f.b;
import com.facebook.g;
import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19481a = "com.facebook.appevents.b.d";

    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/d$a.class */
    public static final class a implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        boolean f19482a;

        /* renamed from: b  reason: collision with root package name */
        private com.facebook.appevents.b.a.a f19483b;

        /* renamed from: c  reason: collision with root package name */
        private WeakReference<View> f19484c;

        /* renamed from: d  reason: collision with root package name */
        private WeakReference<View> f19485d;
        private View.OnTouchListener e;

        public a(com.facebook.appevents.b.a.a aVar, View view, View view2) {
            this.f19482a = false;
            if (aVar != null && view != null && view2 != null) {
                this.e = f.h(view2);
                this.f19483b = aVar;
                this.f19484c = new WeakReference<>(view2);
                this.f19485d = new WeakReference<>(view);
                this.f19482a = true;
            }
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            com.facebook.appevents.b.a.a aVar;
            if (motionEvent.getAction() == 1 && (aVar = this.f19483b) != null) {
                final String str = aVar.f19442a;
                final Bundle a2 = c.a(this.f19483b, this.f19485d.get(), this.f19484c.get());
                if (a2.containsKey("_valueToSum")) {
                    a2.putDouble("_valueToSum", b.a(a2.getString("_valueToSum")));
                }
                a2.putString("_is_fb_codeless", "1");
                g.f().execute(new Runnable() { // from class: com.facebook.appevents.b.d.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (!com.facebook.internal.b.b.a.a(this)) {
                            try {
                                com.facebook.appevents.g.a(g.i()).a(str, a2);
                            } catch (Throwable th) {
                                com.facebook.internal.b.b.a.a(th, this);
                            }
                        }
                    }
                });
            }
            View.OnTouchListener onTouchListener = this.e;
            return onTouchListener != null && onTouchListener.onTouch(view, motionEvent);
        }
    }

    public static a a(com.facebook.appevents.b.a.a aVar, View view, View view2) {
        if (com.facebook.internal.b.b.a.a(d.class)) {
            return null;
        }
        try {
            return new a(aVar, view, view2);
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, d.class);
            return null;
        }
    }
}
