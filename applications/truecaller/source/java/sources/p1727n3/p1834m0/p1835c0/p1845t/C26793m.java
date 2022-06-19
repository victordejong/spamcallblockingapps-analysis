package p1727n3.p1834m0.p1835c0.p1845t;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1788g.C26174a;
import p1727n3.p1789g0.C26232y;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26855x;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1834m0.p1835c0.p1844s.AbstractC26764q;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
import p1727n3.p1834m0.p1835c0.p1844s.C26767t;
/* renamed from: n3.m0.c0.t.m */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/m.class */
public class C26793m extends AbstractRunnableC26795o<List<C26855x>> {

    /* renamed from: b */
    public final /* synthetic */ C26702l f74976b;

    /* renamed from: c */
    public final /* synthetic */ String f74977c;

    public C26793m(C26702l c26702l, String str) {
        this.f74976b = c26702l;
        this.f74977c = str;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p1727n3.p1834m0.p1835c0.p1845t.AbstractRunnableC26795o
    /* renamed from: a */
    public List<C26855x> mo1327a() {
        AbstractC26764q m42606f = this.f74976b.f74725c.m42606f();
        String str = this.f74977c;
        C26767t c26767t = (C26767t) m42606f;
        Objects.requireNonNull(c26767t);
        C25686y m3059j = C25686y.m3059j("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        c26767t.f74932a.assertNotSuspendingTransaction();
        c26767t.f74932a.beginTransaction();
        try {
            Cursor m3090b = C25653b.m3090b(c26767t.f74932a, m3059j, true, null);
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "state");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "output");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "run_attempt_count");
            C26174a<String, ArrayList<String>> c26174a = new C26174a<>();
            C26174a<String, ArrayList<C26829f>> c26174a2 = new C26174a<>();
            while (m3090b.moveToNext()) {
                if (!m3090b.isNull(m43237g0)) {
                    String string = m3090b.getString(m43237g0);
                    if (c26174a.get(string) == null) {
                        c26174a.put(string, new ArrayList<>());
                    }
                }
                if (!m3090b.isNull(m43237g0)) {
                    String string2 = m3090b.getString(m43237g0);
                    if (c26174a2.get(string2) == null) {
                        c26174a2.put(string2, new ArrayList<>());
                    }
                }
            }
            m3090b.moveToPosition(-1);
            c26767t.m1355b(c26174a);
            c26767t.m1356a(c26174a2);
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                ArrayList<String> arrayList2 = !m3090b.isNull(m43237g0) ? c26174a.get(m3090b.getString(m43237g0)) : null;
                ArrayList<String> arrayList3 = arrayList2;
                if (arrayList2 == null) {
                    arrayList3 = new ArrayList<>();
                }
                ArrayList<C26829f> arrayList4 = !m3090b.isNull(m43237g0) ? c26174a2.get(m3090b.getString(m43237g0)) : null;
                ArrayList<C26829f> arrayList5 = arrayList4;
                if (arrayList4 == null) {
                    arrayList5 = new ArrayList<>();
                }
                C26760p.C26763c c26763c = new C26760p.C26763c();
                c26763c.f74922a = m3090b.getString(m43237g0);
                c26763c.f74923b = C26232y.m2423Q0(m3090b.getInt(m43237g02));
                c26763c.f74924c = C26829f.m1306a(m3090b.getBlob(m43237g03));
                c26763c.f74925d = m3090b.getInt(m43237g04);
                c26763c.f74926e = arrayList3;
                c26763c.f74927f = arrayList5;
                arrayList.add(c26763c);
            }
            c26767t.f74932a.setTransactionSuccessful();
            m3090b.close();
            m3059j.m3057l();
            c26767t.f74932a.endTransaction();
            return C26760p.f74901t.apply(arrayList);
        } catch (Throwable th) {
            c26767t.f74932a.endTransaction();
            throw th;
        }
    }
}
