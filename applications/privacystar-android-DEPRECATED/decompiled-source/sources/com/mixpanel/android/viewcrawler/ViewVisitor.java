package com.mixpanel.android.viewcrawler;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mixpanel.android.util.MPLog;
import com.mixpanel.android.viewcrawler.Pathfinder;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.WeakHashMap;
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewVisitor.class */
abstract class ViewVisitor implements Pathfinder.Accumulator {
    private static final String LOGTAG = "MixpanelAPI.ViewVisitor";
    private final List<Pathfinder.PathElement> mPath;
    private final Pathfinder mPathfinder = new Pathfinder();

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewVisitor$AddAccessibilityEventVisitor.class */
    public static class AddAccessibilityEventVisitor extends EventTriggeringVisitor {
        private final int mEventType;
        private final WeakHashMap<View, TrackingAccessibilityDelegate> mWatching = new WeakHashMap<>();

        /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewVisitor$AddAccessibilityEventVisitor$TrackingAccessibilityDelegate.class */
        private class TrackingAccessibilityDelegate extends View.AccessibilityDelegate {
            private View.AccessibilityDelegate mRealDelegate;

            public TrackingAccessibilityDelegate(View.AccessibilityDelegate accessibilityDelegate) {
                this.mRealDelegate = accessibilityDelegate;
            }

            public View.AccessibilityDelegate getRealDelegate() {
                return this.mRealDelegate;
            }

            public void removeFromDelegateChain(TrackingAccessibilityDelegate trackingAccessibilityDelegate) {
                if (this.mRealDelegate == trackingAccessibilityDelegate) {
                    this.mRealDelegate = trackingAccessibilityDelegate.getRealDelegate();
                } else if (this.mRealDelegate instanceof TrackingAccessibilityDelegate) {
                    ((TrackingAccessibilityDelegate) this.mRealDelegate).removeFromDelegateChain(trackingAccessibilityDelegate);
                }
            }

            @Override // android.view.View.AccessibilityDelegate
            public void sendAccessibilityEvent(View view, int i) {
                if (i == AddAccessibilityEventVisitor.this.mEventType) {
                    AddAccessibilityEventVisitor.this.fireEvent(view);
                }
                if (this.mRealDelegate != null) {
                    this.mRealDelegate.sendAccessibilityEvent(view, i);
                }
            }

            public boolean willFireEvent(String str) {
                if (AddAccessibilityEventVisitor.this.getEventName() == str) {
                    return true;
                }
                if (this.mRealDelegate instanceof TrackingAccessibilityDelegate) {
                    return ((TrackingAccessibilityDelegate) this.mRealDelegate).willFireEvent(str);
                }
                return false;
            }
        }

        public AddAccessibilityEventVisitor(List<Pathfinder.PathElement> list, int i, String str, OnEventListener onEventListener) {
            super(list, str, onEventListener, false);
            this.mEventType = i;
        }

