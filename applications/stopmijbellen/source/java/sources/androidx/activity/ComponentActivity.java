package androidx.activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.activity.result.AbstractC0112b;
import androidx.activity.result.AbstractC0114d;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.C0115e;
import androidx.lifecycle.AbstractC0514d0;
import androidx.lifecycle.AbstractC0516f;
import androidx.lifecycle.AbstractC0522h;
import androidx.lifecycle.AbstractC0524j;
import androidx.lifecycle.C0512c0;
import androidx.lifecycle.C0525k;
import androidx.lifecycle.FragmentC0538t;
import androidx.savedstate.AbstractC0661c;
import androidx.savedstate.C0657a;
import androidx.savedstate.C0660b;
import java.util.ArrayList;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import p025c.AbstractC0773b;
import p025c.C0772a;
import p026c0.ActivityC0787g;
import p026c0.C0774a;
import p026c0.C0779c;
import p065d.AbstractC2130a;
import p142k1.C3319a;
/* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity.class */
public class ComponentActivity extends ActivityC0787g implements AbstractC0514d0, AbstractC0661c, AbstractC0104c, AbstractC0114d {

    /* renamed from: c */
    public final C0525k f206c;

    /* renamed from: d */
    public final C0660b f207d;

    /* renamed from: e */
    public C0512c0 f208e;

    /* renamed from: b */
    public final C0772a f205b = new C0772a();

    /* renamed from: f */
    public final OnBackPressedDispatcher f209f = new OnBackPressedDispatcher(new RunnableC0094a());

    /* renamed from: g */
    public final ActivityResultRegistry f210g = new C0095b();

