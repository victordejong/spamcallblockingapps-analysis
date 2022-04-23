package com.google.firebase.perf.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Keep;
import com.google.android.gms.common.internal.C1581h;
import com.google.firebase.perf.config.a;
import com.google.firebase.perf.internal.SessionManager;
import com.google.firebase.perf.metrics.AppStartTrace;
import com.google.firebase.perf.p085v1.ApplicationProcessState;
import com.google.firebase.perf.util.C2446a;
import com.google.firebase.perf.util.Timer;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/provider/FirebasePerfProvider.class */
public class FirebasePerfProvider extends ContentProvider {
    private static final Timer APP_START_TIME = new C2446a().m3581a();
    static final String EMPTY_APPLICATION_ID_PROVIDER_AUTHORITY = "com.google.firebase.firebaseperfprovider";
    private final Handler mHandler = new Handler(Looper.getMainLooper());

    private static void checkContentProviderAuthority(ProviderInfo providerInfo) {
        C1581h.m8346i(providerInfo, "FirebasePerfProvider ProviderInfo cannot be null.");
        if (EMPTY_APPLICATION_ID_PROVIDER_AUTHORITY.equals(providerInfo.authority)) {
            throw new IllegalStateException("Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application's build.gradle.");
        }
    }

    public static Timer getAppStartTime() {
        return APP_START_TIME;
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        checkContentProviderAuthority(providerInfo);
        super.attachInfo(context, providerInfo);
        a f = a.f();
        f.N(getContext());
        if (f.I()) {
            com.google.firebase.perf.internal.a.b().i(getContext());
            AppStartTrace c = AppStartTrace.c();
            c.e(getContext());
            this.mHandler.post(new AppStartTrace.a(c));
        }
        SessionManager.getInstance().updatePerfSession(ApplicationProcessState.FOREGROUND);
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
