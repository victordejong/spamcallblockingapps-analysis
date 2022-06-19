package p193e.p194a.p1011l.p1025p2;

import android.content.Context;
import android.content.SharedPreferences;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.premium.PremiumLaunchContext;
import e.m.e.f0.a;
import e.m.e.k;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1025p2.AbstractC17164q1;
import s1.u.i;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.l.p2.r1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/r1.class */
public final class C17170r1 implements AbstractC17164q1 {

    /* renamed from: a */
    public final SharedPreferences f48166a;

    /* renamed from: b */
    public final k f48167b;

    /* renamed from: c */
    public final Map<String, AbstractC17164q1.C17166b> f48168c;

    /* renamed from: e.a.l.p2.r1$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/r1$a.class */
    public static final class C17171a extends a<Map<String, AbstractC17164q1.C17166b>> {
    }

    /* renamed from: e.a.l.p2.r1$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/r1$b.class */
    public static final class C17172b<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return C25225a.m4000K(((AbstractC17164q1.C17165a) t2).f48156a, ((AbstractC17164q1.C17165a) t).f48156a);
        }
    }

    @Inject
    public C17170r1(Context context) {
        LinkedHashMap linkedHashMap;
        l.e(context, AnalyticsConstants.CONTEXT);
        boolean z = false;
        SharedPreferences sharedPreferences = context.getSharedPreferences("purchase_source_cache", 0);
        this.f48166a = sharedPreferences;
        k kVar = new k();
        this.f48167b = kVar;
        String string = sharedPreferences.getString(RemoteMessageConst.DATA, null);
        if ((string == null || string.length() == 0) ? true : z) {
            linkedHashMap = new LinkedHashMap();
        } else {
            Type type = new C17171a().getType();
            l.d(type, "object : TypeToken<T>() {}.type");
            Object g = kVar.g(string, type);
            l.d(g, "this.fromJson(json, typeToken<T>())");
            linkedHashMap = (Map) g;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            b H = new b(((AbstractC17164q1.C17166b) entry.getValue()).f48160b).H(1);
            l.d(H, "DateTime(it.value.timestamp).plusMonths(1)");
            if (H.g()) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        this.f48168c = i.b1(linkedHashMap2);
        m16456f();
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17164q1
    /* renamed from: a */
    public String mo16461a(String str) {
        l.e(str, "orderId");
        AbstractC17164q1.C17166b c17166b = this.f48168c.get(str);
        return c17166b != null ? c17166b.f48159a : null;
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17164q1
    /* renamed from: b */
    public void mo16460b(String str, PremiumLaunchContext premiumLaunchContext) {
        l.e(str, "orderId");
        l.e(premiumLaunchContext, "source");
        Map<String, AbstractC17164q1.C17166b> map = this.f48168c;
        String name = premiumLaunchContext.name();
        b bVar = new b();
        l.d(bVar, "DateTime.now()");
        map.put(str, new AbstractC17164q1.C17166b(name, ((e) bVar).a));
        this.f48166a.edit().remove("preliminary_purchase_source").apply();
        m16456f();
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17164q1
    /* renamed from: c */
    public String mo16459c() {
        return this.f48166a.getString("preliminary_purchase_source", null);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17164q1
    /* renamed from: d */
    public List<AbstractC17164q1.C17165a> mo16458d() {
        Map<String, AbstractC17164q1.C17166b> map = this.f48168c;
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, AbstractC17164q1.C17166b> entry : map.entrySet()) {
            arrayList.add(new AbstractC17164q1.C17165a(new b(entry.getValue().f48160b), entry.getKey(), entry.getValue().f48159a));
        }
        return i.F0(arrayList, new C17172b());
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17164q1
    /* renamed from: e */
    public void mo16457e(PremiumLaunchContext premiumLaunchContext) {
        l.e(premiumLaunchContext, "source");
        this.f48166a.edit().putString("preliminary_purchase_source", premiumLaunchContext.name()).apply();
    }

    /* renamed from: f */
    public final void m16456f() {
        this.f48166a.edit().putString(RemoteMessageConst.DATA, this.f48167b.m(this.f48168c)).apply();
    }
}
