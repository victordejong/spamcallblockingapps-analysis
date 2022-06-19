package p000;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.analytics.ecommerce.Promotion;
import java.util.HashMap;
import java.util.Map;
import p000.we1;
/* renamed from: qf1 */
/* loaded from: classes3-dex2jar.jar:qf1.class */
public class qf1 implements pf1, we1.AbstractC1713a {

    /* renamed from: a */
    public View f7830a;

    /* renamed from: b */
    public final WebView f7831b;

    /* renamed from: c */
    public boolean f7832c;

    /* renamed from: d */
    public final we1 f7833d;

    /* renamed from: e */
    public final re1 f7834e;

    /* renamed from: f */
    public final mf1 f7835f;

    /* renamed from: g */
    public vf1<String> f7836g;

    public qf1(View view, WebView webView, boolean z, re1 re1Var, mf1 mf1Var) {
        this(view, webView, z, new xe1(webView.getContext(), mf1Var), re1Var, mf1Var);
    }

    public qf1(View view, WebView webView, boolean z, we1 we1Var, re1 re1Var, mf1 mf1Var) {
        tf1.m499a(view);
        tf1.m499a(webView);
        tf1.m499a(re1Var);
        tf1.m499a(we1Var);
        if (mf1Var.mo1179b()) {
            Log.d("MoatViewTracker", "In initialization method.");
        }
        this.f7834e = re1Var;
        this.f7830a = view;
        this.f7831b = webView;
        this.f7832c = z;
        this.f7833d = we1Var;
        this.f7835f = mf1Var;
        this.f7836g = vf1.m329a();
    }

    /* renamed from: n */
    public static String m794n(Map<String, String> map, boolean z) {
        StringBuilder sb = new StringBuilder("{");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (sb.length() > 1) {
                sb.append(',');
            }
            sb.append('\"');
            sb.append(key);
            sb.append('\"');
            sb.append(':');
            if (!z) {
                sb.append(value);
            } else {
                sb.append('\"');
                sb.append(value);
                sb.append('\"');
            }
        }
        sb.append("}");
        return "" + ((Object) sb);
    }

    /* renamed from: p */
    public static String m792p(Rect rect) {
        int i = rect.left;
        int i2 = rect.top;
        int i3 = rect.right;
        int i4 = rect.bottom;
        StringBuilder sb = new StringBuilder("{");
        sb.append('\"');
        sb.append("x");
        sb.append('\"');
        sb.append(":");
        sb.append(i);
        sb.append(',');
        sb.append('\"');
        sb.append("y");
        sb.append('\"');
        sb.append(":");
        sb.append(i2);
        sb.append(',');
        sb.append('\"');
        sb.append("w");
        sb.append('\"');
        sb.append(":");
        sb.append(i3 - i);
        sb.append(',');
        sb.append('\"');
        sb.append("h");
        sb.append('\"');
        sb.append(":");
        sb.append(i4 - i2);
        sb.append('}');
        return ((Object) sb) + "";
    }

    @Override // p000.pf1
    /* renamed from: a */
    public boolean mo805a() {
        if (this.f7835f.mo1179b()) {
            Log.d("MoatViewTracker", "Attempting bridge installation.");
        }
        boolean mo120a = this.f7833d.mo120a(this.f7831b, this);
        if (this.f7835f.mo1179b()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Bridge ");
            sb.append(mo120a ? "" : "not ");
            sb.append("installed.");
            Log.d("MoatViewTracker", sb.toString());
        }
        return mo120a;
    }

    @Override // p000.we1.AbstractC1713a
    /* renamed from: b */
    public String mo257b() {
        try {
            return m794n(m800h(), true);
        } catch (Exception e) {
            return "{}";
        }
    }

    @Override // p000.pf1
    /* renamed from: c */
    public void mo804c() {
        this.f7833d.mo119b();
    }

    @Override // p000.we1.AbstractC1713a
    /* renamed from: d */
    public String mo256d() {
        String str;
        HashMap hashMap = new HashMap();
        try {
            Rect m799i = m799i();
            Rect m798j = m798j(m799i);
            Rect m803e = m803e();
            m795m(hashMap, "screen", m799i);
            m795m(hashMap, "visible", m798j);
            m795m(hashMap, "maybe", m798j);
            m795m(hashMap, Promotion.ACTION_VIEW, m803e);
            int i = m797k() ? 1 : 0;
            hashMap.put("inFocus", i + "");
            DisplayMetrics m801g = m801g();
            hashMap.put("dr", "" + m801g.density);
            str = m794n(hashMap, false);
        } catch (Exception e) {
            str = "{}";
        }
        return str;
    }

    /* renamed from: e */
    public Rect m803e() {
        int[] iArr = {Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.f7830a.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return new Rect(i, i2, this.f7830a.getWidth() + i, this.f7830a.getHeight() + i2);
    }

    /* renamed from: f */
    public final String m802f() {
        if (this.f7836g.m327c()) {
            return this.f7836g.m328b();
        }
        String str = "_unknown_";
        try {
            Context context = this.f7831b.getContext();
            String charSequence = context.getPackageManager().getApplicationLabel(context.getApplicationContext().getApplicationInfo()).toString();
            str = charSequence;
            this.f7836g = vf1.m326d(charSequence);
            str = charSequence;
        } catch (Exception e) {
            uf1.m397a(e);
        }
        return str;
    }

    /* renamed from: g */
    public final DisplayMetrics m801g() {
        return this.f7830a.getContext().getResources().getDisplayMetrics();
    }

    /* renamed from: h */
    public Map<String, String> m800h() {
        HashMap hashMap = new HashMap();
        String m802f = m802f();
        String num = Integer.toString(Build.VERSION.SDK_INT);
        String str = this.f7832c ? "1" : "0";
        hashMap.put("versionHash", "4724e28a731f8ba73e9eecc4d5c807705dd80963");
        hashMap.put("appName", m802f);
        hashMap.put("namespace", "AOL");
        hashMap.put("version", "1.7.11");
        hashMap.put("deviceOS", num);
        hashMap.put("isNative", str);
        return hashMap;
    }

    /* renamed from: i */
    public final Rect m799i() {
        DisplayMetrics m801g = m801g();
        return new Rect(0, 0, m801g.widthPixels, m801g.heightPixels);
    }

    /* renamed from: j */
    public final Rect m798j(Rect rect) {
        Rect m796l = m796l();
        Rect rect2 = m796l;
        if (!this.f7830a.getGlobalVisibleRect(m796l)) {
            rect2 = m796l();
        }
        rect2.left = Math.min(Math.max(0, rect2.left), rect.right);
        rect2.right = Math.min(Math.max(0, rect2.right), rect.right);
        rect2.top = Math.min(Math.max(0, rect2.top), rect.bottom);
        rect2.bottom = Math.min(Math.max(0, rect2.bottom), rect.bottom);
        return rect2;
    }

    /* renamed from: k */
    public final boolean m797k() {
        return this.f7830a.isShown() && !this.f7834e.mo574b();
    }

    /* renamed from: l */
    public final Rect m796l() {
        return new Rect(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    /* renamed from: m */
    public final void m795m(Map<String, String> map, String str, Rect rect) {
        map.put(str, m792p(m793o(rect)));
    }

    /* renamed from: o */
    public final Rect m793o(Rect rect) {
        float f = m801g().density;
        if (f == 0.0f) {
            return rect;
        }
        return new Rect(Math.round(rect.left / f), Math.round(rect.top / f), Math.round(rect.right / f), Math.round(rect.bottom / f));
    }
}
