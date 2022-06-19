package p1727n3.p1834m0.p1835c0.p1845t;

import androidx.work.impl.WorkDatabase;
import p1727n3.p1834m0.p1835c0.p1844s.C26745d;
import p1727n3.p1834m0.p1835c0.p1844s.C26747f;
/* renamed from: n3.m0.c0.t.f */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/f.class */
public class C26784f {

    /* renamed from: a */
    public final WorkDatabase f74956a;

    public C26784f(WorkDatabase workDatabase) {
        this.f74956a = workDatabase;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final int m1332a(String str) {
        this.f74956a.beginTransaction();
        try {
            Long m1368a = ((C26747f) this.f74956a.m42610b()).m1368a(str);
            int i = 0;
            int intValue = m1368a != null ? m1368a.intValue() : 0;
            if (intValue != Integer.MAX_VALUE) {
                i = intValue + 1;
            }
            ((C26747f) this.f74956a.m42610b()).m1367b(new C26745d(str, i));
            this.f74956a.setTransactionSuccessful();
            this.f74956a.endTransaction();
            return intValue;
        } catch (Throwable th) {
            this.f74956a.endTransaction();
            throw th;
        }
    }

    /* renamed from: b */
    public int m1331b(int i, int i2) {
        synchronized (C26784f.class) {
            try {
                int m1332a = m1332a("next_job_scheduler_id");
                if (m1332a < i || m1332a > i2) {
                    ((C26747f) this.f74956a.m42610b()).m1367b(new C26745d("next_job_scheduler_id", i + 1));
                } else {
                    i = m1332a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }
}
