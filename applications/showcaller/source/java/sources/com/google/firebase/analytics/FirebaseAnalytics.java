package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.measurement.C7415j0;
import com.google.android.gms.measurement.internal.AbstractC7904w6;
import com.google.android.gms.tasks.C7970j;
import com.google.firebase.installations.C9211f;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/analytics/FirebaseAnalytics.class */
public final class FirebaseAnalytics {

    /* renamed from: a */
    private static volatile FirebaseAnalytics f38751a;

    /* renamed from: b */
    private final C7415j0 f38752b;

    public FirebaseAnalytics(C7415j0 c7415j0) {
        C6155o.m17018j(c7415j0);
        this.f38752b = c7415j0;
    }

    @Keep
    public static FirebaseAnalytics getInstance(@RecentlyNonNull Context context) {
        if (f38751a == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (f38751a == null) {
                        f38751a = new FirebaseAnalytics(C7415j0.m7260t(context, null, null, null, null));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f38751a;
    }

    @Keep
    public static AbstractC7904w6 getScionFrontendApiImplementation(Context context, Bundle bundle) {
        C7415j0 m7260t = C7415j0.m7260t(context, null, null, null, bundle);
        if (m7260t == null) {
            return null;
        }
        return new C8841b(m7260t);
    }

    /* renamed from: a */
    public void m2568a(@RecentlyNonNull String str, Bundle bundle) {
        this.f38752b.m7256x(str, bundle);
    }

    @RecentlyNonNull
    @Keep
    public String getFirebaseInstanceId() {
        try {
            return (String) C7970j.m5801b(C9211f.m1547k().getId(), 30000L, TimeUnit.MILLISECONDS);
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
    public void setCurrentScreen(@RecentlyNonNull Activity activity, String str, String str2) {
        this.f38752b.m7287D(activity, str, str2);
    }
}
