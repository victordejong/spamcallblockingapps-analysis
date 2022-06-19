package com.facebook.appevents.aam;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.appevents.UserDataStore;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/aam/MetadataViewObserver.class */
public final class MetadataViewObserver implements ViewTreeObserver.OnGlobalFocusChangeListener {
    private static final int MAX_TEXT_LENGTH = 100;
    private static final String TAG = "com.facebook.appevents.aam.MetadataViewObserver";
    private static final Map<Integer, MetadataViewObserver> observers = new HashMap();
    private WeakReference<Activity> activityWeakReference;
    private final Set<String> processedText = new HashSet();
    private final Handler uiThreadHandler = new Handler(Looper.getMainLooper());
    private AtomicBoolean isTracking = new AtomicBoolean(false);

    private MetadataViewObserver(Activity activity) {
        this.activityWeakReference = new WeakReference<>(activity);
    }

    static /* synthetic */ void access$000(MetadataViewObserver metadataViewObserver, View view) {
        if (CrashShieldHandler.isObjectCrashing(MetadataViewObserver.class)) {
            return;
        }
        try {
            metadataViewObserver.processEditText(view);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataViewObserver.class);
        }
    }

    private static String preNormalize(String str, String str2) {
        if (CrashShieldHandler.isObjectCrashing(MetadataViewObserver.class)) {
            return null;
        }
        try {
            return "r2".equals(str) ? str2.replaceAll("[^\\d.]", "") : str2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataViewObserver.class);
            return null;
        }
    }

    private void process(final View view) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            runOnUIThread(new Runnable() { // from class: com.facebook.appevents.aam.MetadataViewObserver.1
                @Override // java.lang.Runnable
                public void run() {
                    if (CrashShieldHandler.isObjectCrashing(this)) {
                        return;
                    }
                    try {
                        View view2 = view;
                        if (!(view2 instanceof EditText)) {
                            return;
                        }
                        MetadataViewObserver.access$000(MetadataViewObserver.this, view2);
                    } catch (Throwable th) {
                        CrashShieldHandler.handleThrowable(th, this);
                    }
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private void processEditText(View view) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            String lowerCase = ((EditText) view).getText().toString().trim().toLowerCase();
            if (!lowerCase.isEmpty() && !this.processedText.contains(lowerCase) && lowerCase.length() <= 100) {
                this.processedText.add(lowerCase);
                HashMap hashMap = new HashMap();
                List<String> currentViewIndicators = MetadataMatcher.getCurrentViewIndicators(view);
                List<String> list = null;
                for (MetadataRule metadataRule : MetadataRule.getRules()) {
                    String preNormalize = preNormalize(metadataRule.getName(), lowerCase);
                    if (metadataRule.getValRule().isEmpty() || MetadataMatcher.matchValue(preNormalize, metadataRule.getValRule())) {
                        if (MetadataMatcher.matchIndicator(currentViewIndicators, metadataRule.getKeyRules())) {
                            putUserData(hashMap, metadataRule.getName(), preNormalize);
                        } else {
                            List<String> list2 = list;
                            if (list == null) {
                                list2 = MetadataMatcher.getAroundViewIndicators(view);
                            }
                            list = list2;
                            if (MetadataMatcher.matchIndicator(list2, metadataRule.getKeyRules())) {
                                putUserData(hashMap, metadataRule.getName(), preNormalize);
                                list = list2;
                            }
                        }
                    }
                }
                InternalAppEventsLogger.setInternalUserData(hashMap);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private static void putUserData(Map<String, String> map, String str, String str2) {
        String str3;
        if (CrashShieldHandler.isObjectCrashing(MetadataViewObserver.class)) {
            return;
        }
        boolean z = true;
        try {
            switch (str.hashCode()) {
                case 3585:
                    if (str.equals("r3")) {
                        z = false;
                        break;
                    }
                    break;
                case 3586:
                    if (str.equals("r4")) {
                        z = true;
                        break;
                    }
                    break;
                case 3587:
                    if (str.equals("r5")) {
                        z = true;
                        break;
                    }
                    break;
                case 3588:
                    if (str.equals("r6")) {
                        z = true;
                        break;
                    }
                    break;
            }
            if (!z) {
                if (!str2.startsWith("m") && !str2.startsWith("b") && !str2.startsWith(UserDataStore.GENDER)) {
                    str3 = "f";
                }
                str3 = "m";
            } else if (z || z) {
                str3 = str2.replaceAll("[^a-z]+", "");
            } else if (!z) {
                str3 = str2;
            } else {
                str3 = str2;
                if (str2.contains("-")) {
                    str3 = str2.split("-")[0];
                }
            }
            map.put(str, str3);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataViewObserver.class);
        }
    }

    private void runOnUIThread(Runnable runnable) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                runnable.run();
            } else {
                this.uiThreadHandler.post(runnable);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private void startTracking() {
        View rootView;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (this.isTracking.getAndSet(true) || (rootView = AppEventUtility.getRootView(this.activityWeakReference.get())) == null) {
                return;
            }
            ViewTreeObserver viewTreeObserver = rootView.getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return;
            }
            viewTreeObserver.addOnGlobalFocusChangeListener(this);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public static void startTrackingActivity(Activity activity) {
        MetadataViewObserver metadataViewObserver;
        if (CrashShieldHandler.isObjectCrashing(MetadataViewObserver.class)) {
            return;
        }
        try {
            int hashCode = activity.hashCode();
            Map<Integer, MetadataViewObserver> map = observers;
            if (!map.containsKey(Integer.valueOf(hashCode))) {
                MetadataViewObserver metadataViewObserver2 = new MetadataViewObserver(activity);
                map.put(Integer.valueOf(activity.hashCode()), metadataViewObserver2);
                metadataViewObserver = metadataViewObserver2;
            } else {
                metadataViewObserver = map.get(Integer.valueOf(hashCode));
            }
            metadataViewObserver.startTracking();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataViewObserver.class);
        }
    }

    private void stopTracking() {
        View rootView;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (!this.isTracking.getAndSet(false) || (rootView = AppEventUtility.getRootView(this.activityWeakReference.get())) == null) {
                return;
            }
            ViewTreeObserver viewTreeObserver = rootView.getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return;
            }
            viewTreeObserver.removeOnGlobalFocusChangeListener(this);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    static void stopTrackingActivity(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(MetadataViewObserver.class)) {
            return;
        }
        try {
            int hashCode = activity.hashCode();
            Map<Integer, MetadataViewObserver> map = observers;
            if (!map.containsKey(Integer.valueOf(hashCode))) {
                return;
            }
            map.remove(Integer.valueOf(hashCode));
            map.get(Integer.valueOf(activity.hashCode())).stopTracking();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataViewObserver.class);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public void onGlobalFocusChanged(View view, View view2) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        if (view != null) {
            try {
                process(view);
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
                return;
            }
        }
        if (view2 == null) {
            return;
        }
        process(view2);
    }
}
