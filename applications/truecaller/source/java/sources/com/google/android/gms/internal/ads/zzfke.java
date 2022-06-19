package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.amazon.device.ads.DtbConstants;
import com.google.android.gms.common.util.Hex;
import java.io.File;
import java.util.HashSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfke.class */
public final class zzfke {
    private static final Object zzf = new Object();
    private final Context zza;
    private final SharedPreferences zzb;
    private final String zzc;
    private final zzfjl zzd;
    private boolean zze;

    public zzfke(Context context, int i, zzfjl zzfjlVar, boolean z) {
        this.zze = false;
        this.zza = context;
        this.zzc = Integer.toString(i - 1);
        this.zzb = context.getSharedPreferences("pcvmspf", 0);
        this.zzd = zzfjlVar;
        this.zze = z;
    }

    private final File zze(String str) {
        return new File(new File(this.zza.getDir("pccache", 0), this.zzc), str);
    }

    private final String zzf() {
        String valueOf = String.valueOf(this.zzc);
        return valueOf.length() != 0 ? "FBAMTD".concat(valueOf) : new String("FBAMTD");
    }

    private final String zzg() {
        String valueOf = String.valueOf(this.zzc);
        return valueOf.length() != 0 ? "LATMTD".concat(valueOf) : new String("LATMTD");
    }

    private static String zzh(zzadf zzadfVar) {
        zzadh zzi = zzadi.zzi();
        zzi.zza(zzadfVar.zza().zza());
        zzi.zzb(zzadfVar.zza().zzc());
        zzi.zzd(zzadfVar.zza().zze());
        zzi.zze(zzadfVar.zza().zzf());
        zzi.zzc(zzadfVar.zza().zzd());
        return Hex.m38782a(zzi.zzah().zzan().zzz());
    }

    private final void zzi(int i, long j) {
        zzfjl zzfjlVar = this.zzd;
        if (zzfjlVar != null) {
            zzfjlVar.zza(i, j);
        }
    }

    private final void zzj(int i, long j, String str) {
        zzfjl zzfjlVar = this.zzd;
        if (zzfjlVar != null) {
            zzfjlVar.zzb(i, j, str);
        }
    }

    private final zzadi zzk(int i) {
        String string = i == 1 ? this.zzb.getString(zzg(), null) : this.zzb.getString(zzf(), null);
        if (string == null) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        try {
            return zzadi.zzh(zzgex.zzt(Hex.m38780c(string)), this.zze ? zzgfm.zza() : zzgfm.zzb());
        } catch (zzggm e) {
            return null;
        } catch (NullPointerException e2) {
            zzi(2029, currentTimeMillis);
            return null;
        } catch (RuntimeException e3) {
            zzi(2032, currentTimeMillis);
            return null;
        }
    }

    public final boolean zza(zzadf zzadfVar, zzfkd zzfkdVar) {
        File[] listFiles;
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zzf) {
            zzadi zzk = zzk(1);
            String zza = zzadfVar.zza().zza();
            if (zzk != null && zzk.zza().equals(zza)) {
                zzi(4014, currentTimeMillis);
                return false;
            }
            long currentTimeMillis2 = System.currentTimeMillis();
            File zze = zze(zza);
            if (zze.exists()) {
                String str = "1";
                if (true != zze.isDirectory()) {
                    str = DtbConstants.NETWORK_TYPE_UNKNOWN;
                }
                String str2 = "1";
                if (true != zze.isFile()) {
                    str2 = DtbConstants.NETWORK_TYPE_UNKNOWN;
                }
                StringBuilder sb = new StringBuilder(str.length() + 5 + str2.length());
                sb.append("d:");
                sb.append(str);
                sb.append(",f:");
                sb.append(str2);
                zzj(4023, currentTimeMillis2, sb.toString());
                zzi(4015, currentTimeMillis2);
            } else if (!zze.mkdirs()) {
                String str3 = "1";
                if (true != zze.canWrite()) {
                    str3 = DtbConstants.NETWORK_TYPE_UNKNOWN;
                }
                zzj(4024, currentTimeMillis2, str3.length() != 0 ? "cw:".concat(str3) : new String("cw:"));
                zzi(4015, currentTimeMillis2);
                return false;
            }
            File zze2 = zze(zza);
            File file = new File(zze2, "pcam.jar");
            File file2 = new File(zze2, "pcbc");
            if (!zzfjy.zzb(file, zzadfVar.zzc().zzz())) {
                zzi(4016, currentTimeMillis);
                return false;
            } else if (!zzfjy.zzb(file2, zzadfVar.zzd().zzz())) {
                zzi(4017, currentTimeMillis);
                return false;
            } else if (zzfkdVar != null && !zzfkdVar.zza(file)) {
                zzi(4018, currentTimeMillis);
                zzfjy.zze(zze2);
                return false;
            } else {
                String zzh = zzh(zzadfVar);
                long currentTimeMillis3 = System.currentTimeMillis();
                String string = this.zzb.getString(zzg(), null);
                SharedPreferences.Editor edit = this.zzb.edit();
                edit.putString(zzg(), zzh);
                if (string != null) {
                    edit.putString(zzf(), string);
                }
                if (!edit.commit()) {
                    zzi(4019, currentTimeMillis3);
                    return false;
                }
                HashSet hashSet = new HashSet();
                zzadi zzk2 = zzk(1);
                if (zzk2 != null) {
                    hashSet.add(zzk2.zza());
                }
                zzadi zzk3 = zzk(2);
                if (zzk3 != null) {
                    hashSet.add(zzk3.zza());
                }
                for (File file3 : new File(this.zza.getDir("pccache", 0), this.zzc).listFiles()) {
                    if (!hashSet.contains(file3.getName())) {
                        zzfjy.zze(file3);
                    }
                }
                zzi(5014, currentTimeMillis);
                return true;
            }
        }
    }

    public final boolean zzb(zzadf zzadfVar) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zzf) {
            if (!zzfjy.zzb(new File(zze(zzadfVar.zza().zza()), "pcbc"), zzadfVar.zzd().zzz())) {
                zzi(4020, currentTimeMillis);
                return false;
            }
            String zzh = zzh(zzadfVar);
            SharedPreferences.Editor edit = this.zzb.edit();
            edit.putString(zzg(), zzh);
            boolean commit = edit.commit();
            if (commit) {
                zzi(5015, currentTimeMillis);
            } else {
                zzi(4021, currentTimeMillis);
            }
            return commit;
        }
    }

    public final zzfjw zzc(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zzf) {
            zzadi zzk = zzk(1);
            if (zzk == null) {
                zzi(4022, currentTimeMillis);
                return null;
            }
            File zze = zze(zzk.zza());
            File file = new File(zze, "pcam.jar");
            File file2 = file;
            if (!file.exists()) {
                file2 = new File(zze, "pcam");
            }
            File file3 = new File(zze, "pcbc");
            File file4 = new File(zze, "pcopt");
            zzi(5016, currentTimeMillis);
            return new zzfjw(zzk, file2, file3, file4);
        }
    }

    public final boolean zzd(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zzf) {
            zzadi zzk = zzk(1);
            if (zzk == null) {
                zzi(4025, currentTimeMillis);
                return false;
            }
            File zze = zze(zzk.zza());
            if (!new File(zze, "pcam.jar").exists()) {
                zzi(4026, currentTimeMillis);
                return false;
            } else if (!new File(zze, "pcbc").exists()) {
                zzi(4027, currentTimeMillis);
                return false;
            } else {
                zzi(5019, currentTimeMillis);
                return true;
            }
        }
    }
}
