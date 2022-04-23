package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzua;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmb.class */
public final class zzcmb implements zzeoy<Set<zzcab<zzdso>>> {

    /* renamed from: a */
    public final zzeph<String> f26222a;

    /* renamed from: b */
    public final zzeph<Context> f26223b;

    /* renamed from: c */
    public final zzeph<Executor> f26224c;

    /* renamed from: d */
    public final zzeph<Map<zzdsf, zzcmg>> f26225d;

    public zzcmb(zzeph<String> zzephVar, zzeph<Context> zzephVar2, zzeph<Executor> zzephVar3, zzeph<Map<zzdsf, zzcmg>> zzephVar4) {
        this.f26222a = zzephVar;
        this.f26223b = zzephVar2;
        this.f26224c = zzephVar3;
        this.f26225d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set set;
        final String str = this.f26222a.get();
        Context context = this.f26223b.get();
        Executor executor = this.f26224c.get();
        Map<zzdsf, zzcmg> map = this.f26225d.get();
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23865o2)).booleanValue()) {
            zzts zztsVar = new zzts(new zztx(context));
            zztsVar.m11425a(new zztr(str) { // from class: c.d.b.d.g.a.cl

                /* renamed from: a */
                public final String f12567a;

                {
                    this.f12567a = str;
                }

                @Override // com.google.android.gms.internal.ads.zztr
                /* renamed from: a */
                public final void mo11427a(zzua.zzi.zza zzaVar) {
                    zzaVar.m11313a(this.f12567a);
                }
            });
            set = Collections.singleton(new zzcab(new zzcme(zztsVar, map), executor));
        } else {
            set = Collections.emptySet();
        }
        zzepe.m12187a(set, "Cannot return null from a non-@Nullable @Provides method");
        return set;
    }
}
