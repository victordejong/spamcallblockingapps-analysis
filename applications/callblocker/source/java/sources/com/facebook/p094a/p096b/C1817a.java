package com.facebook.p094a.p096b;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import com.facebook.C2095j;
import com.facebook.p094a.C1904g;
import com.facebook.p094a.p096b.p097a.C1821a;
import com.facebook.p094a.p096b.p097a.C1829f;
import com.facebook.p094a.p099d.C1862b;
import java.lang.ref.WeakReference;
/* renamed from: com.facebook.a.b.a */
/* loaded from: classes-dex2jar.jar:com/facebook/a/b/a.class */
public class C1817a {

    /* renamed from: a */
    private static final String f5521a = C1817a.class.getCanonicalName();

    /* renamed from: com.facebook.a.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/b/a$a.class */
    public static class View$OnClickListenerC1819a implements View.OnClickListener {

        /* renamed from: a */
        private C1821a f5524a;

        /* renamed from: b */
        private WeakReference<View> f5525b;

        /* renamed from: c */
        private WeakReference<View> f5526c;

        /* renamed from: d */
        private View.OnClickListener f5527d;

        /* renamed from: e */
        private boolean f5528e;

        private View$OnClickListenerC1819a(C1821a c1821a, View view, View view2) {
            this.f5528e = false;
            if (c1821a == null || view == null || view2 == null) {
                return;
            }
            this.f5527d = C1829f.m16168g(view2);
            this.f5524a = c1821a;
            this.f5525b = new WeakReference<>(view2);
            this.f5526c = new WeakReference<>(view);
            this.f5528e = true;
        }

        /* renamed from: a */
        public boolean m16197a() {
            return this.f5528e;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f5527d != null) {
                this.f5527d.onClick(view);
            }
            if (this.f5526c.get() == null || this.f5525b.get() == null) {
                return;
            }
            C1817a.m16199c(this.f5524a, this.f5526c.get(), this.f5525b.get());
        }
    }

    /* renamed from: com.facebook.a.b.a$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/b/a$b.class */
    public static class C1820b implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        private C1821a f5529a;

        /* renamed from: b */
        private WeakReference<AdapterView> f5530b;

        /* renamed from: c */
        private WeakReference<View> f5531c;

        /* renamed from: d */
        private AdapterView.OnItemClickListener f5532d;

        /* renamed from: e */
        private boolean f5533e;

        private C1820b(C1821a c1821a, View view, AdapterView adapterView) {
            this.f5533e = false;
            if (c1821a == null || view == null || adapterView == null) {
                return;
            }
            this.f5532d = adapterView.getOnItemClickListener();
            this.f5529a = c1821a;
            this.f5530b = new WeakReference<>(adapterView);
            this.f5531c = new WeakReference<>(view);
            this.f5533e = true;
        }

        /* renamed from: a */
        public boolean m16191a() {
            return this.f5533e;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (this.f5532d != null) {
                this.f5532d.onItemClick(adapterView, view, i, j);
            }
            if (this.f5531c.get() == null || this.f5530b.get() == null) {
                return;
            }
            C1817a.m16199c(this.f5529a, this.f5531c.get(), this.f5530b.get());
        }
    }

    /* renamed from: a */
    public static View$OnClickListenerC1819a m16202a(C1821a c1821a, View view, View view2) {
        return new View$OnClickListenerC1819a(c1821a, view, view2);
    }

    /* renamed from: a */
    public static C1820b m16201a(C1821a c1821a, View view, AdapterView adapterView) {
        return new C1820b(c1821a, view, adapterView);
    }

    /* renamed from: c */
    public static void m16199c(C1821a c1821a, View view, View view2) {
        final String m16193c = c1821a.m16193c();
        final Bundle m16144a = C1833c.m16144a(c1821a, view, view2);
        if (m16144a.containsKey("_valueToSum")) {
            m16144a.putDouble("_valueToSum", C1862b.m16064a(m16144a.getString("_valueToSum")));
        }
        m16144a.putString("_is_fb_codeless", "1");
        C2095j.m15362f().execute(new Runnable() { // from class: com.facebook.a.b.a.1
            @Override // java.lang.Runnable
            public void run() {
                C1904g.m15933a(C2095j.m15360h()).m15931a(m16193c, m16144a);
            }
        });
    }
}
