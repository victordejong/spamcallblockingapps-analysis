package leakcanary;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import kotlin.C18538n;
import kotlin.C20126t;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import leakcanary.internal.C20517a;
import leakcanary.internal.C20522c;
import p499d.C17729a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH��¢\u0006\u0002\b\u000fJ\u000e\u0010\u0010\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R,\u0010\u0005\u001a \u0012\u0004\u0012\u00020\u0007\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\n\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0012"}, m4298d2 = {"Lleakcanary/ViewLocationHolderLeakFix;", "", "()V", "failedClearing", "", "groupAndOutChildren", "Lkotlin/Pair;", "Landroid/view/ViewGroup;", "Ljava/util/ArrayList;", "Landroid/view/View;", "Lkotlin/collections/ArrayList;", "applyFix", "", "application", "Landroid/app/Application;", "applyFix$plumber_android_release", "clearStaticPool", "uncheckedClearStaticPool", "plumber-android_release"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: leakcanary.b */
/* loaded from: classes5-dex2jar.jar:leakcanary/b.class */
public final class C20514b {

    /* renamed from: a */
    public static final C20514b f67027a = new C20514b();

    /* renamed from: b */
    private static C18538n<? extends ViewGroup, ? extends ArrayList<View>> f67028b;

    /* renamed from: c */
    private static boolean f67029c;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n*\u0001��\b\n\u0018��2\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001b\u0010\t\u001a\u00020\u00032\u0010\b\u0001\u0010\n\u001a\n \u000b*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\f\u001a\u00020\u00032\u0010\b\u0001\u0010\n\u001a\n \u000b*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J-\u0010\r\u001a\u00020\u00032\u0010\b\u0001\u0010\n\u001a\n \u000b*\u0004\u0018\u00010\u00050\u00052\u0010\b\u0001\u0010\u000e\u001a\n \u000b*\u0004\u0018\u00010\u00070\u0007H\u0096\u0001J\u001b\u0010\u000f\u001a\u00020\u00032\u0010\b\u0001\u0010\n\u001a\n \u000b*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\u0010\u001a\u00020\u00032\u0010\b\u0001\u0010\n\u001a\n \u000b*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001¨\u0006\u0011"}, m4298d2 = {"leakcanary/ViewLocationHolderLeakFix$applyFix$1", "Landroid/app/Application$ActivityLifecycleCallbacks;", "onActivityCreated", "", "activity", "Landroid/app/Activity;", "savedInstanceState", "Landroid/os/Bundle;", "onActivityDestroyed", "onActivityPaused", "p0", "kotlin.jvm.PlatformType", "onActivityResumed", "onActivitySaveInstanceState", "p1", "onActivityStarted", "onActivityStopped", "plumber-android_release"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: leakcanary.b$a */
    /* loaded from: classes5-dex2jar.jar:leakcanary/b$a.class */
    public static final class C20515a implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a */
        final /* synthetic */ Application f67030a;

        /* renamed from: b */
        private final /* synthetic */ Application.ActivityLifecycleCallbacks f67031b;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: leakcanary.b$a$a */
        /* loaded from: classes5-dex2jar.jar:leakcanary/b$a$a.class */
        static final class C20516a extends AbstractC18526r implements Function0<C20128v> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C20516a() {
                super(0);
                C20515a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ C20128v invoke() {
                C20514b c20514b = C20514b.f67027a;
                C20514b.m648b(C20515a.this.f67030a);
                return C20128v.f66529a;
            }
        }

        C20515a(Application application) {
            InvocationHandler invocationHandler;
            this.f67030a = application;
            ClassLoader classLoader = Application.ActivityLifecycleCallbacks.class.getClassLoader();
            invocationHandler = C20522c.f67038a;
            Object newProxyInstance = Proxy.newProxyInstance(classLoader, new Class[]{Application.ActivityLifecycleCallbacks.class}, invocationHandler);
            if (newProxyInstance != null) {
                this.f67031b = (Application.ActivityLifecycleCallbacks) newProxyInstance;
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.app.Application.ActivityLifecycleCallbacks");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            C18524p.m3841c(activity, "activity");
            C20517a.m647a(activity, new C20516a());
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            C18524p.m3841c(activity, "activity");
            C20514b c20514b = C20514b.f67027a;
            C20514b.m648b(this.f67030a);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            this.f67031b.onActivityPaused(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            this.f67031b.onActivityResumed(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            this.f67031b.onActivitySaveInstanceState(activity, bundle);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            this.f67031b.onActivityStarted(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            this.f67031b.onActivityStopped(activity);
        }
    }

    private C20514b() {
    }

    /* renamed from: a */
    public static void m649a(Application application) {
        C18524p.m3841c(application, "application");
        if (Build.VERSION.SDK_INT != 28) {
            return;
        }
        application.registerActivityLifecycleCallbacks(new C20515a(application));
    }

    /* renamed from: b */
    public static final /* synthetic */ void m648b(Application application) {
        if (!f67029c) {
            try {
                if (f67028b == null) {
                    FrameLayout frameLayout = new FrameLayout(application);
                    for (int i = 0; i < 32; i++) {
                        frameLayout.addView(new View(application));
                    }
                    f67028b = C20126t.m1103a(frameLayout, new ArrayList());
                }
                C18538n<? extends ViewGroup, ? extends ArrayList<View>> c18538n = f67028b;
                if (c18538n == null) {
                    C18524p.m3855a();
                }
                ((ViewGroup) c18538n.f63624a).addChildrenForAccessibility((ArrayList) c18538n.f63625b);
            } catch (Throwable th) {
                C17729a c17729a = C17729a.f62585a;
                f67029c = true;
            }
        }
    }
}
