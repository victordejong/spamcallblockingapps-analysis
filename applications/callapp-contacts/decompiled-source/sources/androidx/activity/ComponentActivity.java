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
import androidx.activity.a.a;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.a.a;
import androidx.activity.result.c;
import androidx.activity.result.d;
import androidx.core.app.b;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ReportFragment;
import androidx.lifecycle.ab;
import androidx.lifecycle.ac;
import androidx.lifecycle.ad;
import androidx.lifecycle.ae;
import androidx.lifecycle.af;
import androidx.lifecycle.i;
import androidx.lifecycle.j;
import androidx.lifecycle.n;
import androidx.lifecycle.p;
import androidx.lifecycle.y;
import androidx.savedstate.e;
import java.util.ArrayList;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity.class */
public class ComponentActivity extends androidx.core.app.ComponentActivity implements c, d, ad, i, p, androidx.savedstate.d {
    private final c mActivityResultRegistry;
    private int mContentLayoutId;
    final a mContextAwareHelper;
    private ab.b mDefaultFactory;
    private final LifecycleRegistry mLifecycleRegistry;
    private final AtomicInteger mNextLocalRequestCode;
    private final OnBackPressedDispatcher mOnBackPressedDispatcher;
    final androidx.savedstate.c mSavedStateRegistryController;
    private ac mViewModelStore;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$NonConfigurationInstances.class */
    public static final class NonConfigurationInstances {
        Object custom;
        ac viewModelStore;

        NonConfigurationInstances() {
        }
    }

