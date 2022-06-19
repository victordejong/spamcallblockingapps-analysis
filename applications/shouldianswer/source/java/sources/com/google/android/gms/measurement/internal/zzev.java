package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzev.class */
public final class zzev implements Runnable {
    private final /* synthetic */ int zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ Object zzc;
    private final /* synthetic */ Object zzd;
    private final /* synthetic */ Object zze;
    private final /* synthetic */ zzew zzf;

    public zzev(zzew zzewVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.zzf = zzewVar;
        this.zza = i;
        this.zzb = str;
        this.zzc = obj;
        this.zzd = obj2;
        this.zze = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        char c;
        long j;
        char c2;
        long j2;
        zzff zzc = this.zzf.zzx.zzc();
        if (!zzc.zzz()) {
            this.zzf.zza(6, "Persisted config not initialized. Not logging error/warn");
            return;
        }
        c = this.zzf.zza;
        if (c == 0) {
            if (this.zzf.zzt().zzf()) {
                zzew zzewVar = this.zzf;
                zzewVar.zzu();
                zzewVar.zza = 'C';
            } else {
                zzew zzewVar2 = this.zzf;
                zzewVar2.zzu();
                zzewVar2.zza = 'c';
            }
        }
        j = this.zzf.zzb;
        if (j < 0) {
            zzew zzewVar3 = this.zzf;
            zzewVar3.zzb = zzewVar3.zzt().zze();
        }
        char charAt = "01VDIWEA?".charAt(this.zza);
        c2 = this.zzf.zza;
        j2 = this.zzf.zzb;
        String zza = zzew.zza(true, this.zzb, this.zzc, this.zzd, this.zze);
        StringBuilder sb = new StringBuilder(String.valueOf(zza).length() + 24);
        sb.append("2");
        sb.append(charAt);
        sb.append(c2);
        sb.append(j2);
        sb.append(":");
        sb.append(zza);
        String sb2 = sb.toString();
        String str = sb2;
        if (sb2.length() > 1024) {
            str = this.zzb.substring(0, 1024);
        }
        zzc.zzb.zza(str, 1L);
    }
}