        private View.AccessibilityDelegate getOldDelegate(View view) {
            View.AccessibilityDelegate accessibilityDelegate;
            try {
                accessibilityDelegate = (View.AccessibilityDelegate) view.getClass().getMethod("getAccessibilityDelegate", new Class[0]).invoke(view, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException e) {
                accessibilityDelegate = null;
                return accessibilityDelegate;
            } catch (InvocationTargetException e2) {
                MPLog.m304w(ViewVisitor.LOGTAG, "getAccessibilityDelegate threw an exception when called.", e2);
                accessibilityDelegate = null;
                return accessibilityDelegate;
            }
            return accessibilityDelegate;
        }

        @Override // com.mixpanel.android.viewcrawler.Pathfinder.Accumulator
        public void accumulate(View view) {
            View.AccessibilityDelegate oldDelegate = getOldDelegate(view);
            if (!(oldDelegate instanceof TrackingAccessibilityDelegate) || !((TrackingAccessibilityDelegate) oldDelegate).willFireEvent(getEventName())) {
                TrackingAccessibilityDelegate trackingAccessibilityDelegate = new TrackingAccessibilityDelegate(oldDelegate);
                view.setAccessibilityDelegate(trackingAccessibilityDelegate);
                this.mWatching.put(view, trackingAccessibilityDelegate);
            }
        }

        @Override // com.mixpanel.android.viewcrawler.ViewVisitor
        public void cleanup() {
            for (Map.Entry<View, TrackingAccessibilityDelegate> entry : this.mWatching.entrySet()) {
                View key = entry.getKey();
                TrackingAccessibilityDelegate value = entry.getValue();
                View.AccessibilityDelegate oldDelegate = getOldDelegate(key);
                if (oldDelegate == value) {
                    key.setAccessibilityDelegate(value.getRealDelegate());
                } else if (oldDelegate instanceof TrackingAccessibilityDelegate) {
                    ((TrackingAccessibilityDelegate) oldDelegate).removeFromDelegateChain(value);
                }
            }
            this.mWatching.clear();
        }

        @Override // com.mixpanel.android.viewcrawler.ViewVisitor
        protected String name() {
            return getEventName() + " event when (" + this.mEventType + ")";
        }

        @Override // com.mixpanel.android.viewcrawler.ViewVisitor
        public /* bridge */ /* synthetic */ void visit(View view) {
            super.visit(view);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewVisitor$AddTextChangeListener.class */
    public static class AddTextChangeListener extends EventTriggeringVisitor {
        private final Map<TextView, TextWatcher> mWatching = new HashMap();

        /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewVisitor$AddTextChangeListener$TrackingTextWatcher.class */
        private class TrackingTextWatcher implements TextWatcher {
            private final View mBoundTo;

            public TrackingTextWatcher(View view) {
                this.mBoundTo = view;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                AddTextChangeListener.this.fireEvent(this.mBoundTo);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        }

        public AddTextChangeListener(List<Pathfinder.PathElement> list, String str, OnEventListener onEventListener) {
            super(list, str, onEventListener, true);
        }

        @Override // com.mixpanel.android.viewcrawler.Pathfinder.Accumulator
        public void accumulate(View view) {
            if (view instanceof TextView) {
                TextView textView = (TextView) view;
                TrackingTextWatcher trackingTextWatcher = new TrackingTextWatcher(textView);
                TextWatcher textWatcher = this.mWatching.get(textView);
                if (textWatcher != null) {
                    textView.removeTextChangedListener(textWatcher);
                }
                textView.addTextChangedListener(trackingTextWatcher);
                this.mWatching.put(textView, trackingTextWatcher);
            }
        }

        @Override // com.mixpanel.android.viewcrawler.ViewVisitor
        public void cleanup() {
            for (Map.Entry<TextView, TextWatcher> entry : this.mWatching.entrySet()) {
                entry.getKey().removeTextChangedListener(entry.getValue());
            }
            this.mWatching.clear();
        }

        @Override // com.mixpanel.android.viewcrawler.ViewVisitor
        protected String name() {
            return getEventName() + " on Text Change";
        }

        @Override // com.mixpanel.android.viewcrawler.ViewVisitor
        public /* bridge */ /* synthetic */ void visit(View view) {
            super.visit(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewVisitor$CycleDetector.class */
    public static class CycleDetector {
        private CycleDetector() {
        }

        private boolean detectSubgraphCycle(TreeMap<View, List<View>> treeMap, View view, List<View> list) {
            if (list.contains(view)) {
                return false;
            }
            if (!treeMap.containsKey(view)) {
                return true;
            }
            List<View> remove = treeMap.remove(view);
            list.add(view);
            int size = remove.size();
            for (int i = 0; i < size; i++) {
                if (!detectSubgraphCycle(treeMap, remove.get(i), list)) {
                    return false;
                }
            }
            list.remove(view);
            return true;
        }

        public boolean hasCycle(TreeMap<View, List<View>> treeMap) {
            ArrayList arrayList = new ArrayList();
            while (!treeMap.isEmpty()) {
                if (!detectSubgraphCycle(treeMap, treeMap.firstKey(), arrayList)) {
                    return false;
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewVisitor$EventTriggeringVisitor.class */
    public static abstract class EventTriggeringVisitor extends ViewVisitor {
        private final boolean mDebounce;
        private final String mEventName;
        private final OnEventListener mListener;

        public EventTriggeringVisitor(List<Pathfinder.PathElement> list, String str, OnEventListener onEventListener, boolean z) {
            super(list);
            this.mListener = onEventListener;
            this.mEventName = str;
            this.mDebounce = z;
        }

        protected void fireEvent(View view) {
            this.mListener.OnEvent(view, this.mEventName, this.mDebounce);
        }

        protected String getEventName() {
            return this.mEventName;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewVisitor$LayoutErrorMessage.class */
    public static class LayoutErrorMessage {
        private final String mErrorType;
        private final String mName;

        public LayoutErrorMessage(String str, String str2) {
            this.mErrorType = str;
            this.mName = str2;
        }

        public String getErrorType() {
            return this.mErrorType;
        }

        public String getName() {
            return this.mName;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewVisitor$LayoutRule.class */
    public static class LayoutRule {
        public final int anchor;
        public final int verb;
        public final int viewId;

        public LayoutRule(int i, int i2, int i3) {
            this.viewId = i;
            this.verb = i2;
            this.anchor = i3;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewVisitor$LayoutUpdateVisitor.class */
    public static class LayoutUpdateVisitor extends ViewVisitor {
        private static final Set<Integer> mHorizontalRules = new HashSet(Arrays.asList(0, 1, 5, 7));
        private static final Set<Integer> mVerticalRules = new HashSet(Arrays.asList(2, 3, 4, 6, 8));
        private final List<LayoutRule> mArgs;
        private final String mName;
        private final OnLayoutErrorListener mOnLayoutErrorListener;
        private final WeakHashMap<View, int[]> mOriginalValues = new WeakHashMap<>();
        private boolean mAlive = true;
        private final CycleDetector mCycleDetector = new CycleDetector();

        public LayoutUpdateVisitor(List<Pathfinder.PathElement> list, List<LayoutRule> list2, String str, OnLayoutErrorListener onLayoutErrorListener) {
            super(list);
            this.mArgs = list2;
            this.mName = str;
            this.mOnLayoutErrorListener = onLayoutErrorListener;
        }

        private boolean verifyLayout(Set<Integer> set, SparseArray<View> sparseArray) {
            TreeMap<View, List<View>> treeMap = new TreeMap<>(new Comparator<View>() { // from class: com.mixpanel.android.viewcrawler.ViewVisitor.LayoutUpdateVisitor.1
                public int compare(View view, View view2) {
                    if (view == view2) {
                        return 0;
                    }
                    if (view == null) {
                        return -1;
                    }
                    if (view2 == null) {
                        return 1;
                    }
                    return view2.hashCode() - view.hashCode();
                }
            });
            int size = sparseArray.size();
            for (int i = 0; i < size; i++) {
                View valueAt = sparseArray.valueAt(i);
                int[] rules = ((RelativeLayout.LayoutParams) valueAt.getLayoutParams()).getRules();
                ArrayList arrayList = new ArrayList();
                for (Integer num : set) {
                    int i2 = rules[num.intValue()];
                    if (i2 > 0 && i2 != valueAt.getId()) {
                        arrayList.add(sparseArray.get(i2));
                    }
                }
                treeMap.put(valueAt, arrayList);
            }
            return this.mCycleDetector.hasCycle(treeMap);
        }

        @Override // com.mixpanel.android.viewcrawler.Pathfinder.Accumulator
        public void accumulate(View view) {
            ViewGroup viewGroup = (ViewGroup) view;
            SparseArray<View> sparseArray = new SparseArray<>();
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                int id = childAt.getId();
                if (id > 0) {
                    sparseArray.put(id, childAt);
                }
            }
            int size = this.mArgs.size();
            for (int i2 = 0; i2 < size; i2++) {
                LayoutRule layoutRule = this.mArgs.get(i2);
                View view2 = sparseArray.get(layoutRule.viewId);
                if (view2 != null) {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view2.getLayoutParams();
                    int[] iArr = (int[]) layoutParams.getRules().clone();
                    if (iArr[layoutRule.verb] != layoutRule.anchor) {
                        if (!this.mOriginalValues.containsKey(view2)) {
                            this.mOriginalValues.put(view2, iArr);
                        }
                        layoutParams.addRule(layoutRule.verb, layoutRule.anchor);
                        Set<Integer> set = mHorizontalRules.contains(Integer.valueOf(layoutRule.verb)) ? mHorizontalRules : mVerticalRules.contains(Integer.valueOf(layoutRule.verb)) ? mVerticalRules : null;
                        if (set == null || verifyLayout(set, sparseArray)) {
                            view2.setLayoutParams(layoutParams);
                        } else {
                            cleanup();
                            this.mOnLayoutErrorListener.onLayoutError(new LayoutErrorMessage("circular_dependency", this.mName));
                            return;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }

        @Override // com.mixpanel.android.viewcrawler.ViewVisitor
        public void cleanup() {
            Iterator<Map.Entry<View, int[]>> it = this.mOriginalValues.entrySet().iterator();
            while (true) {
                if (it.hasNext()) {
                    Map.Entry<View, int[]> next = it.next();
                    View key = next.getKey();
                    int[] value = next.getValue();
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) key.getLayoutParams();
                    for (int i = 0; i < value.length; i++) {
                        layoutParams.addRule(i, value[i]);
                    }
                    key.setLayoutParams(layoutParams);
                } else {
                    this.mAlive = false;
                    return;
                }
            }
        }

        @Override // com.mixpanel.android.viewcrawler.ViewVisitor
        protected String name() {
            return "Layout Update";
        }

        @Override // com.mixpanel.android.viewcrawler.ViewVisitor
        public void visit(View view) {
            if (this.mAlive) {
                getPathfinder().findTargetsInRoot(view, getPath(), this);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewVisitor$OnEventListener.class */
    public interface OnEventListener {
        void OnEvent(View view, String str, boolean z);
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewVisitor$OnLayoutErrorListener.class */
    public interface OnLayoutErrorListener {
        void onLayoutError(LayoutErrorMessage layoutErrorMessage);
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewVisitor$PropertySetVisitor.class */
    public static class PropertySetVisitor extends ViewVisitor {
        private final Caller mAccessor;
        private final Caller mMutator;
        private final Object[] mOriginalValueHolder = new Object[1];
        private final WeakHashMap<View, Object> mOriginalValues = new WeakHashMap<>();

        public PropertySetVisitor(List<Pathfinder.PathElement> list, Caller caller, Caller caller2) {
            super(list);
            this.mMutator = caller;
            this.mAccessor = caller2;
        }

        @Override // com.mixpanel.android.viewcrawler.Pathfinder.Accumulator
        public void accumulate(View view) {
            if (this.mAccessor != null) {
                Object[] args = this.mMutator.getArgs();
                if (1 == args.length) {
                    Object obj = args[0];
                    Object applyMethod = this.mAccessor.applyMethod(view);
                    if (obj != applyMethod) {
                        if (obj != null) {
                            if (!(obj instanceof Bitmap) || !(applyMethod instanceof Bitmap)) {
                                if ((obj instanceof BitmapDrawable) && (applyMethod instanceof BitmapDrawable)) {
                                    Bitmap bitmap = ((BitmapDrawable) obj).getBitmap();
                                    Bitmap bitmap2 = ((BitmapDrawable) applyMethod).getBitmap();
                                    if (bitmap != null && bitmap.sameAs(bitmap2)) {
                                        return;
                                    }
                                } else if (obj.equals(applyMethod)) {
                                    return;
                                }
                            } else if (((Bitmap) obj).sameAs((Bitmap) applyMethod)) {
                                return;
                            }
                        }
                        if (!(applyMethod instanceof Bitmap) && !(applyMethod instanceof BitmapDrawable) && !this.mOriginalValues.containsKey(view)) {
                            this.mOriginalValueHolder[0] = applyMethod;
                            if (this.mMutator.argsAreApplicable(this.mOriginalValueHolder)) {
                                this.mOriginalValues.put(view, applyMethod);
                            } else {
                                this.mOriginalValues.put(view, null);
                            }
                        }
                    } else {
                        return;
                    }
                }
            }
            this.mMutator.applyMethod(view);
        }

        @Override // com.mixpanel.android.viewcrawler.ViewVisitor
        public void cleanup() {
            for (Map.Entry<View, Object> entry : this.mOriginalValues.entrySet()) {
                View key = entry.getKey();
                Object value = entry.getValue();
                if (value != null) {
                    this.mOriginalValueHolder[0] = value;
                    this.mMutator.applyMethodWithArguments(key, this.mOriginalValueHolder);
                }
            }
        }

        @Override // com.mixpanel.android.viewcrawler.ViewVisitor
        protected String name() {
            return "Property Mutator";
        }

        @Override // com.mixpanel.android.viewcrawler.ViewVisitor
        public /* bridge */ /* synthetic */ void visit(View view) {
            ViewVisitor.super.visit(view);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewVisitor$ViewDetectorVisitor.class */
    public static class ViewDetectorVisitor extends EventTriggeringVisitor {
        private boolean mSeen = false;

        public ViewDetectorVisitor(List<Pathfinder.PathElement> list, String str, OnEventListener onEventListener) {
            super(list, str, onEventListener, false);
        }

        @Override // com.mixpanel.android.viewcrawler.Pathfinder.Accumulator
        public void accumulate(View view) {
            if (view != null && !this.mSeen) {
                fireEvent(view);
            }
            this.mSeen = view != null;
        }

        @Override // com.mixpanel.android.viewcrawler.ViewVisitor
        public void cleanup() {
        }

        @Override // com.mixpanel.android.viewcrawler.ViewVisitor
        protected String name() {
            return getEventName() + " when Detected";
        }

        @Override // com.mixpanel.android.viewcrawler.ViewVisitor
        public /* bridge */ /* synthetic */ void visit(View view) {
            super.visit(view);
        }
    }

    protected ViewVisitor(List<Pathfinder.PathElement> list) {
        this.mPath = list;
    }

    public abstract void cleanup();

    protected List<Pathfinder.PathElement> getPath() {
        return this.mPath;
    }

    protected Pathfinder getPathfinder() {
        return this.mPathfinder;
    }

    protected abstract String name();

    public void visit(View view) {
        this.mPathfinder.findTargetsInRoot(view, this.mPath, this);
    }
}
