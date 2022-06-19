package p193e.p194a.p1221t.p1230b.p1231c.p1233l;

import com.truecaller.android.sdk.TrueException;
import com.truecaller.android.sdk.TrueProfile;
import e.m.d.y.n;
import org.json.JSONObject;
import p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i;
import u3.l0;
import x3.a0;
import x3.b;
import x3.d;
/* renamed from: e.a.t.b.c.l.c */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/c/l/c.class */
public class C20374c implements d<JSONObject> {

    /* renamed from: a */
    public final String f57237a;

    /* renamed from: b */
    public final TrueProfile f57238b;

    /* renamed from: c */
    public final AbstractC20364i f57239c;

    /* renamed from: d */
    public boolean f57240d;

    public C20374c(String str, TrueProfile trueProfile, AbstractC20364i abstractC20364i, boolean z) {
        this.f57237a = str;
        this.f57238b = trueProfile;
        this.f57239c = abstractC20364i;
        this.f57240d = z;
    }

    public void onFailure(b<JSONObject> bVar, Throwable th) {
    }

    public void onResponse(b<JSONObject> bVar, a0<JSONObject> a0Var) {
        l0 l0Var;
        if (a0Var == null || (l0Var = a0Var.c) == null) {
            return;
        }
        String N0 = n.N0(l0Var);
        if (!this.f57240d || !TrueException.TYPE_INTERNAL_SERVER_ERROR.equals(N0)) {
            return;
        }
        this.f57240d = false;
        this.f57239c.mo11192f(this.f57237a, this.f57238b, this);
    }
}
