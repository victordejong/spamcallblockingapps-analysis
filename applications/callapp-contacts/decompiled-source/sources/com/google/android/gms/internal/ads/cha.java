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

    /* renamed from: a  reason: collision with root package name */
    private final Set<chb<? extends cgy<T>>> f25819a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f25820b;

    public cha(Executor executor, Set<chb<? extends cgy<T>>> set) {
        this.f25820b = executor;
        this.f25819a = set;
    }

    public final dbt<T> a(final T t) {
        final ArrayList arrayList = new ArrayList(this.f25819a.size());
        for (final chb<? extends cgy<T>> chbVar : this.f25819a) {
            dbt<? extends cgy<T>> a2 = chbVar.a();
            if (co.f26137a.a().booleanValue()) {
                final long b2 = zzr.zzlc().b();
                a2.addListener(new Runnable(chbVar, b2) { // from class: com.google.android.gms.internal.ads.chd

                    /* renamed from: a  reason: collision with root package name */
                    private final chb f25823a;

                    /* renamed from: b  reason: collision with root package name */
                    private final long f25824b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25823a = chbVar;
                        this.f25824b = b2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        chb chbVar2 = this.f25823a;
                        long j = this.f25824b;
                        String canonicalName = chbVar2.getClass().getCanonicalName();
                        long b3 = zzr.zzlc().b();
                        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 40);
                        sb.append("Signal runtime : ");
                        sb.append(canonicalName);
                        sb.append(" = ");
                        sb.append(b3 - j);
                        zzd.zzed(sb.toString());
                    }
                }, zd.f);
            }
            arrayList.add(a2);
        }
        return dbh.b(arrayList).a(new Callable(arrayList, t) { // from class: com.google.android.gms.internal.ads.chc

            /* renamed from: a  reason: collision with root package name */
            private final List f25821a;

            /* renamed from: b  reason: collision with root package name */
            private final Object f25822b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25821a = arrayList;
                this.f25822b = t;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<dbt> list = this.f25821a;
                Object obj = this.f25822b;
                for (dbt dbtVar : list) {
                    cgy cgyVar = (cgy) dbtVar.get();
                    if (cgyVar != null) {
                        cgyVar.a(obj);
                    }
                }
                return obj;
            }
        }, this.f25820b);
    }
}
