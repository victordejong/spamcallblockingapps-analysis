package androidx.activity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.activity.p005d.AbstractC0090b;
import androidx.activity.p005d.C0089a;
import androidx.activity.result.AbstractC0096c;
import androidx.activity.result.AbstractC0100d;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.p006e.AbstractC0101a;
import androidx.core.app.C0548a;
import androidx.core.app.C0554b;
import androidx.core.content.C0586a;
import androidx.lifecycle.AbstractC0795f;
import androidx.lifecycle.AbstractC0797h;
import androidx.lifecycle.AbstractC0819u;
import androidx.lifecycle.C0798i;
import androidx.lifecycle.C0818t;
import androidx.lifecycle.C0820v;
import androidx.lifecycle.C0821w;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ReportFragment;
import androidx.savedstate.AbstractC1047c;
import androidx.savedstate.C1046b;
import androidx.savedstate.C1048d;
import androidx.savedstate.SavedStateRegistry;
import java.util.concurrent.atomic.AtomicInteger;
import p020b.p073s.C1790a;
/* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity.class */
public class ComponentActivity extends androidx.core.app.ComponentActivity implements AbstractC0797h, AbstractC0819u, AbstractC1047c, AbstractC0088c, AbstractC0100d {

    /* renamed from: i */
    private C0818t f142i;

    /* renamed from: k */
    private int f144k;

    /* renamed from: f */
    final C0089a f139f = new C0089a();

    /* renamed from: g */
    private final C0798i f140g = new C0798i(this);

    /* renamed from: h */
    final C1046b f141h = C1046b.m31184a(this);

    /* renamed from: j */
    private final OnBackPressedDispatcher f143j = new OnBackPressedDispatcher(new RunnableC0080a());

    /* renamed from: l */
    private final AtomicInteger f145l = new AtomicInteger();

