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
import androidx.fragment.app.DialogInterface$OnCancelListenerC1089c;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1262o;
import androidx.lifecycle.LifecycleRegistry;
import androidx.p010a.p011a.p013b.C0104a;
import androidx.p061m.AbstractC1286a;
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
import com.google.android.play.core.splitcompat.C15105a;
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
    private AbstractC1253j.EnumC1255a lastEventFired;
    private LifecycleWrapper lifecycleWrapper;
    private Object lifecycleWrapperLock;
    private Handler uiHandler;
    private Thread uiThread;
    private boolean userPressedHomeButton;
    private boolean visible;
    private PermissionManager permissionManager = PermissionManager.get();
    private final ConcurrentLinkedQueue<AbstractC1253j.EnumC1255a> pendingEvents = new ConcurrentLinkedQueue<>();
    private boolean hasWindowFocus = false;
    private boolean sameWindowFocusReceived = false;
    private boolean firedEventRelatedToFocus = false;

    /* renamed from: com.callapp.contacts.activity.base.BaseActivity$5 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseActivity$5.class */
    public static /* synthetic */ class C57865 {

        /* renamed from: a */
        static final /* synthetic */ int[] f20240a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[AbstractC1253j.EnumC1255a.values().length];
            f20240a = iArr;
            try {
                iArr[AbstractC1253j.EnumC1255a.ON_START.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f20240a[AbstractC1253j.EnumC1255a.ON_RESUME.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f20240a[AbstractC1253j.EnumC1255a.ON_PAUSE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f20240a[AbstractC1253j.EnumC1255a.ON_STOP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper.class */
    public static class LifecycleWrapper extends LifecycleRegistry {

        /* renamed from: a */
        private final LifecycleRegistry f20241a;

        /* renamed from: b */
        private final WeakReference<BaseActivity> f20242b;

        public LifecycleWrapper(BaseActivity baseActivity, LifecycleRegistry lifecycleRegistry) {
            super(baseActivity);
            this.f20242b = new WeakReference<>(baseActivity);
            this.f20241a = lifecycleRegistry;
        }

        /* renamed from: a */
        public final void m31516a(AbstractC1253j.EnumC1255a enumC1255a) {
            CLog.m27611a(BaseActivity.class, "internalHandleLifecycleEvent: " + enumC1255a.name());
            BaseActivity baseActivity = this.f20242b.get();
            if (baseActivity != null) {
                if (baseActivity.lastEventFired == enumC1255a) {
                    CLog.m27611a(BaseActivity.class, "internalHandleLifecycleEvent duplicate event - DO NOTHING: " + enumC1255a.name());
                    return;
                }
                int i = C57865.f20240a[enumC1255a.ordinal()];
                if (i == 1 || i == 2) {
                    if (baseActivity.firedEventRelatedToFocus && baseActivity.hasWindowFocus) {
                        CLog.m27611a(BaseActivity.class, baseActivity.getClass().getSimpleName() + ", Dropping due to firedEventRelatedToFocus event: " + enumC1255a.name());
                        return;
                    } else if (baseActivity.sameWindowFocusReceived && baseActivity.hasWindowFocus) {
                        CLog.m27611a(BaseActivity.class, baseActivity.getClass().getSimpleName() + ", Dropping due to same focus state event: " + enumC1255a.name());
                        return;
                    } else if (!baseActivity.hasWindowFocus) {
                        CLog.m27611a(BaseActivity.class, baseActivity.getClass().getSimpleName() + ", adding pending event: " + enumC1255a.name());
                        baseActivity.pendingEvents.add(enumC1255a);
                        return;
                    } else if (enumC1255a == AbstractC1253j.EnumC1255a.ON_RESUME) {
                        baseActivity.firedEventRelatedToFocus = true;
                    }
                } else if (i == 3 || i == 4) {
                    if (baseActivity.firedEventRelatedToFocus && !baseActivity.hasWindowFocus) {
                        CLog.m27611a(BaseActivity.class, baseActivity.getClass().getSimpleName() + ", Dropping due to firedEventRelatedToFocus event: " + enumC1255a.name());
                        return;
                    } else if (baseActivity.sameWindowFocusReceived && !baseActivity.hasWindowFocus) {
                        CLog.m27611a(BaseActivity.class, baseActivity.getClass().getSimpleName() + ", Dropping due to same focus state event: " + enumC1255a.name());
                        return;
                    } else if (baseActivity.hasWindowFocus) {
                        CLog.m27611a(BaseActivity.class, baseActivity.getClass().getSimpleName() + ", adding pending event: " + enumC1255a.name());
                        baseActivity.pendingEvents.add(enumC1255a);
                        return;
                    } else if (enumC1255a == AbstractC1253j.EnumC1255a.ON_STOP) {
                        baseActivity.firedEventRelatedToFocus = true;
                    }
                }
                CLog.m27611a(BaseActivity.class, baseActivity.getClass().getSimpleName() + ", Firing event: " + enumC1255a.name());
                baseActivity.lastEventFired = enumC1255a;
                this.f20241a.handleLifecycleEvent(enumC1255a);
                int i2 = C57865.f20240a[enumC1255a.ordinal()];
                if (i2 == 1) {
                    if (Build.VERSION.SDK_INT >= 29) {
                        CallAppApplication.get().getFilteredActivityLifecycleCallback().m31851a(baseActivity);
                    }
                    CallAppApplication.get().getFilteredActivityLifecycleCallback().m31849c(baseActivity);
                    if (Build.VERSION.SDK_INT < 29) {
                        return;
                    }
                    CallAppApplication.get().getFilteredActivityLifecycleCallback().m31850b(baseActivity);
                } else if (i2 == 2) {
                    if (Build.VERSION.SDK_INT >= 29) {
                        CallAppApplication.get().getFilteredActivityLifecycleCallback().m31848d(baseActivity);
                    }
                    CallAppApplication.get().getFilteredActivityLifecycleCallback().m31846f(baseActivity);
                    if (Build.VERSION.SDK_INT < 29) {
                        return;
                    }
                    CallAppApplication.get().getFilteredActivityLifecycleCallback().m31847e(baseActivity);
                } else if (i2 == 3) {
                    if (Build.VERSION.SDK_INT >= 29) {
                        CallAppApplication.get().getFilteredActivityLifecycleCallback().m31845g(baseActivity);
                    }
                    CallAppApplication.get().getFilteredActivityLifecycleCallback().m31843i(baseActivity);
                    if (Build.VERSION.SDK_INT < 29) {
                        return;
                    }
                    CallAppApplication.get().getFilteredActivityLifecycleCallback().m31844h(baseActivity);
                } else if (i2 != 4) {
                } else {
                    if (Build.VERSION.SDK_INT >= 29) {
                        CallAppApplication.get().getFilteredActivityLifecycleCallback().m31842j(baseActivity);
                    }
                    CallAppApplication.get().getFilteredActivityLifecycleCallback().m31840l(baseActivity);
                    if (Build.VERSION.SDK_INT < 29) {
                        return;
                    }
                    CallAppApplication.get().getFilteredActivityLifecycleCallback().m31841k(baseActivity);
                }
            }
        }

        @Override // androidx.lifecycle.LifecycleRegistry, androidx.lifecycle.AbstractC1253j
        public void addObserver(AbstractC1262o abstractC1262o) {
            CLog.m27611a(BaseActivity.class, "addObserver observer=".concat(String.valueOf(abstractC1262o)));
            this.f20241a.addObserver(abstractC1262o);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null) {
                return false;
            }
            if (getClass() == obj.getClass()) {
                return Objects.equals(this.f20241a, ((LifecycleWrapper) obj).f20241a);
            }
            if (LifecycleRegistry.class != obj.getClass()) {
                return false;
            }
            return Objects.equals(this.f20241a, obj);
        }

        @Override // androidx.lifecycle.LifecycleRegistry, androidx.lifecycle.AbstractC1253j
        public AbstractC1253j.EnumC1256b getCurrentState() {
            return this.f20241a.getCurrentState();
        }

        @Override // androidx.lifecycle.LifecycleRegistry
        public int getObserverCount() {
            return this.f20241a.getObserverCount();
        }

        @Override // androidx.lifecycle.LifecycleRegistry
        public void handleLifecycleEvent(AbstractC1253j.EnumC1255a enumC1255a) {
            CLog.m27611a(BaseActivity.class, "handleLifecycleEvent: " + enumC1255a.name());
            BaseActivity baseActivity = this.f20242b.get();
            if (baseActivity == null || baseActivity.lastEventFired != enumC1255a) {
                m31516a(enumC1255a);
                return;
            }
            CLog.m27611a(BaseActivity.class, "handleLifecycleEvent firing duplicate event and clearing pendingEvents: " + enumC1255a.name() + ", pending: " + baseActivity.pendingEvents);
            baseActivity.pendingEvents.clear();
            this.f20241a.handleLifecycleEvent(enumC1255a);
        }

        @Override // androidx.lifecycle.LifecycleRegistry
        public void markState(AbstractC1253j.EnumC1256b enumC1256b) {
            this.f20241a.markState(enumC1256b);
        }

        @Override // androidx.lifecycle.LifecycleRegistry, androidx.lifecycle.AbstractC1253j
        public void removeObserver(AbstractC1262o abstractC1262o) {
            CLog.m27611a(BaseActivity.class, "removeObserver observer=".concat(String.valueOf(abstractC1262o)));
            this.f20241a.removeObserver(abstractC1262o);
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
            CLog.m27595b(BaseActivity.class, th, "UIThread Exception");
        }
    }

    private void setSimpleContent() {
        int layoutResourceId = getLayoutResourceId();
        if (layoutResourceId == 0) {
            if (getViewBinder() == null) {
                return;
            }
            setContentView(getViewBinder().getRoot());
            return;
        }
        setContentView(layoutResourceId);
        if (!isColoringTheStatusBar()) {
            return;
        }
        Activities.m27668a(getWindow(), getStatusBarColor());
    }

    public boolean allowLifecycleChangesDuringCalls() {
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(LocaleUtils.m27467a(context));
        C15105a.m9456b(this);
    }

    protected int getBackgroundColor() {
        return ThemeUtils.getColor(2131099686);
    }

    protected abstract int getLayoutResourceId();

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.lifecycle.AbstractC1263p
    public AbstractC1253j getLifecycle() {
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
        return ThemeUtils.m27386a(this, 2131099784);
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

    public AbstractC1286a getViewBinder() {
        return null;
    }

    protected void handleIncognitoMode() {
        boolean isLightTheme = ((ThemeState) Prefs.f26417di.get()).isLightTheme();
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
        if (collection == null || collection.isEmpty()) {
            return;
        }
        Iterator it2 = new HashSet(this.activityLifecycleListeners).iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        setForeGroundVisible(false);
        if (!isBackPressedHandled()) {
            if (getIntent() == null || getIntent().getExtras() == null) {
                super.onBackPressed();
                return;
            }
            Class cls = (Class) getIntent().getSerializableExtra("RETURN_TO_PREVIOUS_CLASS");
            if (cls == null) {
                super.onBackPressed();
                return;
            }
            startActivity(new Intent(this, cls));
            finish();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        setTheme(getThemeResId());
        if (shouldAssertPermissions() && !PermissionManager.m28256a()) {
            CorePermissionsNotGrantedActivity.m31792a((Context) this);
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
            supportActionBar.mo46233b(ViewUtils.getDrawable(2131231943));
        }
        setSimpleContent();
        EventBusManager.f25138a.m29048a(ThemeChangedListener.f23141i, this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.uiHandler.removeCallbacksAndMessages(null);
        PopupManager popupManager = PopupManager.get();
        Class<?> cls = getClass();
        synchronized (popupManager.f26174a) {
            if (popupManager.f26174a.containsKey(cls)) {
                Set<DialogInterface$OnCancelListenerC1089c> m31880a = Sets.m31880a(new WeakHashMap());
                m31880a.addAll(popupManager.f26174a.get(cls));
                for (DialogInterface$OnCancelListenerC1089c dialogInterface$OnCancelListenerC1089c : m31880a) {
                    popupManager.m28203a(dialogInterface$OnCancelListenerC1089c);
                }
                popupManager.f26174a.remove(cls);
            }
        }
        EventBusManager.f25138a.m29045b(ThemeChangedListener.f23141i, this);
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
        ArrayList arrayList;
        super.onRequestPermissionsResult(i, strArr, iArr);
        PermissionManager permissionManager = this.permissionManager;
        if (12345 != i || strArr == null || iArr == null) {
            return;
        }
        int i2 = 0;
        ArrayList arrayList2 = null;
        while (true) {
            arrayList = arrayList2;
            if (i2 >= strArr.length) {
                break;
            }
            String str = strArr[i2];
            ArrayList arrayList3 = arrayList;
            if (iArr[i2] != 0) {
                arrayList3 = arrayList;
                if (CollectionUtils.m26076a(arrayList)) {
                    arrayList3 = new ArrayList();
                }
                arrayList3.add(str);
            }
            i2++;
            arrayList2 = arrayList3;
        }
        if (CollectionUtils.m26068b(arrayList)) {
            if (permissionManager.f26067c != null) {
                permissionManager.f26067c.run();
            }
        } else if (permissionManager.f26066b != null) {
            permissionManager.f26066b.run();
        } else if (permissionManager.f26065a != null) {
            permissionManager.f26065a.onCorePermissionsGranted(strArr, iArr);
        }
        permissionManager.f26066b = null;
        permissionManager.f26067c = null;
        permissionManager.f26065a = null;
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
                activityLifecycleListener.mo27636a(this);
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
        if (allowLifecycleChangesDuringCalls()) {
            super.onSaveInstanceState(bundle);
            return;
        }
        try {
            LifecycleRegistry lifecycleRegistry = (LifecycleRegistry) ReflectionUtils.m27423a(this, "mLifecycleRegistry");
            ReflectionUtils.m27422a(lifecycleRegistry, "mObserverMap", ReflectionUtils.m27426a(C0104a.class));
            super.onSaveInstanceState(bundle);
            ReflectionUtils.m27422a(lifecycleRegistry, "mObserverMap", (C0104a) ReflectionUtils.m27423a(lifecycleRegistry, "mObserverMap"));
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            CLog.m27609a(BaseActivity.class, e);
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
        CLog.m27611a(BaseActivity.class, getClass().getSimpleName() + ", onWindowFocusChanged hasFocus=" + z);
        if (this.lifecycleWrapper != null) {
            if (this.hasWindowFocus != z) {
                this.hasWindowFocus = z;
                this.firedEventRelatedToFocus = false;
                this.sameWindowFocusReceived = false;
                AbstractC1253j.EnumC1255a poll = this.pendingEvents.poll();
                while (true) {
                    AbstractC1253j.EnumC1255a enumC1255a = poll;
                    if (enumC1255a == null) {
                        break;
                    }
                    if (enumC1255a == AbstractC1253j.EnumC1255a.ON_RESUME || ((enumC1255a == AbstractC1253j.EnumC1255a.ON_START && this.hasWindowFocus) || enumC1255a == AbstractC1253j.EnumC1255a.ON_PAUSE || (enumC1255a == AbstractC1253j.EnumC1255a.ON_STOP && !this.hasWindowFocus))) {
                        CLog.m27611a(BaseActivity.class, "onWindowFocusChanged sending to handleLifecycleEvent: " + enumC1255a.name());
                        this.lifecycleWrapper.m31516a(enumC1255a);
                    } else {
                        CLog.m27611a(BaseActivity.class, getClass().getSimpleName() + ", Dropping event from queue: " + enumC1255a.name());
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
        return super.registerReceiver(FilteredReceiversManager.m28661a(broadcastReceiver, intentFilter), intentFilter);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i) {
        return super.registerReceiver(FilteredReceiversManager.m28661a(broadcastReceiver, intentFilter), intentFilter, i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler) {
        return super.registerReceiver(FilteredReceiversManager.m28661a(broadcastReceiver, intentFilter), intentFilter, str, handler);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i) {
        return super.registerReceiver(FilteredReceiversManager.m28661a(broadcastReceiver, intentFilter), intentFilter, str, handler, i);
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

    public void setStatusBarColor(int i) {
        Activities.m27698a(i, getWindow());
    }

    protected boolean shouldAssertPermissions() {
        return true;
    }

    public void showActionBar(boolean z) {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            if (z) {
                supportActionBar.mo46225e();
            } else {
                supportActionBar.mo46224f();
            }
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
        super.unregisterReceiver(FilteredReceiversManager.m28662a(broadcastReceiver));
    }
}
