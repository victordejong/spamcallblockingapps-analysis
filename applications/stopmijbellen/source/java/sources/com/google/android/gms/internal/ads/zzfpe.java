package com.google.android.gms.internal.ads;

import android.net.Network;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfpe.class */
public final class zzfpe extends zzfos {
    private zzfqs<Integer> zza;
    private zzfqs<Integer> zzb;
    private zzfpd zzc;
    private HttpURLConnection zzd;

    public zzfpe() {
        this(zzfpb.zza, zzfpc.zza, null);
    }

    public zzfpe(zzfqs<Integer> zzfqsVar, zzfqs<Integer> zzfqsVar2, zzfpd zzfpdVar) {
        this.zza = zzfqsVar;
        this.zzb = zzfqsVar2;
        this.zzc = zzfpdVar;
    }

    public static /* synthetic */ Integer zzf() {
        return -1;
    }

    public static /* synthetic */ Integer zzg() {
        return -1;
    }

    public static void zzs(HttpURLConnection httpURLConnection) {
        zzfot.zza();
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        zzs(this.zzd);
    }

    public HttpURLConnection zzm() throws IOException {
        zzfot.zzb(this.zza.zza().intValue(), this.zzb.zza().intValue());
        zzfpd zzfpdVar = this.zzc;
        Objects.requireNonNull(zzfpdVar);
        HttpURLConnection httpURLConnection = (HttpURLConnection) zzfpdVar.zza();
        this.zzd = httpURLConnection;
        return httpURLConnection;
    }

    public HttpURLConnection zzn(zzfpd zzfpdVar, final int i, final int i2) throws IOException {
        this.zza = new zzfqs() { // from class: com.google.android.gms.internal.ads.zzfoz
            @Override // com.google.android.gms.internal.ads.zzfqs
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i);
                return valueOf;
            }
        };
        this.zzb = new zzfqs() { // from class: com.google.android.gms.internal.ads.zzfpa
            @Override // com.google.android.gms.internal.ads.zzfqs
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i2);
                return valueOf;
            }
        };
        this.zzc = zzfpdVar;
        return zzm();
    }

    public HttpURLConnection zzo(final Network network, final URL url, final int i, final int i2) throws IOException {
        this.zza = new zzfqs() { // from class: com.google.android.gms.internal.ads.zzfox
            @Override // com.google.android.gms.internal.ads.zzfqs
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i);
                return valueOf;
            }
        };
        this.zzb = new zzfqs() { // from class: com.google.android.gms.internal.ads.zzfoy
            @Override // com.google.android.gms.internal.ads.zzfqs
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i2);
                return valueOf;
            }
        };
        this.zzc = new zzfpd() { // from class: com.google.android.gms.internal.ads.zzfou
            @Override // com.google.android.gms.internal.ads.zzfpd
            public final URLConnection zza() {
                URLConnection openConnection;
                openConnection = network.openConnection(url);
                return openConnection;
            }
        };
        return zzm();
    }

    public URLConnection zzr(final URL url, final int i) throws IOException {
        this.zza = new zzfqs() { // from class: com.google.android.gms.internal.ads.zzfow
            @Override // com.google.android.gms.internal.ads.zzfqs
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i);
                return valueOf;
            }
        };
        this.zzc = new zzfpd() { // from class: com.google.android.gms.internal.ads.zzfov
            @Override // com.google.android.gms.internal.ads.zzfpd
            public final URLConnection zza() {
                URLConnection openConnection;
                openConnection = url.openConnection();
                return openConnection;
            }
        };
        return zzm();
    }
}
