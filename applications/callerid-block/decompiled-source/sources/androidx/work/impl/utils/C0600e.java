package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
/* renamed from: androidx.work.impl.utils.e */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/e.class */
public class C0600e {

    /* renamed from: a */
    private Context f3121a;

    /* renamed from: b */
    private SharedPreferences f3122b;

    public C0600e(Context context) {
        this.f3121a = context;
    }

    /* renamed from: a */
    private SharedPreferences m11608a() {
        SharedPreferences sharedPreferences;
        synchronized (C0600e.class) {
            try {
                if (this.f3122b == null) {
                    this.f3122b = this.f3121a.getSharedPreferences("androidx.work.util.preferences", 0);
                }
                sharedPreferences = this.f3122b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return sharedPreferences;
    }

    /* renamed from: b */
    public boolean m11607b() {
        return m11608a().getBoolean("reschedule_needed", false);
    }

    /* renamed from: c */
    public void m11606c(boolean z) {
        m11608a().edit().putBoolean("reschedule_needed", z).apply();
    }
}
