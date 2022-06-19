package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p018n.C1325d;
import p020b.p070r.p071a.AbstractC1772b;
/* renamed from: androidx.work.impl.utils.e */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/e.class */
public class C1371e {

    /* renamed from: a */
    private final WorkDatabase f5645a;

    public C1371e(WorkDatabase workDatabase) {
        this.f5645a = workDatabase;
    }

    /* renamed from: b */
    public static void m30213b(Context context, AbstractC1772b abstractC1772b) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.preferences", 0);
        if (sharedPreferences.contains("reschedule_needed") || sharedPreferences.contains("last_cancel_all_time_ms")) {
            Object[] objArr = null;
            long j = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
            if (sharedPreferences.getBoolean("reschedule_needed", false)) {
                objArr = 1;
            }
            abstractC1772b.mo28912h();
            try {
                abstractC1772b.mo28918H("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"last_cancel_all_time_ms", Long.valueOf(j)});
                abstractC1772b.mo28918H("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", Long.valueOf(objArr == 1 ? 1L : 0L)});
                sharedPreferences.edit().clear().apply();
                abstractC1772b.mo28919G();
            } finally {
                abstractC1772b.mo28916O();
            }
        }
    }

    /* renamed from: a */
    public boolean m30214a() {
        Long mo30301a = this.f5645a.mo30511x().mo30301a("reschedule_needed");
        return mo30301a != null && mo30301a.longValue() == 1;
    }

    /* renamed from: c */
    public void m30212c(boolean z) {
        this.f5645a.mo30511x().mo30300b(new C1325d("reschedule_needed", z));
    }
}
