package p292y1;

import androidx.work.impl.WorkDatabase;
import p282x1.C4813d;
import p282x1.C4815f;
/* renamed from: y1.f */
/* loaded from: classes-dex2jar.jar:y1/f.class */
public class C4959f {

    /* renamed from: a */
    public final WorkDatabase f15125a;

    public C4959f(WorkDatabase workDatabase) {
        this.f15125a = workDatabase;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final int m176a(String str) {
        this.f15125a.m3819c();
        try {
            Long m398a = ((C4815f) this.f15125a.mo7479m()).m398a(str);
            int i = 0;
            int intValue = m398a != null ? m398a.intValue() : 0;
            if (intValue != Integer.MAX_VALUE) {
                i = intValue + 1;
            }
            ((C4815f) this.f15125a.mo7479m()).m397b(new C4813d(str, i));
            this.f15125a.m3811k();
            this.f15125a.m3815g();
            return intValue;
        } catch (Throwable th) {
            this.f15125a.m3815g();
            throw th;
        }
    }

    /* renamed from: b */
    public int m175b(int i, int i2) {
        synchronized (C4959f.class) {
            try {
                int m176a = m176a("next_job_scheduler_id");
                if (m176a < i || m176a > i2) {
                    ((C4815f) this.f15125a.mo7479m()).m397b(new C4813d("next_job_scheduler_id", i + 1));
                } else {
                    i = m176a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }
}
