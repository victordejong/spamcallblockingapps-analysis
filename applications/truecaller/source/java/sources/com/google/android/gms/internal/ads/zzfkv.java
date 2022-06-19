package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfkv.class */
public final class zzfkv extends zzfko {
    private zzfmj<Integer> zza;
    private zzfmj<Integer> zzb;
    private zzfku zzc = null;
    private HttpURLConnection zzd;

    public zzfkv() {
        zzfmj<Integer> zzfmjVar = zzfkq.zza;
        zzfmj<Integer> zzfmjVar2 = zzfkr.zza;
        this.zza = zzfmjVar;
        this.zzb = zzfmjVar2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        HttpURLConnection httpURLConnection = this.zzd;
        zzfkp.zzb();
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    public final HttpURLConnection zzb(zzfku zzfkuVar, int i, int i2) throws IOException {
        this.zza = new zzfmj(265) { // from class: com.google.android.gms.internal.ads.zzfks
            @Override // com.google.android.gms.internal.ads.zzfmj
            public final Object zza() {
                return 265;
            }
        };
        this.zzb = new zzfmj(-1) { // from class: com.google.android.gms.internal.ads.zzfkt
            @Override // com.google.android.gms.internal.ads.zzfmj
            public final Object zza() {
                return -1;
            }
        };
        this.zzc = zzfkuVar;
        zzfkp.zza(this.zza.zza().intValue(), this.zzb.zza().intValue());
        zzfku zzfkuVar2 = this.zzc;
        Objects.requireNonNull(zzfkuVar2);
        HttpURLConnection httpURLConnection = (HttpURLConnection) zzfkuVar2.zza();
        this.zzd = httpURLConnection;
        return httpURLConnection;
    }
}
