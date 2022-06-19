package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhr.class */
final class zzbhr implements zzbng {
    private zzeqo<zzdmw> zzffs;
    private zzeqo<Set<zzbya<zzbsh>>> zzffv;
    private zzeqo<zzbsg> zzffw;
    private zzeqo<zzbud> zzffx;
    private zzeqo<zzdnl> zzffz;
    private zzeqo<Set<zzbya<zzbtb>>> zzfhe;
    private zzeqo<zzbsw> zzfhf;
    private zzeqo<String> zzfhz;
    private zzeqo<zzbrh> zzfia;
    private zzeqo<zzbnw> zzfib;
    private final /* synthetic */ zzbhp zzfne;
    private final zzbnf zzfnw;
    private zzeqo<zzagl> zzfnx;
    private zzeqo<Runnable> zzfny;
    private zzeqo<zzbnb> zzfnz;

    /* JADX INFO: Access modifiers changed from: private */
    public zzbhr(zzbhp zzbhpVar, zzboj zzbojVar, zzbnf zzbnfVar) {
        zzeqo zzeqoVar;
        zzeqo zzeqoVar2;
        zzeqo zzeqoVar3;
        zzeqo zzeqoVar4;
        zzeqo zzeqoVar5;
        zzeqo zzeqoVar6;
        zzeqo zzeqoVar7;
        zzeqo zzeqoVar8;
        zzeqo zzeqoVar9;
        zzeqo zzeqoVar10;
        zzeqo zzeqoVar11;
        zzeqo zzeqoVar12;
        this.zzfne = zzbhpVar;
        this.zzfnw = zzbnfVar;
        this.zzffz = zzbon.zze(zzbojVar);
        this.zzffs = zzbom.zzc(zzbojVar);
        zzeqm zzas = zzeqk.zzas(0, 2);
        zzeqoVar = zzbhpVar.zzfei;
        zzeqm zzax = zzas.zzax(zzeqoVar);
        zzeqoVar2 = zzbhpVar.zzfej;
        zzeqk zzbmo = zzax.zzax(zzeqoVar2).zzbmo();
        this.zzffv = zzbmo;
        this.zzffw = zzeqc.zzau(zzbsn.zzj(zzbmo));
        zzeqm zzas2 = zzeqk.zzas(4, 3);
        zzeqoVar3 = zzbhpVar.zzfex;
        zzeqm zzaw = zzas2.zzaw(zzeqoVar3);
        zzeqoVar4 = zzbhpVar.zzfey;
        zzeqm zzaw2 = zzaw.zzaw(zzeqoVar4);
        zzeqoVar5 = zzbhpVar.zzfez;
        zzeqm zzaw3 = zzaw2.zzaw(zzeqoVar5);
        zzeqoVar6 = zzbhpVar.zzffa;
        zzeqm zzax2 = zzaw3.zzax(zzeqoVar6);
        zzeqoVar7 = zzbhpVar.zzffb;
        zzeqm zzax3 = zzax2.zzax(zzeqoVar7);
        zzeqoVar8 = zzbhpVar.zzffc;
        zzeqm zzax4 = zzax3.zzax(zzeqoVar8);
        zzeqoVar9 = zzbhpVar.zzffd;
        zzeqk zzbmo2 = zzax4.zzaw(zzeqoVar9).zzbmo();
        this.zzfhe = zzbmo2;
        this.zzfhf = zzeqc.zzau(zzbsy.zzl(zzbmo2));
        zzbol zza = zzbol.zza(zzbojVar);
        this.zzfhz = zza;
        zzeqo<zzdmw> zzeqoVar13 = this.zzffs;
        zzeqoVar10 = zzbhpVar.zzfaj;
        this.zzfia = zzbrg.zzm(zzeqoVar13, zza, zzeqoVar10);
        this.zzffx = zzeqc.zzau(zzbvg.zzalv());
        zzeqo<zzdnl> zzeqoVar14 = this.zzffz;
        zzeqo<zzdmw> zzeqoVar15 = this.zzffs;
        zzeqo<zzbsg> zzeqoVar16 = this.zzffw;
        zzeqo<zzbsw> zzeqoVar17 = this.zzfhf;
        zzeqoVar11 = zzbhpVar.zzffl;
        this.zzfib = zzbpn.zza(zzeqoVar14, zzeqoVar15, zzeqoVar16, zzeqoVar17, zzeqoVar11, this.zzfia, this.zzffx);
        this.zzfnx = new zzbnh(zzbnfVar);
        zzbni zzbniVar = new zzbni(zzbnfVar);
        this.zzfny = zzbniVar;
        zzeqo<zzbnw> zzeqoVar18 = this.zzfib;
        zzeqo<zzagl> zzeqoVar19 = this.zzfnx;
        zzeqoVar12 = zzbhpVar.zzffq.zzewz;
        this.zzfnz = zzeqc.zzau(new zzbnk(zzeqoVar18, zzeqoVar19, zzbniVar, zzeqoVar12));
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final zzblv zzahu() {
        return (zzblv) zzeqh.zza(this.zzfnz.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
