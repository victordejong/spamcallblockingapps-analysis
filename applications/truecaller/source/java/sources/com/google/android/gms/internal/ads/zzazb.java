package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.util.Base64;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzazb.class */
public final class zzazb {
    private final zzazf zza;
    private final zzbao zzb;
    private final boolean zzc;

    private zzazb() {
        this.zzb = zzbap.zze();
        this.zzc = false;
        this.zza = new zzazf();
    }

    public zzazb(zzazf zzazfVar) {
        this.zzb = zzbap.zze();
        this.zza = zzazfVar;
        this.zzc = ((Boolean) zzbet.zzc().zzc(zzbjl.zzdo)).booleanValue();
    }

    public static zzazb zza() {
        return new zzazb();
    }

    private final void zzd(int i) {
        synchronized (this) {
            zzbao zzbaoVar = this.zzb;
            zzbaoVar.zzd();
            List<String> zzd = zzbjl.zzd();
            ArrayList arrayList = new ArrayList();
            for (String str : zzd) {
                for (String str2 : str.split(",")) {
                    try {
                        arrayList.add(Long.valueOf(str2));
                    } catch (NumberFormatException e) {
                        zze.zza("Experiment ID is not a number");
                    }
                }
            }
            zzbaoVar.zzc(arrayList);
            zzazd zzazdVar = new zzazd(this.zza, this.zzb.zzah().zzao(), null);
            int i2 = i - 1;
            zzazdVar.zzb(i2);
            zzazdVar.zza();
            String valueOf = String.valueOf(Integer.toString(i2, 10));
            zze.zza(valueOf.length() != 0 ? "Logging Event with event code : ".concat(valueOf) : new String("Logging Event with event code : "));
        }
    }

    private final void zze(int i) {
        synchronized (this) {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory == null) {
                return;
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(externalStorageDirectory, "clearcut_events.txt"), true);
                try {
                    try {
                        fileOutputStream.write(zzf(i).getBytes());
                        try {
                            fileOutputStream.close();
                        } catch (IOException e) {
                            zze.zza("Could not close Clearcut output stream.");
                        }
                    } catch (IOException e2) {
                        zze.zza("Could not write Clearcut to file.");
                        try {
                            fileOutputStream.close();
                        } catch (IOException e3) {
                            zze.zza("Could not close Clearcut output stream.");
                        }
                    }
                } catch (Throwable th) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e4) {
                        zze.zza("Could not close Clearcut output stream.");
                    }
                    throw th;
                }
            } catch (FileNotFoundException e5) {
                zze.zza("Could not find file for Clearcut");
            }
        }
    }

    private final String zzf(int i) {
        String format;
        synchronized (this) {
            format = String.format("id=%s,timestamp=%s,event=%s,data=%s\n", this.zzb.zza(), Long.valueOf(zzt.zzj().mo38789a()), Integer.valueOf(i - 1), Base64.encodeToString(this.zzb.zzah().zzao(), 3));
        }
        return format;
    }

    public final void zzb(zzaza zzazaVar) {
        synchronized (this) {
            if (this.zzc) {
                try {
                    zzazaVar.zza(this.zzb);
                } catch (NullPointerException e) {
                    zzt.zzg().zzk(e, "AdMobClearcutLogger.modify");
                }
            }
        }
    }

    public final void zzc(int i) {
        synchronized (this) {
            if (!this.zzc) {
                return;
            }
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdp)).booleanValue()) {
                zze(i);
            } else {
                zzd(i);
            }
        }
    }
}
