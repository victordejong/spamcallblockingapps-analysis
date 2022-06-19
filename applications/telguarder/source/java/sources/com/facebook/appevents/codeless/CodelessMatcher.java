package com.facebook.appevents.codeless;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListView;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.appevents.codeless.CodelessLoggingEventListener;
import com.facebook.appevents.codeless.RCTCodelessLoggingEventListener;
import com.facebook.appevents.codeless.internal.Constants;
import com.facebook.appevents.codeless.internal.EventBinding;
import com.facebook.appevents.codeless.internal.ParameterComponent;
import com.facebook.appevents.codeless.internal.PathComponent;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.InternalSettings;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/codeless/CodelessMatcher.class */
public class CodelessMatcher {
    private static final String CURRENT_CLASS_NAME = ".";
    private static final String PARENT_CLASS_NAME = "..";
    private static final String TAG = "com.facebook.appevents.codeless.CodelessMatcher";
    private static CodelessMatcher codelessMatcher;
    private final Handler uiThreadHandler = new Handler(Looper.getMainLooper());
    private Set<Activity> activitiesSet = Collections.newSetFromMap(new WeakHashMap());
    private Set<ViewMatcher> viewMatchers = new HashSet();
    private HashSet<String> listenerSet = new HashSet<>();
    private HashMap<Integer, HashSet<String>> activityToListenerMap = new HashMap<>();

    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/codeless/CodelessMatcher$MatchedView.class */
    public static class MatchedView {
        private WeakReference<View> view;
        private String viewMapKey;

        public MatchedView(View view, String str) {
            this.view = new WeakReference<>(view);
            this.viewMapKey = str;
        }

        public View getView() {
            WeakReference<View> weakReference = this.view;
            return weakReference == null ? null : weakReference.get();
        }

