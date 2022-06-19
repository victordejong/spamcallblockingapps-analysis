package p000;

import android.app.Activity;
import android.util.Log;
import android.webkit.WebView;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicReference;
import p000.hf1;
import p000.of1;
import p000.sf1;
/* renamed from: cf1 */
/* loaded from: classes3-dex2jar.jar:cf1.class */
public class cf1 extends bf1 {

    /* renamed from: b */
    public static final AtomicReference<mf1> f2359b = new AtomicReference<>();

    /* renamed from: a */
    public final re1 f2360a;

    /* renamed from: cf1$a */
    /* loaded from: classes3-dex2jar.jar:cf1$a.class */
    public class C0312a implements of1.AbstractC1515b<rf1> {

        /* renamed from: a */
        public final /* synthetic */ WeakReference f2361a;

        /* renamed from: b */
        public final /* synthetic */ mf1 f2362b;

        public C0312a(WeakReference weakReference, mf1 mf1Var) {
            cf1.this = r4;
            this.f2361a = weakReference;
            this.f2362b = mf1Var;
        }

        @Override // p000.of1.AbstractC1515b
        public vf1<rf1> create() {
            WebView webView = (WebView) this.f2361a.get();
            boolean mo1179b = this.f2362b.mo1179b();
            if (webView == null) {
                if (mo1179b) {
                    Log.e("MoatFactory", "Target ViewGroup is null. Not creating WebAdTracker.");
                }
                return vf1.m329a();
            }
            if (mo1179b) {
                Log.d("MoatFactory", "Creating WebAdTracker for " + webView.getClass().getSimpleName() + "@" + webView.hashCode());
            }
            return vf1.m326d(new sf1(webView, cf1.this.f2360a, this.f2362b));
        }
    }

    /* renamed from: cf1$b */
    /* loaded from: classes3-dex2jar.jar:cf1$b.class */
    public class C0313b implements of1.AbstractC1515b<gf1> {

        /* renamed from: a */
        public final /* synthetic */ mf1 f2364a;

        /* renamed from: b */
        public final /* synthetic */ String f2365b;

        public C0313b(mf1 mf1Var, String str) {
            cf1.this = r4;
            this.f2364a = mf1Var;
            this.f2365b = str;
        }

        @Override // p000.of1.AbstractC1515b
        public vf1<gf1> create() {
            if (this.f2364a.mo1179b()) {
                Log.d("MoatFactory", "Creating NativeVideo tracker.");
            }
            return vf1.m326d(new hf1(this.f2365b, cf1.this.f2360a, this.f2364a));
        }
    }

    public cf1(Activity activity) {
        if (f2359b.get() == null) {
            mf1 kf1Var = new kf1();
            try {
                kf1Var = new nf1(ef1.instance);
            } catch (Exception e) {
                uf1.m397a(e);
            }
            f2359b.compareAndSet(null, kf1Var);
        }
        se1 se1Var = new se1(activity, f2359b.get());
        this.f2360a = se1Var;
        se1Var.mo575a();
    }

    @Override // p000.bf1
    /* renamed from: b */
    public gf1 mo1574b(String str) {
        try {
            return m5335e(str);
        } catch (Exception e) {
            uf1.m397a(e);
            return new jf1();
        }
    }

    @Override // p000.bf1
    /* renamed from: c */
    public rf1 mo1573c(WebView webView) {
        try {
            return m5334f(webView);
        } catch (Exception e) {
            uf1.m397a(e);
            return new lf1();
        }
    }

    /* renamed from: e */
    public final gf1 m5335e(String str) {
        mf1 mf1Var = f2359b.get();
        return (gf1) of1.m1041f(mf1Var, new C0313b(mf1Var, str), new hf1.C1442a());
    }

    /* renamed from: f */
    public final rf1 m5334f(WebView webView) {
        tf1.m499a(webView);
        WeakReference weakReference = new WeakReference(webView);
        mf1 mf1Var = f2359b.get();
        return (rf1) of1.m1041f(mf1Var, new C0312a(weakReference, mf1Var), new sf1.C1658a());
    }
}
