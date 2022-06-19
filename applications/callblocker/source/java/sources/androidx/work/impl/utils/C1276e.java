package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.p042i.p043a.AbstractC0749b;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p055b.C1172d;
/* renamed from: androidx.work.impl.utils.e */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/e.class */
public class C1276e {

    /* renamed from: a */
    private final WorkDatabase f4288a;

    public C1276e(WorkDatabase workDatabase) {
        this.f4288a = workDatabase;
    }

    /* renamed from: a */
    public static void m17567a(Context context, AbstractC0749b abstractC0749b) {
        Object[] objArr = null;
        SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.preferences", 0);
        if (sharedPreferences.contains("reschedule_needed") || sharedPreferences.contains("last_cancel_all_time_ms")) {
            long j = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
            if (sharedPreferences.getBoolean("reschedule_needed", false)) {
                objArr = 1;
            }
            abstractC0749b.mo19525a();
            try {
                abstractC0749b.mo19521a("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"last_cancel_all_time_ms", Long.valueOf(j)});
                abstractC0749b.mo19521a("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", Long.valueOf(objArr == 1 ? 1L : 0L)});
                sharedPreferences.edit().clear().apply();
                abstractC0749b.mo19518c();
            } finally {
                abstractC0749b.mo19520b();
            }
        }
    }

    /* renamed from: a */
    public void m17566a(boolean z) {
        this.f4288a.mo17879u().mo17820a(new C1172d("reschedule_needed", z));
    }

    /* renamed from: a */
    public boolean m17568a() {
        Long mo17819a = this.f4288a.mo17879u().mo17819a("reschedule_needed");
        return mo17819a != null && mo17819a.longValue() == 1;
    }
}
