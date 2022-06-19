package p193e.p194a.p1011l.p1025p2;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import e.m.e.f0.a;
import e.m.e.k;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p193e.p194a.p372b0.p430q.C8601l0;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.l.p2.n0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/n0.class */
public final class C17136n0 implements AbstractC17133m0 {

    /* renamed from: a */
    public final long f48108a = TimeUnit.HOURS.toMillis(6);

    /* renamed from: b */
    public final SharedPreferences f48109b;

    /* renamed from: c */
    public final k f48110c;

    /* renamed from: d */
    public final C8601l0 f48111d;

    /* renamed from: e.a.l.p2.n0$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/n0$a.class */
    public static final class C17137a extends a<List<? extends C17125k1>> {
    }

    @Inject
    public C17136n0(Context context, C8601l0 c8601l0) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c8601l0, "timestampUtil");
        this.f48111d = c8601l0;
        this.f48109b = context.getSharedPreferences("premium_products_cache", 0);
        e.m.e.l lVar = new e.m.e.l();
        lVar.b(b.class, new C17061e());
        this.f48110c = lVar.a();
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17133m0
    /* renamed from: a */
    public void mo16487a(List<C17125k1> list) {
        l.e(list, "products");
        this.f48109b.edit().putLong("last_timestamp", System.currentTimeMillis()).putString("list", this.f48110c.m(list)).apply();
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17133m0
    /* renamed from: b */
    public List<C17125k1> mo16486b() {
        String string;
        Object obj;
        b m16484b;
        if (((!this.f48109b.contains("last_timestamp") || !this.f48109b.contains("list")) ? false : !this.f48111d.m28259b(this.f48109b.getLong("last_timestamp", 0L), this.f48108a)) && (string = this.f48109b.getString("list", null)) != null) {
            l.d(string, "prefs.getString(PREFS_LIST, null) ?: return null");
            k kVar = this.f48110c;
            l.d(kVar, "gson");
            Type type = new C17137a().getType();
            l.d(type, "object : TypeToken<T>() {}.type");
            Object g = kVar.g(string, type);
            l.d(g, "this.fromJson(json, typeToken<T>())");
            List<C17125k1> list = (List) g;
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                C17138n1 m16505f = ((C17125k1) obj).m16505f();
                if ((m16505f == null || (m16484b = m16505f.m16484b()) == null || !m16484b.j()) ? false : true) {
                    break;
                }
            }
            if (obj == null) {
                return list;
            }
            clear();
            return null;
        }
        return null;
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17133m0
    public void clear() {
        this.f48109b.edit().remove("last_timestamp").remove("list").apply();
    }
}
