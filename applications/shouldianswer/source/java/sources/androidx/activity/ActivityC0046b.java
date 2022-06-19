package androidx.activity;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.core.app.ActivityC0438d;
import androidx.lifecycle.AbstractC0896g;
import androidx.lifecycle.AbstractC0901i;
import androidx.lifecycle.AbstractC0903k;
import androidx.lifecycle.AbstractC0927y;
import androidx.lifecycle.C0904l;
import androidx.lifecycle.C0926x;
import androidx.lifecycle.FragmentC0917t;
import androidx.savedstate.AbstractC1082c;
import androidx.savedstate.C1078a;
import androidx.savedstate.C1081b;
/* renamed from: androidx.activity.b */
/* loaded from: classes-dex2jar.jar:androidx/activity/b.class */
public class ActivityC0046b extends ActivityC0438d implements AbstractC0050d, AbstractC0903k, AbstractC0927y, AbstractC1082c {

    /* renamed from: c */
    private C0926x f103c;

    /* renamed from: e */
    private int f105e;

    /* renamed from: a */
    private final C0904l f101a = new C0904l(this);

    /* renamed from: b */
    private final C1081b f102b = C1081b.m4381a(this);

    /* renamed from: d */
    private final OnBackPressedDispatcher f104d = new OnBackPressedDispatcher(new Runnable() { // from class: androidx.activity.b.1
        @Override // java.lang.Runnable
        public void run() {
            ActivityC0046b.super.onBackPressed();
        }
    });

    /* renamed from: androidx.activity.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/b$a.class */
    public static final class C0048a {

        /* renamed from: a */
        Object f107a;

        /* renamed from: b */
        C0926x f108b;

        C0048a() {
        }
    }

    public ActivityC0046b() {
        if (getLifecycle() != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                getLifecycle().mo5108a(new AbstractC0901i() { // from class: androidx.activity.ComponentActivity$2
                    @Override // androidx.lifecycle.AbstractC0901i
                    /* renamed from: a */
                    public void mo4389a(AbstractC0903k abstractC0903k, AbstractC0896g.EnumC0897a enumC0897a) {
                        if (enumC0897a == AbstractC0896g.EnumC0897a.ON_STOP) {
                            Window window = ActivityC0046b.this.getWindow();
                            View peekDecorView = window != null ? window.peekDecorView() : null;
                            if (peekDecorView == null) {
                                return;
                            }
                            peekDecorView.cancelPendingInputEvents();
                        }
                    }
                });
            }
            getLifecycle().mo5108a(new AbstractC0901i() { // from class: androidx.activity.ComponentActivity$3
                @Override // androidx.lifecycle.AbstractC0901i
                /* renamed from: a */
                public void mo4389a(AbstractC0903k abstractC0903k, AbstractC0896g.EnumC0897a enumC0897a) {
                    if (enumC0897a != AbstractC0896g.EnumC0897a.ON_DESTROY || ActivityC0046b.this.isChangingConfigurations()) {
                        return;
                    }
                    ActivityC0046b.this.getViewModelStore().m5050a();
                }
            });
            if (19 > Build.VERSION.SDK_INT || Build.VERSION.SDK_INT > 23) {
                return;
            }
            getLifecycle().mo5108a(new ImmLeaksCleaner(this));
            return;
        }
        throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
    }

    @Override // androidx.activity.AbstractC0050d
    /* renamed from: b */
    public final OnBackPressedDispatcher mo5664b() {
        return this.f104d;
    }

    @Override // androidx.core.app.ActivityC0438d, androidx.lifecycle.AbstractC0903k
    public AbstractC0896g getLifecycle() {
        return this.f101a;
    }

    @Override // androidx.savedstate.AbstractC1082c
    public final C1078a getSavedStateRegistry() {
        return this.f102b.m4383a();
    }

    @Override // androidx.lifecycle.AbstractC0927y
    public C0926x getViewModelStore() {
        if (getApplication() != null) {
            if (this.f103c == null) {
                C0048a c0048a = (C0048a) getLastNonConfigurationInstance();
                if (c0048a != null) {
                    this.f103c = c0048a.f108b;
                }
                if (this.f103c == null) {
                    this.f103c = new C0926x();
                }
            }
            return this.f103c;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }

    @Deprecated
    /* renamed from: i_ */
    public Object m7992i_() {
        return null;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f104d.m7997a();
    }

    @Override // androidx.core.app.ActivityC0438d, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f102b.m4382a(bundle);
        FragmentC0917t.m5074a(this);
        int i = this.f105e;
        if (i != 0) {
            setContentView(i);
        }
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        Object m7992i_ = m7992i_();
        C0926x c0926x = this.f103c;
        C0926x c0926x2 = c0926x;
        if (c0926x == null) {
            C0048a c0048a = (C0048a) getLastNonConfigurationInstance();
            c0926x2 = c0926x;
            if (c0048a != null) {
                c0926x2 = c0048a.f108b;
            }
        }
        if (c0926x2 == null && m7992i_ == null) {
            return null;
        }
        C0048a c0048a2 = new C0048a();
        c0048a2.f107a = m7992i_;
        c0048a2.f108b = c0926x2;
        return c0048a2;
    }

    @Override // androidx.core.app.ActivityC0438d, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        AbstractC0896g lifecycle = getLifecycle();
        if (lifecycle instanceof C0904l) {
            ((C0904l) lifecycle).m5104b(AbstractC0896g.EnumC0898b.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.f102b.m4380b(bundle);
    }
}
