package com.flurry.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import com.flurry.sdk.C3334je;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.flurry.sdk.jf */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jf.class */
public class C3336jf {

    /* renamed from: a */
    public static final String f5699a = "jf";

    /* renamed from: b */
    public static final List<String> f5700b = new ArrayList(Arrays.asList("FlurryFullscreenTakeoverActivity", "FlurryBrowserActivity"));

    /* renamed from: c */
    public static C3336jf f5701c;

    /* renamed from: e */
    public static int f5702e;

    /* renamed from: f */
    public static int f5703f;

    /* renamed from: g */
    public static int f5704g;

    /* renamed from: h */
    public static int f5705h;

    /* renamed from: d */
    public Application.ActivityLifecycleCallbacks f5706d;

    public C3336jf() {
        if (Build.VERSION.SDK_INT >= 14 && this.f5706d == null) {
            Context context = C3331jb.m32681a().f5679a;
            if (context instanceof Application) {
                this.f5706d = new Application.ActivityLifecycleCallbacks(this) { // from class: com.flurry.sdk.jf.1
                    /* renamed from: a */
                    public static void m32658a(Activity activity, C3334je.EnumC3335a aVar) {
                        C3334je jeVar = new C3334je();
                        jeVar.f5689a = new WeakReference<>(activity);
                        jeVar.f5690b = aVar;
                        jeVar.m32637b();
                    }

                    /* renamed from: a */
                    public static boolean m32659a(Activity activity) {
                        return !C3336jf.f5700b.contains(activity.getClass().getSimpleName());
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityCreated(Activity activity, Bundle bundle) {
                        String str = C3336jf.f5699a;
                        C3356jq.m32615a(3, str, "onActivityCreated for activity:" + activity);
                        m32658a(activity, C3334je.EnumC3335a.kCreated);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityDestroyed(Activity activity) {
                        String str = C3336jf.f5699a;
                        C3356jq.m32615a(3, str, "onActivityDestroyed for activity:" + activity);
                        m32658a(activity, C3334je.EnumC3335a.kDestroyed);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPaused(Activity activity) {
                        String str = C3336jf.f5699a;
                        C3356jq.m32615a(3, str, "onActivityPaused for activity:" + activity);
                        m32658a(activity, C3334je.EnumC3335a.kPaused);
                        C3336jf.m32662g();
                        C3336jf.m32664e();
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityResumed(Activity activity) {
                        String str = C3336jf.f5699a;
                        C3356jq.m32615a(3, str, "onActivityResumed for activity:" + activity);
                        m32658a(activity, C3334je.EnumC3335a.kResumed);
                        C3336jf.m32663f();
                        C3336jf.m32664e();
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                        String str = C3336jf.f5699a;
                        C3356jq.m32615a(3, str, "onActivitySaveInstanceState for activity:" + activity);
                        m32658a(activity, C3334je.EnumC3335a.kSaveState);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityStarted(Activity activity) {
                        String str = C3336jf.f5699a;
                        C3356jq.m32615a(3, str, "onActivityStarted for activity:" + activity);
                        if (m32659a(activity)) {
                            m32658a(activity, C3334je.EnumC3335a.kStarted);
                        }
                        C3336jf.m32665d();
                        C3336jf.m32664e();
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityStopped(Activity activity) {
                        String str = C3336jf.f5699a;
                        C3356jq.m32615a(3, str, "onActivityStopped for activity:" + activity);
                        if (m32659a(activity)) {
                            m32658a(activity, C3334je.EnumC3335a.kStopped);
                        }
                        C3336jf.m32661h();
                        C3336jf.m32664e();
                    }
                };
                ((Application) context).registerActivityLifecycleCallbacks(this.f5706d);
            }
        }
    }

    /* renamed from: a */
    public static C3336jf m32668a() {
        C3336jf jfVar;
        synchronized (C3336jf.class) {
            try {
                if (f5701c == null) {
                    f5701c = new C3336jf();
                }
                jfVar = f5701c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return jfVar;
    }

    /* renamed from: d */
    public static /* synthetic */ int m32665d() {
        int i = f5704g + 1;
        f5704g = i;
        return i;
    }

    /* renamed from: e */
    public static /* synthetic */ void m32664e() {
        boolean z = true;
        if (!(f5702e > f5703f)) {
            z = f5704g > f5705h;
        }
        C3331jb.m32676a(z);
    }

    /* renamed from: f */
    public static /* synthetic */ int m32663f() {
        int i = f5702e + 1;
        f5702e = i;
        return i;
    }

    /* renamed from: g */
    public static /* synthetic */ int m32662g() {
        int i = f5703f + 1;
        f5703f = i;
        return i;
    }

    /* renamed from: h */
    public static /* synthetic */ int m32661h() {
        int i = f5705h + 1;
        f5705h = i;
        return i;
    }

    /* renamed from: b */
    public final boolean m32667b() {
        return this.f5706d != null;
    }
}
