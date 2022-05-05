package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import com.google.firebase.iid.FirebaseInstanceId;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p285m.p287b.C8996i4;
import p081h.p203i.p204a.p224e.p285m.p287b.C8997j;
import p081h.p203i.p204a.p224e.p285m.p287b.C9052s0;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/analytics/FirebaseAnalytics.class */
public final class FirebaseAnalytics {

    /* renamed from: b */
    public static volatile FirebaseAnalytics f7716b;

    /* renamed from: a */
    public final C9052s0 f7717a;

    public FirebaseAnalytics(C9052s0 s0Var) {
        C7021t.m21290a(s0Var);
        this.f7717a = s0Var;
    }

    @NonNull
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    @Keep
    public static FirebaseAnalytics getInstance(@NonNull Context context) {
        if (f7716b == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (f7716b == null) {
                        f7716b = new FirebaseAnalytics(C9052s0.m16298a(context, (C8997j) null));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7716b;
    }

    /* renamed from: a */
    public final void m31116a(@NonNull @Size(max = 40, min = 1) String str, @Nullable Bundle bundle) {
        this.f7717a.m16268y().m31675a(str, bundle);
    }

    /* renamed from: a */
    public final void m31115a(@NonNull @Size(max = 24, min = 1) String str, @Nullable @Size(max = 36) String str2) {
        this.f7717a.m16268y().m31674a(str, str2);
    }

    @Keep
    public final String getFirebaseInstanceId() {
        return FirebaseInstanceId.getInstance().getId();
    }

    @Keep
    @MainThread
    public final void setCurrentScreen(@NonNull Activity activity, @Nullable @Size(max = 36, min = 1) String str, @Nullable @Size(max = 36, min = 1) String str2) {
        if (!C8996i4.m16551a()) {
            this.f7717a.mo16178c().m16372v().m16338a("setCurrentScreen must be called from the main thread");
        } else {
            this.f7717a.m16279n().m16596a(activity, str, str2);
        }
    }
}
