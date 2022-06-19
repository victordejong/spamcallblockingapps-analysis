package p1727n3.p1834m0.p1835c0.p1844s;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1788g.C26174a;
import p1727n3.p1789g0.C26232y;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
/* renamed from: n3.m0.c0.s.s */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/s/s.class */
public class CallableC26766s implements Callable<List<C26760p.C26763c>> {

    /* renamed from: a */
    public final /* synthetic */ C25686y f74930a;

    /* renamed from: b */
    public final /* synthetic */ C26767t f74931b;

    public CallableC26766s(C26767t c26767t, C25686y c25686y) {
        this.f74931b = c26767t;
        this.f74930a = c25686y;
    }

    @Override // java.util.concurrent.Callable
    public List<C26760p.C26763c> call() throws Exception {
        this.f74931b.f74932a.beginTransaction();
        try {
            Cursor m3090b = C25653b.m3090b(this.f74931b.f74932a, this.f74930a, true, null);
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
            this.f74931b.m1355b(c26174a);
            this.f74931b.m1356a(c26174a2);
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
            this.f74931b.f74932a.setTransactionSuccessful();
            m3090b.close();
            return arrayList;
        } finally {
            this.f74931b.f74932a.endTransaction();
        }
    }

    public void finalize() {
        this.f74930a.m3057l();
    }
}
