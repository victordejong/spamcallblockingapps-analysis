package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.eht;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bko.class */
public final class bko implements dsi<Set<ayi<cto>>> {

    /* renamed from: a */
    private final dsv<String> f44142a;

    /* renamed from: b */
    private final dsv<Context> f44143b;

    /* renamed from: c */
    private final dsv<Executor> f44144c;

    /* renamed from: d */
    private final dsv<Map<ctj, bkt>> f44145d;

    public bko(dsv<String> dsvVar, dsv<Context> dsvVar2, dsv<Executor> dsvVar3, dsv<Map<ctj, bkt>> dsvVar4) {
        this.f44142a = dsvVar;
        this.f44143b = dsvVar2;
        this.f44144c = dsvVar3;
        this.f44145d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        Set set;
        String mo14005a = this.f44142a.mo14005a();
        Context mo14005a2 = this.f44143b.mo14005a();
        Executor mo14005a3 = this.f44144c.mo14005a();
        Map<ctj, bkt> mo14005a4 = this.f44145d.mo14005a();
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42757cN)).booleanValue()) {
            ehk ehkVar = new ehk(new ehq(mo14005a2));
            ehkVar.m15048a(new ehj(mo14005a) { // from class: com.google.android.gms.internal.ads.bkq

                /* renamed from: a */
                private final String f44147a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f44147a = mo14005a;
                }

                @Override // com.google.android.gms.internal.ads.ehj
                /* renamed from: a */
                public final void mo15050a(eht.C12494n.C12495a c12495a) {
                    c12495a.m14962a(this.f44147a);
                }
            });
            set = Collections.singleton(new ayi(new bkr(ehkVar, mo14005a4), mo14005a3));
        } else {
            set = Collections.emptySet();
        }
        return (Set) dso.m15764b(set);
    }
}
