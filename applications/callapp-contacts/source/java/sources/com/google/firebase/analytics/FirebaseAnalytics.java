package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.measurement.C13363ak;
import com.google.android.gms.measurement.internal.AbstractC14037gw;
import com.google.android.gms.tasks.C14188k;
import com.google.firebase.installations.C15813c;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/FirebaseAnalytics.class */
public final class FirebaseAnalytics {

    /* renamed from: a */
    private static volatile FirebaseAnalytics f55931a;

    /* renamed from: b */
    private final C13363ak f55932b;

    public FirebaseAnalytics(C13363ak c13363ak) {
        C12045o.m19162a(c13363ak);
        this.f55932b = c13363ak;
    }

    public static FirebaseAnalytics getInstance(Context context) {
        if (f55931a == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (f55931a == null) {
                        f55931a = new FirebaseAnalytics(C13363ak.m13314a(context, null, null, null, null));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f55931a;
    }

    public static AbstractC14037gw getScionFrontendApiImplementation(Context context, Bundle bundle) {
        C13363ak m13314a = C13363ak.m13314a(context, null, null, null, bundle);
        if (m13314a == null) {
            return null;
        }
        return new C15586a(m13314a);
    }

    /* renamed from: a */
    public final void m8620a(String str) {
        this.f55932b.m13304a(str);
    }

    /* renamed from: a */
    public final void m8619a(String str, Bundle bundle) {
        this.f55932b.m13303a(str, bundle);
    }

    /* renamed from: a */
    public final void m8618a(String str, String str2) {
        this.f55932b.m13298a((String) null, str, (Object) str2, false);
    }

    public final String getFirebaseInstanceId() {
        try {
            return (String) C14188k.m11467a(C15813c.m8313a().mo8286b(), 30000L, TimeUnit.MILLISECONDS);
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
        this.f55932b.m13316a(activity, str, str2);
    }
}
