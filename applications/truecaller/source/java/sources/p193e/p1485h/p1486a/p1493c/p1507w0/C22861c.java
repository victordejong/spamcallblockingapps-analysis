package p193e.p1485h.p1486a.p1493c.p1507w0;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.tenor.android.core.network.constant.Protocols;
import java.util.Objects;
import org.json.JSONArray;
import p1727n3.p1789g0.C26232y;
import p1727n3.p1807k.p1808a.C26446n;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.C22735g0;
import p193e.p1485h.p1486a.p1493c.C22741j0;
/* renamed from: e.h.a.c.w0.c */
/* loaded from: classes-dex2jar.jar:e/h/a/c/w0/c.class */
public class C22861c implements AbstractC22863e {

    /* renamed from: a */
    public String f63470a;

    /* renamed from: b */
    public String f63471b;

    /* renamed from: c */
    public int f63472c;

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22863e
    /* renamed from: a */
    public /* synthetic */ C26450q mo7667a(Context context, Bundle bundle, int i, C26450q c26450q, JSONArray jSONArray) {
        return C22862d.m7668a(this, context, bundle, i, c26450q, jSONArray);
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22863e
    /* renamed from: b */
    public String mo7666b(Bundle bundle, Context context) {
        String string = bundle.getString("nt", "");
        String str = string;
        if (string.isEmpty()) {
            str = context.getApplicationInfo().name;
        }
        this.f63471b = str;
        return str;
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22863e
    /* renamed from: c */
    public String mo7665c() {
        return "ico";
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22863e
    /* renamed from: d */
    public Object mo7664d(Bundle bundle) {
        return bundle.get("wzrk_ck");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22863e
    /* renamed from: e */
    public C26450q mo7663e(Bundle bundle, Context context, C26450q c26450q, CleverTapInstanceConfig cleverTapInstanceConfig, int i) {
        C26447o c26447o;
        JSONArray jSONArray;
        String string = bundle.getString("ico");
        String string2 = bundle.getString("wzrk_bp");
        boolean z = false;
        if (string2 == null || !string2.startsWith(Protocols.HTTP)) {
            C26447o c26447o2 = new C26447o();
            c26447o2.m1873k(this.f63470a);
            c26447o = c26447o2;
        } else {
            try {
                Bitmap m7842h = C22741j0.m7842h(string2, false, context);
                if (m7842h == null) {
                    throw new Exception("Failed to fetch big picture!");
                }
                if (bundle.containsKey("wzrk_nms")) {
                    String string3 = bundle.getString("wzrk_nms");
                    C26446n c26446n = new C26446n();
                    c26446n.m1874k(string3);
                    c26446n.f74102e = m7842h;
                    c26447o = c26446n;
                } else {
                    C26446n c26446n2 = new C26446n();
                    c26446n2.m1874k(this.f63470a);
                    c26446n2.f74102e = m7842h;
                    c26447o = c26446n2;
                }
            } catch (Throwable th) {
                C26447o c26447o3 = new C26447o();
                c26447o3.m1873k(this.f63470a);
                Objects.requireNonNull(cleverTapInstanceConfig.m42081b());
                c26447o = c26447o3;
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            z = true;
        }
        if (z && bundle.containsKey("wzrk_st")) {
            c26450q.m1844y(bundle.getString("wzrk_st"));
        }
        if (bundle.containsKey("wzrk_clr")) {
            c26450q.f74123D = Color.parseColor(bundle.getString("wzrk_clr"));
            c26450q.m1858k(true);
        }
        c26450q.m1855n(this.f63471b);
        c26450q.m1856m(this.f63470a);
        c26450q.f74147g = C26232y.m2321o0(bundle, context);
        c26450q.m1853p(16, true);
        c26450q.m1845x(c26447o);
        c26450q.f74137R.icon = this.f63472c;
        c26450q.m1852q(C22741j0.m7842h(string, true, context));
        String string4 = bundle.getString("wzrk_acts");
        if (string4 != null) {
            try {
                jSONArray = new JSONArray(string4);
            } catch (Throwable th2) {
                C22735g0 m42081b = cleverTapInstanceConfig.m42081b();
                String str = cleverTapInstanceConfig.f2240a;
                StringBuilder m8728C = C22128a.m8728C("error parsing notification actions: ");
                m8728C.append(th2.getLocalizedMessage());
                m42081b.m7856a(str, m8728C.toString());
            }
            mo7667a(context, bundle, i, c26450q, jSONArray);
            return c26450q;
        }
        jSONArray = null;
        mo7667a(context, bundle, i, c26450q, jSONArray);
        return c26450q;
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22863e
    /* renamed from: f */
    public void mo7662f(int i, Context context) {
        this.f63472c = i;
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22863e
    /* renamed from: g */
    public String mo7661g(Bundle bundle) {
        String string = bundle.getString("nm");
        this.f63470a = string;
        return string;
    }
}
