package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cag.class */
public final class cag<T> {

    /* renamed from: a */
    private final Set<cah<? extends cae<T>>> f12600a;

    /* renamed from: b */
    private final Executor f12601b;

    public cag(Executor executor, Set<cah<? extends cae<T>>> set) {
        this.f12601b = executor;
        this.f12600a = set;
    }

    /* renamed from: a */
    public final crt<T> m11511a(T t) {
        ArrayList arrayList = new ArrayList(this.f12600a.size());
        for (cah<? extends cae<T>> cahVar : this.f12600a) {
            crt<? extends cae<T>> mo11479a = cahVar.mo11479a();
            if (C2793aq.f10209a.mo13599a().booleanValue()) {
                mo11479a.mo6734a(new Runnable(cahVar, C2341q.m14737j().mo13861b()) { // from class: com.google.android.gms.internal.ads.caj

                    /* renamed from: a */
                    private final cah f12604a;

                    /* renamed from: b */
                    private final long f12605b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f12604a = cahVar;
                        this.f12605b = mo13861b;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        cah cahVar2 = this.f12604a;
                        long j = this.f12605b;
                        String canonicalName = cahVar2.getClass().getCanonicalName();
                        C3556uu.m7052a(new StringBuilder(String.valueOf(canonicalName).length() + 40).append("Signal runtime : ").append(canonicalName).append(" = ").append(C2341q.m14737j().mo13861b() - j).toString());
                    }
                }, C3650yg.f17647f);
            }
            arrayList.add(mo11479a);
        }
        return crg.m10771c(arrayList).m10770a(new Callable(arrayList, t) { // from class: com.google.android.gms.internal.ads.cai

            /* renamed from: a */
            private final List f12602a;

            /* renamed from: b */
            private final Object f12603b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12602a = arrayList;
                this.f12603b = t;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<crt> list = this.f12602a;
                Object obj = this.f12603b;
                for (crt crtVar : list) {
                    cae caeVar = (cae) crtVar.get();
                    if (caeVar != null) {
                        caeVar.mo11481a(obj);
                    }
                }
                return obj;
            }
        }, this.f12601b);
    }
}
