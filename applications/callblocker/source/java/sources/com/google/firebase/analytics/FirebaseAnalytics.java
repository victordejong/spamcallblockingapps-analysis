package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.internal.measurement.C3866d;
import com.google.android.gms.measurement.internal.AbstractC4352hf;
import com.google.android.gms.measurement.internal.C4296fd;
import com.google.android.gms.measurement.internal.C4439kk;
import com.google.firebase.iid.FirebaseInstanceId;
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/FirebaseAnalytics.class */
public final class FirebaseAnalytics {

    /* renamed from: a */
    private static volatile FirebaseAnalytics f20919a;

    /* renamed from: b */
    private final C4296fd f20920b;

    /* renamed from: c */
    private final C3866d f20921c;

    /* renamed from: d */
    private final boolean f20922d;

    /* renamed from: e */
    private final Object f20923e;

    private FirebaseAnalytics(C3866d c3866d) {
        C2662s.m13981a(c3866d);
        this.f20920b = null;
        this.f20921c = c3866d;
        this.f20922d = true;
        this.f20923e = new Object();
    }

    private FirebaseAnalytics(C4296fd c4296fd) {
        C2662s.m13981a(c4296fd);
        this.f20920b = c4296fd;
        this.f20921c = null;
        this.f20922d = false;
        this.f20923e = new Object();
    }

    @Keep
    public static FirebaseAnalytics getInstance(Context context) {
        if (f20919a == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (f20919a == null) {
                        if (C3866d.m5777b(context)) {
                            f20919a = new FirebaseAnalytics(C3866d.m5801a(context));
                        } else {
                            f20919a = new FirebaseAnalytics(C4296fd.m4565a(context, null, null));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f20919a;
    }

    @Keep
    public static AbstractC4352hf getScionFrontendApiImplementation(Context context, Bundle bundle) {
        C4858a c4858a;
        if (!C3866d.m5777b(context)) {
            c4858a = null;
        } else {
            C3866d m5799a = C3866d.m5799a(context, (String) null, (String) null, (String) null, bundle);
            c4858a = null;
            if (m5799a != null) {
                c4858a = new C4858a(m5799a);
            }
        }
        return c4858a;
    }

    /* renamed from: a */
    public final void m2182a(String str, Bundle bundle) {
        if (this.f20922d) {
            this.f20921c.m5786a(str, bundle);
        } else {
            this.f20920b.m4548h().m4404a("app", str, bundle, true);
        }
    }

    @Keep
    public final String getFirebaseInstanceId() {
        return FirebaseInstanceId.m2008a().m1991c();
    }

    @Keep
    public final void setCurrentScreen(Activity activity, String str, String str2) {
        if (this.f20922d) {
            this.f20921c.m5802a(activity, str, str2);
        } else if (!C4439kk.m4052a()) {
            this.f20920b.mo4030v().m4662e().m4654a("setCurrentScreen must be called from the main thread");
        } else {
            this.f20920b.m4539s().m4362a(activity, str, str2);
        }
    }
}
