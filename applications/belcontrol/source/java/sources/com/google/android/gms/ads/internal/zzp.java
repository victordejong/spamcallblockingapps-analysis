package com.google.android.gms.ads.internal;

import android.os.AsyncTask;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzei;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzp.class */
public final class zzp extends AsyncTask<Void, Void, String> {
    private final /* synthetic */ zzl zzbpv;

    private zzp(zzl zzlVar) {
        this.zzbpv = zzlVar;
    }

    public /* synthetic */ zzp(zzl zzlVar, zzo zzoVar) {
        this(zzlVar);
    }

    /* renamed from: zza */
    public final String doInBackground(Void... voidArr) {
        try {
            zzl zzlVar = this.zzbpv;
            zzl.zza(zzlVar, (zzei) zzl.zze(zzlVar).get(1000L, TimeUnit.MILLISECONDS));
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            zzazk.zzd("", e);
        }
        return this.zzbpv.zzkl();
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ void onPostExecute(String str) {
        String str2 = str;
        if (zzl.zzf(this.zzbpv) == null || str2 == null) {
            return;
        }
        zzl.zzf(this.zzbpv).loadUrl(str2);
    }
}
