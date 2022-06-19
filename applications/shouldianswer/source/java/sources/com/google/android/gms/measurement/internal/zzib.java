package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzib.class */
public final class zzib implements Runnable {
    private final URL zza;
    private final zzic zzc;
    private final String zzd;
    private final /* synthetic */ zzhz zzf;
    private final byte[] zzb = null;
    private final Map<String, String> zze = null;

    public zzib(zzhz zzhzVar, String str, URL url, byte[] bArr, Map<String, String> map, zzic zzicVar) {
        this.zzf = zzhzVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(zzicVar);
        this.zza = url;
        this.zzc = zzicVar;
        this.zzd = str;
    }

    private final void zzb(int i, Exception exc, byte[] bArr, Map<String, List<String>> map) {
        this.zzf.zzq().zza(new Runnable(this, i, exc, bArr, map) { // from class: com.google.android.gms.measurement.internal.zzie
            private final zzib zza;
            private final int zzb;
            private final Exception zzc;
            private final byte[] zzd;
            private final Map zze;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = this;
                this.zzb = i;
                this.zzc = exc;
                this.zzd = bArr;
                this.zze = map;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zza(this.zzb, this.zzc, this.zzd, this.zze);
            }
        });
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map<String, List<String>> map;
        HttpURLConnection httpURLConnection;
        IOException e;
        int i;
        HttpURLConnection httpURLConnection2;
        Throwable th;
        byte[] zza;
        this.zzf.zzc();
        try {
            HttpURLConnection zza2 = this.zzf.zza(this.zza);
            int i2 = 0;
            int i3 = 0;
            try {
                if (this.zze != null) {
                    for (Map.Entry<String, String> entry : this.zze.entrySet()) {
                        zza2.addRequestProperty(entry.getKey(), entry.getValue());
                    }
                }
                i = zza2.getResponseCode();
                i2 = i;
                i3 = i;
                map = zza2.getHeaderFields();
                try {
                    zzhz zzhzVar = this.zzf;
                    zza = zzhz.zza(zza2);
                    if (zza2 != null) {
                        zza2.disconnect();
                    }
                    zzb(i, null, zza, map);
                } catch (IOException e2) {
                    httpURLConnection = zza2;
                    e = e2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    zzb(i, e, null, map);
                } catch (Throwable th2) {
                    httpURLConnection2 = zza2;
                    th = th2;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    zzb(i, null, null, map);
                    throw th;
                }
            } catch (IOException e3) {
                i = i3;
                map = null;
                httpURLConnection = zza2;
                e = e3;
            } catch (Throwable th3) {
                i = i2;
                map = null;
                httpURLConnection2 = zza2;
                th = th3;
            }
        } catch (IOException e4) {
            e = e4;
            httpURLConnection = null;
            i = 0;
            map = null;
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection2 = null;
            i = 0;
            map = null;
        }
    }

    public final /* synthetic */ void zza(int i, Exception exc, byte[] bArr, Map map) {
        this.zzc.zza(this.zzd, i, exc, bArr, map);
    }
}
