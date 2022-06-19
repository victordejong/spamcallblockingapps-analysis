package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.internal.measurement.zzee;
import com.google.android.gms.measurement.internal.zzhx;
import com.google.android.gms.tasks.Tasks;
import e.m.d.k.b;
import e.m.d.w.h;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes3-dex2jar.jar:com/google/firebase/analytics/FirebaseAnalytics.class */
public final class FirebaseAnalytics {

    /* renamed from: b */
    public static volatile FirebaseAnalytics f7028b;

    /* renamed from: a */
    public final zzee f7029a;

    public FirebaseAnalytics(zzee zzeeVar) {
        Objects.requireNonNull(zzeeVar, "null reference");
        this.f7029a = zzeeVar;
    }

    @Keep
    public static FirebaseAnalytics getInstance(Context context) {
        if (f7028b == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (f7028b == null) {
                        f7028b = new FirebaseAnalytics(zzee.zzg(context, null, null, null, null));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7028b;
    }

    @Keep
    public static zzhx getScionFrontendApiImplementation(Context context, Bundle bundle) {
        zzee zzg = zzee.zzg(context, null, null, null, bundle);
        if (zzg == null) {
            return null;
        }
        return new b(zzg);
    }

    @Keep
    public String getFirebaseInstanceId() {
        try {
            return (String) Tasks.m38513b(h.g().getId(), 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw new IllegalStateException(e);
        } catch (ExecutionException e2) {
            throw new IllegalStateException(e2.getCause());
        } catch (TimeoutException e3) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    @Keep
    @Deprecated
    public void setCurrentScreen(Activity activity, String str, String str2) {
        this.f7029a.zzG(activity, str, str2);
    }
}
