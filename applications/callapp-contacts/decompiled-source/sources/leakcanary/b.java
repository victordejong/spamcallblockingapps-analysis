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
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.n;
import kotlin.t;
import kotlin.v;
import leakcanary.internal.c;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH��¢\u0006\u0002\b\u000fJ\u000e\u0010\u0010\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R,\u0010\u0005\u001a \u0012\u0004\u0012\u00020\u0007\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\n\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0012"}, d2 = {"Lleakcanary/ViewLocationHolderLeakFix;", "", "()V", "failedClearing", "", "groupAndOutChildren", "Lkotlin/Pair;", "Landroid/view/ViewGroup;", "Ljava/util/ArrayList;", "Landroid/view/View;", "Lkotlin/collections/ArrayList;", "applyFix", "", "application", "Landroid/app/Application;", "applyFix$plumber_android_release", "clearStaticPool", "uncheckedClearStaticPool", "plumber-android_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:leakcanary/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f39074a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static n<? extends ViewGroup, ? extends ArrayList<View>> f39075b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f39076c;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n*\u0001��\b\n\u0018��2\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001b\u0010\t\u001a\u00020\u00032\u0010\b\u0001\u0010\n\u001a\n \u000b*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\f\u001a\u00020\u00032\u0010\b\u0001\u0010\n\u001a\n \u000b*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J-\u0010\r\u001a\u00020\u00032\u0010\b\u0001\u0010\n\u001a\n \u000b*\u0004\u0018\u00010\u00050\u00052\u0010\b\u0001\u0010\u000e\u001a\n \u000b*\u0004\u0018\u00010\u00070\u0007H\u0096\u0001J\u001b\u0010\u000f\u001a\u00020\u00032\u0010\b\u0001\u0010\n\u001a\n \u000b*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\u0010\u001a\u00020\u00032\u0010\b\u0001\u0010\n\u001a\n \u000b*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001¨\u0006\u0011"}, d2 = {"leakcanary/ViewLocationHolderLeakFix$applyFix$1", "Landroid/app/Application$ActivityLifecycleCallbacks;", "onActivityCreated", "", "activity", "Landroid/app/Activity;", "savedInstanceState", "Landroid/os/Bundle;", "onActivityDestroyed", "onActivityPaused", "p0", "kotlin.jvm.PlatformType", "onActivityResumed", "onActivitySaveInstanceState", "p1", "onActivityStarted", "onActivityStopped", "plumber-android_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:leakcanary/b$a.class */
    public static final class a implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Application f39077a;

        /* renamed from: b  reason: collision with root package name */
        private final /* synthetic */ Application.ActivityLifecycleCallbacks f39078b;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* renamed from: leakcanary.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:leakcanary/b$a$a.class */
        static final class C0746a extends r implements Function0<v> {
            C0746a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ v invoke() {
                b bVar = b.f39074a;
                b.b(a.this.f39077a);
                return v.f38654a;
            }
        }

        a(Application application) {
            InvocationHandler invocationHandler;
            this.f39077a = application;
            ClassLoader classLoader = Application.ActivityLifecycleCallbacks.class.getClassLoader();
            invocationHandler = c.f39085a;
            Object newProxyInstance = Proxy.newProxyInstance(classLoader, new Class[]{Application.ActivityLifecycleCallbacks.class}, invocationHandler);
            if (newProxyInstance != null) {
                this.f39078b = (Application.ActivityLifecycleCallbacks) newProxyInstance;
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.app.Application.ActivityLifecycleCallbacks");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            p.c(activity, "activity");
            leakcanary.internal.a.a(activity, new C0746a());
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            p.c(activity, "activity");
            b bVar = b.f39074a;
            b.b(this.f39077a);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            this.f39078b.onActivityPaused(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            this.f39078b.onActivityResumed(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            this.f39078b.onActivitySaveInstanceState(activity, bundle);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            this.f39078b.onActivityStarted(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            this.f39078b.onActivityStopped(activity);
        }
    }

    private b() {
    }

    public static void a(Application application) {
        p.c(application, "application");
        if (Build.VERSION.SDK_INT == 28) {
            application.registerActivityLifecycleCallbacks(new a(application));
        }
    }

    public static final /* synthetic */ void b(Application application) {
        if (!f39076c) {
            try {
                if (f39075b == null) {
                    FrameLayout frameLayout = new FrameLayout(application);
                    for (int i = 0; i < 32; i++) {
                        frameLayout.addView(new View(application));
                    }
                    f39075b = t.a(frameLayout, new ArrayList());
                }
                n<? extends ViewGroup, ? extends ArrayList<View>> nVar = f39075b;
                if (nVar == null) {
                    p.a();
                }
                ((ViewGroup) nVar.f36810a).addChildrenForAccessibility((ArrayList) nVar.f36811b);
            } catch (Throwable th) {
                d.a aVar = d.a.f36146a;
                f39076c = true;
            }
        }
    }
}
