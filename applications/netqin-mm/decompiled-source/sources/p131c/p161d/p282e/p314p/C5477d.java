package p131c.p161d.p282e.p314p;

import android.content.Context;
import android.content.SharedPreferences;
import com.mopub.common.privacy.AdvertisingId;
/* renamed from: c.d.e.p.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/p/d.class */
public class C5477d {

    /* renamed from: b */
    public static C5477d f18461b;

    /* renamed from: a */
    public final SharedPreferences f18462a;

    public C5477d(Context context) {
        this.f18462a = context.getSharedPreferences("FirebaseAppHeartBeat", 0);
    }

    /* renamed from: a */
    public static C5477d m23709a(Context context) {
        C5477d dVar;
        synchronized (C5477d.class) {
            try {
                if (f18461b == null) {
                    f18461b = new C5477d(context);
                }
                dVar = f18461b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dVar;
    }

    /* renamed from: a */
    public boolean m23710a(long j) {
        boolean a;
        synchronized (this) {
            a = m23708a("fire-global", j);
        }
        return a;
    }

    /* renamed from: a */
    public boolean m23708a(String str, long j) {
        synchronized (this) {
            if (!this.f18462a.contains(str)) {
                this.f18462a.edit().putLong(str, j).apply();
                return true;
            } else if (j - this.f18462a.getLong(str, -1L) < AdvertisingId.ONE_DAY_MS) {
                return false;
            } else {
                this.f18462a.edit().putLong(str, j).apply();
                return true;
            }
        }
    }
}
