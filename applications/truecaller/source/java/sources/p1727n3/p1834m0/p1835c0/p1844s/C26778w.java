package p1727n3.p1834m0.p1835c0.p1844s;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
/* renamed from: n3.m0.c0.s.w */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/s/w.class */
public final class C26778w implements AbstractC26777v {

    /* renamed from: a */
    public final AbstractC25677q f74943a;

    /* renamed from: b */
    public final AbstractC25663k<C26776u> f74944b;

    public C26778w(AbstractC25677q abstractC25677q) {
        this.f74943a = abstractC25677q;
        this.f74944b = new a(this, abstractC25677q);
    }

    /* renamed from: a */
    public List<String> m1338a(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f74943a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f74943a, m3059j, false, null);
        try {
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                arrayList.add(m3090b.getString(0));
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }
}
