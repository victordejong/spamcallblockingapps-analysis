package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bhh.class */
public final class bhh {

    /* renamed from: a */
    private final Map<String, String> f11240a = new ConcurrentHashMap();

    /* renamed from: b */
    private final /* synthetic */ bhi f11241b;

    public bhh(bhi bhiVar) {
        this.f11241b = bhiVar;
    }

    /* renamed from: c */
    public final bhh m11936c() {
        Map<? extends String, ? extends String> map;
        Map<String, String> map2 = this.f11240a;
        map = this.f11241b.f11244c;
        map2.putAll(map);
        return this;
    }

    /* renamed from: a */
    public final bhh m11940a(cgr cgrVar) {
        this.f11240a.put("aai", cgrVar.f12998t);
        return this;
    }

    /* renamed from: a */
    public final bhh m11939a(cgs cgsVar) {
        this.f11240a.put("gqi", cgsVar.f13006b);
        return this;
    }

    /* renamed from: a */
    public final bhh m11938a(String str, String str2) {
        this.f11240a.put(str, str2);
        return this;
    }

    /* renamed from: a */
    public final void m11942a() {
        Executor executor;
        executor = this.f11241b.f11243b;
        executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bhl

            /* renamed from: a */
            private final bhh f11254a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11254a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f11254a.m11937b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ void m11937b() {
        bho bhoVar;
        bhoVar = this.f11241b.f11242a;
        bhoVar.m11923a(this.f11240a);
    }
}
