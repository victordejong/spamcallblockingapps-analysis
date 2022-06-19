package com.google.firebase.perf.network;

import com.google.android.gms.internal.firebase-perf.zzam;
import com.google.android.gms.internal.firebase-perf.zzaz;
import org.apache.http.HttpMessage;
import org.apache.http.HttpResponse;
import org.apache.http.client.ResponseHandler;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/network/zze.class */
public final class zze<T> implements ResponseHandler<T> {
    private final zzaz zzfv;
    private final zzam zzgb;
    private final ResponseHandler<? extends T> zzgi;

    public zze(ResponseHandler<? extends T> responseHandler, com.google.android.gms.internal.firebase_perf.zzaz zzazVar, com.google.android.gms.internal.firebase_perf.zzam zzamVar) {
        this.zzgi = responseHandler;
        this.zzfv = zzazVar;
        this.zzgb = zzamVar;
    }

    public final T handleResponse(HttpResponse httpResponse) {
        this.zzgb.zzh(this.zzfv.zzby());
        this.zzgb.zzc(httpResponse.getStatusLine().getStatusCode());
        Long zza = zzg.zza((HttpMessage) httpResponse);
        if (zza != null) {
            this.zzgb.zzi(zza.longValue());
        }
        String zza2 = zzg.zza(httpResponse);
        if (zza2 != null) {
            this.zzgb.zzc(zza2);
        }
        this.zzgb.zzz();
        return (T) this.zzgi.handleResponse(httpResponse);
    }
}
