package com.callapp.contacts.util.ads;

import android.app.Activity;
import android.app.Application;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import com.callapp.contacts.CallAppApplication;
import com.callapp.framework.util.StringUtils;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks.class */
public class InterstitialAutoCloserLifecycleCallbacks implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    WeakReference<Activity> f16059a = new WeakReference<>(null);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f16059a = new WeakReference<>(null);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(final Activity activity, Bundle bundle) {
        try {
            ActivityInfo activityInfo = CallAppApplication.get().getPackageManager().getActivityInfo(activity.getComponentName(), 0);
            if (activityInfo == null) {
                return;
            }
            if (StringUtils.b((Object) activityInfo.taskAffinity, (Object) "com.callapp.contacts.ads") || StringUtils.b((Object) activityInfo.name, (Object) "com.facebook.ads.AudienceNetworkActivity")) {
                this.f16059a = new WeakReference<>(activity);
                final Window.Callback callback = activity.getWindow().getCallback();
                activity.getWindow().setCallback(new Window.Callback() { // from class: com.callapp.contacts.util.ads.InterstitialAutoCloserLifecycleCallbacks.1
                    @Override // android.view.Window.Callback
                    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
                        Window.Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.dispatchGenericMotionEvent(motionEvent);
                        }
                        activity.getWindow().superDispatchGenericMotionEvent(motionEvent);
                        return false;
                    }

                    @Override // android.view.Window.Callback
                    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
                        Window.Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.dispatchKeyEvent(keyEvent);
                        }
                        activity.getWindow().superDispatchKeyEvent(keyEvent);
                        InterstitialAutoCloserLifecycleCallbacks.this.a();
                        return false;
                    }

                    @Override // android.view.Window.Callback
                    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
                        Window.Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.dispatchKeyShortcutEvent(keyEvent);
                        }
                        activity.getWindow().superDispatchKeyShortcutEvent(keyEvent);
                        InterstitialAutoCloserLifecycleCallbacks.this.a();
                        return false;
                    }

                    @Override // android.view.Window.Callback
                    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
                        Window.Callback callback2 = callback;
                        if (callback2 == null) {
                            return false;
                        }
                        callback2.dispatchPopulateAccessibilityEvent(accessibilityEvent);
                        return false;
                    }

                    @Override // android.view.Window.Callback
                    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                        Window.Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.dispatchTouchEvent(motionEvent);
                        }
                        activity.getWindow().superDispatchTouchEvent(motionEvent);
                        InterstitialAutoCloserLifecycleCallbacks.this.a();
                        return false;
                    }

                    @Override // android.view.Window.Callback
                    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
                        Window.Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.dispatchTrackballEvent(motionEvent);
                        }
                        activity.getWindow().superDispatchTrackballEvent(motionEvent);
                        InterstitialAutoCloserLifecycleCallbacks.this.a();
                        return false;
                    }

                    @Override // android.view.Window.Callback
                    public void onActionModeFinished(ActionMode actionMode) {
                        Window.Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.onActionModeFinished(actionMode);
                        }
                    }

                    @Override // android.view.Window.Callback
                    public void onActionModeStarted(ActionMode actionMode) {
                        Window.Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.onActionModeStarted(actionMode);
                        }
                    }

                    @Override // android.view.Window.Callback
                    public void onAttachedToWindow() {
                        Window.Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.onAttachedToWindow();
                        }
                    }

                    @Override // android.view.Window.Callback
                    public void onContentChanged() {
                        Window.Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.onContentChanged();
                        }
                    }

                    @Override // android.view.Window.Callback
                    public boolean onCreatePanelMenu(int i, Menu menu) {
                        Window.Callback callback2 = callback;
                        if (callback2 == null) {
                            return false;
                        }
                        callback2.onCreatePanelMenu(i, menu);
                        return false;
                    }

                    @Override // android.view.Window.Callback
                    public View onCreatePanelView(int i) {
                        Window.Callback callback2 = callback;
                        if (callback2 == null) {
                            return null;
                        }
                        callback2.onCreatePanelView(i);
                        return null;
                    }

                    @Override // android.view.Window.Callback
                    public void onDetachedFromWindow() {
                        Window.Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.onDetachedFromWindow();
                        }
                    }

                    @Override // android.view.Window.Callback
                    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
                        Window.Callback callback2 = callback;
                        if (callback2 == null) {
                            return false;
                        }
                        callback2.onMenuItemSelected(i, menuItem);
                        return false;
                    }

                    @Override // android.view.Window.Callback
                    public boolean onMenuOpened(int i, Menu menu) {
                        Window.Callback callback2 = callback;
                        if (callback2 == null) {
                            return false;
                        }
                        callback2.onMenuOpened(i, menu);
                        return false;
                    }

                    @Override // android.view.Window.Callback
                    public void onPanelClosed(int i, Menu menu) {
                        Window.Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.onPanelClosed(i, menu);
                        }
                    }

                    @Override // android.view.Window.Callback
                    public boolean onPreparePanel(int i, View view, Menu menu) {
                        Window.Callback callback2 = callback;
                        if (callback2 == null) {
                            return false;
                        }
                        callback2.onPreparePanel(i, view, menu);
                        return false;
                    }

                    @Override // android.view.Window.Callback
                    public boolean onSearchRequested() {
                        Window.Callback callback2 = callback;
                        if (callback2 == null) {
                            return false;
                        }
                        callback2.onSearchRequested();
                        return false;
                    }

                    @Override // android.view.Window.Callback
                    public boolean onSearchRequested(SearchEvent searchEvent) {
                        Window.Callback callback2 = callback;
                        if (callback2 == null) {
                            return false;
                        }
                        callback2.onSearchRequested(searchEvent);
                        return false;
                    }

                    @Override // android.view.Window.Callback
                    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
                        Window.Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.onWindowAttributesChanged(layoutParams);
                        }
                    }

                    @Override // android.view.Window.Callback
                    public void onWindowFocusChanged(boolean z) {
                        Window.Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.onWindowFocusChanged(z);
                        }
                    }

                    @Override // android.view.Window.Callback
                    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback2) {
                        Window.Callback callback3 = callback;
                        if (callback3 == null) {
                            return null;
                        }
                        callback3.onWindowStartingActionMode(callback2);
                        return null;
                    }

                    @Override // android.view.Window.Callback
                    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback2, int i) {
                        Window.Callback callback3 = callback;
                        if (callback3 == null) {
                            return null;
                        }
                        callback3.onWindowStartingActionMode(callback2, i);
                        return null;
                    }
                });
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
