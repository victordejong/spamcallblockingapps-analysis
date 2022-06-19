package com.google.android.gms.ads.internal;

import android.os.AsyncTask;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.zzalt;
import com.google.android.gms.internal.ads.zzciz;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzq.class */
final class zzq extends AsyncTask<Void, Void, String> {
    public final /* synthetic */ zzs zza;

    public /* synthetic */ zzq(zzs zzsVar, zzp zzpVar) {
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
            zzsVar.zzh = (zzalt) future.get(1000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            e = e2;
            zzciz.zzk("", e);
        } catch (ExecutionException e3) {
            e = e3;
            zzciz.zzk("", e);
        } catch (TimeoutException e4) {
            zzciz.zzk("", e4);
        }
        return this.zza.zzp();
    }
}
