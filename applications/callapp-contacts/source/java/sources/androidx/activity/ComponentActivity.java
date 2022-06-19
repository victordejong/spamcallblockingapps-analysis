package androidx.activity;

import android.content.Context;
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
import androidx.activity.p015a.AbstractC0123b;
import androidx.activity.p015a.C0122a;
import androidx.activity.result.AbstractC0129a;
import androidx.activity.result.AbstractC0135b;
import androidx.activity.result.AbstractC0136c;
import androidx.activity.result.AbstractC0141d;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.p016a.AbstractC0130a;
import androidx.core.app.C0726a;
import androidx.core.app.C0734b;
import androidx.core.content.C0790b;
import androidx.lifecycle.AbstractC1239ad;
import androidx.lifecycle.AbstractC1252i;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1261n;
import androidx.lifecycle.AbstractC1263p;
import androidx.lifecycle.C1232ab;
import androidx.lifecycle.C1238ac;
import androidx.lifecycle.C1240ae;
import androidx.lifecycle.C1241af;
import androidx.lifecycle.C1283y;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ReportFragment;
import androidx.p056k.C1194a;
import androidx.savedstate.AbstractC2774d;
import androidx.savedstate.C2770b;
import androidx.savedstate.C2773c;
import androidx.savedstate.C2775e;
import java.util.ArrayList;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity.class */
public class ComponentActivity extends androidx.core.app.ComponentActivity implements AbstractC0125c, AbstractC0141d, AbstractC1239ad, AbstractC1252i, AbstractC1263p, AbstractC2774d {
    private final AbstractC0136c mActivityResultRegistry;
    private int mContentLayoutId;
    final C0122a mContextAwareHelper;
    private C1232ab.AbstractC1234b mDefaultFactory;
    private final LifecycleRegistry mLifecycleRegistry;
    private final AtomicInteger mNextLocalRequestCode;
    private final OnBackPressedDispatcher mOnBackPressedDispatcher;
    final C2773c mSavedStateRegistryController;
    private C1238ac mViewModelStore;

    /* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$NonConfigurationInstances.class */
    public static final class NonConfigurationInstances {
        Object custom;
        C1238ac viewModelStore;

        NonConfigurationInstances() {
        }
    }

