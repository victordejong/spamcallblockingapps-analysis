package p193e.p194a.p1079n5;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.ugc.EnhancedSearchStateWorker;
import java.util.HashMap;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.n5.e */
/* loaded from: classes15-dex2jar.jar:e/a/n5/e.class */
public final class C18496e extends m implements l<Boolean, s> {

    /* renamed from: b */
    public final /* synthetic */ Context f52206b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18496e(Context context) {
        super(1);
        this.f52206b = context;
    }

    /* renamed from: d */
    public Object m14856d(Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        Context context = this.f52206b;
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        C26702l m1431n = C26702l.m1431n(context);
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        C26842r.C26843a c26843a = new C26842r.C26843a(EnhancedSearchStateWorker.class);
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        c26843a.f75127c.f74911j = new C26825d(c26826a);
        HashMap hashMap = new HashMap();
        hashMap.put("enhanced_search_value", Boolean.valueOf(booleanValue));
        C26829f c26829f = new C26829f(hashMap);
        C26829f.m1300g(c26829f);
        c26843a.f75127c.f74906e = c26829f;
        m1431n.m1279i("EnhancedSearchStateWorker", enumC26832h, c26843a.m1272b());
        return s.a;
    }
}