    public ComponentActivity() {
        this.mContextAwareHelper = new a();
        this.mLifecycleRegistry = new LifecycleRegistry(this);
        this.mSavedStateRegistryController = androidx.savedstate.c.a(this);
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
        this.mActivityResultRegistry = new c() { // from class: androidx.activity.ComponentActivity.2
            @Override // androidx.activity.result.c
            public final <I, O> void a(final int i, androidx.activity.result.a.a<I, O> aVar, I i2, b bVar) {
                ComponentActivity componentActivity = ComponentActivity.this;
                final a.C0016a<O> a2 = aVar.a((Context) componentActivity, (ComponentActivity) i2);
                if (a2 != null) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: androidx.activity.ComponentActivity.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass2 r0 = AnonymousClass2.this;
                            int i3 = i;
                            Object obj = a2.f545a;
                            String str = r0.f548c.get(Integer.valueOf(i3));
                            if (str != null) {
                                r0.f549d.remove(str);
                                c.a<?> aVar2 = r0.e.get(str);
                                if (aVar2 == null || aVar2.f558a == null) {
                                    r0.g.remove(str);
                                    r0.f.put(str, obj);
                                    return;
                                }
                                aVar2.f558a.a(obj);
                            }
                        }
                    });
                    return;
                }
                Intent a3 = aVar.a(i2);
                Bundle bundle = null;
                if (a3.getExtras() != null && a3.getExtras().getClassLoader() == null) {
                    a3.setExtrasClassLoader(componentActivity.getClassLoader());
                }
                if (a3.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
                    bundle = a3.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                    a3.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                } else if (bVar != null) {
                    bundle = bVar.a();
                }
                if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(a3.getAction())) {
                    String[] stringArrayExtra = a3.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                    String[] strArr = stringArrayExtra;
                    if (stringArrayExtra == null) {
                        strArr = new String[0];
                    }
                    androidx.core.app.a.a(componentActivity, strArr, i);
                } else if ("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(a3.getAction())) {
                    IntentSenderRequest intentSenderRequest = (IntentSenderRequest) a3.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
                    try {
                        androidx.core.app.a.a(componentActivity, intentSenderRequest.getIntentSender(), i, intentSenderRequest.getFillInIntent(), intentSenderRequest.getFlagsMask(), intentSenderRequest.getFlagsValues(), 0, bundle);
                    } catch (IntentSender.SendIntentException e) {
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: androidx.activity.ComponentActivity.2.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                a(i, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", e));
                            }
                        });
                    }
                } else {
                    androidx.core.app.a.a(componentActivity, a3, i, bundle);
                }
            }
        };
        if (getLifecycle() != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                getLifecycle().addObserver(new n() { // from class: androidx.activity.ComponentActivity.3
                    @Override // androidx.lifecycle.n
                    public final void a(p pVar, j.a aVar) {
                        if (aVar == j.a.ON_STOP) {
                            Window window = ComponentActivity.this.getWindow();
                            View peekDecorView = window != null ? window.peekDecorView() : null;
                            if (peekDecorView != null) {
                                peekDecorView.cancelPendingInputEvents();
                            }
                        }
                    }
                });
            }
            getLifecycle().addObserver(new n() { // from class: androidx.activity.ComponentActivity.4
                @Override // androidx.lifecycle.n
                public final void a(p pVar, j.a aVar) {
                    if (aVar == j.a.ON_DESTROY) {
                        ComponentActivity.this.mContextAwareHelper.f534b = null;
                        if (!ComponentActivity.this.isChangingConfigurations()) {
                            ComponentActivity.this.getViewModelStore().b();
                        }
                    }
                }
            });
            getLifecycle().addObserver(new n() { // from class: androidx.activity.ComponentActivity.5
                @Override // androidx.lifecycle.n
                public final void a(p pVar, j.a aVar) {
                    ComponentActivity.this.ensureViewModelStore();
                    ComponentActivity.this.getLifecycle().removeObserver(this);
                }
            });
            if (19 <= Build.VERSION.SDK_INT && Build.VERSION.SDK_INT <= 23) {
                getLifecycle().addObserver(new ImmLeaksCleaner(this));
                return;
            }
            return;
        }
        throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
    }

    public ComponentActivity(int i) {
        this();
        this.mContentLayoutId = i;
    }

    private void initViewTreeOwners() {
        ae.a(getWindow().getDecorView(), this);
        af.a(getWindow().getDecorView(), this);
        e.a(getWindow().getDecorView(), this);
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        super.addContentView(view, layoutParams);
    }

    public final void addOnContextAvailableListener(androidx.activity.a.b bVar) {
        androidx.activity.a.a aVar = this.mContextAwareHelper;
        if (aVar.f534b != null) {
            Context context = aVar.f534b;
            bVar.a();
        }
        aVar.f533a.add(bVar);
    }

    void ensureViewModelStore() {
        if (this.mViewModelStore == null) {
            NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance();
            if (nonConfigurationInstances != null) {
                this.mViewModelStore = nonConfigurationInstances.viewModelStore;
            }
            if (this.mViewModelStore == null) {
                this.mViewModelStore = new ac();
            }
        }
    }

    @Override // androidx.activity.result.d
    public final c getActivityResultRegistry() {
        return this.mActivityResultRegistry;
    }

    @Override // androidx.lifecycle.i
    public ab.b getDefaultViewModelProviderFactory() {
        if (getApplication() != null) {
            if (this.mDefaultFactory == null) {
                this.mDefaultFactory = new y(getApplication(), this, getIntent() != null ? getIntent().getExtras() : null);
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

    @Override // androidx.core.app.ComponentActivity, androidx.lifecycle.p
    public j getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Override // androidx.activity.c
    public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return this.mOnBackPressedDispatcher;
    }

    @Override // androidx.savedstate.d
    public final androidx.savedstate.b getSavedStateRegistry() {
        return this.mSavedStateRegistryController.f5612a;
    }

    @Override // androidx.lifecycle.ad
    public ac getViewModelStore() {
        if (getApplication() != null) {
            ensureViewModelStore();
            return this.mViewModelStore;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }

    @Override // android.app.Activity
    @Deprecated
    public void onActivityResult(int i, int i2, Intent intent) {
        if (!this.mActivityResultRegistry.a(i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.mOnBackPressedDispatcher.a();
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.mSavedStateRegistryController.a(bundle);
        androidx.activity.a.a aVar = this.mContextAwareHelper;
        aVar.f534b = this;
        for (androidx.activity.a.b bVar : aVar.f533a) {
            bVar.a();
        }
        super.onCreate(bundle);
        c cVar = this.mActivityResultRegistry;
        if (bundle != null) {
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
            ArrayList<String> stringArrayList = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
            if (!(stringArrayList == null || integerArrayList == null)) {
                int size = stringArrayList.size();
                for (int i = 0; i < size; i++) {
                    cVar.a(integerArrayList.get(i).intValue(), stringArrayList.get(i));
                }
                cVar.f549d = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                cVar.f547b = (Random) bundle.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
                cVar.g.putAll(bundle.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
            }
        }
        ReportFragment.a(this);
        int i2 = this.mContentLayoutId;
        if (i2 != 0) {
            setContentView(i2);
        }
    }

    @Override // android.app.Activity
    @Deprecated
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (!this.mActivityResultRegistry.a(i, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr)) && Build.VERSION.SDK_INT >= 23) {
            super.onRequestPermissionsResult(i, strArr, iArr);
        }
    }

    @Deprecated
    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        Object onRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        ac acVar = this.mViewModelStore;
        ac acVar2 = acVar;
        if (acVar == null) {
            NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance();
            acVar2 = acVar;
            if (nonConfigurationInstances != null) {
                acVar2 = nonConfigurationInstances.viewModelStore;
            }
        }
        if (acVar2 == null && onRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        NonConfigurationInstances nonConfigurationInstances2 = new NonConfigurationInstances();
        nonConfigurationInstances2.custom = onRetainCustomNonConfigurationInstance;
        nonConfigurationInstances2.viewModelStore = acVar2;
        return nonConfigurationInstances2;
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        j lifecycle = getLifecycle();
        if (lifecycle instanceof LifecycleRegistry) {
            ((LifecycleRegistry) lifecycle).setCurrentState(j.b.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.b(bundle);
        c cVar = this.mActivityResultRegistry;
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(cVar.f548c.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(cVar.f548c.values()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(cVar.f549d));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) cVar.g.clone());
        bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", cVar.f547b);
    }

    public Context peekAvailableContext() {
        return this.mContextAwareHelper.f534b;
    }

    public final <I, O> androidx.activity.result.b<I> registerForActivityResult(androidx.activity.result.a.a<I, O> aVar, androidx.activity.result.a<O> aVar2) {
        return registerForActivityResult(aVar, this.mActivityResultRegistry, aVar2);
    }

    public final <I, O> androidx.activity.result.b<I> registerForActivityResult(androidx.activity.result.a.a<I, O> aVar, c cVar, androidx.activity.result.a<O> aVar2) {
        return cVar.a("activity_rq#" + this.mNextLocalRequestCode.getAndIncrement(), this, aVar, aVar2);
    }

    public final void removeOnContextAvailableListener(androidx.activity.a.b bVar) {
        this.mContextAwareHelper.f533a.remove(bVar);
    }

    @Override // android.app.Activity
    public void reportFullyDrawn() {
        try {
            if (androidx.k.a.a()) {
                androidx.k.a.a("reportFullyDrawn() for " + getComponentName());
            }
            if (Build.VERSION.SDK_INT > 19) {
                super.reportFullyDrawn();
            } else if (Build.VERSION.SDK_INT == 19 && androidx.core.content.b.a(this, "android.permission.UPDATE_DEVICE_STATS") == 0) {
                super.reportFullyDrawn();
            }
        } finally {
            androidx.k.a.b();
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
