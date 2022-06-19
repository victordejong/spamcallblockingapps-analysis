package com.google.android.gms.internal.measurement;

import android.os.StrictMode;
import androidx.p023b.C0428a;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.ed */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ed.class */
public final class C13464ed implements AbstractC13446dm {

    /* renamed from: a */
    private static final Map<String, C13464ed> f50685a = new C0428a();

    /* renamed from: a */
    public static C13464ed m12900a() {
        C13464ed c13464ed;
        if (!C13439df.m12922a()) {
            synchronized (C13464ed.class) {
                try {
                    c13464ed = f50685a.get(null);
                    if (c13464ed == null) {
                        StrictMode.allowThreadDiskReads();
                        throw null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return c13464ed;
        }
        throw null;
    }

    /* renamed from: b */
    public static void m12898b() {
        synchronized (C13464ed.class) {
            try {
                Map<String, C13464ed> map = f50685a;
                Iterator<C13464ed> it2 = map.values().iterator();
                if (it2.hasNext()) {
                    it2.next();
                    throw null;
                }
                map.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13446dm
    /* renamed from: a */
    public final Object mo12899a(String str) {
        throw null;
    }
}
