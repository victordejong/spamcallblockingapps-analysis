package androidx.core.p023g;

import android.os.Build;
import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.core.C0404a;
import androidx.core.p023g.p024a.C0510d;
import androidx.core.p023g.p024a.C0514e;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.core.g.a */
/* loaded from: classes-dex2jar.jar:androidx/core/g/a.class */
public class C0503a {
    private static final View.AccessibilityDelegate DEFAULT_DELEGATE = new View.AccessibilityDelegate();
    private final View.AccessibilityDelegate mBridge;
    private final View.AccessibilityDelegate mOriginalDelegate;

    /* renamed from: androidx.core.g.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/a$a.class */
    public static final class C0504a extends View.AccessibilityDelegate {

        /* renamed from: a */
        final C0503a f1806a;

        C0504a(C0503a c0503a) {
            this.f1806a = c0503a;
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f1806a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            C0514e accessibilityNodeProvider = this.f1806a.getAccessibilityNodeProvider(view);
            return accessibilityNodeProvider != null ? (AccessibilityNodeProvider) accessibilityNodeProvider.m6375a() : null;
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f1806a.onInitializeAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            C0510d m6447a = C0510d.m6447a(accessibilityNodeInfo);
            m6447a.m6393n(C0552u.m6289G(view));
            m6447a.m6389p(C0552u.m6287I(view));
            m6447a.m6406h(C0552u.m6288H(view));
            this.f1806a.onInitializeAccessibilityNodeInfo(view, m6447a);
            m6447a.m6443a(accessibilityNodeInfo.getText(), view);
            List<C0510d.C0511a> actionList = C0503a.getActionList(view);
            for (int i = 0; i < actionList.size(); i++) {
                m6447a.m6446a(actionList.get(i));
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f1806a.onPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.f1806a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            return this.f1806a.performAccessibilityAction(view, i, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEvent(View view, int i) {
            this.f1806a.sendAccessibilityEvent(view, i);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.f1806a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
        }
    }

    public C0503a() {
        this(DEFAULT_DELEGATE);
    }

    public C0503a(View.AccessibilityDelegate accessibilityDelegate) {
        this.mOriginalDelegate = accessibilityDelegate;
        this.mBridge = new C0504a(this);
    }

    static List<C0510d.C0511a> getActionList(View view) {
        List<C0510d.C0511a> list = (List) view.getTag(C0404a.C0407c.tag_accessibility_actions);
        List<C0510d.C0511a> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    private boolean isSpanStillValid(ClickableSpan clickableSpan, View view) {
        if (clickableSpan != null) {
            ClickableSpan[] m6421d = C0510d.m6421d(view.createAccessibilityNodeInfo().getText());
            for (int i = 0; m6421d != null && i < m6421d.length; i++) {
                if (clickableSpan.equals(m6421d[i])) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private boolean performClickableSpanAction(int i, View view) {
        WeakReference weakReference;
        SparseArray sparseArray = (SparseArray) view.getTag(C0404a.C0407c.tag_accessibility_clickable_spans);
        if (sparseArray == null || (weakReference = (WeakReference) sparseArray.get(i)) == null) {
            return false;
        }
        ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
        if (!isSpanStillValid(clickableSpan, view)) {
            return false;
        }
        clickableSpan.onClick(view);
        return true;
    }

    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return this.mOriginalDelegate.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public C0514e getAccessibilityNodeProvider(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider;
        if (Build.VERSION.SDK_INT < 16 || (accessibilityNodeProvider = this.mOriginalDelegate.getAccessibilityNodeProvider(view)) == null) {
            return null;
        }
        return new C0514e(accessibilityNodeProvider);
    }

    public View.AccessibilityDelegate getBridge() {
        return this.mBridge;
    }

    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.mOriginalDelegate.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void onInitializeAccessibilityNodeInfo(View view, C0510d c0510d) {
        this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(view, c0510d.m6456a());
    }

    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.mOriginalDelegate.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.mOriginalDelegate.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        boolean z;
        List<C0510d.C0511a> actionList = getActionList(view);
        int i2 = 0;
        while (true) {
            z = false;
            if (i2 >= actionList.size()) {
                break;
            }
            C0510d.C0511a c0511a = actionList.get(i2);
            if (c0511a.m6379a() == i) {
                z = c0511a.m6378a(view, bundle);
                break;
            }
            i2++;
        }
        boolean z2 = z;
        if (!z) {
            z2 = z;
            if (Build.VERSION.SDK_INT >= 16) {
                z2 = this.mOriginalDelegate.performAccessibilityAction(view, i, bundle);
            }
        }
        boolean z3 = z2;
        if (!z2) {
            z3 = z2;
            if (i == C0404a.C0407c.accessibility_action_clickable_span) {
                z3 = performClickableSpanAction(bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1), view);
            }
        }
        return z3;
    }

    public void sendAccessibilityEvent(View view, int i) {
        this.mOriginalDelegate.sendAccessibilityEvent(view, i);
    }

    public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        this.mOriginalDelegate.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }
}
