package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzee;
import com.google.android.gms.measurement.internal.zzhx;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p274w4.C4736a;
import p286x5.C4869d;
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/FirebaseAnalytics.class */
public final class FirebaseAnalytics {

    /* renamed from: b */
    public static volatile FirebaseAnalytics f6971b;

    /* renamed from: a */
    public final zzee f6972a;

    public FirebaseAnalytics(zzee zzeeVar) {
        Preconditions.checkNotNull(zzeeVar);
        this.f6972a = zzeeVar;
    }

    @Keep
    public static FirebaseAnalytics getInstance(Context context) {
        if (f6971b == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (f6971b == null) {
                        f6971b = new FirebaseAnalytics(zzee.zza(context, null, null, null, null));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f6971b;
    }

    @Keep
    public static zzhx getScionFrontendApiImplementation(Context context, Bundle bundle) {
        zzee zza = zzee.zza(context, null, null, null, bundle);
        if (zza == null) {
            return null;
        }
        return new C4736a(zza);
    }

    @Keep
    public String getFirebaseInstanceId() {
        try {
            return (String) Tasks.await(C4869d.m336f().getId(), 30000L, TimeUnit.MILLISECONDS);
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
        this.f6972a.zzo(activity, str, str2);
    }
}
