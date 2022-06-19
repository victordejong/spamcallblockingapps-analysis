package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p018n.C1325d;
import p020b.p070r.p071a.AbstractC1772b;
/* renamed from: androidx.work.impl.utils.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/c.class */
public class C1369c {

    /* renamed from: a */
    private final WorkDatabase f5643a;

    public C1369c(WorkDatabase workDatabase) {
        this.f5643a = workDatabase;
    }

    /* renamed from: a */
    public static void m30220a(Context context, AbstractC1772b abstractC1772b) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.id", 0);
        if (sharedPreferences.contains("next_job_scheduler_id") || sharedPreferences.contains("next_job_scheduler_id")) {
            int i = sharedPreferences.getInt("next_job_scheduler_id", 0);
            int i2 = sharedPreferences.getInt("next_alarm_manager_id", 0);
            abstractC1772b.mo28912h();
            try {
                abstractC1772b.mo28918H("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_job_scheduler_id", Integer.valueOf(i)});
                abstractC1772b.mo28918H("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_alarm_manager_id", Integer.valueOf(i2)});
                sharedPreferences.edit().clear().apply();
                abstractC1772b.mo28919G();
            } finally {
                abstractC1772b.mo28916O();
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    private int m30218c(String str) {
        this.f5643a.m31293c();
        try {
            Long mo30301a = this.f5643a.mo30511x().mo30301a(str);
            int i = 0;
            int intValue = mo30301a != null ? mo30301a.intValue() : 0;
            if (intValue != Integer.MAX_VALUE) {
                i = intValue + 1;
            }
            m30216e(str, i);
            this.f5643a.m31280r();
            this.f5643a.m31291g();
            return intValue;
        } catch (Throwable th) {
            this.f5643a.m31291g();
            throw th;
        }
    }

    /* renamed from: e */
    private void m30216e(String str, int i) {
        this.f5643a.mo30511x().mo30300b(new C1325d(str, i));
    }

    /* renamed from: b */
    public int m30219b() {
        int m30218c;
        synchronized (C1369c.class) {
            try {
                m30218c = m30218c("next_alarm_manager_id");
            } catch (Throwable th) {
                throw th;
            }
        }
        return m30218c;
    }

    /* renamed from: d */
    public int m30217d(int i, int i2) {
        synchronized (C1369c.class) {
            try {
                int m30218c = m30218c("next_job_scheduler_id");
                if (m30218c < i || m30218c > i2) {
                    m30216e("next_job_scheduler_id", i + 1);
                } else {
                    i = m30218c;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }
}
