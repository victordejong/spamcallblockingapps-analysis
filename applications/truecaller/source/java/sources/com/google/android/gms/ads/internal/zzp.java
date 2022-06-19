package com.google.android.gms.ads.internal;

import android.os.AsyncTask;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.zzaas;
import com.google.android.gms.internal.ads.zzcgt;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/zzp.class */
public final class zzp extends AsyncTask<Void, Void, String> {
    public final /* synthetic */ zzs zza;

    public /* synthetic */ zzp(zzs zzsVar, zzq zzqVar) {
        this.zza = zzsVar;
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(String str) {
        WebView webView;
        WebView webView2;
        String str2 = str;
        webView = this.zza.zzf;
        if (webView == null || str2 == null) {
            return;
        }
        webView2 = this.zza.zzf;
        webView2.loadUrl(str2);
    }

    /* renamed from: zza */
    public final String doInBackground(Void... voidArr) {
        Throwable e;
        Future future;
        try {
            zzs zzsVar = this.zza;
            future = zzsVar.zzc;
            zzsVar.zzh = (zzaas) future.get(1000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            e = e2;
            zzcgt.zzj("", e);
        } catch (ExecutionException e3) {
            e = e3;
            zzcgt.zzj("", e);
        } catch (TimeoutException e4) {
            zzcgt.zzj("", e4);
        }
        return this.zza.zzT();
    }
}