        public String getViewMapKey() {
            return this.viewMapKey;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/codeless/CodelessMatcher$ViewMatcher.class */
    public static class ViewMatcher implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Runnable {
        private final String activityName;
        private List<EventBinding> eventBindings;
        private final Handler handler;
        private HashSet<String> listenerSet;
        private WeakReference<View> rootView;

        public ViewMatcher(View view, Handler handler, HashSet<String> hashSet, String str) {
            this.rootView = new WeakReference<>(view);
            this.handler = handler;
            this.listenerSet = hashSet;
            this.activityName = str;
            handler.postDelayed(this, 200L);
        }

        private void attachListener(MatchedView matchedView, View view, EventBinding eventBinding) {
            if (eventBinding == null) {
                return;
            }
            try {
                View view2 = matchedView.getView();
                if (view2 == null) {
                    return;
                }
                View findRCTRootView = ViewHierarchy.findRCTRootView(view2);
                if (findRCTRootView != null && ViewHierarchy.isRCTButton(view2, findRCTRootView)) {
                    attachRCTListener(matchedView, view, eventBinding);
                } else if (view2.getClass().getName().startsWith("com.facebook.react")) {
                } else {
                    if (!(view2 instanceof AdapterView)) {
                        attachOnClickListener(matchedView, view, eventBinding);
                    } else if (!(view2 instanceof ListView)) {
                    } else {
                        attachOnItemClickListener(matchedView, view, eventBinding);
                    }
                }
            } catch (Exception e) {
                Utility.logd(CodelessMatcher.access$100(), e);
            }
        }

        private void attachOnClickListener(MatchedView matchedView, View view, EventBinding eventBinding) {
            View view2 = matchedView.getView();
            if (view2 == null) {
                return;
            }
            String viewMapKey = matchedView.getViewMapKey();
            View.OnClickListener existingOnClickListener = ViewHierarchy.getExistingOnClickListener(view2);
            boolean z = (existingOnClickListener instanceof CodelessLoggingEventListener.AutoLoggingOnClickListener) && ((CodelessLoggingEventListener.AutoLoggingOnClickListener) existingOnClickListener).getSupportCodelessLogging();
            if (this.listenerSet.contains(viewMapKey) || z) {
                return;
            }
            view2.setOnClickListener(CodelessLoggingEventListener.getOnClickListener(eventBinding, view, view2));
            this.listenerSet.add(viewMapKey);
        }

        private void attachOnItemClickListener(MatchedView matchedView, View view, EventBinding eventBinding) {
            AdapterView adapterView = (AdapterView) matchedView.getView();
            if (adapterView == null) {
                return;
            }
            String viewMapKey = matchedView.getViewMapKey();
            AdapterView.OnItemClickListener onItemClickListener = adapterView.getOnItemClickListener();
            boolean z = (onItemClickListener instanceof CodelessLoggingEventListener.AutoLoggingOnItemClickListener) && ((CodelessLoggingEventListener.AutoLoggingOnItemClickListener) onItemClickListener).getSupportCodelessLogging();
            if (this.listenerSet.contains(viewMapKey) || z) {
                return;
            }
            adapterView.setOnItemClickListener(CodelessLoggingEventListener.getOnItemClickListener(eventBinding, view, adapterView));
            this.listenerSet.add(viewMapKey);
        }

        private void attachRCTListener(MatchedView matchedView, View view, EventBinding eventBinding) {
            View view2 = matchedView.getView();
            if (view2 == null) {
                return;
            }
            String viewMapKey = matchedView.getViewMapKey();
            View.OnTouchListener existingOnTouchListener = ViewHierarchy.getExistingOnTouchListener(view2);
            boolean z = (existingOnTouchListener instanceof RCTCodelessLoggingEventListener.AutoLoggingOnTouchListener) && ((RCTCodelessLoggingEventListener.AutoLoggingOnTouchListener) existingOnTouchListener).getSupportCodelessLogging();
            if (this.listenerSet.contains(viewMapKey) || z) {
                return;
            }
            view2.setOnTouchListener(RCTCodelessLoggingEventListener.getOnTouchListener(eventBinding, view, view2));
            this.listenerSet.add(viewMapKey);
        }

        public static List<MatchedView> findViewByPath(EventBinding eventBinding, View view, List<PathComponent> list, int i, int i2, String str) {
            String str2 = str + CodelessMatcher.CURRENT_CLASS_NAME + String.valueOf(i2);
            ArrayList arrayList = new ArrayList();
            if (view == null) {
                return arrayList;
            }
            if (i >= list.size()) {
                arrayList.add(new MatchedView(view, str2));
            } else {
                PathComponent pathComponent = list.get(i);
                if (pathComponent.className.equals(CodelessMatcher.PARENT_CLASS_NAME)) {
                    ViewParent parent = view.getParent();
                    if (parent instanceof ViewGroup) {
                        List<View> findVisibleChildren = findVisibleChildren((ViewGroup) parent);
                        int size = findVisibleChildren.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            arrayList.addAll(findViewByPath(eventBinding, findVisibleChildren.get(i3), list, i + 1, i3, str2));
                        }
                    }
                    return arrayList;
                } else if (pathComponent.className.equals(CodelessMatcher.CURRENT_CLASS_NAME)) {
                    arrayList.add(new MatchedView(view, str2));
                    return arrayList;
                } else if (!isTheSameView(view, pathComponent, i2)) {
                    return arrayList;
                } else {
                    if (i == list.size() - 1) {
                        arrayList.add(new MatchedView(view, str2));
                    }
                }
            }
            if (view instanceof ViewGroup) {
                List<View> findVisibleChildren2 = findVisibleChildren((ViewGroup) view);
                int size2 = findVisibleChildren2.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    arrayList.addAll(findViewByPath(eventBinding, findVisibleChildren2.get(i4), list, i + 1, i4, str2));
                }
            }
            return arrayList;
        }

