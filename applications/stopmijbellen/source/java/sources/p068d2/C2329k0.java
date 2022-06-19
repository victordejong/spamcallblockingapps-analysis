package p068d2;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.support.p012v4.media.AbstractC0081a;
import android.support.p012v4.media.C0082b;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.VideoView;
import androidx.recyclerview.widget.C0608b;
import com.adcolony.sdk.AdColonyInterstitialActivity;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import p007a6.C0028d;
/* renamed from: d2.k0 */
/* loaded from: classes-dex2jar.jar:d2/k0.class */
public class C2329k0 {

    /* renamed from: a */
    public ConcurrentHashMap<String, Runnable> f8328a;

    /* renamed from: b */
    public HashMap<String, C2322j0> f8329b;

    /* renamed from: c */
    public ConcurrentHashMap<String, C2387q> f8330c;

    /* renamed from: d */
    public ConcurrentHashMap<String, AbstractC2328k> f8331d;

    /* renamed from: e */
    public ConcurrentHashMap<String, AbstractC2328k> f8332e;

    /* renamed from: f */
    public Map<String, C2319j> f8333f;

    /* renamed from: g */
    public final Object f8334g = new Object();

    /* renamed from: d2.k0$a */
    /* loaded from: classes-dex2jar.jar:d2/k0$a.class */
    public class C2330a implements AbstractC2458y0 {
        public C2330a() {
            C2329k0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2329k0 c2329k0 = C2329k0.this;
            Objects.requireNonNull(c2329k0);
            String m3697o = c2410t0.f8537b.m3697o(FacebookAdapter.KEY_ID);
            AbstractC2328k remove = c2329k0.f8331d.remove(m3697o);
            if (remove == null) {
                c2329k0.m3634e(c2410t0.f8536a, m3697o);
                return;
            }
            C2315i3.m3649v(c2329k0.f8328a.remove(m3697o));
            c2329k0.m3637b(remove);
        }
    }

    /* renamed from: d2.k0$b */
    /* loaded from: classes-dex2jar.jar:d2/k0$b.class */
    public class C2331b implements AbstractC2458y0 {
        public C2331b() {
            C2329k0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2329k0 c2329k0 = C2329k0.this;
            Objects.requireNonNull(c2329k0);
            C2267f4 c2267f4 = c2410t0.f8537b;
            String m3697o = c2267f4.m3697o(FacebookAdapter.KEY_ID);
            if (C2227e4.m3735r(c2267f4, "type") == 0) {
                C2387q remove = c2329k0.f8330c.remove(m3697o);
                if (!C2408t.m3590e() || remove == null || !remove.m3615c()) {
                    c2329k0.m3634e(c2410t0.f8536a, m3697o);
                } else {
                    C2315i3.m3652s(new RunnableC2358l0(c2329k0));
                }
            }
        }
    }

    /* renamed from: d2.k0$c */
    /* loaded from: classes-dex2jar.jar:d2/k0$c.class */
    public class C2332c implements AbstractC2458y0 {

        /* renamed from: d2.k0$c$a */
        /* loaded from: classes-dex2jar.jar:d2/k0$c$a.class */
        public class RunnableC2333a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f8338a;

            public RunnableC2333a(C2410t0 c2410t0) {
                C2332c.this = r4;
                this.f8338a = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC0081a abstractC0081a;
                C2387q c2387q = C2329k0.this.f8330c.get(this.f8338a.f8537b.m3697o(FacebookAdapter.KEY_ID));
                if (c2387q == null || (abstractC0081a = c2387q.f8436a) == null) {
                    return;
                }
                Objects.requireNonNull(abstractC0081a);
            }
        }

