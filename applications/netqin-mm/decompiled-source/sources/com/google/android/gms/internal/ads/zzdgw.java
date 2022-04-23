package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzayp;
import com.google.android.gms.internal.ads.zzdgu;
import com.google.android.gms.internal.ads.zzdgx;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdgw.class */
public final class zzdgw<T> {

    /* renamed from: a */
    public final Set<zzdgx<? extends zzdgu<T>>> f27301a;

    /* renamed from: b */
    public final Executor f27302b;

    public zzdgw(Executor executor, Set<zzdgx<? extends zzdgu<T>>> set) {
        this.f27302b = executor;
        this.f27301a = set;
    }

    /* renamed from: a */
    public final zzdzc<T> m13602a(final T t) {
        final ArrayList arrayList = new ArrayList(this.f27301a.size());
        for (final zzdgx<? extends zzdgu<T>> zzdgxVar : this.f27301a) {
            zzdzc<? extends zzdgu<T>> a = zzdgxVar.mo13576a();
            if (zzacv.f23993a.mo16862a().booleanValue()) {
                final long a2 = zzp.m17962j().mo17092a();
                a.mo12976a(new Runnable(zzdgxVar, a2) { // from class: c.d.b.d.g.a.nu

                    /* renamed from: a */
                    public final zzdgx f14271a;

                    /* renamed from: b */
                    public final long f14272b;

                    {
                        this.f14271a = zzdgxVar;
                        this.f14272b = a2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdgx zzdgxVar2 = this.f14271a;
                        long j = this.f14272b;
                        String canonicalName = zzdgxVar2.getClass().getCanonicalName();
                        long a3 = zzp.m17962j().mo17092a();
                        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 40);
                        sb.append("Signal runtime : ");
                        sb.append(canonicalName);
                        sb.append(" = ");
                        sb.append(a3 - j);
                        zzayp.m16153g(sb.toString());
                    }
                }, zzbbz.f24769f);
            }
            arrayList.add(a);
        }
        return zzdyq.m12981c(arrayList).m12979a(new Callable(arrayList, t) { // from class: c.d.b.d.g.a.mu

            /* renamed from: a */
            public final List f14201a;

            /* renamed from: b */
            public final Object f14202b;

            {
                this.f14201a = arrayList;
                this.f14202b = t;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<zzdzc> list = this.f14201a;
                Object obj = this.f14202b;
                for (zzdzc zzdzcVar : list) {
                    zzdgu zzdguVar = (zzdgu) zzdzcVar.get();
                    if (zzdguVar != null) {
                        zzdguVar.mo13578a(obj);
                    }
                }
                return obj;
            }
        }, this.f27302b);
    }
}