    /* renamed from: androidx.activity.ComponentActivity$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$a.class */
    public class RunnableC0094a implements Runnable {
        public RunnableC0094a() {
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

    /* renamed from: androidx.activity.ComponentActivity$b */
    /* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$b.class */
    public class C0095b extends ActivityResultRegistry {

        /* renamed from: androidx.activity.ComponentActivity$b$a */
        /* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$b$a.class */
        public class RunnableC0096a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ int f216a;

            /* renamed from: b */
            public final /* synthetic */ AbstractC2130a.C2131a f217b;

            public RunnableC0096a(int i, AbstractC2130a.C2131a c2131a) {
                C0095b.this = r4;
                this.f216a = i;
                this.f217b = c2131a;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC0112b<?> abstractC0112b;
                C0095b c0095b = C0095b.this;
                int i = this.f216a;
                Object obj = this.f217b.f7831a;
                String str = c0095b.f241b.get(Integer.valueOf(i));
                if (str == null) {
                    return;
                }
                c0095b.f244e.remove(str);
                ActivityResultRegistry.C0108c<?> c0108c = c0095b.f245f.get(str);
                if (c0108c != null && (abstractC0112b = c0108c.f260a) != null) {
                    abstractC0112b.mo151b(obj);
                    return;
                }
                c0095b.f247h.remove(str);
                c0095b.f246g.put(str, obj);
            }
        }

        /* renamed from: androidx.activity.ComponentActivity$b$b */
        /* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$b$b.class */
        public class RunnableC0097b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ int f219a;

            /* renamed from: b */
            public final /* synthetic */ IntentSender.SendIntentException f220b;

            public RunnableC0097b(int i, IntentSender.SendIntentException sendIntentException) {
                C0095b.this = r4;
                this.f219a = i;
                this.f220b = sendIntentException;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0095b.this.m8738a(this.f219a, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", this.f220b));
            }
        }

        public C0095b() {
            ComponentActivity.this = r4;
        }

        @Override // androidx.activity.result.ActivityResultRegistry
        /* renamed from: b */
        public <I, O> void mo8737b(int i, AbstractC2130a<I, O> abstractC2130a, I i2, C0779c c0779c) {
            ComponentActivity componentActivity = ComponentActivity.this;
            AbstractC2130a.C2131a<O> mo3849b = abstractC2130a.mo3849b(componentActivity, i2);
            if (mo3849b != null) {
                new Handler(Looper.getMainLooper()).post(new RunnableC0096a(i, mo3849b));
                return;
            }
            Intent mo3848a = abstractC2130a.mo3848a(componentActivity, i2);
            Bundle bundle = null;
            if (mo3848a.getExtras() != null && mo3848a.getExtras().getClassLoader() == null) {
                mo3848a.setExtrasClassLoader(componentActivity.getClassLoader());
            }
            if (mo3848a.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
                bundle = mo3848a.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                mo3848a.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            }
            if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(mo3848a.getAction())) {
                String[] stringArrayExtra = mo3848a.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                String[] strArr = stringArrayExtra;
                if (stringArrayExtra == null) {
                    strArr = new String[0];
                }
                C0774a.m7383c(componentActivity, strArr, i);
            } else if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(mo3848a.getAction())) {
                int i3 = C0774a.f2893b;
                componentActivity.startActivityForResult(mo3848a, i, bundle);
            } else {
                C0115e c0115e = (C0115e) mo3848a.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
                try {
                    IntentSender intentSender = c0115e.f266a;
                    Intent intent = c0115e.f267b;
                    int i4 = c0115e.f268c;
                    int i5 = c0115e.f269d;
                    int i6 = C0774a.f2893b;
                    componentActivity.startIntentSenderForResult(intentSender, i, intent, i4, i5, 0, bundle);
                } catch (IntentSender.SendIntentException e) {
                    new Handler(Looper.getMainLooper()).post(new RunnableC0097b(i, e));
                }
            }
        }
    }

    /* renamed from: androidx.activity.ComponentActivity$c */
    /* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$c.class */
    public class C0098c implements C0657a.AbstractC0659b {
        public C0098c() {
            ComponentActivity.this = r4;
        }

        @Override // androidx.savedstate.C0657a.AbstractC0659b
        @SuppressLint({"SyntheticAccessor"})
        /* renamed from: a */
        public Bundle mo3371a() {
            Bundle bundle = new Bundle();
            ActivityResultRegistry activityResultRegistry = ComponentActivity.this.f210g;
            Objects.requireNonNull(activityResultRegistry);
            bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(activityResultRegistry.f242c.values()));
            bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(activityResultRegistry.f242c.keySet()));
            bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(activityResultRegistry.f244e));
            bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) activityResultRegistry.f247h.clone());
            bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", activityResultRegistry.f240a);
            return bundle;
        }
    }

    /* renamed from: androidx.activity.ComponentActivity$d */
    /* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$d.class */
    public class C0099d implements AbstractC0773b {
        public C0099d() {
            ComponentActivity.this = r4;
        }

        @Override // p025c.AbstractC0773b
        @SuppressLint({"SyntheticAccessor"})
        /* renamed from: a */
        public void mo3370a(Context context) {
            Bundle m7515a = ComponentActivity.this.f207d.f2565b.m7515a("android:support:activity-result");
            if (m7515a != null) {
                ActivityResultRegistry activityResultRegistry = ComponentActivity.this.f210g;
                Objects.requireNonNull(activityResultRegistry);
                ArrayList<Integer> integerArrayList = m7515a.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
                ArrayList<String> stringArrayList = m7515a.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
                if (stringArrayList == null || integerArrayList == null) {
                    return;
                }
                activityResultRegistry.f244e = m7515a.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                activityResultRegistry.f240a = (Random) m7515a.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
                activityResultRegistry.f247h.putAll(m7515a.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
                for (int i = 0; i < stringArrayList.size(); i++) {
                    String str = stringArrayList.get(i);
                    if (activityResultRegistry.f242c.containsKey(str)) {
                        Integer remove = activityResultRegistry.f242c.remove(str);
                        if (!activityResultRegistry.f247h.containsKey(str)) {
                            activityResultRegistry.f241b.remove(remove);
                        }
                    }
                    int intValue = integerArrayList.get(i).intValue();
                    String str2 = stringArrayList.get(i);
                    activityResultRegistry.f241b.put(Integer.valueOf(intValue), str2);
                    activityResultRegistry.f242c.put(str2, Integer.valueOf(intValue));
                }
            }
        }
    }

    /* renamed from: androidx.activity.ComponentActivity$e */
    /* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$e.class */
    public static final class C0100e {

        /* renamed from: a */
        public C0512c0 f224a;
    }

    public ComponentActivity() {
        C0525k c0525k = new C0525k(this);
        this.f206c = c0525k;
        C0660b c0660b = new C0660b(this);
        this.f207d = c0660b;
        new AtomicInteger();
        int i = Build.VERSION.SDK_INT;
        c0525k.mo7992a(new AbstractC0522h() { // from class: androidx.activity.ComponentActivity.3
            @Override // androidx.lifecycle.AbstractC0522h
            /* renamed from: d */
            public void mo7489d(AbstractC0524j abstractC0524j, AbstractC0516f.EnumC0518b enumC0518b) {
                if (enumC0518b == AbstractC0516f.EnumC0518b.ON_STOP) {
                    Window window = ComponentActivity.this.getWindow();
                    View peekDecorView = window != null ? window.peekDecorView() : null;
                    if (peekDecorView == null) {
                        return;
                    }
                    peekDecorView.cancelPendingInputEvents();
                }
            }
        });
        c0525k.mo7992a(new AbstractC0522h() { // from class: androidx.activity.ComponentActivity.4
            @Override // androidx.lifecycle.AbstractC0522h
            /* renamed from: d */
            public void mo7489d(AbstractC0524j abstractC0524j, AbstractC0516f.EnumC0518b enumC0518b) {
                if (enumC0518b == AbstractC0516f.EnumC0518b.ON_DESTROY) {
                    ComponentActivity.this.f205b.f2892b = null;
                    if (ComponentActivity.this.isChangingConfigurations()) {
                        return;
                    }
                    ComponentActivity.this.getViewModelStore().m8002a();
                }
            }
        });
        c0525k.mo7992a(new AbstractC0522h() { // from class: androidx.activity.ComponentActivity.5
            @Override // androidx.lifecycle.AbstractC0522h
            /* renamed from: d */
            public void mo7489d(AbstractC0524j abstractC0524j, AbstractC0516f.EnumC0518b enumC0518b) {
                ComponentActivity.this.m8742m();
                C0525k c0525k2 = ComponentActivity.this.f206c;
                c0525k2.m7989d("removeObserver");
                c0525k2.f2037a.mo1887e(this);
            }
        });
        if (i <= 23) {
            c0525k.mo7992a(new ImmLeaksCleaner(this));
        }
        c0660b.f2565b.m7514b("android:support:activity-result", new C0098c());
        m8743l(new C0099d());
    }

    @Override // android.app.Activity
    public void addContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view, @SuppressLint({"UnknownNullness", "MissingNullability"}) ViewGroup.LayoutParams layoutParams) {
        m8741n();
        super.addContentView(view, layoutParams);
    }

    @Override // androidx.activity.AbstractC0104c
    /* renamed from: b */
    public final OnBackPressedDispatcher mo8091b() {
        return this.f209f;
    }

    @Override // p026c0.ActivityC0787g, androidx.lifecycle.AbstractC0524j
    public AbstractC0516f getLifecycle() {
        return this.f206c;
    }

    @Override // androidx.savedstate.AbstractC0661c
    public final C0657a getSavedStateRegistry() {
        return this.f207d.f2565b;
    }

    @Override // androidx.lifecycle.AbstractC0514d0
    public C0512c0 getViewModelStore() {
        if (getApplication() != null) {
            m8742m();
            return this.f208e;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }

    @Override // androidx.activity.result.AbstractC0114d
    /* renamed from: i */
    public final ActivityResultRegistry mo8090i() {
        return this.f210g;
    }

    /* renamed from: l */
    public final void m8743l(AbstractC0773b abstractC0773b) {
        C0772a c0772a = this.f205b;
        if (c0772a.f2892b != null) {
            abstractC0773b.mo3370a(c0772a.f2892b);
        }
        c0772a.f2891a.add(abstractC0773b);
    }

    /* renamed from: m */
    public void m8742m() {
        if (this.f208e == null) {
            C0100e c0100e = (C0100e) getLastNonConfigurationInstance();
            if (c0100e != null) {
                this.f208e = c0100e.f224a;
            }
            if (this.f208e != null) {
                return;
            }
            this.f208e = new C0512c0();
        }
    }

    /* renamed from: n */
    public final void m8741n() {
        getWindow().getDecorView().setTag(2131297208, this);
        getWindow().getDecorView().setTag(2131297210, this);
        getWindow().getDecorView().setTag(2131297209, this);
    }

    @Override // android.app.Activity
    @Deprecated
    public void onActivityResult(int i, int i2, Intent intent) {
        if (!this.f210g.m8738a(i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f209f.m8739b();
    }

    @Override // p026c0.ActivityC0787g, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f207d.m7511a(bundle);
        C0772a c0772a = this.f205b;
        c0772a.f2892b = this;
        for (AbstractC0773b abstractC0773b : c0772a.f2891a) {
            abstractC0773b.mo3370a(this);
        }
        super.onCreate(bundle);
        FragmentC0538t.m7975c(this);
    }

    @Override // android.app.Activity
    @Deprecated
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (this.f210g.m8738a(i, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr)) || Build.VERSION.SDK_INT < 23) {
            return;
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        C0512c0 c0512c0 = this.f208e;
        C0512c0 c0512c02 = c0512c0;
        if (c0512c0 == null) {
            C0100e c0100e = (C0100e) getLastNonConfigurationInstance();
            c0512c02 = c0512c0;
            if (c0100e != null) {
                c0512c02 = c0100e.f224a;
            }
        }
        if (c0512c02 == null) {
            return null;
        }
        C0100e c0100e2 = new C0100e();
        c0100e2.f224a = c0512c02;
        return c0100e2;
    }

    @Override // p026c0.ActivityC0787g, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        C0525k c0525k = this.f206c;
        if (c0525k instanceof C0525k) {
            AbstractC0516f.EnumC0519c enumC0519c = AbstractC0516f.EnumC0519c.CREATED;
            c0525k.m7989d("setCurrentState");
            c0525k.m7986g(enumC0519c);
        }
        super.onSaveInstanceState(bundle);
        this.f207d.m7510b(bundle);
    }

    @Override // android.app.Activity
    public void reportFullyDrawn() {
        try {
            if (C3319a.m2386a()) {
                Trace.beginSection("reportFullyDrawn() for " + getComponentName());
            }
            super.reportFullyDrawn();
        } finally {
            Trace.endSection();
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        m8741n();
        super.setContentView(i);
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view) {
        m8741n();
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view, @SuppressLint({"UnknownNullness", "MissingNullability"}) ViewGroup.LayoutParams layoutParams) {
        m8741n();
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
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }
}
