package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.eht;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bko.class */
public final class bko implements dsi<Set<ayi<cto>>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<String> f24590a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f24591b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f24592c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<Map<ctj, bkt>> f24593d;

    public bko(dsv<String> dsvVar, dsv<Context> dsvVar2, dsv<Executor> dsvVar3, dsv<Map<ctj, bkt>> dsvVar4) {
        this.f24590a = dsvVar;
        this.f24591b = dsvVar2;
        this.f24592c = dsvVar3;
        this.f24593d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        Set set;
        final String a2 = this.f24590a.a();
        Context a3 = this.f24591b.a();
        Executor a4 = this.f24592c.a();
        Map<ctj, bkt> a5 = this.f24593d.a();
        if (((Boolean) ekb.e().a(aq.cN)).booleanValue()) {
            ehk ehkVar = new ehk(new ehq(a3));
            ehkVar.a(new ehj(a2) { // from class: com.google.android.gms.internal.ads.bkq

                /* renamed from: a  reason: collision with root package name */
                private final String f24595a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24595a = a2;
                }

                @Override // com.google.android.gms.internal.ads.ehj
                public final void a(eht.n.a aVar) {
                    aVar.a(this.f24595a);
                }
            });
            set = Collections.singleton(new ayi(new bkr(ehkVar, a5), a4));
        } else {
            set = Collections.emptySet();
        }
        return (Set) dso.b(set);
    }
}
