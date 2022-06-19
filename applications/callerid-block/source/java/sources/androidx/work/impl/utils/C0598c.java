package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
/* renamed from: androidx.work.impl.utils.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/c.class */
public class C0598c {

    /* renamed from: a */
    private final Context f3117a;

    /* renamed from: b */
    private SharedPreferences f3118b;

    /* renamed from: c */
    private boolean f3119c;

    public C0598c(Context context) {
        this.f3117a = context;
    }

    /* renamed from: a */
    private void m11614a() {
        if (!this.f3119c) {
            this.f3118b = this.f3117a.getSharedPreferences("androidx.work.util.id", 0);
            this.f3119c = true;
        }
    }

    /* renamed from: c */
    private int m11612c(String str) {
        int i = 0;
        int i2 = this.f3118b.getInt(str, 0);
        if (i2 != Integer.MAX_VALUE) {
            i = i2 + 1;
        }
        m11610e(str, i);
        return i2;
    }

    /* renamed from: e */
    private void m11610e(String str, int i) {
        this.f3118b.edit().putInt(str, i).apply();
    }

    /* renamed from: b */
    public int m11613b() {
        int m11612c;
        synchronized (C0598c.class) {
            try {
                m11614a();
                m11612c = m11612c("next_alarm_manager_id");
            } catch (Throwable th) {
                throw th;
            }
        }
        return m11612c;
    }

    /* renamed from: d */
    public int m11611d(int i, int i2) {
        synchronized (C0598c.class) {
            try {
                m11614a();
                int m11612c = m11612c("next_job_scheduler_id");
                if (m11612c < i || m11612c > i2) {
                    m11610e("next_job_scheduler_id", i + 1);
                } else {
                    i = m11612c;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }
}
