package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzug;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzciy.class */
public final class zzciy implements zzeqb<zztu> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzug.zza.EnumC2617zza> zzftc;
    private final zzeqo<String> zzfyr;
    private final zzeqo<zzazn> zzfze;
    private final zzeqo<String> zzgku;

    private zzciy(zzeqo<Context> zzeqoVar, zzeqo<String> zzeqoVar2, zzeqo<zzazn> zzeqoVar3, zzeqo<zzug.zza.EnumC2617zza> zzeqoVar4, zzeqo<String> zzeqoVar5) {
        this.zzewk = zzeqoVar;
        this.zzfyr = zzeqoVar2;
        this.zzfze = zzeqoVar3;
        this.zzftc = zzeqoVar4;
        this.zzgku = zzeqoVar5;
    }

    public static zzciy zze(zzeqo<Context> zzeqoVar, zzeqo<String> zzeqoVar2, zzeqo<zzazn> zzeqoVar3, zzeqo<zzug.zza.EnumC2617zza> zzeqoVar4, zzeqo<String> zzeqoVar5) {
        return new zzciy(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4, zzeqoVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        Context context = this.zzewk.get();
        String str = this.zzfyr.get();
        zzazn zzaznVar = this.zzfze.get();
        zzug.zza.EnumC2617zza enumC2617zza = this.zzftc.get();
        String str2 = this.zzgku.get();
        zztu zztuVar = new zztu(new zztz(context));
        zztuVar.zza(new zztx(enumC2617zza, str, (zzug.zzu) ((zzelb) zzug.zzu.zzpn().zzcq(zzaznVar.zzehy).zzcr(zzaznVar.zzehz).zzcs(zzaznVar.zzeia ? 0 : 2).zzbiw()), str2) { // from class: com.google.android.gms.internal.ads.zzciv
            private final String zzdjf;
            private final zzug.zza.EnumC2617zza zzgkr;
            private final zzug.zzu zzgks;
            private final String zzgkt;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgkr = enumC2617zza;
                this.zzdjf = str;
                this.zzgks = zzuVar;
                this.zzgkt = str2;
            }

            @Override // com.google.android.gms.internal.ads.zztx
            public final void zza(zzug.zzi.zza zzaVar) {
                zzug.zza.EnumC2617zza enumC2617zza2 = this.zzgkr;
                String str3 = this.zzdjf;
                zzug.zzu zzuVar2 = this.zzgks;
                zzaVar.zza(zzaVar.zzoe().zzbij().zzb(enumC2617zza2)).zza(zzaVar.zzod().zzbij().zzbw(str3).zzb(zzuVar2)).zzby(this.zzgkt);
            }
        });
        return (zztu) zzeqh.zza(zztuVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
