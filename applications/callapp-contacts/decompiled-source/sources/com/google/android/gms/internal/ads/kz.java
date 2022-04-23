package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzar;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/kz.class */
public final class kz extends zs<ju> {

    /* renamed from: a  reason: collision with root package name */
    zzar<ju> f28140a;

    /* renamed from: c  reason: collision with root package name */
    private final Object f28141c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private boolean f28142d = false;
    private int e = 0;

    public kz(zzar<ju> zzarVar) {
        this.f28140a = zzarVar;
    }

    private final void e() {
        synchronized (this.f28141c) {
            o.a(this.e >= 0);
            if (!this.f28142d || this.e != 0) {
                zzd.zzed("There are still references to the engine. Not destroying.");
            } else {
                zzd.zzed("No reference is left (including root). Cleaning up engine.");
                a(new la(this), new zq());
            }
        }
    }

    public final kv a() {
        kv kvVar = new kv(this);
        synchronized (this.f28141c) {
            a(new ky(this, kvVar), new lb(this, kvVar));
            o.a(this.e >= 0);
            this.e++;
        }
        return kvVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b() {
        synchronized (this.f28141c) {
            o.a(this.e > 0);
            zzd.zzed("Releasing 1 reference for JS Engine");
            this.e--;
            e();
        }
    }

    public final void c() {
        synchronized (this.f28141c) {
            o.a(this.e >= 0);
            zzd.zzed("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.f28142d = true;
            e();
        }
    }
}