    public ComponentActivity() {
        this.mContextAwareHelper = new C0122a();
        this.mLifecycleRegistry = new LifecycleRegistry(this);
        this.mSavedStateRegistryController = C2773c.m39929a(this);
        this.mOnBackPressedDispatcher = new OnBackPressedDispatcher(new Runnable() { // from class: androidx.activity.ComponentActivity.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    ComponentActivity.super.onBackPressed();
                } catch (IllegalStateException e) {
                    if (!TextUtils.equals(e.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                        throw e;
                    }
                }
            }
        });
        this.mNextLocalRequestCode = new AtomicInteger();
        this.mActivityResultRegistry = new AbstractC0136c() { // from class: androidx.activity.ComponentActivity.2
            @Override // androidx.activity.result.AbstractC0136c
            /* renamed from: a */
            public final <I, O> void mo46384a(final int i, AbstractC0130a<I, O> abstractC0130a, I i2, C0734b c0734b) {
                ComponentActivity componentActivity = ComponentActivity.this;
                final AbstractC0130a.C0131a<O> mo46387a = abstractC0130a.mo46387a((Context) componentActivity, (ComponentActivity) i2);
                if (mo46387a != null) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: androidx.activity.ComponentActivity.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            C01142 c01142 = C01142.this;
                            int i3 = i;
                            Object obj = mo46387a.f254a;
                            String str = c01142.f257c.get(Integer.valueOf(i3));
                            if (str != null) {
                                c01142.f258d.remove(str);
                                AbstractC0136c.C0139a<?> c0139a = c01142.f259e.get(str);
                                if (c0139a != null && c0139a.f271a != null) {
                                    c0139a.f271a.mo43667a(obj);
                                    return;
                                }
                                c01142.f261g.remove(str);
                                c01142.f260f.put(str, obj);
                            }
                        }
                    });
                    return;
                }
                Intent mo43665a = abstractC0130a.mo43665a(i2);
                Bundle bundle = null;
                if (mo43665a.getExtras() != null && mo43665a.getExtras().getClassLoader() == null) {
                    mo43665a.setExtrasClassLoader(componentActivity.getClassLoader());
                }
                if (mo43665a.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
                    bundle = mo43665a.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                    mo43665a.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                } else if (c0734b != null) {
                    bundle = c0734b.mo44605a();
                }
                if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(mo43665a.getAction())) {
                    String[] stringArrayExtra = mo43665a.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                    String[] strArr = stringArrayExtra;
                    if (stringArrayExtra == null) {
                        strArr = new String[0];
                    }
                    C0726a.m44613a(componentActivity, strArr, i);
                } else if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(mo43665a.getAction())) {
                    C0726a.m44617a(componentActivity, mo43665a, i, bundle);
                } else {
                    IntentSenderRequest intentSenderRequest = (IntentSenderRequest) mo43665a.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
                    try {
                        C0726a.m44616a(componentActivity, intentSenderRequest.getIntentSender(), i, intentSenderRequest.getFillInIntent(), intentSenderRequest.getFlagsMask(), intentSenderRequest.getFlagsValues(), 0, bundle);
                    } catch (IntentSender.SendIntentException e) {
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: androidx.activity.ComponentActivity.2.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                m46385a(i, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", e));
                            }
                        });
                    }
                }
            }
        };
        if (getLifecycle() != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                getLifecycle().addObserver(new AbstractC1261n() { // from class: androidx.activity.ComponentActivity.3
                    @Override // androidx.lifecycle.AbstractC1261n
                    /* renamed from: a */
                    public final void mo39588a(AbstractC1263p abstractC1263p, AbstractC1253j.EnumC1255a enumC1255a) {
                        if (enumC1255a == AbstractC1253j.EnumC1255a.ON_STOP) {
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
            getLifecycle().addObserver(new AbstractC1261n() { // from class: androidx.activity.ComponentActivity.4
                @Override // androidx.lifecycle.AbstractC1261n
                /* renamed from: a */
                public final void mo39588a(AbstractC1263p abstractC1263p, AbstractC1253j.EnumC1255a enumC1255a) {
                    if (enumC1255a == AbstractC1253j.EnumC1255a.ON_DESTROY) {
                        ComponentActivity.this.mContextAwareHelper.f243b = null;
                        if (ComponentActivity.this.isChangingConfigurations()) {
                            return;
                        }
                        ComponentActivity.this.getViewModelStore().m43306b();
                    }
                }
            });
            getLifecycle().addObserver(new AbstractC1261n() { // from class: androidx.activity.ComponentActivity.5
                @Override // androidx.lifecycle.AbstractC1261n
                /* renamed from: a */
                public final void mo39588a(AbstractC1263p abstractC1263p, AbstractC1253j.EnumC1255a enumC1255a) {
                    ComponentActivity.this.ensureViewModelStore();
                    ComponentActivity.this.getLifecycle().removeObserver(this);
                }
            });
            if (19 > Build.VERSION.SDK_INT || Build.VERSION.SDK_INT > 23) {
                return;
            }
            getLifecycle().addObserver(new ImmLeaksCleaner(this));
            return;
        }
        throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
    }

    public ComponentActivity(int i) {
        this();
        this.mContentLayoutId = i;
    }

    private void initViewTreeOwners() {
        C1240ae.m43305a(getWindow().getDecorView(), this);
        C1241af.m43304a(getWindow().getDecorView(), this);
        C2775e.m39927a(getWindow().getDecorView(), this);
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        super.addContentView(view, layoutParams);
    }

    public final void addOnContextAvailableListener(AbstractC0123b abstractC0123b) {
        C0122a c0122a = this.mContextAwareHelper;
        if (c0122a.f243b != null) {
            Context context = c0122a.f243b;
            abstractC0123b.mo43768a();
        }
        c0122a.f242a.add(abstractC0123b);
    }

    void ensureViewModelStore() {
        if (this.mViewModelStore == null) {
            NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance();
            if (nonConfigurationInstances != null) {
                this.mViewModelStore = nonConfigurationInstances.viewModelStore;
            }
            if (this.mViewModelStore != null) {
                return;
            }
            this.mViewModelStore = new C1238ac();
        }
    }

    @Override // androidx.activity.result.AbstractC0141d
    public final AbstractC0136c getActivityResultRegistry() {
        return this.mActivityResultRegistry;
    }

    @Override // androidx.lifecycle.AbstractC1252i
    public C1232ab.AbstractC1234b getDefaultViewModelProviderFactory() {
        if (getApplication() != null) {
            if (this.mDefaultFactory == null) {
                this.mDefaultFactory = new C1283y(getApplication(), this, getIntent() != null ? getIntent().getExtras() : null);
            }
            return this.mDefaultFactory;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }

    @Deprecated
    public Object getLastCustomNonConfigurationInstance() {
        NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance();
        if (nonConfigurationInstances != null) {
            return nonConfigurationInstances.custom;
        }
        return null;
    }

    @Override // androidx.core.app.ComponentActivity, androidx.lifecycle.AbstractC1263p
    public AbstractC1253j getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Override // androidx.activity.AbstractC0125c
    public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return this.mOnBackPressedDispatcher;
    }

    @Override // androidx.savedstate.AbstractC2774d
    public final C2770b getSavedStateRegistry() {
        return this.mSavedStateRegistryController.f10496a;
    }

    @Override // androidx.lifecycle.AbstractC1239ad
    public C1238ac getViewModelStore() {
        if (getApplication() != null) {
            ensureViewModelStore();
            return this.mViewModelStore;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }

    @Override // android.app.Activity
    @Deprecated
    public void onActivityResult(int i, int i2, Intent intent) {
        if (!this.mActivityResultRegistry.m46385a(i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.mOnBackPressedDispatcher.m46395a();
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.mSavedStateRegistryController.m39930a(bundle);
        C0122a c0122a = this.mContextAwareHelper;
        c0122a.f243b = this;
        for (AbstractC0123b abstractC0123b : c0122a.f242a) {
            abstractC0123b.mo43768a();
        }
        super.onCreate(bundle);
        AbstractC0136c abstractC0136c = this.mActivityResultRegistry;
        if (bundle != null) {
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
            ArrayList<String> stringArrayList = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
            if (stringArrayList != null && integerArrayList != null) {
                int size = stringArrayList.size();
                for (int i = 0; i < size; i++) {
                    abstractC0136c.m46383a(integerArrayList.get(i).intValue(), stringArrayList.get(i));
                }
                abstractC0136c.f258d = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                abstractC0136c.f256b = (Random) bundle.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
                abstractC0136c.f261g.putAll(bundle.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
            }
        }
        ReportFragment.m43325a(this);
        int i2 = this.mContentLayoutId;
        if (i2 != 0) {
            setContentView(i2);
        }
    }

    @Override // android.app.Activity
    @Deprecated
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (this.mActivityResultRegistry.m46385a(i, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr)) || Build.VERSION.SDK_INT < 23) {
            return;
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Deprecated
    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        Object onRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        C1238ac c1238ac = this.mViewModelStore;
        C1238ac c1238ac2 = c1238ac;
        if (c1238ac == null) {
            NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance();
            c1238ac2 = c1238ac;
            if (nonConfigurationInstances != null) {
                c1238ac2 = nonConfigurationInstances.viewModelStore;
            }
        }
        if (c1238ac2 == null && onRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        NonConfigurationInstances nonConfigurationInstances2 = new NonConfigurationInstances();
        nonConfigurationInstances2.custom = onRetainCustomNonConfigurationInstance;
        nonConfigurationInstances2.viewModelStore = c1238ac2;
        return nonConfigurationInstances2;
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        AbstractC1253j lifecycle = getLifecycle();
        if (lifecycle instanceof LifecycleRegistry) {
            ((LifecycleRegistry) lifecycle).setCurrentState(AbstractC1253j.EnumC1256b.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.m39928b(bundle);
        AbstractC0136c abstractC0136c = this.mActivityResultRegistry;
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(abstractC0136c.f257c.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(abstractC0136c.f257c.values()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(abstractC0136c.f258d));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) abstractC0136c.f261g.clone());
        bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", abstractC0136c.f256b);
    }

    public Context peekAvailableContext() {
        return this.mContextAwareHelper.f243b;
    }

    public final <I, O> AbstractC0135b<I> registerForActivityResult(AbstractC0130a<I, O> abstractC0130a, AbstractC0129a<O> abstractC0129a) {
        return registerForActivityResult(abstractC0130a, this.mActivityResultRegistry, abstractC0129a);
    }

    public final <I, O> AbstractC0135b<I> registerForActivityResult(AbstractC0130a<I, O> abstractC0130a, AbstractC0136c abstractC0136c, AbstractC0129a<O> abstractC0129a) {
        return abstractC0136c.m46379a("activity_rq#" + this.mNextLocalRequestCode.getAndIncrement(), this, abstractC0130a, abstractC0129a);
    }

    public final void removeOnContextAvailableListener(AbstractC0123b abstractC0123b) {
        this.mContextAwareHelper.f242a.remove(abstractC0123b);
    }

    @Override // android.app.Activity
    public void reportFullyDrawn() {
        try {
            if (C1194a.m43378a()) {
                C1194a.m43377a("reportFullyDrawn() for " + getComponentName());
            }
            if (Build.VERSION.SDK_INT > 19) {
                super.reportFullyDrawn();
            } else if (Build.VERSION.SDK_INT == 19 && C0790b.m44498a(this, "android.permission.UPDATE_DEVICE_STATS") == 0) {
                super.reportFullyDrawn();
            }
        } finally {
            C1194a.m43376b();
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        initViewTreeOwners();
        super.setContentView(i);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        initViewTreeOwners();
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        super.setContentView(view, layoutParams);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startActivityForResult(Intent intent, int i) {
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }
}
