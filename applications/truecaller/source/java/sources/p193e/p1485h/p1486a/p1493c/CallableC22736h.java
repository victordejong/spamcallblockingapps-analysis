package p193e.p1485h.p1486a.p1493c;

import java.util.Objects;
import java.util.concurrent.Callable;
import org.json.JSONObject;
import p1727n3.p1789g0.C26232y;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22712a;
/* renamed from: e.h.a.c.h */
/* loaded from: classes-dex2jar.jar:e/h/a/c/h.class */
public class CallableC22736h implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ String f62951a;

    /* renamed from: b */
    public final /* synthetic */ C22727f f62952b;

    public CallableC22736h(C22727f c22727f, String str) {
        this.f62952b = c22727f;
        this.f62951a = str;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        C22727f c22727f = this.f62952b;
        String str = this.f62951a;
        Objects.requireNonNull(c22727f);
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        try {
            C22712a m7923c = c22727f.f62925l.m7923c(str2);
            String obj = m7923c.f62844c.toString();
            if (obj.isEmpty()) {
                C22712a m2468F = C26232y.m2468F(512, 6, new String[0]);
                c22727f.f62924k.m7926b(m2468F);
                c22727f.f62918e.m42081b().m7856a(c22727f.f62918e.f2240a, m2468F.f62843b);
                return null;
            }
            if (m7923c.f62842a != 0) {
                c22727f.f62924k.m7926b(m7923c);
            }
            c22727f.f62923j.m7865k(obj, Boolean.FALSE, true);
            c22727f.f62916c.mo7814b(new JSONObject().put(obj, new JSONObject().put("$delete", true)));
            C22735g0 m42081b = c22727f.f62918e.m42081b();
            String str3 = c22727f.f62918e.f2240a;
            m42081b.m7855b(str3, "removing value for key " + obj + " from user profile");
            return null;
        } catch (Throwable th) {
            C22735g0 m42081b2 = c22727f.f62918e.m42081b();
            String str4 = c22727f.f62918e.f2240a;
            Objects.requireNonNull(m42081b2);
            return null;
        }
    }
}