        private static List<View> findVisibleChildren(ViewGroup viewGroup) {
            ArrayList arrayList = new ArrayList();
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    arrayList.add(childAt);
                }
            }
            return arrayList;
        }

        private static boolean isTheSameView(View view, PathComponent pathComponent, int i) {
            if (pathComponent.index == -1 || i == pathComponent.index) {
                if (!view.getClass().getCanonicalName().equals(pathComponent.className)) {
                    if (!pathComponent.className.matches(".*android\\..*")) {
                        return false;
                    }
                    String[] split = pathComponent.className.split("\\.");
                    if (split.length <= 0) {
                        return false;
                    }
                    if (!view.getClass().getSimpleName().equals(split[split.length - 1])) {
                        return false;
                    }
                }
                if ((pathComponent.matchBitmask & PathComponent.MatchBitmaskType.ID.getValue()) > 0 && pathComponent.f92id != view.getId()) {
                    return false;
                }
                if ((pathComponent.matchBitmask & PathComponent.MatchBitmaskType.TEXT.getValue()) > 0) {
                    String str = pathComponent.text;
                    String textOfView = ViewHierarchy.getTextOfView(view);
                    String coerceValueIfNullOrEmpty = Utility.coerceValueIfNullOrEmpty(Utility.sha256hash(textOfView), "");
                    if (!str.equals(textOfView) && !str.equals(coerceValueIfNullOrEmpty)) {
                        return false;
                    }
                }
                if ((pathComponent.matchBitmask & PathComponent.MatchBitmaskType.DESCRIPTION.getValue()) > 0) {
                    String str2 = pathComponent.description;
                    String valueOf = view.getContentDescription() == null ? "" : String.valueOf(view.getContentDescription());
                    String coerceValueIfNullOrEmpty2 = Utility.coerceValueIfNullOrEmpty(Utility.sha256hash(valueOf), "");
                    if (!str2.equals(valueOf) && !str2.equals(coerceValueIfNullOrEmpty2)) {
                        return false;
                    }
                }
                if ((pathComponent.matchBitmask & PathComponent.MatchBitmaskType.HINT.getValue()) > 0) {
                    String str3 = pathComponent.hint;
                    String hintOfView = ViewHierarchy.getHintOfView(view);
                    String coerceValueIfNullOrEmpty3 = Utility.coerceValueIfNullOrEmpty(Utility.sha256hash(hintOfView), "");
                    if (!str3.equals(hintOfView) && !str3.equals(coerceValueIfNullOrEmpty3)) {
                        return false;
                    }
                }
                if ((pathComponent.matchBitmask & PathComponent.MatchBitmaskType.TAG.getValue()) <= 0) {
                    return true;
                }
                String str4 = pathComponent.tag;
                String valueOf2 = view.getTag() == null ? "" : String.valueOf(view.getTag());
                return str4.equals(valueOf2) || str4.equals(Utility.coerceValueIfNullOrEmpty(Utility.sha256hash(valueOf2), ""));
            }
            return false;
        }

        private void startMatch() {
            if (this.eventBindings == null || this.rootView.get() == null) {
                return;
            }
            for (int i = 0; i < this.eventBindings.size(); i++) {
                findView(this.eventBindings.get(i), this.rootView.get());
            }
        }

        public void findView(EventBinding eventBinding, View view) {
            if (eventBinding == null || view == null) {
                return;
            }
            if (!TextUtils.isEmpty(eventBinding.getActivityName()) && !eventBinding.getActivityName().equals(this.activityName)) {
                return;
            }
            List<PathComponent> viewPath = eventBinding.getViewPath();
            if (viewPath.size() > 25) {
                return;
            }
            for (MatchedView matchedView : findViewByPath(eventBinding, view, viewPath, 0, -1, this.activityName)) {
                attachListener(matchedView, view, eventBinding);
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            startMatch();
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            startMatch();
        }

        @Override // java.lang.Runnable
        public void run() {
            View view;
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                FetchedAppSettings appSettingsWithoutQuery = FetchedAppSettingsManager.getAppSettingsWithoutQuery(FacebookSdk.getApplicationId());
                if (appSettingsWithoutQuery != null && appSettingsWithoutQuery.getCodelessEventsEnabled()) {
                    List<EventBinding> parseArray = EventBinding.parseArray(appSettingsWithoutQuery.getEventBindings());
                    this.eventBindings = parseArray;
                    if (parseArray == null || (view = this.rootView.get()) == null) {
                        return;
                    }
                    ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                    if (viewTreeObserver.isAlive()) {
                        viewTreeObserver.addOnGlobalLayoutListener(this);
                        viewTreeObserver.addOnScrollChangedListener(this);
                    }
                    startMatch();
                }
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        }
    }

    private CodelessMatcher() {
    }

    static /* synthetic */ void access$000(CodelessMatcher codelessMatcher2) {
        if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
            return;
        }
        try {
            codelessMatcher2.matchViews();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessMatcher.class);
        }
    }

    static /* synthetic */ String access$100() {
        if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
            return null;
        }
        try {
            return TAG;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessMatcher.class);
            return null;
        }
    }

    public static CodelessMatcher getInstance() {
        synchronized (CodelessMatcher.class) {
            try {
                if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
                    return null;
                }
                if (codelessMatcher == null) {
                    codelessMatcher = new CodelessMatcher();
                }
                return codelessMatcher;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Bundle getParameters(EventBinding eventBinding, View view, View view2) {
        if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            if (eventBinding == null) {
                return bundle;
            }
            List<ParameterComponent> viewParameters = eventBinding.getViewParameters();
            if (viewParameters != null) {
                for (ParameterComponent parameterComponent : viewParameters) {
                    if (parameterComponent.value != null && parameterComponent.value.length() > 0) {
                        bundle.putString(parameterComponent.name, parameterComponent.value);
                    } else if (parameterComponent.path.size() > 0) {
                        Iterator<MatchedView> it = (parameterComponent.pathType.equals(Constants.PATH_TYPE_RELATIVE) ? ViewMatcher.findViewByPath(eventBinding, view2, parameterComponent.path, 0, -1, view2.getClass().getSimpleName()) : ViewMatcher.findViewByPath(eventBinding, view, parameterComponent.path, 0, -1, view.getClass().getSimpleName())).iterator();
                        while (true) {
                            if (it.hasNext()) {
                                MatchedView next = it.next();
                                if (next.getView() != null) {
                                    String textOfView = ViewHierarchy.getTextOfView(next.getView());
                                    if (textOfView.length() > 0) {
                                        bundle.putString(parameterComponent.name, textOfView);
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return bundle;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessMatcher.class);
            return null;
        }
    }

    private void matchViews() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            for (Activity activity : this.activitiesSet) {
                if (activity != null) {
                    this.viewMatchers.add(new ViewMatcher(AppEventUtility.getRootView(activity), this.uiThreadHandler, this.listenerSet, activity.getClass().getSimpleName()));
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private void startTracking() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                matchViews();
            } else {
                this.uiThreadHandler.post(new Runnable() { // from class: com.facebook.appevents.codeless.CodelessMatcher.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (CrashShieldHandler.isObjectCrashing(this)) {
                            return;
                        }
                        try {
                            CodelessMatcher.access$000(CodelessMatcher.this);
                        } catch (Throwable th) {
                            CrashShieldHandler.handleThrowable(th, this);
                        }
                    }
                });
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public void add(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (InternalSettings.isUnityApp()) {
                return;
            }
            if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
                throw new FacebookException("Can't add activity to CodelessMatcher on non-UI thread");
            }
            this.activitiesSet.add(activity);
            this.listenerSet.clear();
            if (this.activityToListenerMap.containsKey(Integer.valueOf(activity.hashCode()))) {
                this.listenerSet = this.activityToListenerMap.get(Integer.valueOf(activity.hashCode()));
            }
            startTracking();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public void destroy(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            this.activityToListenerMap.remove(Integer.valueOf(activity.hashCode()));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public void remove(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (InternalSettings.isUnityApp()) {
                return;
            }
            if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
                throw new FacebookException("Can't remove activity from CodelessMatcher on non-UI thread");
            }
            this.activitiesSet.remove(activity);
            this.viewMatchers.clear();
            this.activityToListenerMap.put(Integer.valueOf(activity.hashCode()), (HashSet) this.listenerSet.clone());
            this.listenerSet.clear();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
