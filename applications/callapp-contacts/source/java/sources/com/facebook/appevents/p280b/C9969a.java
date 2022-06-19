package com.facebook.appevents.p280b;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import com.facebook.C10181g;
import com.facebook.appevents.C10046g;
import com.facebook.appevents.p280b.p281a.C9973a;
import com.facebook.appevents.p280b.p281a.C9981f;
import com.facebook.appevents.p285f.C10033b;
import com.facebook.internal.p299b.p301b.C10249a;
import java.lang.ref.WeakReference;
/* renamed from: com.facebook.appevents.b.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a.class */
public class C9969a {

    /* renamed from: a */
    private static final String f33160a = "com.facebook.appevents.b.a";

    /* renamed from: com.facebook.appevents.b.a$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a$a.class */
    public static final class View$OnClickListenerC9971a implements View.OnClickListener {

        /* renamed from: a */
        boolean f33163a;

        /* renamed from: b */
        private C9973a f33164b;

        /* renamed from: c */
        private WeakReference<View> f33165c;

        /* renamed from: d */
        private WeakReference<View> f33166d;

        /* renamed from: e */
        private View.OnClickListener f33167e;

        private View$OnClickListenerC9971a(C9973a c9973a, View view, View view2) {
            this.f33163a = false;
            if (c9973a == null || view == null || view2 == null) {
                return;
            }
            this.f33167e = C9981f.m23695g(view2);
            this.f33164b = c9973a;
            this.f33165c = new WeakReference<>(view2);
            this.f33166d = new WeakReference<>(view);
            this.f33163a = true;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (C10249a.m23108a(this)) {
                return;
            }
            try {
                View.OnClickListener onClickListener = this.f33167e;
                if (onClickListener != null) {
                    onClickListener.onClick(view);
                }
                if (this.f33166d.get() == null || this.f33165c.get() == null) {
                    return;
                }
                C9969a.m23718b(this.f33164b, this.f33166d.get(), this.f33165c.get());
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
            }
        }
    }

    /* renamed from: com.facebook.appevents.b.a$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a$b.class */
    public static final class C9972b implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        boolean f33168a;

        /* renamed from: b */
        private C9973a f33169b;

        /* renamed from: c */
        private WeakReference<AdapterView> f33170c;

        /* renamed from: d */
        private WeakReference<View> f33171d;

        /* renamed from: e */
        private AdapterView.OnItemClickListener f33172e;

        private C9972b(C9973a c9973a, View view, AdapterView adapterView) {
            this.f33168a = false;
            if (c9973a == null || view == null || adapterView == null) {
                return;
            }
            this.f33172e = adapterView.getOnItemClickListener();
            this.f33169b = c9973a;
            this.f33170c = new WeakReference<>(adapterView);
            this.f33171d = new WeakReference<>(view);
            this.f33168a = true;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            AdapterView.OnItemClickListener onItemClickListener = this.f33172e;
            if (onItemClickListener != null) {
                onItemClickListener.onItemClick(adapterView, view, i, j);
            }
            if (this.f33171d.get() == null || this.f33170c.get() == null) {
                return;
            }
            C9969a.m23718b(this.f33169b, this.f33171d.get(), this.f33170c.get());
        }
    }

    /* renamed from: a */
    public static View$OnClickListenerC9971a m23720a(C9973a c9973a, View view, View view2) {
        if (C10249a.m23108a(C9969a.class)) {
            return null;
        }
        try {
            return new View$OnClickListenerC9971a(c9973a, view, view2);
        } catch (Throwable th) {
            C10249a.m23106a(th, C9969a.class);
            return null;
        }
    }

    /* renamed from: a */
    public static C9972b m23719a(C9973a c9973a, View view, AdapterView adapterView) {
        if (C10249a.m23108a(C9969a.class)) {
            return null;
        }
        try {
            return new C9972b(c9973a, view, adapterView);
        } catch (Throwable th) {
            C10249a.m23106a(th, C9969a.class);
            return null;
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m23718b(C9973a c9973a, View view, View view2) {
        if (C10249a.m23108a(C9969a.class)) {
            return;
        }
        try {
            if (C10249a.m23108a(C9969a.class)) {
                return;
            }
            final String str = c9973a.f33173a;
            final Bundle m23671a = C9987c.m23671a(c9973a, view, view2);
            if (!C10249a.m23108a(C9969a.class)) {
                try {
                    String string = m23671a.getString("_valueToSum");
                    if (string != null) {
                        m23671a.putDouble("_valueToSum", C10033b.m23559a(string));
                    }
                    m23671a.putString("_is_fb_codeless", "1");
                } catch (Throwable th) {
                    C10249a.m23106a(th, C9969a.class);
                }
            }
            C10181g.m23293f().execute(new Runnable() { // from class: com.facebook.appevents.b.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        C10046g.m23537a(C10181g.m23290i()).m23534a(str, m23671a);
                    } catch (Throwable th2) {
                        C10249a.m23106a(th2, this);
                    }
                }
            });
        } catch (Throwable th2) {
            C10249a.m23106a(th2, C9969a.class);
        }
    }
}
