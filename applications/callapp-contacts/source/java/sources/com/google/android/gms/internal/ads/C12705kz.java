package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzar;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.internal.ads.kz */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/kz.class */
public final class C12705kz extends C13106zs<AbstractC12673ju> {

    /* renamed from: a */
    zzar<AbstractC12673ju> f49456a;

    /* renamed from: c */
    private final Object f49457c = new Object();

    /* renamed from: d */
    private boolean f49458d = false;

    /* renamed from: e */
    private int f49459e = 0;

    public C12705kz(zzar<AbstractC12673ju> zzarVar) {
        this.f49456a = zzarVar;
    }

    /* renamed from: e */
    private final void m14549e() {
        synchronized (this.f49457c) {
            C12045o.m19158a(this.f49459e >= 0);
            if (!this.f49458d || this.f49459e != 0) {
                zzd.zzed("There are still references to the engine. Not destroying.");
            } else {
                zzd.zzed("No reference is left (including root). Cleaning up engine.");
                m13896a(new C12707la(this), new C13104zq());
            }
        }
    }

    /* renamed from: a */
    public final C12701kv m14552a() {
        C12701kv c12701kv = new C12701kv(this);
        synchronized (this.f49457c) {
            m13896a(new C12704ky(this, c12701kv), new C12708lb(this, c12701kv));
            C12045o.m19158a(this.f49459e >= 0);
            this.f49459e++;
        }
        return c12701kv;
    }

    /* renamed from: b */
    public final void m14551b() {
        synchronized (this.f49457c) {
            C12045o.m19158a(this.f49459e > 0);
            zzd.zzed("Releasing 1 reference for JS Engine");
            this.f49459e--;
            m14549e();
        }
    }

    /* renamed from: c */
    public final void m14550c() {
        synchronized (this.f49457c) {
            C12045o.m19158a(this.f49459e >= 0);
            zzd.zzed("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.f49458d = true;
            m14549e();
        }
    }
}
