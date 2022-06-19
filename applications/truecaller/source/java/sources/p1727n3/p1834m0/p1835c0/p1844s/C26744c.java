package p1727n3.p1834m0.p1835c0.p1844s;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
/* renamed from: n3.m0.c0.s.c */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/s/c.class */
public final class C26744c implements AbstractC26743b {

    /* renamed from: a */
    public final AbstractC25677q f74879a;

    /* renamed from: b */
    public final AbstractC25663k<C26742a> f74880b;

    public C26744c(AbstractC25677q abstractC25677q) {
        this.f74879a = abstractC25677q;
        this.f74880b = new a(this, abstractC25677q);
    }

    /* renamed from: a */
    public List<String> m1370a(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f74879a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f74879a, m3059j, false, null);
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

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public boolean m1369b(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f74879a.assertNotSuspendingTransaction();
        boolean z = false;
        Cursor m3090b = C25653b.m3090b(this.f74879a, m3059j, false, null);
        try {
            if (m3090b.moveToFirst()) {
                z = m3090b.getInt(0) != 0;
            }
            m3090b.close();
            m3059j.m3057l();
            return z;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }
}
