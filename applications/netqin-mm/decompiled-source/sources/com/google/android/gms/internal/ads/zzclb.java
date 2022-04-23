package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzua;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclb.class */
public final class zzclb implements zzeoy<zzts> {

    /* renamed from: a */
    public final zzeph<Context> f26199a;

    /* renamed from: b */
    public final zzeph<String> f26200b;

    /* renamed from: c */
    public final zzeph<zzbbx> f26201c;

    /* renamed from: d */
    public final zzeph<zzua.zza.EnumC10505zza> f26202d;

    /* renamed from: e */
    public final zzeph<String> f26203e;

    public zzclb(zzeph<Context> zzephVar, zzeph<String> zzephVar2, zzeph<zzbbx> zzephVar3, zzeph<zzua.zza.EnumC10505zza> zzephVar4, zzeph<String> zzephVar5) {
        this.f26199a = zzephVar;
        this.f26200b = zzephVar2;
        this.f26201c = zzephVar3;
        this.f26202d = zzephVar4;
        this.f26203e = zzephVar5;
    }

    /* renamed from: a */
    public static zzclb m14092a(zzeph<Context> zzephVar, zzeph<String> zzephVar2, zzeph<zzbbx> zzephVar3, zzeph<zzua.zza.EnumC10505zza> zzephVar4, zzeph<String> zzephVar5) {
        return new zzclb(zzephVar, zzephVar2, zzephVar3, zzephVar4, zzephVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Context context = this.f26199a.get();
        final String str = this.f26200b.get();
        zzbbx zzbbxVar = this.f26201c.get();
        final zzua.zza.EnumC10505zza zzaVar = this.f26202d.get();
        final String str2 = this.f26203e.get();
        zzts zztsVar = new zzts(new zztx(context));
        zzua.zzu.zza m = zzua.zzu.m11221m();
        m.m11219a(zzbbxVar.f24760b);
        m.m11218b(zzbbxVar.f24761c);
        m.m11217c(zzbbxVar.f24762d ? 0 : 2);
        final zzua.zzu zzuVar = (zzua.zzu) ((zzejz) m.mo12342K());
        zztsVar.m11425a(new zztr(zzaVar, str, zzuVar, str2) { // from class: c.d.b.d.g.a.rk

            /* renamed from: a */
            public final zzua.zza.EnumC10505zza f15021a;

            /* renamed from: b */
            public final String f15022b;

            /* renamed from: c */
            public final zzua.zzu f15023c;

            /* renamed from: d */
            public final String f15024d;

            {
                this.f15021a = zzaVar;
                this.f15022b = str;
                this.f15023c = zzuVar;
                this.f15024d = str2;
            }

            @Override // com.google.android.gms.internal.ads.zztr
            /* renamed from: a */
            public final void mo11427a(zzua.zzi.zza zzaVar2) {
                zzua.zza.EnumC10505zza zzaVar3 = this.f15021a;
                String str3 = this.f15022b;
                zzua.zzu zzuVar2 = this.f15023c;
                String str4 = this.f15024d;
                zzua.zza.zzb d = zzaVar2.m11309s().m12397d();
                d.m11408a(zzaVar3);
                zzaVar2.m11319a(d);
                zzua.zzg.zza d2 = zzaVar2.m11310r().m12397d();
                d2.m11342a(str3);
                d2.m11343a(zzuVar2);
                zzaVar2.m11316a(d2);
                zzaVar2.m11313a(str4);
            }
        });
        zzepe.m12187a(zztsVar, "Cannot return null from a non-@Nullable @Provides method");
        return zztsVar;
    }
}
