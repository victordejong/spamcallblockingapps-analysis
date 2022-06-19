package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.util.Base64;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zztw;
import com.google.android.gms.internal.ads.zzug;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztu.class */
public final class zztu {
    private final zztz zzbwf;
    private final zzug.zzi.zza zzbwg;
    private final boolean zzbwh;

    private zztu() {
        this.zzbwg = zzug.zzi.zzof();
        this.zzbwh = false;
        this.zzbwf = new zztz();
    }

    public zztu(zztz zztzVar) {
        this.zzbwg = zzug.zzi.zzof();
        this.zzbwf = zztzVar;
        this.zzbwh = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcvg)).booleanValue();
    }

    private final void zzb(zztw.zza.EnumC2616zza enumC2616zza) {
        synchronized (this) {
            this.zzbwg.zzoi().zzb(zzng());
            this.zzbwf.zzf(((zzug.zzi) ((zzelb) this.zzbwg.zzbiw())).toByteArray()).zzbv(enumC2616zza.zzv()).log();
            String valueOf = String.valueOf(Integer.toString(enumC2616zza.zzv(), 10));
            zzd.zzeb(valueOf.length() != 0 ? "Logging Event with event code : ".concat(valueOf) : new String("Logging Event with event code : "));
        }
    }

    private final void zzc(zztw.zza.EnumC2616zza enumC2616zza) {
        synchronized (this) {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory == null) {
                return;
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(externalStorageDirectory, "clearcut_events.txt"), true);
                try {
                    try {
                        fileOutputStream.write(zzd(enumC2616zza).getBytes());
                        try {
                            fileOutputStream.close();
                        } catch (IOException e) {
                            zzd.zzeb("Could not close Clearcut output stream.");
                        }
                    } catch (IOException e2) {
                        zzd.zzeb("Could not write Clearcut to file.");
                        try {
                            fileOutputStream.close();
                        } catch (IOException e3) {
                            zzd.zzeb("Could not close Clearcut output stream.");
                        }
                    }
                } catch (Throwable th) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e4) {
                        zzd.zzeb("Could not close Clearcut output stream.");
                    }
                    throw th;
                }
            } catch (FileNotFoundException e5) {
                zzd.zzeb("Could not find file for Clearcut");
            }
        }
    }

    private final String zzd(zztw.zza.EnumC2616zza enumC2616zza) {
        String format;
        synchronized (this) {
            format = String.format("id=%s,timestamp=%s,event=%s,data=%s\n", this.zzbwg.zzob(), Long.valueOf(zzr.zzky().elapsedRealtime()), Integer.valueOf(enumC2616zza.zzv()), Base64.encodeToString(((zzug.zzi) ((zzelb) this.zzbwg.zzbiw())).toByteArray(), 3));
        }
        return format;
    }

    public static zztu zznf() {
        return new zztu();
    }

    private static List<Long> zzng() {
        List<String> zzsd = zzabp.zzsd();
        ArrayList arrayList = new ArrayList();
        for (String str : zzsd) {
            for (String str2 : str.split(",")) {
                try {
                    arrayList.add(Long.valueOf(str2));
                } catch (NumberFormatException e) {
                    zzd.zzeb("Experiment ID is not a number");
                }
            }
        }
        return arrayList;
    }

    public final void zza(zztw.zza.EnumC2616zza enumC2616zza) {
        synchronized (this) {
            if (!this.zzbwh) {
                return;
            }
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvh)).booleanValue()) {
                zzc(enumC2616zza);
            } else {
                zzb(enumC2616zza);
            }
        }
    }

    public final void zza(zztx zztxVar) {
        synchronized (this) {
            if (this.zzbwh) {
                try {
                    zztxVar.zza(this.zzbwg);
                } catch (NullPointerException e) {
                    zzr.zzkv().zza(e, "AdMobClearcutLogger.modify");
                }
            }
        }
    }
}
