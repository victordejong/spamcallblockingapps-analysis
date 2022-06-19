package com.google.android.gms.ads.internal;

import android.os.AsyncTask;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.C7016u;
import com.google.android.gms.internal.ads.ei0;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.gms.ads.internal.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/o.class */
final class AsyncTaskC5638o extends AsyncTask<Void, Void, String> {

    /* renamed from: a */
    final /* synthetic */ BinderC5666r f18310a;

    public /* synthetic */ AsyncTaskC5638o(BinderC5666r binderC5666r, C5664p c5664p) {
        this.f18310a = binderC5666r;
    }

    /* renamed from: a */
    public final String doInBackground(Void... voidArr) {
        Throwable e;
        Future future;
        try {
            BinderC5666r binderC5666r = this.f18310a;
            future = binderC5666r.f18398f;
            binderC5666r.f18403k = (C7016u) future.get(1000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            e = e2;
            ei0.m15463g("", e);
        } catch (ExecutionException e3) {
            e = e3;
            ei0.m15463g("", e);
        } catch (TimeoutException e4) {
            ei0.m15463g("", e4);
        }
        return this.f18310a.m18175G6();
    }

    @Override // android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ void onPostExecute(String str) {
        WebView webView;
        WebView webView2;
        String str2 = str;
        webView = this.f18310a.f18401i;
        if (webView == null || str2 == null) {
            return;
        }
        webView2 = this.f18310a.f18401i;
        webView2.loadUrl(str2);
    }
}
