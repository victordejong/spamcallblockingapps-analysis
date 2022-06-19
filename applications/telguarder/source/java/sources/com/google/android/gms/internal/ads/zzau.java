package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import com.pubmatic.sdk.video.POBVastError;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzau.class */
public class zzau implements zzu {
    @Deprecated
    private final zzbe zzce;
    private final zzar zzcf;
    private final zzat zzcg;

    public zzau(zzar zzarVar) {
        this(zzarVar, new zzat(4096));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private zzau(zzar zzarVar, zzat zzatVar) {
        this.zzcf = zzarVar;
        this.zzce = zzarVar;
        this.zzcg = zzatVar;
    }

    @Override // com.google.android.gms.internal.ads.zzu
    public zzz zza(zzab<?> zzabVar) throws zzap {
        byte[] bArr;
        zzbb zzbbVar;
        IOException e;
        Map<String, String> map;
        zzbb zza;
        int statusCode;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            Collections.emptyList();
            try {
                zzn zzf = zzabVar.zzf();
                if (zzf == null) {
                    map = Collections.emptyMap();
                } else {
                    map = new HashMap<>();
                    if (zzf.zzr != null) {
                        map.put("If-None-Match", zzf.zzr);
                    }
                    if (zzf.zzt > 0) {
                        map.put("If-Modified-Since", zzbc.zzb(zzf.zzt));
                    }
                }
                zza = this.zzcf.zza(zzabVar, map);
                bArr = null;
                try {
                    statusCode = zza.getStatusCode();
                    break;
                } catch (IOException e2) {
                    e = e2;
                    zzbbVar = zza;
                }
            } catch (IOException e3) {
                e = e3;
                zzbbVar = null;
                bArr = null;
            }
            zzbi.zza(zzabVar, e, elapsedRealtime, zzbbVar, bArr);
        }
        List<zzv> zzq = zza.zzq();
        if (statusCode != 304) {
            InputStream content = zza.getContent();
            byte[] zza2 = content != null ? zzbi.zza(content, zza.getContentLength(), this.zzcg) : new byte[0];
            byte[] bArr2 = zza2;
            long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
            byte[] bArr3 = zza2;
            if (zzao.DEBUG || elapsedRealtime2 > 3000) {
                zzao.m1356d("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", zzabVar, Long.valueOf(elapsedRealtime2), zza2 != null ? Integer.valueOf(zza2.length) : "null", Integer.valueOf(statusCode), Integer.valueOf(zzabVar.zzj().zzc()));
            }
            if (statusCode >= 200 && statusCode <= 299) {
                return new zzz(statusCode, zza2, false, SystemClock.elapsedRealtime() - elapsedRealtime, zzq);
            }
            byte[] bArr4 = zza2;
            byte[] bArr5 = zza2;
            byte[] bArr6 = zza2;
            throw new IOException();
        }
        long elapsedRealtime3 = SystemClock.elapsedRealtime() - elapsedRealtime;
        zzn zzf2 = zzabVar.zzf();
        if (zzf2 == null) {
            return new zzz((int) POBVastError.AD_DISPLAY_TIMEOUT, (byte[]) null, true, elapsedRealtime3, zzq);
        }
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!zzq.isEmpty()) {
            for (zzv zzvVar : zzq) {
                treeSet.add(zzvVar.getName());
            }
        }
        ArrayList arrayList = new ArrayList(zzq);
        if (zzf2.zzx != null) {
            if (!zzf2.zzx.isEmpty()) {
                for (zzv zzvVar2 : zzf2.zzx) {
                    if (!treeSet.contains(zzvVar2.getName())) {
                        arrayList.add(zzvVar2);
                    }
                }
            }
        } else if (!zzf2.zzw.isEmpty()) {
            for (Map.Entry<String, String> entry : zzf2.zzw.entrySet()) {
                if (!treeSet.contains(entry.getKey())) {
                    arrayList.add(new zzv(entry.getKey(), entry.getValue()));
                }
            }
        }
        return new zzz((int) POBVastError.AD_DISPLAY_TIMEOUT, zzf2.data, true, elapsedRealtime3, (List<zzv>) arrayList);
    }
}
