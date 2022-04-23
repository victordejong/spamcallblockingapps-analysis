package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.sqlite.db.b;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.Preference;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final WorkDatabase f6177a;

    public c(WorkDatabase workDatabase) {
        this.f6177a = workDatabase;
    }

    private int a(String str) {
        this.f6177a.e();
        try {
            Long longValue = this.f6177a.p().getLongValue(str);
            int i = 0;
            int intValue = longValue != null ? longValue.intValue() : 0;
            if (intValue != Integer.MAX_VALUE) {
                i = intValue + 1;
            }
            a(str, i);
            this.f6177a.g();
            return intValue;
        } finally {
            this.f6177a.f();
        }
    }

    public static void a(Context context, b bVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.id", 0);
        if (sharedPreferences.contains("next_job_scheduler_id") || sharedPreferences.contains("next_job_scheduler_id")) {
            int i = sharedPreferences.getInt("next_job_scheduler_id", 0);
            int i2 = sharedPreferences.getInt("next_alarm_manager_id", 0);
            bVar.a();
            try {
                bVar.a("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_job_scheduler_id", Integer.valueOf(i)});
                bVar.a("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_alarm_manager_id", Integer.valueOf(i2)});
                sharedPreferences.edit().clear().apply();
                bVar.c();
            } finally {
                bVar.b();
            }
        }
    }

    private void a(String str, int i) {
        this.f6177a.p().insertPreference(new Preference(str, i));
    }

    public final int a() {
        int a2;
        synchronized (c.class) {
            try {
                a2 = a("next_alarm_manager_id");
            } catch (Throwable th) {
                throw th;
            }
        }
        return a2;
    }

    public final int a(int i, int i2) {
        synchronized (c.class) {
            try {
                int a2 = a("next_job_scheduler_id");
                if (a2 < i || a2 > i2) {
                    a("next_job_scheduler_id", i + 1);
                } else {
                    i = a2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }
}
