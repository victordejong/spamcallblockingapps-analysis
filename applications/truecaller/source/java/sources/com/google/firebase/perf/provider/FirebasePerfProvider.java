package com.google.firebase.perf.provider;

import android.app.Application;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Keep;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.perf.metrics.AppStartTrace;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.util.Timer;
import e.m.d.z.f.a;
import e.m.d.z.g.d;
import e.m.d.z.m.k;
import e.m.d.z.n.h;
import java.util.Objects;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
@Keep
/* loaded from: classes3-dex2jar.jar:com/google/firebase/perf/provider/FirebasePerfProvider.class */
public class FirebasePerfProvider extends ContentProvider {
    private static final Timer APP_START_TIME = new Timer();
    @VisibleForTesting
    public static final String EMPTY_APPLICATION_ID_PROVIDER_AUTHORITY = "com.google.firebase.firebaseperfprovider";
    private final Handler mainHandler = new Handler(Looper.getMainLooper());

    private static void checkContentProviderAuthority(ProviderInfo providerInfo) {
        Preconditions.m38897k(providerInfo, "FirebasePerfProvider ProviderInfo cannot be null.");
        if (!EMPTY_APPLICATION_ID_PROVIDER_AUTHORITY.equals(providerInfo.authority)) {
            return;
        }
        throw new IllegalStateException("Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application's build.gradle.");
    }

    public static Timer getAppStartTime() {
        return APP_START_TIME;
    }

    /* JADX WARN: Finally extract failed */
    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        AppStartTrace appStartTrace;
        checkContentProviderAuthority(providerInfo);
        super.attachInfo(context, providerInfo);
        d e = d.e();
        Context context2 = getContext();
        Objects.requireNonNull(e);
        Context applicationContext = context2.getApplicationContext();
        d.d.b = h.a(applicationContext);
        e.c.b(applicationContext);
        Application.ActivityLifecycleCallbacks a = a.a();
        Context context3 = getContext();
        synchronized (a) {
            if (!((a) a).n) {
                Context applicationContext2 = context3.getApplicationContext();
                if (applicationContext2 instanceof Application) {
                    ((Application) applicationContext2).registerActivityLifecycleCallbacks(a);
                    ((a) a).n = true;
                }
            }
        }
        e.m.d.z.d dVar = new e.m.d.z.d();
        synchronized (((a) a).d) {
            ((a) a).e.add(dVar);
        }
        if (AppStartTrace.f7057m != null) {
            appStartTrace = AppStartTrace.f7057m;
        } else {
            k kVar = k.s;
            e.m.d.z.n.a aVar = new e.m.d.z.n.a();
            if (AppStartTrace.f7057m == null) {
                synchronized (AppStartTrace.class) {
                    try {
                        if (AppStartTrace.f7057m == null) {
                            AppStartTrace.f7057m = new AppStartTrace(kVar, aVar, new ThreadPoolExecutor(0, 1, AppStartTrace.f7056l + 10, TimeUnit.SECONDS, new LinkedBlockingQueue(1)));
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            appStartTrace = AppStartTrace.f7057m;
        }
        Context context4 = getContext();
        synchronized (appStartTrace) {
            try {
                if (!appStartTrace.f7059a) {
                    Context applicationContext3 = context4.getApplicationContext();
                    if (applicationContext3 instanceof Application) {
                        ((Application) applicationContext3).registerActivityLifecycleCallbacks(appStartTrace);
                        appStartTrace.f7059a = true;
                        appStartTrace.f7062d = applicationContext3;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.mainHandler.post(new AppStartTrace.RunnableC2181a(appStartTrace));
        SessionManager.getInstance().initializeGaugeCollection();
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
