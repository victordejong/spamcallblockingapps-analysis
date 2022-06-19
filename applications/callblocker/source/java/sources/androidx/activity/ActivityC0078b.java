package androidx.activity;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.core.app.ActivityC0469e;
import androidx.lifecycle.AbstractC0864e;
import androidx.lifecycle.AbstractC0867f;
import androidx.lifecycle.AbstractC0869h;
import androidx.lifecycle.AbstractC0889v;
import androidx.lifecycle.C0870i;
import androidx.lifecycle.C0888u;
import androidx.lifecycle.FragmentC0880q;
import androidx.savedstate.AbstractC1063c;
import androidx.savedstate.C1059a;
import androidx.savedstate.C1062b;
/* renamed from: androidx.activity.b */
/* loaded from: classes-dex2jar.jar:androidx/activity/b.class */
public class ActivityC0078b extends ActivityC0469e implements AbstractC0082d, AbstractC0869h, AbstractC0889v, AbstractC1063c {

    /* renamed from: c */
    private C0888u f193c;

    /* renamed from: e */
    private int f195e;

    /* renamed from: a */
    private final C0870i f191a = new C0870i(this);

    /* renamed from: b */
    private final C1062b f192b = C1062b.m18227a(this);

    /* renamed from: d */
    private final OnBackPressedDispatcher f194d = new OnBackPressedDispatcher(new Runnable() { // from class: androidx.activity.b.1
        @Override // java.lang.Runnable
        public void run() {
            ActivityC0078b.super.onBackPressed();
        }
    });

    /* renamed from: androidx.activity.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/b$a.class */
    public static final class C0080a {

        /* renamed from: a */
        Object f197a;

        /* renamed from: b */
        C0888u f198b;

        C0080a() {
        }
    }

    public ActivityC0078b() {
        if (mo19203b() == null) {
            throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
        }
        if (Build.VERSION.SDK_INT >= 19) {
            mo19203b().mo19219a(new AbstractC0867f() { // from class: androidx.activity.ComponentActivity$2
                @Override // androidx.lifecycle.AbstractC0867f
                /* renamed from: a */
                public void mo17991a(AbstractC0869h abstractC0869h, AbstractC0864e.EnumC0865a enumC0865a) {
                    if (enumC0865a == AbstractC0864e.EnumC0865a.ON_STOP) {
                        Window window = ActivityC0078b.this.getWindow();
                        View peekDecorView = window != null ? window.peekDecorView() : null;
                        if (peekDecorView == null) {
                            return;
                        }
                        peekDecorView.cancelPendingInputEvents();
                    }
                }
            });
        }
        mo19203b().mo19219a(new AbstractC0867f() { // from class: androidx.activity.ComponentActivity$3
            @Override // androidx.lifecycle.AbstractC0867f
            /* renamed from: a */
            public void mo17991a(AbstractC0869h abstractC0869h, AbstractC0864e.EnumC0865a enumC0865a) {
                if (enumC0865a != AbstractC0864e.EnumC0865a.ON_DESTROY || ActivityC0078b.this.isChangingConfigurations()) {
                    return;
                }
                ActivityC0078b.this.mo19167c().m19170a();
            }
        });
        if (19 > Build.VERSION.SDK_INT || Build.VERSION.SDK_INT > 23) {
            return;
        }
        mo19203b().mo19219a(new ImmLeaksCleaner(this));
    }

    @Deprecated
    /* renamed from: C_ */
    public Object m22285C_() {
        return null;
    }

    @Override // androidx.core.app.ActivityC0469e, androidx.lifecycle.AbstractC0869h
    /* renamed from: b */
    public AbstractC0864e mo19203b() {
        return this.f191a;
    }

    @Override // androidx.lifecycle.AbstractC0889v
    /* renamed from: c */
    public C0888u mo19167c() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this.f193c == null) {
            C0080a c0080a = (C0080a) getLastNonConfigurationInstance();
            if (c0080a != null) {
                this.f193c = c0080a.f198b;
            }
            if (this.f193c == null) {
                this.f193c = new C0888u();
            }
        }
        return this.f193c;
    }

    @Override // androidx.activity.AbstractC0082d
    /* renamed from: d */
    public final OnBackPressedDispatcher mo19872d() {
        return this.f194d;
    }

    @Override // androidx.savedstate.AbstractC1063c
    /* renamed from: e */
    public final C1059a mo18225e() {
        return this.f192b.m18229a();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f194d.m22289a();
    }

    @Override // androidx.core.app.ActivityC0469e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f192b.m18228a(bundle);
        FragmentC0880q.m19191a(this);
        if (this.f195e != 0) {
            setContentView(this.f195e);
        }
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        C0080a c0080a;
        Object m22285C_ = m22285C_();
        C0888u c0888u = this.f193c;
        C0888u c0888u2 = c0888u;
        if (c0888u == null) {
            C0080a c0080a2 = (C0080a) getLastNonConfigurationInstance();
            c0888u2 = c0888u;
            if (c0080a2 != null) {
                c0888u2 = c0080a2.f198b;
            }
        }
        if (c0888u2 == null && m22285C_ == null) {
            c0080a = null;
        } else {
            C0080a c0080a3 = new C0080a();
            c0080a3.f197a = m22285C_;
            c0080a3.f198b = c0888u2;
            c0080a = c0080a3;
        }
        return c0080a;
    }

    @Override // androidx.core.app.ActivityC0469e, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        AbstractC0864e mo19203b = mo19203b();
        if (mo19203b instanceof C0870i) {
            ((C0870i) mo19203b).m19215b(AbstractC0864e.EnumC0866b.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.f192b.m18226b(bundle);
    }
}
