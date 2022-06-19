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
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbay.class */
public final class zzbay {
    private final zzbbc zza;
    @GuardedBy("this")
    private final zzbcl zzb;
    private final boolean zzc;

    private zzbay() {
        this.zzb = zzbcm.zzd();
        this.zzc = false;
        this.zza = new zzbbc();
    }

    public zzbay(zzbbc zzbbcVar) {
        this.zzb = zzbcm.zzd();
        this.zza = zzbbcVar;
        this.zzc = ((Boolean) zzbgq.zzc().zzb(zzblj.zzdv)).booleanValue();
    }

    public static zzbay zza() {
        return new zzbay();
    }

    private final String zzd(int i) {
        String format;
        synchronized (this) {
            format = String.format("id=%s,timestamp=%s,event=%s,data=%s\n", this.zzb.zzk(), Long.valueOf(zzt.zzA().elapsedRealtime()), Integer.valueOf(i - 1), Base64.encodeToString(this.zzb.zzah().zzar(), 3));
        }
        return format;
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
                        fileOutputStream.write(zzd(i).getBytes());
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

    private final void zzf(int i) {
        synchronized (this) {
            zzbcl zzbclVar = this.zzb;
            zzbclVar.zzd();
            List<String> zzb = zzblj.zzb();
            ArrayList arrayList = new ArrayList();
            for (String str : zzb) {
                for (String str2 : str.split(",")) {
                    try {
                        arrayList.add(Long.valueOf(str2));
                    } catch (NumberFormatException e) {
                        zze.zza("Experiment ID is not a number");
                    }
                }
            }
            zzbclVar.zzc(arrayList);
            zzbbb zzbbbVar = new zzbbb(this.zza, this.zzb.zzah().zzar(), null);
            int i2 = i - 1;
            zzbbbVar.zza(i2);
            zzbbbVar.zzb();
            String valueOf = String.valueOf(Integer.toString(i2, 10));
            zze.zza(valueOf.length() != 0 ? "Logging Event with event code : ".concat(valueOf) : new String("Logging Event with event code : "));
        }
    }

    public final void zzb(zzbax zzbaxVar) {
        synchronized (this) {
            if (this.zzc) {
                try {
                    zzbaxVar.zza(this.zzb);
                } catch (NullPointerException e) {
                    zzt.zzo().zzs(e, "AdMobClearcutLogger.modify");
                }
            }
        }
    }

    public final void zzc(int i) {
        synchronized (this) {
            if (!this.zzc) {
                return;
            }
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdw)).booleanValue()) {
                zze(i);
            } else {
                zzf(i);
            }
        }
    }
}
