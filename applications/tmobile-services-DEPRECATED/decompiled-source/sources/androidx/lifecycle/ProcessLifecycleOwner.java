package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ReportFragment;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ProcessLifecycleOwner.class */
public class ProcessLifecycleOwner implements LifecycleOwner {

    /* renamed from: n */
    private static final ProcessLifecycleOwner f4062n = new ProcessLifecycleOwner();

    /* renamed from: j */
    private Handler f4067j;

    /* renamed from: f */
    private int f4063f = 0;

    /* renamed from: g */
    private int f4064g = 0;

    /* renamed from: h */
    private boolean f4065h = true;

    /* renamed from: i */
    private boolean f4066i = true;

    /* renamed from: k */
    private final LifecycleRegistry f4068k = new LifecycleRegistry(this);

    /* renamed from: l */
    private Runnable f4069l = new Runnable() { // from class: androidx.lifecycle.ProcessLifecycleOwner.1
        @Override // java.lang.Runnable
        public void run() {
            ProcessLifecycleOwner.this.m18178f();
            ProcessLifecycleOwner.this.m18177g();
        }
    };

    /* renamed from: m */
    ReportFragment.ActivityInitializationListener f4070m = new ReportFragment.ActivityInitializationListener() { // from class: androidx.lifecycle.ProcessLifecycleOwner.2
        @Override // androidx.lifecycle.ReportFragment.ActivityInitializationListener
        /* renamed from: a */
        public void mo18167a() {
        }

        @Override // androidx.lifecycle.ReportFragment.ActivityInitializationListener
        /* renamed from: b */
        public void mo18166b() {
            ProcessLifecycleOwner.this.m18182b();
        }

        @Override // androidx.lifecycle.ReportFragment.ActivityInitializationListener
        /* renamed from: c */
        public void mo18165c() {
            ProcessLifecycleOwner.this.m18181c();
        }
    };

    private ProcessLifecycleOwner() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static void m18176h(Context context) {
        f4062n.m18179e(context);
    }

    /* renamed from: a */
    void m18183a() {
        int i = this.f4064g - 1;
        this.f4064g = i;
        if (i == 0) {
            this.f4067j.postDelayed(this.f4069l, 700L);
        }
    }

    /* renamed from: b */
    void m18182b() {
        int i = this.f4064g + 1;
        this.f4064g = i;
        if (i != 1) {
            return;
        }
        if (this.f4065h) {
            this.f4068k.m18223i(Lifecycle.Event.ON_RESUME);
            this.f4065h = false;
            return;
        }
        this.f4067j.removeCallbacks(this.f4069l);
    }

    /* renamed from: c */
    void m18181c() {
        int i = this.f4063f + 1;
        this.f4063f = i;
        if (i == 1 && this.f4066i) {
            this.f4068k.m18223i(Lifecycle.Event.ON_START);
            this.f4066i = false;
        }
    }

    /* renamed from: d */
    void m18180d() {
        this.f4063f--;
        m18177g();
    }

    /* renamed from: e */
    void m18179e(Context context) {
        this.f4067j = new Handler();
        this.f4068k.m18223i(Lifecycle.Event.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner.3
            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                if (Build.VERSION.SDK_INT < 29) {
                    ReportFragment.m18170f(activity).m18168h(ProcessLifecycleOwner.this.f4070m);
                }
            }

            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                ProcessLifecycleOwner.this.m18183a();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPreCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
                activity.registerActivityLifecycleCallbacks(new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner.3.1
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPostResumed(@NonNull Activity activity2) {
                        ProcessLifecycleOwner.this.m18182b();
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPostStarted(@NonNull Activity activity2) {
                        ProcessLifecycleOwner.this.m18181c();
                    }
                });
            }

            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                ProcessLifecycleOwner.this.m18180d();
            }
        });
    }

    /* renamed from: f */
    void m18178f() {
        if (this.f4064g == 0) {
            this.f4065h = true;
            this.f4068k.m18223i(Lifecycle.Event.ON_PAUSE);
        }
    }

    /* renamed from: g */
    void m18177g() {
        if (this.f4063f == 0 && this.f4065h) {
            this.f4068k.m18223i(Lifecycle.Event.ON_STOP);
            this.f4066i = true;
        }
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NonNull
    public Lifecycle getLifecycle() {
        return this.f4068k;
    }
}
