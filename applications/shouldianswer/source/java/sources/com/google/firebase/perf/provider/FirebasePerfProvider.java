package com.google.firebase.perf.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase-perf.zzaz;
import com.google.android.gms.internal.firebase_perf.zza;
import com.google.android.gms.internal.firebase_perf.zzan;
import com.google.android.gms.internal.firebase_perf.zzbj;
import com.google.firebase.perf.internal.SessionManager;
import com.google.firebase.perf.metrics.AppStartTrace;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/provider/FirebasePerfProvider.class */
public class FirebasePerfProvider extends ContentProvider {
    private static final zzaz zzgn = new com.google.android.gms.internal.firebase_perf.zzaz();
    private final Handler mHandler = new zza(Looper.getMainLooper());

    static {
        new zzan();
    }

    public static zzaz zzbw() {
        return zzgn;
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        Preconditions.checkNotNull(providerInfo, "FirebasePerfProvider ProviderInfo cannot be null.");
        if (!"com.google.firebase.firebaseperfprovider".equals(providerInfo.authority)) {
            super.attachInfo(context, providerInfo);
            com.google.firebase.perf.internal.zza.zzq().zzc(getContext());
            AppStartTrace zzbo = AppStartTrace.zzbo();
            zzbo.zzc(getContext());
            this.mHandler.post(new AppStartTrace.zza(zzbo));
            SessionManager.zzbl().zzc(zzbj.zzij);
            return;
        }
        throw new IllegalStateException("Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application's build.gradle.");
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return false;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
