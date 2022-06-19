package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cha.class */
public final class cha<T> {

    /* renamed from: a */
    private final Set<chb<? extends cgy<T>>> f45765a;

    /* renamed from: b */
    private final Executor f45766b;

    public cha(Executor executor, Set<chb<? extends cgy<T>>> set) {
        this.f45766b = executor;
        this.f45765a = set;
    }

    /* renamed from: a */
    public final dbt<T> m17461a(T t) {
        ArrayList arrayList = new ArrayList(this.f45765a.size());
        for (chb<? extends cgy<T>> chbVar : this.f45765a) {
            dbt<? extends cgy<T>> mo17449a = chbVar.mo17449a();
            if (C12279co.f46163a.mo17481a().booleanValue()) {
                mo17449a.addListener(new Runnable(chbVar, zzr.zzlc().mo19038b()) { // from class: com.google.android.gms.internal.ads.chd

                    /* renamed from: a */
                    private final chb f45769a;

                    /* renamed from: b */
                    private final long f45770b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f45769a = chbVar;
                        this.f45770b = mo19038b;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        chb chbVar2 = this.f45769a;
                        long j = this.f45770b;
                        String canonicalName = chbVar2.getClass().getCanonicalName();
                        long mo19038b2 = zzr.zzlc().mo19038b();
                        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 40);
                        sb.append("Signal runtime : ");
                        sb.append(canonicalName);
                        sb.append(" = ");
                        sb.append(mo19038b2 - j);
                        zzd.zzed(sb.toString());
                    }
                }, C13091zd.f50123f);
            }
            arrayList.add(mo17449a);
        }
        return dbh.m16895b(arrayList).m16893a(new Callable(arrayList, t) { // from class: com.google.android.gms.internal.ads.chc

            /* renamed from: a */
            private final List f45767a;

            /* renamed from: b */
            private final Object f45768b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45767a = arrayList;
                this.f45768b = t;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<dbt> list = this.f45767a;
                Object obj = this.f45768b;
                for (dbt dbtVar : list) {
                    cgy cgyVar = (cgy) dbtVar.get();
                    if (cgyVar != null) {
                        cgyVar.mo17450a(obj);
                    }
                }
                return obj;
            }
        }, this.f45766b);
    }
}
