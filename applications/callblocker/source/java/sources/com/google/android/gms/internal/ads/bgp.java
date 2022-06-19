package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.dwv;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bgp.class */
public final class bgp implements dht<Set<auq<clg>>> {

    /* renamed from: a */
    private final dig<String> f11195a;

    /* renamed from: b */
    private final dig<Context> f11196b;

    /* renamed from: c */
    private final dig<Executor> f11197c;

    /* renamed from: d */
    private final dig<Map<ckw, bgu>> f11198d;

    public bgp(dig<String> digVar, dig<Context> digVar2, dig<Executor> digVar3, dig<Map<ckw, bgu>> digVar4) {
        this.f11195a = digVar;
        this.f11196b = digVar2;
        this.f11197c = digVar3;
        this.f11198d = digVar4;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        Set emptySet;
        String mo9430a = this.f11195a.mo9430a();
        Context mo9430a2 = this.f11196b.mo9430a();
        Executor mo9430a3 = this.f11197c.mo9430a();
        Map<ckw, bgu> mo9430a4 = this.f11198d.mo9430a();
        if (((Boolean) dyx.m8158e().m7876a(edi.f16481ch)).booleanValue()) {
            dwi dwiVar = new dwi(new dwn(mo9430a2));
            dwiVar.m8441a(new dwl(mo9430a) { // from class: com.google.android.gms.internal.ads.bgr

                /* renamed from: a */
                private final String f11200a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f11200a = mo9430a;
                }

                @Override // com.google.android.gms.internal.ads.dwl
                /* renamed from: a */
                public final void mo8434a(dwv.C3068n.C3069a c3069a) {
                    c3069a.m8311a(this.f11200a);
                }
            });
            emptySet = Collections.singleton(new auq(new bgs(dwiVar, mo9430a4), mo9430a3));
        } else {
            emptySet = Collections.emptySet();
        }
        return (Set) dhz.m9438a(emptySet, "Cannot return null from a non-@Nullable @Provides method");
    }
}
