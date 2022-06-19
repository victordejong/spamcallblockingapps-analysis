package com.google.firebase.perf.network;

import com.google.android.gms.internal.firebase_perf.zzam;
import com.google.android.gms.internal.firebase_perf.zzaz;
import com.google.android.gms.internal.firebase_perf.zzba;
import com.google.firebase.perf.internal.zzf;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/network/FirebasePerfUrlConnection.class */
public class FirebasePerfUrlConnection {
    private FirebasePerfUrlConnection() {
    }

    public static Object getContent(URL url) {
        return zzb(new zzba(url), zzf.zzal(), new zzaz());
    }

    public static Object getContent(URL url, Class[] clsArr) {
        return zza(new zzba(url), clsArr, zzf.zzal(), new zzaz());
    }

    public static Object instrument(Object obj) {
        return obj instanceof HttpsURLConnection ? new zzc((HttpsURLConnection) obj, new zzaz(), zzam.zzb(zzf.zzal())) : obj instanceof HttpURLConnection ? new zzd((HttpURLConnection) obj, new zzaz(), zzam.zzb(zzf.zzal())) : obj;
    }

    public static InputStream openStream(URL url) {
        return zza(new zzba(url), zzf.zzal(), new zzaz());
    }

    private static InputStream zza(com.google.android.gms.internal.firebase-perf.zzba zzbaVar, zzf zzfVar, com.google.android.gms.internal.firebase-perf.zzaz zzazVar) {
        zzazVar.reset();
        long zzbx = zzazVar.zzbx();
        com.google.android.gms.internal.firebase-perf.zzam zzb = zzam.zzb(zzfVar);
        try {
            URLConnection openConnection = zzbaVar.openConnection();
            return openConnection instanceof HttpsURLConnection ? new zzc((HttpsURLConnection) openConnection, zzazVar, zzb).getInputStream() : openConnection instanceof HttpURLConnection ? new zzd((HttpURLConnection) openConnection, zzazVar, zzb).getInputStream() : openConnection.getInputStream();
        } catch (IOException e) {
            zzb.zze(zzbx);
            zzb.zzh(zzazVar.zzby());
            zzb.zza(zzbaVar.toString());
            zzg.zza(zzb);
            throw e;
        }
    }

    private static Object zza(com.google.android.gms.internal.firebase-perf.zzba zzbaVar, Class[] clsArr, zzf zzfVar, com.google.android.gms.internal.firebase-perf.zzaz zzazVar) {
        zzazVar.reset();
        long zzbx = zzazVar.zzbx();
        com.google.android.gms.internal.firebase-perf.zzam zzb = zzam.zzb(zzfVar);
        try {
            URLConnection openConnection = zzbaVar.openConnection();
            return openConnection instanceof HttpsURLConnection ? new zzc((HttpsURLConnection) openConnection, zzazVar, zzb).getContent(clsArr) : openConnection instanceof HttpURLConnection ? new zzd((HttpURLConnection) openConnection, zzazVar, zzb).getContent(clsArr) : openConnection.getContent(clsArr);
        } catch (IOException e) {
            zzb.zze(zzbx);
            zzb.zzh(zzazVar.zzby());
            zzb.zza(zzbaVar.toString());
            zzg.zza(zzb);
            throw e;
        }
    }

    private static Object zzb(com.google.android.gms.internal.firebase-perf.zzba zzbaVar, zzf zzfVar, com.google.android.gms.internal.firebase-perf.zzaz zzazVar) {
        zzazVar.reset();
        long zzbx = zzazVar.zzbx();
        com.google.android.gms.internal.firebase-perf.zzam zzb = zzam.zzb(zzfVar);
        try {
            URLConnection openConnection = zzbaVar.openConnection();
            return openConnection instanceof HttpsURLConnection ? new zzc((HttpsURLConnection) openConnection, zzazVar, zzb).getContent() : openConnection instanceof HttpURLConnection ? new zzd((HttpURLConnection) openConnection, zzazVar, zzb).getContent() : openConnection.getContent();
        } catch (IOException e) {
            zzb.zze(zzbx);
            zzb.zzh(zzazVar.zzby());
            zzb.zza(zzbaVar.toString());
            zzg.zza(zzb);
            throw e;
        }
    }
}
