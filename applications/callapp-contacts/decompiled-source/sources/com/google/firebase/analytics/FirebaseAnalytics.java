package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.measurement.ak;
import com.google.android.gms.measurement.internal.gw;
import com.google.android.gms.tasks.k;
import com.google.firebase.installations.c;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/FirebaseAnalytics.class */
public final class FirebaseAnalytics {

    /* renamed from: a  reason: collision with root package name */
    private static volatile FirebaseAnalytics f32182a;

    /* renamed from: b  reason: collision with root package name */
    private final ak f32183b;

    public FirebaseAnalytics(ak akVar) {
        o.a(akVar);
        this.f32183b = akVar;
    }

    public static FirebaseAnalytics getInstance(Context context) {
        if (f32182a == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (f32182a == null) {
                        f32182a = new FirebaseAnalytics(ak.a(context, null, null, null, null));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f32182a;
    }

    public static gw getScionFrontendApiImplementation(Context context, Bundle bundle) {
        ak a2 = ak.a(context, null, null, null, bundle);
        if (a2 == null) {
            return null;
        }
        return new a(a2);
    }

    public final void a(String str) {
        this.f32183b.a(str);
    }

    public final void a(String str, Bundle bundle) {
        this.f32183b.a(str, bundle);
    }

    public final void a(String str, String str2) {
        this.f32183b.a((String) null, str, (Object) str2, false);
    }

    public final String getFirebaseInstanceId() {
        try {
            return (String) k.a(c.a().b(), 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw new IllegalStateException(e);
        } catch (ExecutionException e2) {
            throw new IllegalStateException(e2.getCause());
        } catch (TimeoutException e3) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    @Deprecated
    public final void setCurrentScreen(Activity activity, String str, String str2) {
        this.f32183b.a(activity, str, str2);
    }
}
