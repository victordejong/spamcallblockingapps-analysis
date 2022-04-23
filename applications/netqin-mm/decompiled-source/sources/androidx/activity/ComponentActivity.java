package androidx.activity;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.lifecycle.Lifecycle;
import androidx.savedstate.SavedStateRegistry;
import p012b.p013a.AbstractC0572c;
import p012b.p068o.AbstractC1107e;
import p012b.p068o.AbstractC1109g;
import p012b.p068o.AbstractC1126s;
import p012b.p068o.C1110h;
import p012b.p068o.C1125r;
import p012b.p068o.FragmentC1119o;
import p012b.p124w.AbstractC1947b;
import p012b.p124w.C1946a;
/* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity.class */
public class ComponentActivity extends androidx.core.app.ComponentActivity implements AbstractC1109g, AbstractC1126s, AbstractC1947b, AbstractC0572c {

    /* renamed from: d */
    public C1125r f135d;

    /* renamed from: f */
    public int f137f;

    /* renamed from: b */
    public final C1110h f133b = new C1110h(this);

    /* renamed from: c */
    public final C1946a f134c = C1946a.m31508a(this);

    /* renamed from: e */
    public final OnBackPressedDispatcher f136e = new OnBackPressedDispatcher(new RunnableC0066a());

    /* renamed from: androidx.activity.ComponentActivity$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$a.class */
    public class RunnableC0066a implements Runnable {
        public RunnableC0066a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ComponentActivity.super.onBackPressed();
        }
    }

    /* renamed from: androidx.activity.ComponentActivity$b */
    /* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$b.class */
    public static final class C0067b {

        /* renamed from: a */
        public Object f141a;

        /* renamed from: b */
        public C1125r f142b;
    }

    public ComponentActivity() {
        if (mo34644a() != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                mo34644a().mo34659a(new AbstractC1107e() { // from class: androidx.activity.ComponentActivity.2
                    @Override // p012b.p068o.AbstractC1107e
                    /* renamed from: a */
                    public void mo34664a(AbstractC1109g gVar, Lifecycle.Event event) {
                        if (event == Lifecycle.Event.ON_STOP) {
                            Window window = ComponentActivity.this.getWindow();
                            View peekDecorView = window != null ? window.peekDecorView() : null;
                            if (peekDecorView != null) {
                                peekDecorView.cancelPendingInputEvents();
                            }
                        }
                    }
                });
            }
            mo34644a().mo34659a(new AbstractC1107e() { // from class: androidx.activity.ComponentActivity.3
                @Override // p012b.p068o.AbstractC1107e
                /* renamed from: a */
                public void mo34664a(AbstractC1109g gVar, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_DESTROY && !ComponentActivity.this.isChangingConfigurations()) {
                        ComponentActivity.this.mo34622d().m34625a();
                    }
                }
            });
            int i = Build.VERSION.SDK_INT;
            if (19 <= i && i <= 23) {
                mo34644a().mo34659a(new ImmLeaksCleaner(this));
                return;
            }
            return;
        }
        throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
    }

    @Override // androidx.core.app.ComponentActivity, p012b.p068o.AbstractC1109g
    /* renamed from: a */
    public Lifecycle mo34644a() {
        return this.f133b;
    }

    @Override // p012b.p013a.AbstractC0572c
    /* renamed from: b */
    public final OnBackPressedDispatcher mo36901b() {
        return this.f136e;
    }

    @Override // p012b.p068o.AbstractC1126s
    /* renamed from: d */
    public C1125r mo34622d() {
        if (getApplication() != null) {
            if (this.f135d == null) {
                C0067b bVar = (C0067b) getLastNonConfigurationInstance();
                if (bVar != null) {
                    this.f135d = bVar.f142b;
                }
                if (this.f135d == null) {
                    this.f135d = new C1125r();
                }
            }
            return this.f135d;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }

    @Override // p012b.p124w.AbstractC1947b
    /* renamed from: e */
    public final SavedStateRegistry mo31506e() {
        return this.f134c.m31510a();
    }

    @Deprecated
    /* renamed from: f */
    public Object m39227f() {
        return null;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f136e.m39225a();
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f134c.m31509a(bundle);
        FragmentC1119o.m34635a(this);
        int i = this.f137f;
        if (i != 0) {
            setContentView(i);
        }
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        Object f = m39227f();
        C1125r rVar = this.f135d;
        C1125r rVar2 = rVar;
        if (rVar == null) {
            C0067b bVar = (C0067b) getLastNonConfigurationInstance();
            rVar2 = rVar;
            if (bVar != null) {
                rVar2 = bVar.f142b;
            }
        }
        if (rVar2 == null && f == null) {
            return null;
        }
        C0067b bVar2 = new C0067b();
        bVar2.f141a = f;
        bVar2.f142b = rVar2;
        return bVar2;
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        Lifecycle a = mo34644a();
        if (a instanceof C1110h) {
            ((C1110h) a).m34648d(Lifecycle.State.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.f134c.m31507b(bundle);
    }
}
