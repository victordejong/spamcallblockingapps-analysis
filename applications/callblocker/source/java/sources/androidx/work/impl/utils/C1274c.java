package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.p042i.p043a.AbstractC0749b;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p055b.C1172d;
/* renamed from: androidx.work.impl.utils.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/c.class */
public class C1274c {

    /* renamed from: a */
    private final WorkDatabase f4286a;

    public C1274c(WorkDatabase workDatabase) {
        this.f4286a = workDatabase;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private int m17571a(String str) {
        int i = 0;
        this.f4286a.m18291g();
        try {
            Long mo17819a = this.f4286a.mo17879u().mo17819a(str);
            int intValue = mo17819a != null ? mo17819a.intValue() : 0;
            if (intValue != Integer.MAX_VALUE) {
                i = intValue + 1;
            }
            m17570a(str, i);
            this.f4286a.m18288j();
            this.f4286a.m18290h();
            return intValue;
        } catch (Throwable th) {
            this.f4286a.m18290h();
            throw th;
        }
    }

    /* renamed from: a */
    public static void m17572a(Context context, AbstractC0749b abstractC0749b) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.id", 0);
        if (sharedPreferences.contains("next_job_scheduler_id") || sharedPreferences.contains("next_job_scheduler_id")) {
            int i = sharedPreferences.getInt("next_job_scheduler_id", 0);
            int i2 = sharedPreferences.getInt("next_alarm_manager_id", 0);
            abstractC0749b.mo19525a();
            try {
                abstractC0749b.mo19521a("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_job_scheduler_id", Integer.valueOf(i)});
                abstractC0749b.mo19521a("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_alarm_manager_id", Integer.valueOf(i2)});
                sharedPreferences.edit().clear().apply();
                abstractC0749b.mo19518c();
            } finally {
                abstractC0749b.mo19520b();
            }
        }
    }

    /* renamed from: a */
    private void m17570a(String str, int i) {
        this.f4286a.mo17879u().mo17820a(new C1172d(str, i));
    }

    /* renamed from: a */
    public int m17574a() {
        int m17571a;
        synchronized (C1274c.class) {
            try {
                m17571a = m17571a("next_alarm_manager_id");
            } catch (Throwable th) {
                throw th;
            }
        }
        return m17571a;
    }

    /* renamed from: a */
    public int m17573a(int i, int i2) {
        synchronized (C1274c.class) {
            try {
                int m17571a = m17571a("next_job_scheduler_id");
                if (m17571a < i || m17571a > i2) {
                    m17570a("next_job_scheduler_id", i + 1);
                } else {
                    i = m17571a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }
}
