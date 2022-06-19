package com.google.android.gms.ads.internal;

import android.os.AsyncTask;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.zh2;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.gms.ads.internal.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/o.class */
final class AsyncTaskC1388o extends AsyncTask<Void, Void, String> {

    /* renamed from: a */
    final /* synthetic */ q f5504a;

    /* renamed from: a */
    public final String doInBackground(Void... voidArr) {
        try {
            q qVar = this.f5504a;
            q.J6(qVar, (zh2) q.K6(qVar).get(1000L, TimeUnit.MILLISECONDS));
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            C1894po.m6179g("", e);
        }
        return this.f5504a.B6();
    }

    @Override // android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ void onPostExecute(String str) {
        String str2 = str;
        if (q.L6(this.f5504a) == null || str2 == null) {
            return;
        }
        q.L6(this.f5504a).loadUrl(str2);
    }
}
