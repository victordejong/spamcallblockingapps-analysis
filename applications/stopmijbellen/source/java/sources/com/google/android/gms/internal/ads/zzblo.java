package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblo.class */
public final class zzblo {
    @VisibleForTesting
    public String zzd;
    @VisibleForTesting
    public Context zze;
    @VisibleForTesting
    public String zzf;
    private AtomicBoolean zzh;
    private File zzi;
    @VisibleForTesting
    public final BlockingQueue<zzbly> zza = new ArrayBlockingQueue(100);
    @VisibleForTesting
    public final LinkedHashMap<String, String> zzb = new LinkedHashMap<>();
    @VisibleForTesting
    public final Map<String, zzblu> zzc = new HashMap();
    private final HashSet<String> zzg = new HashSet<>(Arrays.asList("noop", "activeViewPingSent", "viewabilityChanged", "visibilityChanged"));

    public static /* synthetic */ void zzc(zzblo zzbloVar) {
        while (true) {
            try {
                zzbly take = zzbloVar.zza.take();
                zzblx zza = take.zza();
                if (!TextUtils.isEmpty(zza.zzb())) {
                    zzbloVar.zzg(zzbloVar.zzb(zzbloVar.zzb, take.zzb()), zza);
                }
            } catch (InterruptedException e) {
                zzciz.zzk("CsiReporter:reporter interrupted", e);
                return;
            }
        }
    }

    private final void zzg(Map<String, String> map, zzblx zzblxVar) {
        FileOutputStream fileOutputStream;
        Throwable th;
        IOException e;
        Uri.Builder buildUpon = Uri.parse(this.zzd).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        String uri = buildUpon.build().toString();
        String str = uri;
        if (zzblxVar != null) {
            StringBuilder sb = new StringBuilder(uri);
            if (!TextUtils.isEmpty(zzblxVar.zzb())) {
                sb.append("&it=");
                sb.append(zzblxVar.zzb());
            }
            if (!TextUtils.isEmpty(zzblxVar.zza())) {
                sb.append("&blat=");
                sb.append(zzblxVar.zza());
            }
            str = sb.toString();
        }
        if (!this.zzh.get()) {
            zzt.zzp();
            com.google.android.gms.ads.internal.util.zzt.zzO(this.zze, this.zzf, str);
            return;
        }
        File file = this.zzi;
        if (file == null) {
            zzciz.zzj("CsiReporter: File doesn't exists. Cannot write CSI data to file.");
            return;
        }
        try {
            try {
                fileOutputStream = new FileOutputStream(file, true);
            } catch (Throwable th2) {
                fileOutputStream = null;
                th = th2;
            }
        } catch (IOException e2) {
            e = e2;
            fileOutputStream = null;
        }
        try {
            fileOutputStream.write(str.getBytes());
            fileOutputStream.write(10);
            try {
                fileOutputStream.close();
            } catch (IOException e3) {
                zzciz.zzk("CsiReporter: Cannot close file: sdk_csi_data.txt.", e3);
            }
        } catch (IOException e4) {
            e = e4;
            zzciz.zzk("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e);
            if (fileOutputStream == null) {
                return;
            }
            try {
                fileOutputStream.close();
            } catch (IOException e5) {
                zzciz.zzk("CsiReporter: Cannot close file: sdk_csi_data.txt.", e5);
            }
        } catch (Throwable th3) {
            th = th3;
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e6) {
                    zzciz.zzk("CsiReporter: Cannot close file: sdk_csi_data.txt.", e6);
                }
            }
            throw th;
        }
    }

    public final zzblu zza(String str) {
        zzblu zzbluVar = this.zzc.get(str);
        return zzbluVar != null ? zzbluVar : zzblu.zza;
    }

    public final Map<String, String> zzb(Map<String, String> map, Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            linkedHashMap.put(key, zza(key).zza((String) linkedHashMap.get(key), value));
        }
        return linkedHashMap;
    }

    public final void zzd(Context context, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.zze = context;
        this.zzf = str;
        this.zzd = str2;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.zzh = atomicBoolean;
        atomicBoolean.set(zzbmt.zzc.zze().booleanValue());
        if (this.zzh.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.zzi = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.zzb.put(entry.getKey(), entry.getValue());
        }
        zzcjm.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbln
            @Override // java.lang.Runnable
            public final void run() {
                zzblo.zzc(zzblo.this);
            }
        });
        Map<String, zzblu> map2 = this.zzc;
        zzblu zzbluVar = zzblu.zzb;
        map2.put("action", zzbluVar);
        this.zzc.put("ad_format", zzbluVar);
        this.zzc.put("e", zzblu.zzc);
    }

    public final void zze(String str) {
        if (this.zzg.contains(str)) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("sdkVersion", this.zzf);
        linkedHashMap.put("ue", str);
        zzg(zzb(this.zzb, linkedHashMap), null);
    }

    public final boolean zzf(zzbly zzblyVar) {
        return this.zza.offer(zzblyVar);
    }
}
