package com.callapp.contacts.activity.base;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.c;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.j;
import androidx.lifecycle.o;
import com.callapp.common.util.Sets;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.CorePermissionsNotGrantedActivity;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.activity.interfaces.ThemeChangedListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.FilteredReceiversManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.LocaleUtils;
import com.callapp.contacts.util.PowerUtils;
import com.callapp.contacts.util.ReflectionUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.util.CollectionUtils;
import com.google.android.play.core.splitcompat.a;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseActivity.class */
public abstract class BaseActivity extends AppCompatActivity implements ThemeChangedListener {
    public static boolean isCallAppVisible;
    private Collection<ActivityLifecycleListener> activityLifecycleListeners;
    private boolean foreGroundVisible;
    private j.a lastEventFired;
    private LifecycleWrapper lifecycleWrapper;
    private Object lifecycleWrapperLock;
    private Handler uiHandler;
    private Thread uiThread;
    private boolean userPressedHomeButton;
    private boolean visible;
    private PermissionManager permissionManager = PermissionManager.get();
    private final ConcurrentLinkedQueue<j.a> pendingEvents = new ConcurrentLinkedQueue<>();
    private boolean hasWindowFocus = false;
    private boolean sameWindowFocusReceived = false;
    private boolean firedEventRelatedToFocus = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.base.BaseActivity$5  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseActivity$5.class */
    public static /* synthetic */ class AnonymousClass5 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11070a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[j.a.values().length];
            f11070a = iArr;
            try {
                iArr[j.a.ON_START.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f11070a[j.a.ON_RESUME.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f11070a[j.a.ON_PAUSE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f11070a[j.a.ON_STOP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper.class */
    static class LifecycleWrapper extends LifecycleRegistry {

        /* renamed from: a  reason: collision with root package name */
        private final LifecycleRegistry f11071a;

        /* renamed from: b  reason: collision with root package name */
        private final WeakReference<BaseActivity> f11072b;

        public LifecycleWrapper(BaseActivity baseActivity, LifecycleRegistry lifecycleRegistry) {
            super(baseActivity);
            this.f11072b = new WeakReference<>(baseActivity);
            this.f11071a = lifecycleRegistry;
        }

        public final void a(j.a aVar) {
            CLog.a(BaseActivity.class, "internalHandleLifecycleEvent: " + aVar.name());
            BaseActivity baseActivity = this.f11072b.get();
            if (baseActivity == null) {
                return;
            }
            if (baseActivity.lastEventFired == aVar) {
                CLog.a(BaseActivity.class, "internalHandleLifecycleEvent duplicate event - DO NOTHING: " + aVar.name());
                return;
            }
            int i = AnonymousClass5.f11070a[aVar.ordinal()];
            if (i == 1 || i == 2) {
                if (baseActivity.firedEventRelatedToFocus && baseActivity.hasWindowFocus) {
                    CLog.a(BaseActivity.class, baseActivity.getClass().getSimpleName() + ", Dropping due to firedEventRelatedToFocus event: " + aVar.name());
                    return;
                } else if (baseActivity.sameWindowFocusReceived && baseActivity.hasWindowFocus) {
                    CLog.a(BaseActivity.class, baseActivity.getClass().getSimpleName() + ", Dropping due to same focus state event: " + aVar.name());
                    return;
                } else if (!baseActivity.hasWindowFocus) {
                    CLog.a(BaseActivity.class, baseActivity.getClass().getSimpleName() + ", adding pending event: " + aVar.name());
                    baseActivity.pendingEvents.add(aVar);
                    return;
                } else if (aVar == j.a.ON_RESUME) {
                    baseActivity.firedEventRelatedToFocus = true;
                }
            } else if (i == 3 || i == 4) {
                if (baseActivity.firedEventRelatedToFocus && !baseActivity.hasWindowFocus) {
                    CLog.a(BaseActivity.class, baseActivity.getClass().getSimpleName() + ", Dropping due to firedEventRelatedToFocus event: " + aVar.name());
                    return;
                } else if (baseActivity.sameWindowFocusReceived && !baseActivity.hasWindowFocus) {
                    CLog.a(BaseActivity.class, baseActivity.getClass().getSimpleName() + ", Dropping due to same focus state event: " + aVar.name());
                    return;
                } else if (baseActivity.hasWindowFocus) {
                    CLog.a(BaseActivity.class, baseActivity.getClass().getSimpleName() + ", adding pending event: " + aVar.name());
                    baseActivity.pendingEvents.add(aVar);
                    return;
                } else if (aVar == j.a.ON_STOP) {
                    baseActivity.firedEventRelatedToFocus = true;
                }
            }
            CLog.a(BaseActivity.class, baseActivity.getClass().getSimpleName() + ", Firing event: " + aVar.name());
            baseActivity.lastEventFired = aVar;
            this.f11071a.handleLifecycleEvent(aVar);
            int i2 = AnonymousClass5.f11070a[aVar.ordinal()];
            if (i2 == 1) {
                if (Build.VERSION.SDK_INT >= 29) {
                    CallAppApplication.get().getFilteredActivityLifecycleCallback().a(baseActivity);
                }
                CallAppApplication.get().getFilteredActivityLifecycleCallback().c(baseActivity);
                if (Build.VERSION.SDK_INT >= 29) {
                    CallAppApplication.get().getFilteredActivityLifecycleCallback().b(baseActivity);
                }
            } else if (i2 == 2) {
                if (Build.VERSION.SDK_INT >= 29) {
                    CallAppApplication.get().getFilteredActivityLifecycleCallback().d(baseActivity);
                }
                CallAppApplication.get().getFilteredActivityLifecycleCallback().f(baseActivity);
                if (Build.VERSION.SDK_INT >= 29) {
                    CallAppApplication.get().getFilteredActivityLifecycleCallback().e(baseActivity);
                }
            } else if (i2 == 3) {
                if (Build.VERSION.SDK_INT >= 29) {
                    CallAppApplication.get().getFilteredActivityLifecycleCallback().g(baseActivity);
                }
                CallAppApplication.get().getFilteredActivityLifecycleCallback().i(baseActivity);
                if (Build.VERSION.SDK_INT >= 29) {
                    CallAppApplication.get().getFilteredActivityLifecycleCallback().h(baseActivity);
                }
            } else if (i2 == 4) {
                if (Build.VERSION.SDK_INT >= 29) {
                    CallAppApplication.get().getFilteredActivityLifecycleCallback().j(baseActivity);
                }
                CallAppApplication.get().getFilteredActivityLifecycleCallback().l(baseActivity);
                if (Build.VERSION.SDK_INT >= 29) {
                    CallAppApplication.get().getFilteredActivityLifecycleCallback().k(baseActivity);
                }
            }
        }

        @Override // androidx.lifecycle.LifecycleRegistry, androidx.lifecycle.j
        public void addObserver(o oVar) {
            CLog.a(BaseActivity.class, "addObserver observer=".concat(String.valueOf(oVar)));
            this.f11071a.addObserver(oVar);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null) {
                return false;
            }
            if (getClass() == obj.getClass()) {
                return Objects.equals(this.f11071a, ((LifecycleWrapper) obj).f11071a);
            }
            if (LifecycleRegistry.class == obj.getClass()) {
                return Objects.equals(this.f11071a, obj);
            }
            return false;
        }

        @Override // androidx.lifecycle.LifecycleRegistry, androidx.lifecycle.j
        public j.b getCurrentState() {
            return this.f11071a.getCurrentState();
        }

        @Override // androidx.lifecycle.LifecycleRegistry
        public int getObserverCount() {
            return this.f11071a.getObserverCount();
        }

        @Override // androidx.lifecycle.LifecycleRegistry
        public void handleLifecycleEvent(j.a aVar) {
            CLog.a(BaseActivity.class, "handleLifecycleEvent: " + aVar.name());
            BaseActivity baseActivity = this.f11072b.get();
            if (baseActivity == null || baseActivity.lastEventFired != aVar) {
                a(aVar);
                return;
            }
            CLog.a(BaseActivity.class, "handleLifecycleEvent firing duplicate event and clearing pendingEvents: " + aVar.name() + ", pending: " + baseActivity.pendingEvents);
            baseActivity.pendingEvents.clear();
            this.f11071a.handleLifecycleEvent(aVar);
        }

        @Override // androidx.lifecycle.LifecycleRegistry
        public void markState(j.b bVar) {
            this.f11071a.markState(bVar);
        }

        @Override // androidx.lifecycle.LifecycleRegistry, androidx.lifecycle.j
        public void removeObserver(o oVar) {
            CLog.a(BaseActivity.class, "removeObserver observer=".concat(String.valueOf(oVar)));
            this.f11071a.removeObserver(oVar);
        }
    }

    public static void activityPaused() {
        isCallAppVisible = false;
    }

    public static void activityResumed() {
        isCallAppVisible = true;
    }

    private void safePostOnUIThread(final Runnable runnable) {
        this.uiHandler.post(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseActivity.1
            @Override // java.lang.Runnable
            public void run() {
                BaseActivity.safeRun(runnable);
            }
        });
    }

    public static void safeRun(Runnable runnable) {
        try {
            runnable.run();
        } catch (Throwable th) {
            CLog.b(BaseActivity.class, th, "UIThread Exception");
        }
    }

    private void setSimpleContent() {
        int layoutResourceId = getLayoutResourceId();
        if (layoutResourceId != 0) {
            setContentView(layoutResourceId);
            if (isColoringTheStatusBar()) {
                Activities.a(getWindow(), getStatusBarColor());
            }
        } else if (getViewBinder() != null) {
            setContentView(getViewBinder().getRoot());
        }
    }

    public boolean allowLifecycleChangesDuringCalls() {
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(LocaleUtils.a(context));
        a.b(this);
    }

    protected int getBackgroundColor() {
        return ThemeUtils.getColor(2131099686);
    }

    protected abstract int getLayoutResourceId();

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.lifecycle.p
    public j getLifecycle() {
        if (this.lifecycleWrapperLock == null) {
            this.lifecycleWrapperLock = new Object();
        }
        if (allowLifecycleChangesDuringCalls()) {
            return super.getLifecycle();
        }
        if (this.lifecycleWrapper == null) {
            synchronized (this.lifecycleWrapperLock) {
                if (this.lifecycleWrapper == null) {
                    this.lifecycleWrapper = new LifecycleWrapper(this, (LifecycleRegistry) super.getLifecycle());
                }
            }
        }
        return this.lifecycleWrapper;
    }

    public PermissionManager getPermissionManager() {
        return this.permissionManager;
    }

    protected int getStatusBarColor() {
        return ThemeUtils.a(this, 2131099784);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        return (str == null || !str.equals("keyguard")) ? getSystemServiceDirect(str) : FilteredReceiversManager.getKeyguardManager();
    }

    public Object getSystemServiceDirect(String str) {
        return super.getSystemService(str);
    }

    protected int getThemeResId() {
        return ThemeUtils.getThemeStyleResource();
    }

    public androidx.m.a getViewBinder() {
        return null;
    }

    protected void handleIncognitoMode() {
        boolean isLightTheme = ((ThemeState) Prefs.di.get()).isLightTheme();
        if (ThemeUtils.isThemeLight() != isLightTheme) {
            ThemeUtils.setIsLight(isLightTheme);
        }
    }

    public boolean isActivityVisible() {
        return this.visible;
    }

    public boolean isBackPressedHandled() {
        return false;
    }

    public boolean isClickValid(View view) {
        return true;
    }

    protected boolean isColoringTheStatusBar() {
        return true;
    }

    public boolean isForeGroundVisible() {
        return this.foreGroundVisible;
    }

    public boolean isUserPressedHomeButton() {
        return this.userPressedHomeButton;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Collection<ActivityLifecycleListener> collection = this.activityLifecycleListeners;
        if (collection != null && !collection.isEmpty()) {
            Iterator it2 = new HashSet(this.activityLifecycleListeners).iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        setForeGroundVisible(false);
        if (isBackPressedHandled()) {
            return;
        }
        if (getIntent() == null || getIntent().getExtras() == null) {
            super.onBackPressed();
            return;
        }
        Class cls = (Class) getIntent().getSerializableExtra("RETURN_TO_PREVIOUS_CLASS");
        if (cls != null) {
            startActivity(new Intent(this, cls));
            finish();
            return;
        }
        super.onBackPressed();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        setTheme(getThemeResId());
        if (shouldAssertPermissions() && !PermissionManager.a()) {
            CorePermissionsNotGrantedActivity.a((Context) this);
        }
        super.onCreate(bundle);
        this.uiThread = Thread.currentThread();
        this.uiHandler = new Handler();
        Window window = getWindow();
        if (window != null) {
            View decorView = window.getDecorView();
            if (decorView != null) {
                decorView.setBackgroundColor(getBackgroundColor());
            }
            if (!ThemeUtils.isThemeLight()) {
                window.setNavigationBarColor(ThemeUtils.getColor(2131099686));
            }
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.b(ViewUtils.getDrawable(2131231943));
        }
        setSimpleContent();
        EventBusManager.f14368a.a(ThemeChangedListener.i, this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.uiHandler.removeCallbacksAndMessages(null);
        PopupManager popupManager = PopupManager.get();
        Class<?> cls = getClass();
        synchronized (popupManager.f15214a) {
            if (popupManager.f15214a.containsKey(cls)) {
                Set<c> a2 = Sets.a(new WeakHashMap());
                a2.addAll(popupManager.f15214a.get(cls));
                for (c cVar : a2) {
                    popupManager.a(cVar);
                }
                popupManager.f15214a.remove(cls);
            }
        }
        EventBusManager.f14368a.b(ThemeChangedListener.i, this);
        super.onDestroy();
    }

    protected void onHomeButtonSelected() {
        onBackPressed();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onHomeButtonSelected();
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        if (this.foreGroundVisible) {
            if (PowerUtils.isScreenOn()) {
                setForeGroundVisible(false);
            } else {
                new Task() { // from class: com.callapp.contacts.activity.base.BaseActivity.2
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        if (PowerUtils.isScreenOn()) {
                            BaseActivity.this.setForeGroundVisible(false);
                        }
                    }
                }.schedule(500);
            }
        }
        activityPaused();
        super.onPause();
    }

    public void onPopupResult(int i, int i2, Intent intent) {
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        PermissionManager permissionManager = this.permissionManager;
        if (!(12345 != i || strArr == null || iArr == null)) {
            ArrayList arrayList = null;
            for (int i2 = 0; i2 < strArr.length; i2++) {
                String str = strArr[i2];
                arrayList = arrayList;
                if (iArr[i2] != 0) {
                    arrayList = arrayList;
                    if (CollectionUtils.a(arrayList)) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(str);
                }
            }
            if (CollectionUtils.b(arrayList)) {
                if (permissionManager.f15118c != null) {
                    permissionManager.f15118c.run();
                }
            } else if (permissionManager.f15117b != null) {
                permissionManager.f15117b.run();
            } else if (permissionManager.f15116a != null) {
                permissionManager.f15116a.onCorePermissionsGranted(strArr, iArr);
            }
            permissionManager.f15117b = null;
            permissionManager.f15118c = null;
            permissionManager.f15116a = null;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        activityResumed();
        super.onResume();
        setForeGroundVisible(true);
        this.userPressedHomeButton = false;
        Collection<ActivityLifecycleListener> collection = this.activityLifecycleListeners;
        if (collection != null && !collection.isEmpty()) {
            for (ActivityLifecycleListener activityLifecycleListener : new HashSet(this.activityLifecycleListeners)) {
                activityLifecycleListener.a(this);
            }
        }
        new Task() { // from class: com.callapp.contacts.activity.base.BaseActivity.3
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                BaseActivity.this.handleIncognitoMode();
            }
        }.execute();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        if (!allowLifecycleChangesDuringCalls()) {
            try {
                LifecycleRegistry lifecycleRegistry = (LifecycleRegistry) ReflectionUtils.a(this, "mLifecycleRegistry");
                ReflectionUtils.a(lifecycleRegistry, "mObserverMap", ReflectionUtils.a(androidx.a.a.b.a.class));
                super.onSaveInstanceState(bundle);
                ReflectionUtils.a(lifecycleRegistry, "mObserverMap", (androidx.a.a.b.a) ReflectionUtils.a(lifecycleRegistry, "mObserverMap"));
            } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
                CLog.a(BaseActivity.class, e);
            }
        } else {
            super.onSaveInstanceState(bundle);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.visible = true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        this.visible = false;
    }

    @Override // com.callapp.contacts.activity.interfaces.ThemeChangedListener
    public void onThemeChanged() {
        safePostOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseActivity.4
            @Override // java.lang.Runnable
            public void run() {
                BaseActivity.this.recreate();
            }
        });
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        super.onUserLeaveHint();
        this.userPressedHomeButton = true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        CLog.a(BaseActivity.class, getClass().getSimpleName() + ", onWindowFocusChanged hasFocus=" + z);
        if (this.lifecycleWrapper != null) {
            if (this.hasWindowFocus != z) {
                this.hasWindowFocus = z;
                this.firedEventRelatedToFocus = false;
                this.sameWindowFocusReceived = false;
                j.a poll = this.pendingEvents.poll();
                while (true) {
                    j.a aVar = poll;
                    if (aVar == null) {
                        break;
                    }
                    if (aVar == j.a.ON_RESUME || ((aVar == j.a.ON_START && this.hasWindowFocus) || aVar == j.a.ON_PAUSE || (aVar == j.a.ON_STOP && !this.hasWindowFocus))) {
                        CLog.a(BaseActivity.class, "onWindowFocusChanged sending to handleLifecycleEvent: " + aVar.name());
                        this.lifecycleWrapper.a(aVar);
                    } else {
                        CLog.a(BaseActivity.class, getClass().getSimpleName() + ", Dropping event from queue: " + aVar.name());
                    }
                    poll = this.pendingEvents.poll();
                }
            } else {
                this.sameWindowFocusReceived = true;
                this.pendingEvents.clear();
            }
        }
        super.onWindowFocusChanged(z);
    }

    public void registerActivityLifecycleListener(ActivityLifecycleListener activityLifecycleListener) {
        if (this.activityLifecycleListeners == null) {
            this.activityLifecycleListeners = new HashSet();
        }
        this.activityLifecycleListeners.add(activityLifecycleListener);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return super.registerReceiver(FilteredReceiversManager.a(broadcastReceiver, intentFilter), intentFilter);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i) {
        return super.registerReceiver(FilteredReceiversManager.a(broadcastReceiver, intentFilter), intentFilter, i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler) {
        return super.registerReceiver(FilteredReceiversManager.a(broadcastReceiver, intentFilter), intentFilter, str, handler);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i) {
        return super.registerReceiver(FilteredReceiversManager.a(broadcastReceiver, intentFilter), intentFilter, str, handler, i);
    }

    public void safeRunOnUIThread(Runnable runnable) {
        if (Thread.currentThread() == this.uiThread) {
            safeRun(runnable);
        } else {
            safePostOnUIThread(runnable);
        }
    }

    public void setForeGroundVisible(boolean z) {
        this.foreGroundVisible = z;
    }

    public void setKeyguardDismissAndScreenWindowFlags() {
        Activities.setKeyguardDismissAndScreenWindowFlags(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setStatusBarColor(int i) {
        Activities.a(i, getWindow());
    }

    protected boolean shouldAssertPermissions() {
        return true;
    }

    public void showActionBar(boolean z) {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar == null) {
            return;
        }
        if (z) {
            supportActionBar.e();
        } else {
            supportActionBar.f();
        }
    }

    public void unregisterActivityLifecycleListener(ActivityLifecycleListener activityLifecycleListener) {
        Collection<ActivityLifecycleListener> collection = this.activityLifecycleListeners;
        if (collection != null) {
            collection.remove(activityLifecycleListener);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        super.unregisterReceiver(FilteredReceiversManager.a(broadcastReceiver));
    }
}
