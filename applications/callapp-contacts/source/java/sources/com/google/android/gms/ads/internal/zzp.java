package com.google.android.gms.ads.internal;

import android.os.AsyncTask;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.C13088za;
import com.google.android.gms.internal.ads.die;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/zzp.class */
final class zzp extends AsyncTask<Void, Void, String> {
    private final /* synthetic */ zzl zzbqf;

    private zzp(zzl zzlVar) {
        this.zzbqf = zzlVar;
    }

    public /* synthetic */ zzp(zzl zzlVar, zzo zzoVar) {
        this(zzlVar);
    }

    /* renamed from: zza */
    public final String doInBackground(Void... voidArr) {
        Future future;
        try {
            zzl zzlVar = this.zzbqf;
            future = zzlVar.zzbpz;
            zzlVar.zzbqd = (die) future.get(1000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            C13088za.zzd("", e);
        }
        return this.zzbqf.zzkp();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(String str) {
        WebView webView;
        WebView webView2;
        String str2 = str;
        webView = this.zzbqf.zzbqb;
        if (webView == null || str2 == null) {
            return;
        }
        webView2 = this.zzbqf.zzbqb;
        webView2.loadUrl(str2);
    }
}