        public C2332c() {
            C2329k0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2315i3.m3652s(new RunnableC2333a(c2410t0));
        }
    }

    /* renamed from: d2.k0$d */
    /* loaded from: classes-dex2jar.jar:d2/k0$d.class */
    public class C2334d implements AbstractC2458y0 {

        /* renamed from: d2.k0$d$a */
        /* loaded from: classes-dex2jar.jar:d2/k0$d$a.class */
        public class RunnableC2335a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f8341a;

            public RunnableC2335a(C2410t0 c2410t0) {
                C2334d.this = r4;
                this.f8341a = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC0081a abstractC0081a;
                C2387q c2387q = C2329k0.this.f8330c.get(this.f8341a.f8537b.m3697o(FacebookAdapter.KEY_ID));
                if (c2387q == null || (abstractC0081a = c2387q.f8436a) == null) {
                    return;
                }
                Objects.requireNonNull(abstractC0081a);
            }
        }

        public C2334d() {
            C2329k0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2315i3.m3652s(new RunnableC2335a(c2410t0));
        }
    }

    /* renamed from: d2.k0$e */
    /* loaded from: classes-dex2jar.jar:d2/k0$e.class */
    public class C2336e implements AbstractC2458y0 {
        public C2336e() {
            C2329k0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2329k0 c2329k0 = C2329k0.this;
            Objects.requireNonNull(c2329k0);
            C2267f4 c2267f4 = c2410t0.f8537b;
            String m3697o = c2267f4.m3697o(FacebookAdapter.KEY_ID);
            C2387q c2387q = c2329k0.f8330c.get(m3697o);
            if (c2387q != null) {
                if (c2387q.f8447l == 2) {
                    return;
                }
                AbstractC0081a abstractC0081a = c2387q.f8436a;
                if (abstractC0081a == null) {
                    c2329k0.m3634e(c2410t0.f8536a, m3697o);
                    return;
                }
                C2315i3.m3649v(c2329k0.f8328a.remove(m3697o));
                if (!C2408t.m3590e()) {
                    c2329k0.m3636c(c2387q);
                    return;
                }
                c2387q.f8447l = 2;
                c2387q.f8443h = c2267f4.m3697o("ad_id");
                c2267f4.m3697o("creative_id");
                c2387q.f8446k = c2267f4.m3697o("ad_request_id");
                C2315i3.m3652s(new RunnableC2368n0(c2329k0, c2410t0, c2387q, abstractC0081a));
            }
        }
    }

    /* renamed from: d2.k0$f */
    /* loaded from: classes-dex2jar.jar:d2/k0$f.class */
    public class C2337f implements AbstractC2458y0 {
        public C2337f() {
            C2329k0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2329k0 c2329k0 = C2329k0.this;
            Objects.requireNonNull(c2329k0);
            String m3697o = c2410t0.f8537b.m3697o(FacebookAdapter.KEY_ID);
            C2387q remove = c2329k0.f8330c.remove(m3697o);
            if ((remove == null ? null : remove.f8436a) == null) {
                c2329k0.m3634e(c2410t0.f8536a, m3697o);
                return;
            }
            C2315i3.m3649v(c2329k0.f8328a.remove(m3697o));
            c2329k0.m3636c(remove);
        }
    }

    /* renamed from: d2.k0$g */
    /* loaded from: classes-dex2jar.jar:d2/k0$g.class */
    public class C2338g implements AbstractC2458y0 {
        public C2338g() {
            C2329k0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            Objects.requireNonNull(C2329k0.this);
            String m3697o = c2410t0.f8537b.m3697o(FacebookAdapter.KEY_ID);
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3744i(c2267f4, FacebookAdapter.KEY_ID, m3697o);
            Context context = C2408t.f8531a;
            if (context == null) {
                C0028d.m8912h(c2267f4, "has_audio", false, c2410t0, c2267f4);
                return;
            }
            boolean m3653r = C2315i3.m3653r(C2315i3.m3668c(context));
            double m3670a = C2315i3.m3670a(C2315i3.m3668c(context));
            C2227e4.m3739n(c2267f4, "has_audio", m3653r);
            C2227e4.m3747f(c2267f4, "volume", m3670a);
            c2410t0.m3587a(c2267f4).m3586b();
        }
    }

    /* renamed from: d2.k0$h */
    /* loaded from: classes-dex2jar.jar:d2/k0$h.class */
    public class C2339h implements AbstractC2458y0 {
        public C2339h(C2329k0 c2329k0) {
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3739n(c2267f4, "success", true);
            c2410t0.m3587a(c2267f4).m3586b();
        }
    }

    /* renamed from: d2.k0$i */
    /* loaded from: classes-dex2jar.jar:d2/k0$i.class */
    public class C2340i implements AbstractC2458y0 {

        /* renamed from: d2.k0$i$a */
        /* loaded from: classes-dex2jar.jar:d2/k0$i$a.class */
        public class RunnableC2341a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f8346a;

            public RunnableC2341a(C2340i c2340i, C2410t0 c2410t0) {
                this.f8346a = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2410t0 c2410t0 = this.f8346a;
                c2410t0.m3587a(c2410t0.f8537b).m3586b();
            }
        }

        public C2340i(C2329k0 c2329k0) {
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2315i3.m3652s(new RunnableC2341a(this, c2410t0));
        }
    }

    /* renamed from: d2.k0$j */
    /* loaded from: classes-dex2jar.jar:d2/k0$j.class */
    public class C2342j implements AbstractC2458y0 {
        public C2342j(C2329k0 c2329k0) {
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x009d, code lost:
            r0 = r6.f8402e;
            r0 = r0.length;
            r15 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x00af, code lost:
            if (r15 >= r0) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x00bc, code lost:
            if (r0.equals(r0[r15]) == false) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x00c2, code lost:
            r15 = r15 + 1;
         */
        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo3526a(p068d2.C2410t0 r6) {
            /*
                Method dump skipped, instructions count: 391
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p068d2.C2329k0.C2342j.mo3526a(d2.t0):void");
        }
    }

    /* renamed from: d2.k0$k */
    /* loaded from: classes-dex2jar.jar:d2/k0$k.class */
    public class C2343k implements AbstractC2458y0 {

        /* renamed from: d2.k0$k$a */
        /* loaded from: classes-dex2jar.jar:d2/k0$k$a.class */
        public class RunnableC2344a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f8348a;

            public RunnableC2344a(C2410t0 c2410t0) {
                C2343k.this = r4;
                this.f8348a = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2329k0 c2329k0 = C2329k0.this;
                C2410t0 c2410t0 = this.f8348a;
                Objects.requireNonNull(c2329k0);
                Context context = C2408t.f8531a;
                if (context == null) {
                    return;
                }
                C2267f4 c2267f4 = c2410t0.f8537b;
                String m3697o = c2267f4.m3697o("ad_session_id");
                C2322j0 c2322j0 = new C2322j0(context.getApplicationContext(), m3697o);
                c2322j0.f8291a = new HashMap<>();
                c2322j0.f8292b = new HashMap<>();
                c2322j0.f8293c = new HashMap<>();
                c2322j0.f8294d = new HashMap<>();
                c2322j0.f8295e = new HashMap<>();
                c2322j0.f8296f = new HashMap<>();
                c2322j0.f8297g = new HashMap<>();
                c2322j0.f8309s = new ArrayList<>();
                c2322j0.f8310t = new ArrayList<>();
                C2267f4 c2267f42 = c2410t0.f8537b;
                if (C2227e4.m3741l(c2267f42, "transparent")) {
                    c2322j0.setBackgroundColor(0);
                }
                c2322j0.f8300j = C2227e4.m3735r(c2267f42, FacebookAdapter.KEY_ID);
                c2322j0.f8298h = C2227e4.m3735r(c2267f42, "width");
                c2322j0.f8299i = C2227e4.m3735r(c2267f42, "height");
                c2322j0.f8301k = C2227e4.m3735r(c2267f42, "module_id");
                c2322j0.f8304n = C2227e4.m3741l(c2267f42, "viewability_enabled");
                c2322j0.f8311u = c2322j0.f8300j == 1;
                C2230f1 m3591d = C2408t.m3591d();
                if (c2322j0.f8298h == 0 && c2322j0.f8299i == 0) {
                    Rect m3777h = c2322j0.f8313w ? m3591d.m3721m().m3777h() : m3591d.m3721m().m3778g();
                    c2322j0.f8298h = m3777h.width();
                    c2322j0.f8299i = m3777h.height();
                } else {
                    c2322j0.setLayoutParams(new FrameLayout.LayoutParams(c2322j0.f8298h, c2322j0.f8299i));
                }
                ArrayList<AbstractC2458y0> arrayList = c2322j0.f8309s;
                C2457y c2457y = new C2457y(c2322j0);
                C2408t.m3594a("VideoView.create", c2457y);
                arrayList.add(c2457y);
                ArrayList<AbstractC2458y0> arrayList2 = c2322j0.f8309s;
                C2462z c2462z = new C2462z(c2322j0);
                C2408t.m3594a("VideoView.destroy", c2462z);
                arrayList2.add(c2462z);
                ArrayList<AbstractC2458y0> arrayList3 = c2322j0.f8309s;
                C2162a0 c2162a0 = new C2162a0(c2322j0);
                C2408t.m3594a("WebView.create", c2162a0);
                arrayList3.add(c2162a0);
                ArrayList<AbstractC2458y0> arrayList4 = c2322j0.f8309s;
                C2176b0 c2176b0 = new C2176b0(c2322j0);
                C2408t.m3594a("WebView.destroy", c2176b0);
                arrayList4.add(c2176b0);
                ArrayList<AbstractC2458y0> arrayList5 = c2322j0.f8309s;
                C2187c0 c2187c0 = new C2187c0(c2322j0);
                C2408t.m3594a("TextView.create", c2187c0);
                arrayList5.add(c2187c0);
                ArrayList<AbstractC2458y0> arrayList6 = c2322j0.f8309s;
                C2193d0 c2193d0 = new C2193d0(c2322j0);
                C2408t.m3594a("TextView.destroy", c2193d0);
                arrayList6.add(c2193d0);
                ArrayList<AbstractC2458y0> arrayList7 = c2322j0.f8309s;
                C2202e0 c2202e0 = new C2202e0(c2322j0);
                C2408t.m3594a("ImageView.create", c2202e0);
                arrayList7.add(c2202e0);
                ArrayList<AbstractC2458y0> arrayList8 = c2322j0.f8309s;
                C2229f0 c2229f0 = new C2229f0(c2322j0);
                C2408t.m3594a("ImageView.destroy", c2229f0);
                arrayList8.add(c2229f0);
                c2322j0.f8310t.add("VideoView.create");
                c2322j0.f8310t.add("VideoView.destroy");
                c2322j0.f8310t.add("WebView.create");
                c2322j0.f8310t.add("WebView.destroy");
                c2322j0.f8310t.add("TextView.create");
                c2322j0.f8310t.add("TextView.destroy");
                c2322j0.f8310t.add("ImageView.create");
                c2322j0.f8310t.add("ImageView.destroy");
                VideoView videoView = new VideoView(c2322j0.f8315y);
                c2322j0.f8316z = videoView;
                videoView.setVisibility(8);
                c2322j0.addView(c2322j0.f8316z);
                c2322j0.setClipToPadding(false);
                if (c2322j0.f8304n) {
                    C2315i3.m3660k(new RunnableC2269g0(c2322j0, C2227e4.m3741l(c2410t0.f8537b, "advanced_viewability")), 200L);
                }
                c2329k0.f8329b.put(m3697o, c2322j0);
                if (C2227e4.m3735r(c2267f4, "width") == 0) {
                    C2387q c2387q = c2329k0.f8330c.get(m3697o);
                    if (c2387q == null) {
                        c2329k0.m3634e(c2410t0.f8536a, m3697o);
                        return;
                    }
                    c2387q.f8438c = c2322j0;
                } else {
                    c2322j0.f8311u = false;
                }
                C2267f4 c2267f43 = new C2267f4();
                C2227e4.m3739n(c2267f43, "success", true);
                c2410t0.m3587a(c2267f43).m3586b();
            }
        }

        public C2343k() {
            C2329k0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2315i3.m3652s(new RunnableC2344a(c2410t0));
        }
    }

    /* renamed from: d2.k0$l */
    /* loaded from: classes-dex2jar.jar:d2/k0$l.class */
    public class RunnableC2345l implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC2328k f8350a;

        public RunnableC2345l(C2329k0 c2329k0, AbstractC2328k abstractC2328k) {
            this.f8350a = abstractC2328k;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC2328k abstractC2328k = this.f8350a;
            abstractC2328k.mo1956f(C2168b.m3797a(abstractC2328k.f8325a));
            if (!C2408t.m3590e()) {
                C0082b.m8750l(0, 0, "RequestNotFilled called for AdView due to a missing context. ", true);
            }
        }
    }

    /* renamed from: d2.k0$m */
    /* loaded from: classes-dex2jar.jar:d2/k0$m.class */
    public class RunnableC2346m implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2322j0 f8351a;

        public RunnableC2346m(C2329k0 c2329k0, C2322j0 c2322j0) {
            this.f8351a = c2322j0;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i = 0; i < this.f8351a.f8309s.size(); i++) {
                String str = this.f8351a.f8310t.get(i);
                AbstractC2458y0 abstractC2458y0 = this.f8351a.f8309s.get(i);
                C2417u0 m3717q = C2408t.m3591d().m3717q();
                synchronized (m3717q.f8568d) {
                    ArrayList<AbstractC2458y0> arrayList = m3717q.f8568d.get(str);
                    if (arrayList != null) {
                        arrayList.remove(abstractC2458y0);
                    }
                }
            }
            this.f8351a.f8310t.clear();
            this.f8351a.f8309s.clear();
            this.f8351a.removeAllViews();
            C2322j0 c2322j0 = this.f8351a;
            c2322j0.f8316z = null;
            c2322j0.f8315y = null;
            for (C2441x3 c2441x3 : c2322j0.f8293c.values()) {
                if (!c2441x3.f8628A) {
                    int i2 = c2441x3.f8665v;
                    if (i2 <= 0) {
                        i2 = c2441x3.f8664u;
                    }
                    c2441x3.loadUrl("about:blank");
                    c2441x3.clearCache(true);
                    c2441x3.removeAllViews();
                    c2441x3.f8630C = true;
                    C2408t.m3591d().m3726h(i2);
                }
            }
            for (TextureView$SurfaceTextureListenerC2399r3 textureView$SurfaceTextureListenerC2399r3 : this.f8351a.f8291a.values()) {
                textureView$SurfaceTextureListenerC2399r3.m3606e();
                textureView$SurfaceTextureListenerC2399r3.f8504t = true;
            }
            this.f8351a.f8291a.clear();
            this.f8351a.f8292b.clear();
            this.f8351a.f8293c.clear();
            this.f8351a.f8295e.clear();
            this.f8351a.f8297g.clear();
            this.f8351a.f8294d.clear();
            this.f8351a.f8296f.clear();
            this.f8351a.f8303m = true;
        }
    }

    /* renamed from: d2.k0$n */
    /* loaded from: classes-dex2jar.jar:d2/k0$n.class */
    public class C2347n implements AbstractC2458y0 {

        /* renamed from: d2.k0$n$a */
        /* loaded from: classes-dex2jar.jar:d2/k0$n$a.class */
        public class RunnableC2348a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f8353a;

            public RunnableC2348a(C2410t0 c2410t0) {
                C2347n.this = r4;
                this.f8353a = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2329k0 c2329k0 = C2329k0.this;
                C2410t0 c2410t0 = this.f8353a;
                Objects.requireNonNull(c2329k0);
                String m3697o = c2410t0.f8537b.m3697o("ad_session_id");
                C2322j0 c2322j0 = c2329k0.f8329b.get(m3697o);
                if (c2322j0 == null) {
                    c2329k0.m3634e(c2410t0.f8536a, m3697o);
                } else {
                    c2329k0.m3635d(c2322j0);
                }
            }
        }

        public C2347n() {
            C2329k0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2315i3.m3652s(new RunnableC2348a(c2410t0));
        }
    }

    /* renamed from: d2.k0$o */
    /* loaded from: classes-dex2jar.jar:d2/k0$o.class */
    public class C2349o implements AbstractC2458y0 {
        public C2349o() {
            C2329k0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2329k0 c2329k0 = C2329k0.this;
            Objects.requireNonNull(c2329k0);
            C2267f4 c2267f4 = c2410t0.f8537b;
            String str = c2410t0.f8536a;
            String m3697o = c2267f4.m3697o("ad_session_id");
            int m3735r = C2227e4.m3735r(c2267f4, "view_id");
            C2322j0 c2322j0 = c2329k0.f8329b.get(m3697o);
            if (c2322j0 == null) {
                c2329k0.m3634e(str, m3697o);
                return;
            }
            View view = c2322j0.f8297g.get(Integer.valueOf(m3735r));
            if (view != null) {
                view.bringToFront();
                return;
            }
            c2329k0.m3634e(str, "" + m3735r);
        }
    }

    /* renamed from: d2.k0$p */
    /* loaded from: classes-dex2jar.jar:d2/k0$p.class */
    public class C2350p implements AbstractC2458y0 {
        public C2350p() {
            C2329k0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2329k0 c2329k0 = C2329k0.this;
            Objects.requireNonNull(c2329k0);
            C2267f4 c2267f4 = c2410t0.f8537b;
            String str = c2410t0.f8536a;
            String m3697o = c2267f4.m3697o("ad_session_id");
            int m3735r = C2227e4.m3735r(c2267f4, "view_id");
            C2322j0 c2322j0 = c2329k0.f8329b.get(m3697o);
            if (c2322j0 == null) {
                c2329k0.m3634e(str, m3697o);
                return;
            }
            View view = c2322j0.f8297g.get(Integer.valueOf(m3735r));
            if (view != null) {
                c2322j0.removeView(view);
                c2322j0.addView(view, view.getLayoutParams());
                return;
            }
            c2329k0.m3634e(str, "" + m3735r);
        }
    }

    /* renamed from: d2.k0$q */
    /* loaded from: classes-dex2jar.jar:d2/k0$q.class */
    public class C2351q implements AbstractC2458y0 {
        public C2351q() {
            C2329k0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2329k0 c2329k0 = C2329k0.this;
            Objects.requireNonNull(c2329k0);
            C2267f4 c2267f4 = c2410t0.f8537b;
            int m3735r = C2227e4.m3735r(c2267f4, "status");
            if (m3735r == 5 || m3735r == 1 || m3735r == 0 || m3735r == 6) {
                return;
            }
            String m3697o = c2267f4.m3697o(FacebookAdapter.KEY_ID);
            C2387q remove = c2329k0.f8330c.remove(m3697o);
            AbstractC0081a abstractC0081a = remove == null ? null : remove.f8436a;
            if (abstractC0081a == null) {
                c2329k0.m3634e(c2410t0.f8536a, m3697o);
                return;
            }
            C2315i3.m3652s(new RunnableC2395r0(c2329k0, abstractC0081a, remove));
            remove.m3616b();
            remove.f8438c = null;
        }
    }

    /* renamed from: d2.k0$r */
    /* loaded from: classes-dex2jar.jar:d2/k0$r.class */
    public class C2352r implements AbstractC2458y0 {
        public C2352r() {
            C2329k0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2329k0 c2329k0 = C2329k0.this;
            Objects.requireNonNull(c2329k0);
            C2267f4 c2267f4 = c2410t0.f8537b;
            String m3697o = c2267f4.m3697o(FacebookAdapter.KEY_ID);
            C2387q c2387q = c2329k0.f8330c.get(m3697o);
            C2319j c2319j = c2329k0.f8333f.get(m3697o);
            int m3752a = C2227e4.m3752a(c2267f4, "orientation", -1);
            boolean z = c2319j != null;
            if (c2387q == null && !z) {
                c2329k0.m3634e(c2410t0.f8536a, m3697o);
                return;
            }
            C2227e4.m3744i(new C2267f4(), FacebookAdapter.KEY_ID, m3697o);
            if (c2387q == null) {
                return;
            }
            c2387q.f8441f = m3752a;
            Context context = C2408t.f8531a;
            if (context == null || !C2408t.m3589f()) {
                return;
            }
            C2408t.m3591d().f8063A = true;
            C2408t.m3591d().f8097l = c2387q.f8438c;
            C2408t.m3591d().f8100o = c2387q;
            C2315i3.m3664g(new Intent(context, AdColonyInterstitialActivity.class));
            c2387q.f8447l = 5;
        }
    }

    /* renamed from: d2.k0$s */
    /* loaded from: classes-dex2jar.jar:d2/k0$s.class */
    public class C2353s implements AbstractC2458y0 {
        public C2353s() {
            C2329k0.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2329k0 c2329k0 = C2329k0.this;
            Objects.requireNonNull(c2329k0);
            String m3697o = c2410t0.f8537b.m3697o(FacebookAdapter.KEY_ID);
            AbstractC2328k remove = c2329k0.f8331d.remove(m3697o);
            if (remove == null) {
                c2329k0.m3634e(c2410t0.f8536a, m3697o);
                return;
            }
            c2329k0.f8332e.put(m3697o, remove);
            C2315i3.m3649v(c2329k0.f8328a.remove(m3697o));
            Context context = C2408t.f8531a;
            if (context == null) {
                c2329k0.m3637b(remove);
            } else {
                C2315i3.m3652s(new RunnableC2363m0(c2329k0, context, c2410t0, remove, m3697o));
            }
        }
    }

    /* renamed from: a */
    public void m3638a(Context context, C2267f4 c2267f4, String str) {
        C2410t0 c2410t0 = new C2410t0("AdSession.finish_fullscreen_ad", 0);
        C2227e4.m3740m(c2267f4, "status", 1);
        c2410t0.f8537b = c2267f4;
        C0082b.m8750l(0, 0, C0608b.m7626i(str), false);
        ((ActivityC2429w) context).mo3561c(c2410t0);
    }

    /* renamed from: b */
    public final void m3637b(AbstractC2328k abstractC2328k) {
        C2315i3.m3652s(new RunnableC2345l(this, abstractC2328k));
    }

    /* renamed from: c */
    public final void m3636c(C2387q c2387q) {
        c2387q.f8447l = 3;
        AbstractC0081a abstractC0081a = c2387q.f8436a;
        if (abstractC0081a != null) {
            C2315i3.m3652s(new RunnableC2381p(c2387q, abstractC0081a));
        }
        if (!C2408t.m3590e()) {
            StringBuilder m8752j = C0082b.m8752j("RequestNotFilled called due to a missing context. ");
            StringBuilder m8752j2 = C0082b.m8752j("Interstitial with adSessionId(");
            m8752j2.append(c2387q.f8442g);
            m8752j2.append(").");
            m8752j.append(m8752j2.toString());
            C0082b.m8750l(0, 0, m8752j.toString(), true);
        }
    }

    /* renamed from: d */
    public void m3635d(C2322j0 c2322j0) {
        C2315i3.m3652s(new RunnableC2346m(this, c2322j0));
        C2319j c2319j = this.f8333f.get(c2322j0.f8302l);
        if (c2319j == null || c2319j.f8280l) {
            this.f8329b.remove(c2322j0.f8302l);
            c2322j0.f8315y = null;
        }
    }

    /* renamed from: e */
    public void m3634e(String str, String str2) {
        C0082b.m8750l(0, 0, "Message '" + str + "' sent with invalid id: " + str2, false);
    }

    /* renamed from: f */
    public void m3633f() {
        HashSet hashSet = new HashSet();
        synchronized (this.f8334g) {
            for (String str : this.f8332e.keySet()) {
                AbstractC2328k remove = this.f8332e.remove(str);
                if (remove != null) {
                    hashSet.add(remove);
                }
            }
            for (String str2 : this.f8331d.keySet()) {
                AbstractC2328k remove2 = this.f8331d.remove(str2);
                if (remove2 != null) {
                    hashSet.add(remove2);
                }
            }
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            m3637b((AbstractC2328k) it2.next());
        }
        for (String str3 : this.f8330c.keySet()) {
            C2387q c2387q = this.f8330c.get(str3);
            if (c2387q != null) {
                boolean z = true;
                if (c2387q.f8447l != 1) {
                    z = false;
                }
                if (z) {
                    this.f8330c.remove(str3);
                    m3636c(c2387q);
                }
            }
        }
    }

    /* renamed from: g */
    public void m3632g() {
        this.f8328a = new ConcurrentHashMap<>();
        this.f8329b = new HashMap<>();
        this.f8330c = new ConcurrentHashMap<>();
        this.f8331d = new ConcurrentHashMap<>();
        this.f8332e = new ConcurrentHashMap<>();
        this.f8333f = Collections.synchronizedMap(new HashMap());
        C2408t.m3592c("AdContainer.create", new C2343k());
        C2408t.m3592c("AdContainer.destroy", new C2347n());
        C2408t.m3592c("AdContainer.move_view_to_index", new C2349o());
        C2408t.m3592c("AdContainer.move_view_to_front", new C2350p());
        C2408t.m3592c("AdSession.finish_fullscreen_ad", new C2351q());
        C2408t.m3592c("AdSession.start_fullscreen_ad", new C2352r());
        C2408t.m3592c("AdSession.ad_view_available", new C2353s());
        C2408t.m3592c("AdSession.ad_view_unavailable", new C2330a());
        C2408t.m3592c("AdSession.expiring", new C2331b());
        C2408t.m3592c("AdSession.audio_stopped", new C2332c());
        C2408t.m3592c("AdSession.audio_started", new C2334d());
        C2408t.m3592c("AdSession.interstitial_available", new C2336e());
        C2408t.m3592c("AdSession.interstitial_unavailable", new C2337f());
        C2408t.m3592c("AdSession.has_audio", new C2338g());
        C2408t.m3592c("WebView.prepare", new C2339h(this));
        C2408t.m3592c("AdSession.expanded", new C2340i(this));
        C2408t.m3592c("AdColony.odt_event", new C2342j(this));
    }
}
