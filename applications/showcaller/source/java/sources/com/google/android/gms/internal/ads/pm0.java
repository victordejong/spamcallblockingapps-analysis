package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pm0.class */
final class pm0 {

    /* renamed from: a */
    private final ArrayList<C6997th> f28052a = new ArrayList<>();

    /* renamed from: b */
    private long f28053b;

    /* renamed from: a */
    public final long m12213a() {
        Iterator<C6997th> it = this.f28052a.iterator();
        while (it.hasNext()) {
            Map<String, List<String>> mo9584a = it.next().mo9584a();
            if (mo9584a != null) {
                for (Map.Entry<String, List<String>> entry : mo9584a.entrySet()) {
                    try {
                        if ("content-length".equalsIgnoreCase(entry.getKey())) {
                            this.f28053b = Math.max(this.f28053b, Long.parseLong(entry.getValue().get(0)));
                        }
                    } catch (RuntimeException e) {
                    }
                }
                it.remove();
            }
        }
        return this.f28053b;
    }

    /* renamed from: b */
    public final void m12212b(C6997th c6997th) {
        this.f28052a.add(c6997th);
    }
}
