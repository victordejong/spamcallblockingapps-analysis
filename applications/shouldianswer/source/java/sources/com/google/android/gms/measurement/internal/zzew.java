package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzew.class */
public final class zzew extends zzgu {
    private String zzc;
    private char zza = (char) 0;
    private long zzb = -1;
    private final zzey zzd = new zzey(this, 6, false, false);
    private final zzey zze = new zzey(this, 6, true, false);
    private final zzey zzf = new zzey(this, 6, false, true);
    private final zzey zzg = new zzey(this, 5, false, false);
    private final zzey zzh = new zzey(this, 5, true, false);
    private final zzey zzi = new zzey(this, 5, false, true);
    private final zzey zzj = new zzey(this, 4, false, false);
    private final zzey zzk = new zzey(this, 3, false, false);
    private final zzey zzl = new zzey(this, 2, false, false);

    public zzew(zzga zzgaVar) {
        super(zzgaVar);
    }

    public static Object zza(String str) {
        if (str == null) {
            return null;
        }
        return new zzex(str);
    }

    private static String zza(boolean z, Object obj) {
        String str;
        String className;
        if (obj == null) {
            return "";
        }
        Long l = obj;
        if (obj instanceof Integer) {
            l = Long.valueOf(((Integer) obj).intValue());
        }
        int i = 0;
        if (l instanceof Long) {
            if (!z) {
                return String.valueOf(l);
            }
            Long l2 = (Long) l;
            if (Math.abs(l2.longValue()) < 100) {
                return String.valueOf(l);
            }
            String str2 = "";
            if (String.valueOf(l).charAt(0) == '-') {
                str2 = "-";
            }
            String valueOf = String.valueOf(Math.abs(l2.longValue()));
            long round = Math.round(Math.pow(10.0d, valueOf.length() - 1));
            long round2 = Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
            StringBuilder sb = new StringBuilder(str2.length() + 43 + str2.length());
            sb.append(str2);
            sb.append(round);
            sb.append("...");
            sb.append(str2);
            sb.append(round2);
            return sb.toString();
        } else if (l instanceof Boolean) {
            return String.valueOf(l);
        } else {
            if (!(l instanceof Throwable)) {
                if (!(l instanceof zzex)) {
                    return z ? "-" : String.valueOf(l);
                }
                str = ((zzex) l).zza;
                return str;
            }
            Throwable th = (Throwable) l;
            StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
            String zzb = zzb(zzga.class.getCanonicalName());
            StackTraceElement[] stackTrace = th.getStackTrace();
            int length = stackTrace.length;
            while (true) {
                if (i >= length) {
                    break;
                }
                StackTraceElement stackTraceElement = stackTrace[i];
                if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && zzb(className).equals(zzb)) {
                    sb2.append(": ");
                    sb2.append(stackTraceElement);
                    break;
                }
                i++;
            }
            return sb2.toString();
        }
    }

    public static String zza(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        String zza = zza(z, obj);
        String zza2 = zza(z, obj2);
        String zza3 = zza(z, obj3);
        StringBuilder sb = new StringBuilder();
        String str3 = "";
        if (!TextUtils.isEmpty(str2)) {
            sb.append(str2);
            str3 = ": ";
        }
        String str4 = str3;
        if (!TextUtils.isEmpty(zza)) {
            sb.append(str3);
            sb.append(zza);
            str4 = ", ";
        }
        String str5 = str4;
        if (!TextUtils.isEmpty(zza2)) {
            sb.append(str4);
            sb.append(zza2);
            str5 = ", ";
        }
        if (!TextUtils.isEmpty(zza3)) {
            sb.append(str5);
            sb.append(zza3);
        }
        return sb.toString();
    }

    private final String zzad() {
        String str;
        String str2;
        synchronized (this) {
            if (this.zzc == null) {
                if (this.zzx.zzs() != null) {
                    str2 = this.zzx.zzs();
                } else {
                    zzt().zzu();
                    str2 = "FA";
                }
                this.zzc = str2;
            }
            str = this.zzc;
        }
        return str;
    }

    private static String zzb(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final void zza(int i, String str) {
        Log.println(i, zzad(), str);
    }

    public final void zza(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && zza(i)) {
            zza(i, zza(false, str, obj, obj2, obj3));
        }
        if (z2 || i < 5) {
            return;
        }
        Preconditions.checkNotNull(str);
        zzft zzg = this.zzx.zzg();
        if (zzg == null) {
            zza(6, "Scheduler not set. Not logging error/warn");
        } else if (!zzg.zzz()) {
            zza(6, "Scheduler not initialized. Not logging error/warn");
        } else {
            int i2 = i;
            if (i < 0) {
                i2 = 0;
            }
            int i3 = i2;
            if (i2 >= 9) {
                i3 = 8;
            }
            zzg.zza(new zzev(this, i3, str, obj, obj2, obj3));
        }
    }

    public final boolean zza(int i) {
        return Log.isLoggable(zzad(), i);
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzgu
    protected final boolean zze() {
        return false;
    }

    public final zzey zzf() {
        return this.zzd;
    }

    public final zzey zzg() {
        return this.zze;
    }

    public final zzey zzh() {
        return this.zzf;
    }

    public final zzey zzi() {
        return this.zzg;
    }

    public final zzey zzj() {
        return this.zzh;
    }

    public final zzey zzk() {
        return this.zzi;
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzff zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }

    public final zzey zzv() {
        return this.zzj;
    }

    public final zzey zzw() {
        return this.zzk;
    }

    public final zzey zzx() {
        return this.zzl;
    }

    public final String zzy() {
        Pair<String, Long> zza = zzs().zzb.zza();
        if (zza == null || zza == zzff.zza) {
            return null;
        }
        String valueOf = String.valueOf(zza.second);
        String str = (String) zza.first;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str).length());
        sb.append(valueOf);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }
}
