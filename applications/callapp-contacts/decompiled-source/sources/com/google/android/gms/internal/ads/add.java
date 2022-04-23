package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/add.class */
final class add {

    /* renamed from: a  reason: collision with root package name */
    final ArrayList<ech> f23142a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private long f23143b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long a() {
        Iterator<ech> it2 = this.f23142a.iterator();
        while (it2.hasNext()) {
            Map<String, List<String>> b2 = it2.next().b();
            if (b2 != null) {
                for (Map.Entry<String, List<String>> entry : b2.entrySet()) {
                    try {
                        if ("content-length".equalsIgnoreCase(entry.getKey())) {
                            this.f23143b = Math.max(this.f23143b, Long.parseLong(entry.getValue().get(0)));
                        }
                    } catch (RuntimeException e) {
                    }
                }
                it2.remove();
            }
        }
        return this.f23143b;
    }
}
