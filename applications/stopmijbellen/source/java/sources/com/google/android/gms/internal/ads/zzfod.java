package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.util.Hex;
import java.io.File;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfod.class */
public final class zzfod {
    private static final Object zza = new Object();
    private final Context zzb;
    private final SharedPreferences zzc;
    private final String zzd;
    private final zzfnk zze;
    private boolean zzf;

    public zzfod(Context context, int i, zzfnk zzfnkVar, boolean z) {
        this.zzf = false;
        this.zzb = context;
        this.zzd = Integer.toString(i - 1);
        this.zzc = context.getSharedPreferences("pcvmspf", 0);
        this.zze = zzfnkVar;
        this.zzf = z;
    }

    private final File zze(String str) {
        return new File(new File(this.zzb.getDir("pccache", 0), this.zzd), str);
    }

    private static String zzf(zzaof zzaofVar) {
        zzaoh zze = zzaoi.zze();
        zze.zze(zzaofVar.zzd().zzk());
        zze.zza(zzaofVar.zzd().zzj());
        zze.zzb(zzaofVar.zzd().zza());
        zze.zzd(zzaofVar.zzd().zzd());
        zze.zzc(zzaofVar.zzd().zzc());
        return Hex.bytesToStringLowercase(zze.zzah().zzao().zzE());
    }

    private final String zzg() {
        String valueOf = String.valueOf(this.zzd);
        return valueOf.length() != 0 ? "FBAMTD".concat(valueOf) : new String("FBAMTD");
    }

    private final String zzh() {
        String valueOf = String.valueOf(this.zzd);
        return valueOf.length() != 0 ? "LATMTD".concat(valueOf) : new String("LATMTD");
    }

    private final void zzi(int i, long j) {
        zzfnk zzfnkVar = this.zze;
        if (zzfnkVar != null) {
            zzfnkVar.zza(i, j);
        }
    }

    private final void zzj(int i, long j, String str) {
        zzfnk zzfnkVar = this.zze;
        if (zzfnkVar != null) {
            zzfnkVar.zzb(i, j, str);
        }
    }

    private final zzaoi zzk(int i) {
        String string = i == 1 ? this.zzc.getString(zzh(), null) : this.zzc.getString(zzg(), null);
        if (string == null) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        try {
            return zzaoi.zzi(zzgjf.zzv(Hex.stringToBytes(string)), this.zzf ? zzgjx.zza() : zzgjx.zzb());
        } catch (zzgkx e) {
            return null;
        } catch (NullPointerException e2) {
            zzi(2029, currentTimeMillis);
            return null;
        } catch (RuntimeException e3) {
            zzi(2032, currentTimeMillis);
            return null;
        }
    }

    public final boolean zza(zzaof zzaofVar) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            if (!zzfnx.zze(new File(zze(zzaofVar.zzd().zzk()), "pcbc"), zzaofVar.zze().zzE())) {
                zzi(4020, currentTimeMillis);
                return false;
            }
            String zzf = zzf(zzaofVar);
            SharedPreferences.Editor edit = this.zzc.edit();
            edit.putString(zzh(), zzf);
            boolean commit = edit.commit();
            if (commit) {
                zzi(5015, currentTimeMillis);
            } else {
                zzi(4021, currentTimeMillis);
            }
            return commit;
        }
    }

    public final boolean zzb(zzaof zzaofVar, zzfoc zzfocVar) {
        File[] listFiles;
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            zzaoi zzk = zzk(1);
            String zzk2 = zzaofVar.zzd().zzk();
            if (zzk != null && zzk.zzk().equals(zzk2)) {
                zzi(4014, currentTimeMillis);
                return false;
            }
            long currentTimeMillis2 = System.currentTimeMillis();
            File zze = zze(zzk2);
            if (zze.exists()) {
                String str = "1";
                if (true != zze.isDirectory()) {
                    str = "0";
                }
                String str2 = "1";
                if (true != zze.isFile()) {
                    str2 = "0";
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
                    str3 = "0";
                }
                zzj(4024, currentTimeMillis2, str3.length() != 0 ? "cw:".concat(str3) : new String("cw:"));
                zzi(4015, currentTimeMillis2);
                return false;
            }
            File zze2 = zze(zzk2);
            File file = new File(zze2, "pcam.jar");
            File file2 = new File(zze2, "pcbc");
            if (!zzfnx.zze(file, zzaofVar.zzf().zzE())) {
                zzi(4016, currentTimeMillis);
                return false;
            } else if (!zzfnx.zze(file2, zzaofVar.zze().zzE())) {
                zzi(4017, currentTimeMillis);
                return false;
            } else if (zzfocVar != null && !zzfocVar.zza(file)) {
                zzi(4018, currentTimeMillis);
                zzfnx.zzd(zze2);
                return false;
            } else {
                String zzf = zzf(zzaofVar);
                long currentTimeMillis3 = System.currentTimeMillis();
                String string = this.zzc.getString(zzh(), null);
                SharedPreferences.Editor edit = this.zzc.edit();
                edit.putString(zzh(), zzf);
                if (string != null) {
                    edit.putString(zzg(), string);
                }
                if (!edit.commit()) {
                    zzi(4019, currentTimeMillis3);
                    return false;
                }
                HashSet hashSet = new HashSet();
                zzaoi zzk3 = zzk(1);
                if (zzk3 != null) {
                    hashSet.add(zzk3.zzk());
                }
                zzaoi zzk4 = zzk(2);
                if (zzk4 != null) {
                    hashSet.add(zzk4.zzk());
                }
                for (File file3 : new File(this.zzb.getDir("pccache", 0), this.zzd).listFiles()) {
                    if (!hashSet.contains(file3.getName())) {
                        zzfnx.zzd(file3);
                    }
                }
                zzi(5014, currentTimeMillis);
                return true;
            }
        }
    }

    public final zzfnv zzc(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            zzaoi zzk = zzk(1);
            if (zzk == null) {
                zzi(4022, currentTimeMillis);
                return null;
            }
            File zze = zze(zzk.zzk());
            File file = new File(zze, "pcam.jar");
            File file2 = file;
            if (!file.exists()) {
                file2 = new File(zze, "pcam");
            }
            File file3 = new File(zze, "pcbc");
            File file4 = new File(zze, "pcopt");
            zzi(5016, currentTimeMillis);
            return new zzfnv(zzk, file2, file3, file4);
        }
    }

    public final boolean zzd(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            zzaoi zzk = zzk(1);
            if (zzk == null) {
                zzi(4025, currentTimeMillis);
                return false;
            }
            File zze = zze(zzk.zzk());
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
