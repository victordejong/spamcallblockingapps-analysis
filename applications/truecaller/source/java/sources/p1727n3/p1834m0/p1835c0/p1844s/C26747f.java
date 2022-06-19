package p1727n3.p1834m0.p1835c0.p1844s;

import android.database.Cursor;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
/* renamed from: n3.m0.c0.s.f */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/s/f.class */
public final class C26747f implements AbstractC26746e {

    /* renamed from: a */
    public final AbstractC25677q f74883a;

    /* renamed from: b */
    public final AbstractC25663k<C26745d> f74884b;

    public C26747f(AbstractC25677q abstractC25677q) {
        this.f74883a = abstractC25677q;
        this.f74884b = new a(this, abstractC25677q);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public Long m1368a(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT long_value FROM Preference where `key`=?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f74883a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f74883a, m3059j, false, null);
        Long l = null;
        try {
            if (m3090b.moveToFirst()) {
                l = m3090b.isNull(0) ? null : Long.valueOf(m3090b.getLong(0));
            }
            m3090b.close();
            m3059j.m3057l();
            return l;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }

    /* renamed from: b */
    public void m1367b(C26745d c26745d) {
        this.f74883a.assertNotSuspendingTransaction();
        this.f74883a.beginTransaction();
        try {
            this.f74884b.insert((AbstractC25663k<C26745d>) c26745d);
            this.f74883a.setTransactionSuccessful();
        } finally {
            this.f74883a.endTransaction();
        }
    }
}
