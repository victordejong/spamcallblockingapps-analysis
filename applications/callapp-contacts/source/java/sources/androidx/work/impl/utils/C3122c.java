package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.sqlite.p082db.AbstractC2792b;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.Preference;
/* renamed from: androidx.work.impl.utils.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/c.class */
public class C3122c {

    /* renamed from: a */
    private final WorkDatabase f11450a;

    public C3122c(WorkDatabase workDatabase) {
        this.f11450a = workDatabase;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private int m39297a(String str) {
        this.f11450a.m39959e();
        try {
            Long longValue = this.f11450a.mo39468p().getLongValue(str);
            int i = 0;
            int intValue = longValue != null ? longValue.intValue() : 0;
            if (intValue != Integer.MAX_VALUE) {
                i = intValue + 1;
            }
            m39296a(str, i);
            this.f11450a.m39957g();
            this.f11450a.m39958f();
            return intValue;
        } catch (Throwable th) {
            this.f11450a.m39958f();
            throw th;
        }
    }

    /* renamed from: a */
    public static void m39298a(Context context, AbstractC2792b abstractC2792b) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.id", 0);
        if (sharedPreferences.contains("next_job_scheduler_id") || sharedPreferences.contains("next_job_scheduler_id")) {
            int i = sharedPreferences.getInt("next_job_scheduler_id", 0);
            int i2 = sharedPreferences.getInt("next_alarm_manager_id", 0);
            abstractC2792b.mo39901a();
            try {
                abstractC2792b.mo39898a("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_job_scheduler_id", Integer.valueOf(i)});
                abstractC2792b.mo39898a("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_alarm_manager_id", Integer.valueOf(i2)});
                sharedPreferences.edit().clear().apply();
                abstractC2792b.mo39895c();
            } finally {
                abstractC2792b.mo39897b();
            }
        }
    }

    /* renamed from: a */
    private void m39296a(String str, int i) {
        this.f11450a.mo39468p().insertPreference(new Preference(str, i));
    }

    /* renamed from: a */
    public final int m39300a() {
        int m39297a;
        synchronized (C3122c.class) {
            try {
                m39297a = m39297a("next_alarm_manager_id");
            } catch (Throwable th) {
                throw th;
            }
        }
        return m39297a;
    }

    /* renamed from: a */
    public final int m39299a(int i, int i2) {
        synchronized (C3122c.class) {
            try {
                int m39297a = m39297a("next_job_scheduler_id");
                if (m39297a < i || m39297a > i2) {
                    m39296a("next_job_scheduler_id", i + 1);
                } else {
                    i = m39297a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }
}
