package p193e.p194a.p1406z3.p1407g;

import android.content.Context;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import java.io.InputStream;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o;
import p193e.p1451f.p1452a.p1457n.p1464p.C22444r;
import s1.z.c.l;
/* renamed from: e.a.z3.g.d */
/* loaded from: classes9-dex2jar.jar:e/a/z3/g/d.class */
public final class C21863d implements AbstractC22438o<Uri, InputStream> {

    /* renamed from: a */
    public final Context f60745a;

    public C21863d(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f60745a = context;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
    /* renamed from: b */
    public void mo8213b() {
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
    /* renamed from: c */
    public AbstractC22436n<Uri, InputStream> mo8212c(C22444r c22444r) {
        l.e(c22444r, "multiFactory");
        return new C21862c(this.f60745a);
    }
}
