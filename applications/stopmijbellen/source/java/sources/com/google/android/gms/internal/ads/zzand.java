package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager;
import android.os.Build;
import java.io.ByteArrayInputStream;
import java.lang.reflect.InvocationTargetException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzand.class */
public final class zzand extends zzaoa {
    private static final zzaob<zzakf> zzi = new zzaob<>();
    private final Context zzj;

    public zzand(zzams zzamsVar, String str, String str2, zzaiz zzaizVar, int i, int i2, Context context, zzais zzaisVar) {
        super(zzamsVar, "iH08ecr5p8p5eQT3/BFJ6jAaJm3eLNoIe2oA7hLZl5P0jAtinrUdPK16lrJGpxBz", "Gvy6wet11FtrNaAWhnvYSI1hOQnkPBTAgqoI9PXuwaM=", zzaizVar, i, 27);
        this.zzj = context;
    }

    private final String zzc() {
        try {
            if (this.zzb.zzl() != null) {
                this.zzb.zzl().get();
            }
            zzajp zzc = this.zzb.zzc();
            if (zzc != null && zzc.zzae()) {
                return zzc.zzh();
            }
            return null;
        } catch (InterruptedException | ExecutionException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaoa
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        zzakf zzakfVar;
        int i;
        AtomicReference<zzakf> zza = zzi.zza(this.zzj.getPackageName());
        synchronized (zza) {
            zzakf zzakfVar2 = zza.get();
            if (zzakfVar2 == null || zzamv.zzg(zzakfVar2.zza) || zzakfVar2.zza.equals("E") || zzakfVar2.zza.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
                if (!zzamv.zzg(null)) {
                    i = 5;
                } else {
                    i = (!(!zzamv.zzg(null) ? Boolean.FALSE : Boolean.FALSE).booleanValue() || !this.zzb.zzp()) ? 3 : 4;
                }
                boolean z = i == 3;
                Boolean bool = (Boolean) zzbgq.zzc().zzb(zzblj.zzbH);
                String zzb = ((Boolean) zzbgq.zzc().zzb(zzblj.zzbG)).booleanValue() ? zzb() : null;
                String str = zzb;
                if (bool.booleanValue()) {
                    str = zzb;
                    if (this.zzb.zzp()) {
                        str = zzb;
                        if (zzamv.zzg(zzb)) {
                            str = zzc();
                        }
                    }
                }
                zzakf zzakfVar3 = new zzakf((String) this.zzf.invoke(null, this.zzj, Boolean.valueOf(z), str));
                if (zzamv.zzg(zzakfVar3.zza) || zzakfVar3.zza.equals("E")) {
                    int i2 = i - 1;
                    if (i2 == 3) {
                        String zzc = zzc();
                        if (!zzamv.zzg(zzc)) {
                            zzakfVar3.zza = zzc;
                        }
                    } else if (i2 == 4) {
                        throw null;
                    }
                }
                zza.set(zzakfVar3);
            }
            zzakfVar = zza.get();
        }
        synchronized (this.zze) {
            if (zzakfVar != null) {
                this.zze.zzt(zzakfVar.zza);
                this.zze.zzS(zzakfVar.zzb);
                this.zze.zzU(zzakfVar.zzc);
                this.zze.zzg(zzakfVar.zzd);
                this.zze.zzs(zzakfVar.zze);
            }
        }
    }

    public final String zzb() {
        String str = null;
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            byte[] zzi2 = zzamv.zzi((String) zzbgq.zzc().zzb(zzblj.zzbI));
            ArrayList arrayList = new ArrayList();
            arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzi2)));
            if (!Build.TYPE.equals("user")) {
                arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzamv.zzi((String) zzbgq.zzc().zzb(zzblj.zzbJ)))));
            }
            Context context = this.zzj;
            String packageName = context.getPackageName();
            this.zzb.zzk();
            if (Build.VERSION.SDK_INT > 30 || Build.VERSION.CODENAME.equals("S")) {
                final zzfxi zza = zzfxi.zza();
                context.getPackageManager().requestChecksums(packageName, false, 8, arrayList, new PackageManager.OnChecksumsReadyListener() { // from class: com.google.android.gms.internal.ads.zzaoc
                    @Override // android.content.pm.PackageManager.OnChecksumsReadyListener
                    public final void onChecksumsReady(List list) {
                        zzfxi zzfxiVar = zzfxi.this;
                        if (list == null) {
                            zzfxiVar.zzs(null);
                            return;
                        }
                        try {
                            int size = list.size();
                            for (int i = 0; i < size; i++) {
                                ApkChecksum apkChecksum = (ApkChecksum) list.get(i);
                                if (apkChecksum.getType() == 8) {
                                    zzfxiVar.zzs(zzamv.zzc(apkChecksum.getValue()));
                                    return;
                                }
                            }
                            zzfxiVar.zzs(null);
                        } catch (Throwable th) {
                            zzfxiVar.zzs(null);
                        }
                    }
                });
                str = (String) zza.get();
            }
        } catch (PackageManager.NameNotFoundException | InterruptedException | NoClassDefFoundError | CertificateEncodingException | CertificateException | ExecutionException e) {
        }
        return str;
    }
}
