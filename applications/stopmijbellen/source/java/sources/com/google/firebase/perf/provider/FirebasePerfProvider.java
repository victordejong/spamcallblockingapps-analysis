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
import java.util.Objects;
import p015b0.C0713a;
import p031c6.C0847b;
import p071d6.C2478a;
import p081e6.C2583a;
import p169m6.C3652e;
import p180n6.C3729e;
import p180n6.C3731f;
import p191o6.EnumC3901d;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/provider/FirebasePerfProvider.class */
public class FirebasePerfProvider extends ContentProvider {
    private static final C3729e APP_START_TIME = new C3729e();
    @VisibleForTesting
    public static final String EMPTY_APPLICATION_ID_PROVIDER_AUTHORITY = "com.google.firebase.firebaseperfprovider";
    private final Handler mainHandler = new Handler(Looper.getMainLooper());

    private static void checkContentProviderAuthority(ProviderInfo providerInfo) {
        Preconditions.checkNotNull(providerInfo, "FirebasePerfProvider ProviderInfo cannot be null.");
        if (!EMPTY_APPLICATION_ID_PROVIDER_AUTHORITY.equals(providerInfo.authority)) {
            return;
        }
        throw new IllegalStateException("Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application's build.gradle.");
    }

    public static C3729e getAppStartTime() {
        return APP_START_TIME;
    }

    /* JADX WARN: Finally extract failed */
    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        AppStartTrace appStartTrace;
        checkContentProviderAuthority(providerInfo);
        super.attachInfo(context, providerInfo);
        C2583a m3412e = C2583a.m3412e();
        Context context2 = getContext();
        Objects.requireNonNull(m3412e);
        Context applicationContext = context2.getApplicationContext();
        C2583a.f9006d.f9793b = C3731f.m1837a(applicationContext);
        m3412e.f9010c.m3395b(applicationContext);
        C2478a m3524a = C2478a.m3524a();
        Context context3 = getContext();
        synchronized (m3524a) {
            if (!m3524a.f8728n) {
                Context applicationContext2 = context3.getApplicationContext();
                if (applicationContext2 instanceof Application) {
                    ((Application) applicationContext2).registerActivityLifecycleCallbacks(m3524a);
                    m3524a.f8728n = true;
                }
            }
        }
        C0847b c0847b = new C0847b();
        synchronized (m3524a.f8718d) {
            m3524a.f8719e.add(c0847b);
        }
        if (AppStartTrace.f6975k != null) {
            appStartTrace = AppStartTrace.f6975k;
        } else {
            C3652e c3652e = C3652e.f11967s;
            C0713a c0713a = new C0713a();
            if (AppStartTrace.f6975k == null) {
                synchronized (AppStartTrace.class) {
                    try {
                        if (AppStartTrace.f6975k == null) {
                            AppStartTrace.f6975k = new AppStartTrace(c3652e, c0713a);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            appStartTrace = AppStartTrace.f6975k;
        }
        Context context4 = getContext();
        synchronized (appStartTrace) {
            try {
                if (!appStartTrace.f6976a) {
                    Context applicationContext3 = context4.getApplicationContext();
                    if (applicationContext3 instanceof Application) {
                        ((Application) applicationContext3).registerActivityLifecycleCallbacks(appStartTrace);
                        appStartTrace.f6976a = true;
                        appStartTrace.f6979d = applicationContext3;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.mainHandler.post(new AppStartTrace.RunnableC1851a(appStartTrace));
        SessionManager.getInstance().updatePerfSession(EnumC3901d.FOREGROUND);
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
