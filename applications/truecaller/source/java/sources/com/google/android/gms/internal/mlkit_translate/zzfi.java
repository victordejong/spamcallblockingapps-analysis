package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
import java.util.Calendar;
import java.util.GregorianCalendar;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzfi.class */
public final class zzfi extends zzea<Calendar> {
    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ Calendar zza(zzfy zzfyVar) throws IOException {
        if (zzfyVar.zzg() == zzga.NULL) {
            zzfyVar.zzk();
            return null;
        }
        zzfyVar.zzd();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (zzfyVar.zzg() != zzga.END_OBJECT) {
            String zzh = zzfyVar.zzh();
            int zzn = zzfyVar.zzn();
            if ("year".equals(zzh)) {
                i = zzn;
            } else if ("month".equals(zzh)) {
                i6 = zzn;
            } else if ("dayOfMonth".equals(zzh)) {
                i2 = zzn;
            } else if ("hourOfDay".equals(zzh)) {
                i3 = zzn;
            } else if ("minute".equals(zzh)) {
                i4 = zzn;
            } else if ("second".equals(zzh)) {
                i5 = zzn;
            }
        }
        zzfyVar.zze();
        return new GregorianCalendar(i, i6, i2, i3, i4, i5);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, Calendar calendar) throws IOException {
        Calendar calendar2 = calendar;
        if (calendar2 == null) {
            zzgdVar.zze();
            return;
        }
        zzgdVar.zzc();
        zzgdVar.zza("year");
        zzgdVar.zza(calendar2.get(1));
        zzgdVar.zza("month");
        zzgdVar.zza(calendar2.get(2));
        zzgdVar.zza("dayOfMonth");
        zzgdVar.zza(calendar2.get(5));
        zzgdVar.zza("hourOfDay");
        zzgdVar.zza(calendar2.get(11));
        zzgdVar.zza("minute");
        zzgdVar.zza(calendar2.get(12));
        zzgdVar.zza("second");
        zzgdVar.zza(calendar2.get(13));
        zzgdVar.zzd();
    }
}
