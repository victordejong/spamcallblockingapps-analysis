package p131c.p161d.p170b.p224d.p225a.p228c;

import android.os.AsyncTask;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzeg;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: c.d.b.d.a.c.e */
/* loaded from: classes-dex2jar.jar:c/d/b/d/a/c/e.class */
public final class AsyncTaskC3233e extends AsyncTask<Void, Void, String> {

    /* renamed from: a */
    public final /* synthetic */ zzj f11922a;

    public AsyncTaskC3233e(zzj zzjVar) {
        this.f11922a = zzjVar;
    }

    public /* synthetic */ AsyncTaskC3233e(zzj zzjVar, C3232d dVar) {
        this(zzjVar);
    }

    /* renamed from: a */
    public final String doInBackground(Void... voidArr) {
        Future future;
        try {
            zzj zzjVar = this.f11922a;
            future = this.f11922a.f22814c;
            zzjVar.f22819h = (zzeg) future.get(1000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            zzbbq.m15853c("", e);
        }
        return this.f11922a.m17984Q1();
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ void onPostExecute(String str) {
        WebView webView;
        WebView webView2;
        String str2 = str;
        webView = this.f11922a.f22817f;
        if (webView != null && str2 != null) {
            webView2 = this.f11922a.f22817f;
            webView2.loadUrl(str2);
        }
    }
}
