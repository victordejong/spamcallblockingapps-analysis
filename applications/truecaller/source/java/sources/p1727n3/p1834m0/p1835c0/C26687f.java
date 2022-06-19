package p1727n3.p1834m0.p1835c0;

import android.os.Build;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.C26678c;
import p1727n3.p1834m0.p1835c0.p1844s.AbstractC26764q;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
import p1727n3.p1834m0.p1835c0.p1844s.C26767t;
/* renamed from: n3.m0.c0.f */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/f.class */
public class C26687f {

    /* renamed from: a */
    public static final String f74697a = AbstractC26839p.m1295e("Schedulers");

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static void m1438a(C26678c c26678c, WorkDatabase workDatabase, List<AbstractC26686e> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        AbstractC26764q m42606f = workDatabase.m42606f();
        workDatabase.beginTransaction();
        try {
            C26767t c26767t = (C26767t) m42606f;
            List<C26760p> m1352e = c26767t.m1352e(Build.VERSION.SDK_INT == 23 ? c26678c.f74674i / 2 : c26678c.f74674i);
            List<C26760p> m1353d = c26767t.m1353d(200);
            ArrayList arrayList = (ArrayList) m1352e;
            if (arrayList.size() > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    c26767t.m1343n(((C26760p) it.next()).f74902a, currentTimeMillis);
                }
            }
            workDatabase.setTransactionSuccessful();
            workDatabase.endTransaction();
            if (arrayList.size() > 0) {
                C26760p[] c26760pArr = (C26760p[]) arrayList.toArray(new C26760p[arrayList.size()]);
                for (AbstractC26686e abstractC26686e : list) {
                    if (abstractC26686e.mo1403a()) {
                        abstractC26686e.mo1399e(c26760pArr);
                    }
                }
            }
            ArrayList arrayList2 = (ArrayList) m1353d;
            if (arrayList2.size() <= 0) {
                return;
            }
            C26760p[] c26760pArr2 = (C26760p[]) arrayList2.toArray(new C26760p[arrayList2.size()]);
            for (AbstractC26686e abstractC26686e2 : list) {
                if (!abstractC26686e2.mo1403a()) {
                    abstractC26686e2.mo1399e(c26760pArr2);
                }
            }
        } catch (Throwable th) {
            workDatabase.endTransaction();
            throw th;
        }
    }
}
