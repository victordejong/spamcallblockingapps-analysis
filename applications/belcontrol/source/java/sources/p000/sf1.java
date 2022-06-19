package p000;

import android.util.Log;
import android.webkit.WebView;
import java.lang.reflect.Method;
import p000.of1;
/* renamed from: sf1 */
/* loaded from: classes3-dex2jar.jar:sf1.class */
public class sf1 implements rf1 {

    /* renamed from: a */
    public final vf1<? extends pf1> f8136a;

    /* renamed from: b */
    public final mf1 f8137b;

    /* renamed from: sf1$a */
    /* loaded from: classes3-dex2jar.jar:sf1$a.class */
    public static class C1658a implements of1.AbstractC1517d<rf1> {

        /* renamed from: a */
        public static final vf1<Method> f8138a;

        static {
            vf1<Method> m329a = vf1.m329a();
            try {
                m329a = vf1.m326d(rf1.class.getMethod("a", new Class[0]));
            } catch (NoSuchMethodException e) {
                uf1.m397a(e);
            }
            f8138a = m329a;
        }

        @Override // p000.of1.AbstractC1517d
        /* renamed from: a */
        public boolean mo566a(Method method) {
            return f8138a.equals(vf1.m326d(method));
        }

        @Override // p000.of1.AbstractC1517d
        /* renamed from: b */
        public Class<rf1> mo565b() {
            return rf1.class;
        }
    }

    public sf1(WebView webView, re1 re1Var, mf1 mf1Var) {
        vf1<? extends pf1> vf1Var;
        this.f8137b = mf1Var;
        if (mf1Var.mo1179b()) {
            Log.d("MoatWebAdTracker", "In initialization method.");
        }
        if (webView == null) {
            if (mf1Var.mo1179b()) {
                Log.e("MoatWebAdTracker", "WebView is null. Will not track.");
            }
            vf1Var = vf1.m329a();
        } else {
            vf1Var = vf1.m326d(new qf1(webView, webView, false, re1Var, mf1Var));
        }
        this.f8136a = vf1Var;
    }

    @Override // p000.rf1
    /* renamed from: a */
    public boolean mo567a() {
        boolean z;
        boolean mo1179b = this.f8137b.mo1179b();
        if (mo1179b) {
            try {
                Log.d("MoatWebAdTracker", "In track method.");
            } catch (Exception e) {
                uf1.m397a(e);
                z = false;
            }
        }
        if (!this.f8136a.m327c()) {
            z = false;
            if (mo1179b) {
                Log.e("MoatWebAdTracker", "Internal tracker not available. Not tracking.");
                z = false;
            }
        } else {
            z = this.f8136a.m328b().mo805a();
        }
        if (mo1179b) {
            StringBuilder sb = new StringBuilder();
            sb.append("Attempt to start tracking ad was ");
            sb.append(z ? "" : "un");
            sb.append("successful.");
            Log.d("MoatWebAdTracker", sb.toString());
        }
        return z;
    }
}
