package com.google.android.gms.ads.internal;

import android.os.AsyncTask;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzei;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzp.class */
final class zzp extends AsyncTask<Void, Void, String> {
    private final /* synthetic */ zzl zzbpv;

    private zzp(zzl zzlVar) {
        this.zzbpv = zzlVar;
    }

    public /* synthetic */ zzp(zzl zzlVar, zzo zzoVar) {
        this(zzlVar);
    }

    /* renamed from: zza */
    public final String doInBackground(Void... voidArr) {
        Future future;
        try {
            zzl zzlVar = this.zzbpv;
            future = zzlVar.zzbpp;
            zzlVar.zzbpt = (zzei) future.get(1000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            zzazk.zzd("", e);
        }
        return this.zzbpv.zzkl();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(String str) {
        WebView webView;
        WebView webView2;
        String str2 = str;
        webView = this.zzbpv.zzbpr;
        if (webView == null || str2 == null) {
            return;
        }
        webView2 = this.zzbpv.zzbpr;
        webView2.loadUrl(str2);
    }
}
