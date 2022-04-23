package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blh.class */
public final class blh {

    /* renamed from: a */
    final Map<String, String> f24632a = new ConcurrentHashMap();

    /* renamed from: b */
    final /* synthetic */ bli f24633b;

    public blh(bli bliVar) {
        this.f24633b = bliVar;
    }

    public static /* synthetic */ blh a(blh blhVar) {
        blhVar.f24632a.putAll(blhVar.f24633b.f24636c);
        return blhVar;
    }

    public final blh a(cov covVar) {
        this.f24632a.put("aai", covVar.v);
        return this;
    }

    public final blh a(coz cozVar) {
        this.f24632a.put("gqi", cozVar.f26197b);
        return this;
    }

    public final blh a(String str, String str2) {
        this.f24632a.put(str, str2);
        return this;
    }

    public final void a() {
        this.f24633b.f24635b.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.blk

            /* renamed from: a  reason: collision with root package name */
            private final blh f24639a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24639a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                blh blhVar = this.f24639a;
                blhVar.f24633b.f24634a.a(blhVar.f24632a);
            }
        });
    }

    public final String b() {
        return this.f24633b.f24634a.b(this.f24632a);
    }
}
