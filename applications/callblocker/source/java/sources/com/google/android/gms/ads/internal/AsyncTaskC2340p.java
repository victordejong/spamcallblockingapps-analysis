package com.google.android.gms.ads.internal;

import android.os.AsyncTask;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.C3645yb;
import com.google.android.gms.internal.ads.ctl;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.gms.ads.internal.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/p.class */
final class AsyncTaskC2340p extends AsyncTask<Void, Void, String> {

    /* renamed from: a */
    private final /* synthetic */ BinderC2310l f6740a;

    private AsyncTaskC2340p(BinderC2310l binderC2310l) {
        this.f6740a = binderC2310l;
    }

    public /* synthetic */ AsyncTaskC2340p(BinderC2310l binderC2310l, C2309k c2309k) {
        this(binderC2310l);
    }

    /* renamed from: a */
    public final String doInBackground(Void... voidArr) {
        Future future;
        try {
            BinderC2310l binderC2310l = this.f6740a;
            future = this.f6740a.f6659c;
            binderC2310l.f6664h = (ctl) future.get(1000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            C3645yb.m6746d("", e);
        }
        return this.f6740a.m14778s();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(String str) {
        WebView webView;
        WebView webView2;
        String str2 = str;
        webView = this.f6740a.f6662f;
        if (webView == null || str2 == null) {
            return;
        }
        webView2 = this.f6740a.f6662f;
        webView2.loadUrl(str2);
    }
}
