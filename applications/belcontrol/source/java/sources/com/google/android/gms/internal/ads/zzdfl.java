package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdfl.class */
public final class zzdfl<T> {
    private final Executor executor;
    private final Set<zzdfi<? extends zzdfj<T>>> zzhdn;

    public zzdfl(Executor executor, Set<zzdfi<? extends zzdfj<T>>> set) {
        this.executor = executor;
        this.zzhdn = set;
    }

    public final zzdzw<T> zzs(T t) {
        ArrayList arrayList = new ArrayList(this.zzhdn.size());
        for (zzdfi<? extends zzdfj<T>> zzdfiVar : this.zzhdn) {
            zzdzw<? extends zzdfj<T>> zzasy = zzdfiVar.zzasy();
            if (zzadl.zzdee.get().booleanValue()) {
                zzasy.addListener(new Runnable(zzdfiVar, zzr.zzky().elapsedRealtime()) { // from class: com.google.android.gms.internal.ads.zzdfk
                    private final zzdfi zzhdl;
                    private final long zzhdm;

                    {
                        this.zzhdl = zzdfiVar;
                        this.zzhdm = elapsedRealtime;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdfi zzdfiVar2 = this.zzhdl;
                        long j = this.zzhdm;
                        String canonicalName = zzdfiVar2.getClass().getCanonicalName();
                        long elapsedRealtime2 = zzr.zzky().elapsedRealtime();
                        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 40);
                        sb.append("Signal runtime : ");
                        sb.append(canonicalName);
                        sb.append(" = ");
                        sb.append(elapsedRealtime2 - j);
                        zzd.zzeb(sb.toString());
                    }
                }, zzazp.zzeih);
            }
            arrayList.add(zzasy);
        }
        return zzdzk.zzk(arrayList).zzb(new Callable(arrayList, t) { // from class: com.google.android.gms.internal.ads.zzdfn
            private final Object zzdlk;
            private final List zzhct;

            {
                this.zzhct = arrayList;
                this.zzdlk = t;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<zzdzw> list = this.zzhct;
                Object obj = this.zzdlk;
                for (zzdzw zzdzwVar : list) {
                    zzdfj zzdfjVar = (zzdfj) zzdzwVar.get();
                    if (zzdfjVar != null) {
                        zzdfjVar.zzr(obj);
                    }
                }
                return obj;
            }
        }, this.executor);
    }
}
