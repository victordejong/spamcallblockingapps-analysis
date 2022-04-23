package com.google.android.gms.internal.measurement;

import android.os.StrictMode;
import androidx.b.a;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ed.class */
public final class ed implements dm {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, ed> f28986a = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ed a() {
        ed edVar;
        if (!df.a()) {
            synchronized (ed.class) {
                try {
                    edVar = f28986a.get(null);
                    if (edVar == null) {
                        StrictMode.allowThreadDiskReads();
                        throw null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return edVar;
        }
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b() {
        synchronized (ed.class) {
            try {
                Map<String, ed> map = f28986a;
                Iterator<ed> it2 = map.values().iterator();
                if (!it2.hasNext()) {
                    map.clear();
                } else {
                    it2.next();
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.dm
    public final Object a(String str) {
        throw null;
    }
}
