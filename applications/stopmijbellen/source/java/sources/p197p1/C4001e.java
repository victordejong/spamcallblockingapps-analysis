package p197p1;

import android.os.Build;
import androidx.work.C0677a;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p186o1.AbstractC3824h;
import p282x1.AbstractC4834q;
import p282x1.C4832p;
import p282x1.C4835r;
/* renamed from: p1.e */
/* loaded from: classes-dex2jar.jar:p1/e.class */
public class C4001e {

    /* renamed from: a */
    public static final String f12565a = AbstractC3824h.m1773e("Schedulers");

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static void m1542a(C0677a c0677a, WorkDatabase workDatabase, List<AbstractC4000d> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        AbstractC4834q mo7475q = workDatabase.mo7475q();
        workDatabase.m3819c();
        try {
            C4835r c4835r = (C4835r) mo7475q;
            List<C4832p> m386c = c4835r.m386c(Build.VERSION.SDK_INT == 23 ? c0677a.f2638h / 2 : c0677a.f2638h);
            List<C4832p> m387b = c4835r.m387b(200);
            if (((ArrayList) m386c).size() > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                Iterator it2 = ((ArrayList) m386c).iterator();
                while (it2.hasNext()) {
                    c4835r.m377l(((C4832p) it2.next()).f14831a, currentTimeMillis);
                }
            }
            workDatabase.m3811k();
            workDatabase.m3815g();
            ArrayList arrayList = (ArrayList) m386c;
            if (arrayList.size() > 0) {
                C4832p[] c4832pArr = (C4832p[]) arrayList.toArray(new C4832p[arrayList.size()]);
                for (AbstractC4000d abstractC4000d : list) {
                    if (abstractC4000d.mo1122f()) {
                        abstractC4000d.mo1124d(c4832pArr);
                    }
                }
            }
            ArrayList arrayList2 = (ArrayList) m387b;
            if (arrayList2.size() <= 0) {
                return;
            }
            C4832p[] c4832pArr2 = (C4832p[]) arrayList2.toArray(new C4832p[arrayList2.size()]);
            for (AbstractC4000d abstractC4000d2 : list) {
                if (!abstractC4000d2.mo1122f()) {
                    abstractC4000d2.mo1124d(c4832pArr2);
                }
            }
        } catch (Throwable th) {
            workDatabase.m3815g();
            throw th;
        }
    }
}
