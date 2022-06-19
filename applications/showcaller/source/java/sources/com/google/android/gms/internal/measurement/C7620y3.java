package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import java.util.Iterator;
import java.util.Map;
import p020b.p036e.C1489a;
/* renamed from: com.google.android.gms.internal.measurement.y3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/y3.class */
public final class C7620y3 implements AbstractC7390h3 {

    /* renamed from: a */
    private static final Map<String, C7620y3> f34787a = new C1489a();

    /* renamed from: b */
    private final SharedPreferences f34788b;

    /* renamed from: a */
    public static C7620y3 m6740a(Context context, String str) {
        C7620y3 c7620y3;
        if (!C7632z2.m6644a()) {
            synchronized (C7620y3.class) {
                try {
                    c7620y3 = f34787a.get(null);
                    if (c7620y3 == null) {
                        StrictMode.allowThreadDiskReads();
                        throw null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return c7620y3;
        }
        throw null;
    }

    /* renamed from: b */
    public static void m6739b() {
        synchronized (C7620y3.class) {
            try {
                Map<String, C7620y3> map = f34787a;
                Iterator<C7620y3> it = map.values().iterator();
                if (it.hasNext()) {
                    SharedPreferences sharedPreferences = it.next().f34788b;
                    throw null;
                }
                map.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7390h3
    /* renamed from: B */
    public final Object mo6741B(String str) {
        throw null;
    }
}