    /* renamed from: m */
    private final AbstractC0096c f146m = new C0081b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.activity.ComponentActivity$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$a.class */
    public class RunnableC0080a implements Runnable {
        RunnableC0080a() {
            ComponentActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ComponentActivity.super.onBackPressed();
            } catch (IllegalStateException e) {
                if (!TextUtils.equals(e.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                    throw e;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.activity.ComponentActivity$b */
    /* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$b.class */
    public class C0081b extends AbstractC0096c {

        /* renamed from: androidx.activity.ComponentActivity$b$a */
        /* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$b$a.class */
        class RunnableC0082a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ int f152d;

            /* renamed from: e */
            final /* synthetic */ AbstractC0101a.C0102a f153e;

            RunnableC0082a(int i, AbstractC0101a.C0102a c0102a) {
                C0081b.this = r4;
                this.f152d = i;
                this.f153e = c0102a;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0081b.this.m35731c(this.f152d, this.f153e.m35719a());
            }
        }

        /* renamed from: androidx.activity.ComponentActivity$b$b */
        /* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$b$b.class */
        class RunnableC0083b implements Runnable {

            /* renamed from: d */
            final /* synthetic */ int f155d;

            /* renamed from: e */
            final /* synthetic */ IntentSender.SendIntentException f156e;

            RunnableC0083b(int i, IntentSender.SendIntentException sendIntentException) {
                C0081b.this = r4;
                this.f155d = i;
                this.f156e = sendIntentException;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0081b.this.m35732b(this.f155d, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", this.f156e));
            }
        }

        C0081b() {
            ComponentActivity.this = r4;
        }

        @Override // androidx.activity.result.AbstractC0096c
        /* renamed from: f */
        public <I, O> void mo35728f(int i, AbstractC0101a<I, O> abstractC0101a, I i2, C0554b c0554b) {
            Bundle bundle;
            ComponentActivity componentActivity = ComponentActivity.this;
            AbstractC0101a.C0102a<O> mo35718b = abstractC0101a.mo35718b(componentActivity, i2);
            if (mo35718b != null) {
                new Handler(Looper.getMainLooper()).post(new RunnableC0082a(i, mo35718b));
                return;
            }
            Intent mo32732a = abstractC0101a.mo32732a(componentActivity, i2);
            if (mo32732a.getExtras() != null && mo32732a.getExtras().getClassLoader() == null) {
                mo32732a.setExtrasClassLoader(componentActivity.getClassLoader());
            }
            if (mo32732a.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
                bundle = mo32732a.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                mo32732a.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            } else if (c0554b != null) {
                throw null;
            } else {
                bundle = null;
            }
            if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(mo32732a.getAction())) {
                String[] stringArrayExtra = mo32732a.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                String[] strArr = stringArrayExtra;
                if (stringArrayExtra == null) {
                    strArr = new String[0];
                }
                C0548a.m33476o(componentActivity, strArr, i);
            } else if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(mo32732a.getAction())) {
                C0548a.m33475p(componentActivity, mo32732a, i, bundle);
            } else {
                IntentSenderRequest intentSenderRequest = (IntentSenderRequest) mo32732a.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
                try {
                    C0548a.m33474q(componentActivity, intentSenderRequest.m35740d(), i, intentSenderRequest.m35743a(), intentSenderRequest.m35742b(), intentSenderRequest.m35741c(), 0, bundle);
                } catch (IntentSender.SendIntentException e) {
                    new Handler(Looper.getMainLooper()).post(new RunnableC0083b(i, e));
                }
            }
        }
    }

    /* renamed from: androidx.activity.ComponentActivity$c */
    /* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$c.class */
    public static final class C0084c {

        /* renamed from: a */
        Object f158a;

        /* renamed from: b */
        C0818t f159b;

        C0084c() {
        }
    }

    public ComponentActivity() {
        if (mo32372a() != null) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 19) {
                mo32372a().mo32398a(new AbstractC0795f() { // from class: androidx.activity.ComponentActivity.3
                    @Override // androidx.lifecycle.AbstractC0795f
                    /* renamed from: c */
                    public void mo30701c(AbstractC0797h abstractC0797h, Lifecycle.Event event) {
                        if (event == Lifecycle.Event.ON_STOP) {
                            Window window = ComponentActivity.this.getWindow();
                            View peekDecorView = window != null ? window.peekDecorView() : null;
                            if (peekDecorView == null) {
                                return;
                            }
                            peekDecorView.cancelPendingInputEvents();
                        }
                    }
                });
            }
            mo32372a().mo32398a(new AbstractC0795f() { // from class: androidx.activity.ComponentActivity.4
                @Override // androidx.lifecycle.AbstractC0795f
                /* renamed from: c */
                public void mo30701c(AbstractC0797h abstractC0797h, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_DESTROY) {
                        ComponentActivity.this.f139f.m35750b();
                        if (ComponentActivity.this.isChangingConfigurations()) {
                            return;
                        }
                        ComponentActivity.this.mo32344p().m32348a();
                    }
                }
            });
            mo32372a().mo32398a(new AbstractC0795f() { // from class: androidx.activity.ComponentActivity.5
                @Override // androidx.lifecycle.AbstractC0795f
                /* renamed from: c */
                public void mo30701c(AbstractC0797h abstractC0797h, Lifecycle.Event event) {
                    ComponentActivity.this.m35763w();
                    ComponentActivity.this.mo32372a().mo32396c(this);
                }
            });
            if (19 > i || i > 23) {
                return;
            }
            mo32372a().mo32398a(new ImmLeaksCleaner(this));
            return;
        }
        throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
    }

    /* renamed from: x */
    private void m35762x() {
        C0820v.m32343a(getWindow().getDecorView(), this);
        C0821w.m32342a(getWindow().getDecorView(), this);
        C1048d.m31179a(getWindow().getDecorView(), this);
    }

    @Override // androidx.core.app.ComponentActivity, androidx.lifecycle.AbstractC0797h
    /* renamed from: a */
    public Lifecycle mo32372a() {
        return this.f140g;
    }

    @Override // android.app.Activity
    public void addContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view, @SuppressLint({"UnknownNullness", "MissingNullability"}) ViewGroup.LayoutParams layoutParams) {
        m35762x();
        super.addContentView(view, layoutParams);
    }

    @Override // androidx.activity.AbstractC0088c
    /* renamed from: c */
    public final OnBackPressedDispatcher mo32865c() {
        return this.f143j;
    }

    @Override // androidx.activity.result.AbstractC0100d
    /* renamed from: j */
    public final AbstractC0096c mo32864j() {
        return this.f146m;
    }

    @Override // android.app.Activity
    @Deprecated
    public void onActivityResult(int i, int i2, Intent intent) {
        if (!this.f146m.m35732b(i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f143j.m35757c();
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f141h.m31182c(bundle);
        this.f139f.m35749c(this);
        super.onCreate(bundle);
        this.f146m.m35727g(bundle);
        ReportFragment.m32419g(this);
        int i = this.f144k;
        if (i != 0) {
            setContentView(i);
        }
    }

    @Override // android.app.Activity
    @Deprecated
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (this.f146m.m35732b(i, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr)) || Build.VERSION.SDK_INT < 23) {
            return;
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        Object m35761y = m35761y();
        C0818t c0818t = this.f142i;
        C0818t c0818t2 = c0818t;
        if (c0818t == null) {
            C0084c c0084c = (C0084c) getLastNonConfigurationInstance();
            c0818t2 = c0818t;
            if (c0084c != null) {
                c0818t2 = c0084c.f159b;
            }
        }
        if (c0818t2 == null && m35761y == null) {
            return null;
        }
        C0084c c0084c2 = new C0084c();
        c0084c2.f158a = m35761y;
        c0084c2.f159b = c0818t2;
        return c0084c2;
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        Lifecycle mo32372a = mo32372a();
        if (mo32372a instanceof C0798i) {
            ((C0798i) mo32372a).m32384o(Lifecycle.State.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.f141h.m31181d(bundle);
        this.f146m.m35726h(bundle);
    }

    @Override // androidx.lifecycle.AbstractC0819u
    /* renamed from: p */
    public C0818t mo32344p() {
        if (getApplication() != null) {
            m35763w();
            return this.f142i;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }

    @Override // androidx.savedstate.AbstractC1047c
    /* renamed from: r */
    public final SavedStateRegistry mo31180r() {
        return this.f141h.m31183b();
    }

    @Override // android.app.Activity
    public void reportFullyDrawn() {
        try {
            if (C1790a.m28891d()) {
                C1790a.m28894a("reportFullyDrawn() for " + getComponentName());
            }
            int i = Build.VERSION.SDK_INT;
            if (i > 19) {
                super.reportFullyDrawn();
            } else if (i == 19 && C0586a.m33353a(this, "android.permission.UPDATE_DEVICE_STATS") == 0) {
                super.reportFullyDrawn();
            }
        } finally {
            C1790a.m28893b();
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        m35762x();
        super.setContentView(i);
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view) {
        m35762x();
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view, @SuppressLint({"UnknownNullness", "MissingNullability"}) ViewGroup.LayoutParams layoutParams) {
        m35762x();
        super.setContentView(view, layoutParams);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    /* renamed from: v */
    public final void m35764v(AbstractC0090b abstractC0090b) {
        this.f139f.m35751a(abstractC0090b);
    }

    /* renamed from: w */
    void m35763w() {
        if (this.f142i == null) {
            C0084c c0084c = (C0084c) getLastNonConfigurationInstance();
            if (c0084c != null) {
                this.f142i = c0084c.f159b;
            }
            if (this.f142i != null) {
                return;
            }
            this.f142i = new C0818t();
        }
    }

    @Deprecated
    /* renamed from: y */
    public Object m35761y() {
        return null;
    }
}
