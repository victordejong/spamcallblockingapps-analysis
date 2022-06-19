package androidx.customview.p026a;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.p023g.C0503a;
import androidx.core.p023g.C0552u;
import androidx.core.p023g.C0563x;
import androidx.core.p023g.p024a.C0506b;
import androidx.core.p023g.p024a.C0510d;
import androidx.core.p023g.p024a.C0514e;
import androidx.core.p023g.p024a.C0517f;
import androidx.customview.p026a.C0614b;
import androidx.p014c.C0388h;
import com.google.android.flexbox.FlexItem;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.customview.a.a */
/* loaded from: classes-dex2jar.jar:androidx/customview/a/a.class */
public abstract class AbstractC0610a extends C0503a {
    private static final String DEFAULT_CLASS_NAME = "android.view.View";
    public static final int HOST_ID = -1;
    public static final int INVALID_ID = Integer.MIN_VALUE;
    private static final Rect INVALID_PARENT_BOUNDS = new Rect(Api.BaseClientBuilder.API_PRIORITY_OTHER, Api.BaseClientBuilder.API_PRIORITY_OTHER, INVALID_ID, INVALID_ID);
    private static final C0614b.AbstractC0615a<C0510d> NODE_ADAPTER = new C0614b.AbstractC0615a<C0510d>() { // from class: androidx.customview.a.a.1
        /* renamed from: a */
        public void mo5935a(C0510d c0510d, Rect rect) {
            c0510d.m6452a(rect);
        }
    };
    private static final C0614b.AbstractC0616b<C0388h<C0510d>, C0510d> SPARSE_VALUES_ADAPTER = new C0614b.AbstractC0616b<C0388h<C0510d>, C0510d>() { // from class: androidx.customview.a.a.2
        /* renamed from: a */
        public int mo5934a(C0388h<C0510d> c0388h) {
            return c0388h.m6802b();
        }

        /* renamed from: a */
        public C0510d mo5933a(C0388h<C0510d> c0388h, int i) {
            return c0388h.m6795d(i);
        }
    };
    private final View mHost;
    private final AccessibilityManager mManager;
    private C0613a mNodeProvider;
    private final Rect mTempScreenRect = new Rect();
    private final Rect mTempParentRect = new Rect();
    private final Rect mTempVisibleRect = new Rect();
    private final int[] mTempGlobalRect = new int[2];
    int mAccessibilityFocusedVirtualViewId = INVALID_ID;
    int mKeyboardFocusedVirtualViewId = INVALID_ID;
    private int mHoveredVirtualViewId = INVALID_ID;

    /* renamed from: androidx.customview.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/customview/a/a$a.class */
    private class C0613a extends C0514e {
        C0613a() {
            AbstractC0610a.this = r4;
        }

        @Override // androidx.core.p023g.p024a.C0514e
        /* renamed from: a */
        public C0510d mo5953a(int i) {
            return C0510d.m6445a(AbstractC0610a.this.obtainAccessibilityNodeInfo(i));
        }

        @Override // androidx.core.p023g.p024a.C0514e
        /* renamed from: a */
        public boolean mo5952a(int i, int i2, Bundle bundle) {
            return AbstractC0610a.this.performAction(i, i2, bundle);
        }

        @Override // androidx.core.p023g.p024a.C0514e
        /* renamed from: b */
        public C0510d mo5951b(int i) {
            int i2 = i == 2 ? AbstractC0610a.this.mAccessibilityFocusedVirtualViewId : AbstractC0610a.this.mKeyboardFocusedVirtualViewId;
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return mo5953a(i2);
        }
    }

    public AbstractC0610a(View view) {
        if (view != null) {
            this.mHost = view;
            this.mManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
            view.setFocusable(true);
            if (C0552u.m6247e(view) != 0) {
                return;
            }
            C0552u.m6258b(view, 1);
            return;
        }
        throw new IllegalArgumentException("View may not be null");
    }

    private boolean clearAccessibilityFocus(int i) {
        if (this.mAccessibilityFocusedVirtualViewId == i) {
            this.mAccessibilityFocusedVirtualViewId = INVALID_ID;
            this.mHost.invalidate();
            sendEventForVirtualView(i, 65536);
            return true;
        }
        return false;
    }

    private boolean clickKeyboardFocusedVirtualView() {
        int i = this.mKeyboardFocusedVirtualViewId;
        return i != Integer.MIN_VALUE && onPerformActionForVirtualView(i, 16, null);
    }

    private AccessibilityEvent createEvent(int i, int i2) {
        return i != -1 ? createEventForChild(i, i2) : createEventForHost(i2);
    }

    private AccessibilityEvent createEventForChild(int i, int i2) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
        C0510d obtainAccessibilityNodeInfo = obtainAccessibilityNodeInfo(i);
        obtain.getText().add(obtainAccessibilityNodeInfo.m6386s());
        obtain.setContentDescription(obtainAccessibilityNodeInfo.m6385t());
        obtain.setScrollable(obtainAccessibilityNodeInfo.m6390p());
        obtain.setPassword(obtainAccessibilityNodeInfo.m6392o());
        obtain.setEnabled(obtainAccessibilityNodeInfo.m6394n());
        obtain.setChecked(obtainAccessibilityNodeInfo.m6415f());
        onPopulateEventForVirtualView(i, obtain);
        if (!obtain.getText().isEmpty() || obtain.getContentDescription() != null) {
            obtain.setClassName(obtainAccessibilityNodeInfo.m6387r());
            C0517f.m6372a(obtain, this.mHost, i);
            obtain.setPackageName(this.mHost.getContext().getPackageName());
            return obtain;
        }
        throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
    }

    private AccessibilityEvent createEventForHost(int i) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i);
        this.mHost.onInitializeAccessibilityEvent(obtain);
        return obtain;
    }

    private C0510d createNodeForChild(int i) {
        C0510d m6439b = C0510d.m6439b();
        m6439b.m6401j(true);
        m6439b.m6425c(true);
        m6439b.m6433b(DEFAULT_CLASS_NAME);
        m6439b.m6437b(INVALID_PARENT_BOUNDS);
        m6439b.m6423d(INVALID_PARENT_BOUNDS);
        m6439b.m6422d(this.mHost);
        onPopulateNodeForVirtualView(i, m6439b);
        if (m6439b.m6386s() == null && m6439b.m6385t() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        m6439b.m6452a(this.mTempParentRect);
        if (this.mTempParentRect.equals(INVALID_PARENT_BOUNDS)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int m6424d = m6439b.m6424d();
        if ((m6424d & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((m6424d & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        m6439b.m6444a((CharSequence) this.mHost.getContext().getPackageName());
        m6439b.m6448a(this.mHost, i);
        if (this.mAccessibilityFocusedVirtualViewId == i) {
            m6439b.m6412f(true);
            m6439b.m6455a(128);
        } else {
            m6439b.m6412f(false);
            m6439b.m6455a(64);
        }
        boolean z = this.mKeyboardFocusedVirtualViewId == i;
        if (z) {
            m6439b.m6455a(2);
        } else if (m6439b.m6411g()) {
            m6439b.m6455a(1);
        }
        m6439b.m6420d(z);
        this.mHost.getLocationOnScreen(this.mTempGlobalRect);
        m6439b.m6429c(this.mTempScreenRect);
        if (this.mTempScreenRect.equals(INVALID_PARENT_BOUNDS)) {
            m6439b.m6452a(this.mTempScreenRect);
            if (m6439b.f1812a != -1) {
                C0510d m6439b2 = C0510d.m6439b();
                int i2 = m6439b.f1812a;
                while (true) {
                    int i3 = i2;
                    if (i3 == -1) {
                        break;
                    }
                    m6439b2.m6427c(this.mHost, -1);
                    m6439b2.m6437b(INVALID_PARENT_BOUNDS);
                    onPopulateNodeForVirtualView(i3, m6439b2);
                    m6439b2.m6452a(this.mTempParentRect);
                    this.mTempScreenRect.offset(this.mTempParentRect.left, this.mTempParentRect.top);
                    i2 = m6439b2.f1812a;
                }
                m6439b2.m6384u();
            }
            this.mTempScreenRect.offset(this.mTempGlobalRect[0] - this.mHost.getScrollX(), this.mTempGlobalRect[1] - this.mHost.getScrollY());
        }
        if (this.mHost.getLocalVisibleRect(this.mTempVisibleRect)) {
            this.mTempVisibleRect.offset(this.mTempGlobalRect[0] - this.mHost.getScrollX(), this.mTempGlobalRect[1] - this.mHost.getScrollY());
            if (this.mTempScreenRect.intersect(this.mTempVisibleRect)) {
                m6439b.m6423d(this.mTempScreenRect);
                if (isVisibleToUser(this.mTempScreenRect)) {
                    m6439b.m6416e(true);
                }
            }
        }
        return m6439b;
    }

    private C0510d createNodeForHost() {
        C0510d m6449a = C0510d.m6449a(this.mHost);
        C0552u.m6270a(this.mHost, m6449a);
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        if (m6449a.m6430c() <= 0 || arrayList.size() <= 0) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                m6449a.m6435b(this.mHost, ((Integer) arrayList.get(i)).intValue());
            }
            return m6449a;
        }
        throw new RuntimeException("Views cannot have both real and virtual children");
    }

    private C0388h<C0510d> getAllNodes() {
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        C0388h<C0510d> c0388h = new C0388h<>();
        for (int i = 0; i < arrayList.size(); i++) {
            c0388h.m6800b(i, createNodeForChild(i));
        }
        return c0388h;
    }

    private void getBoundsInParent(int i, Rect rect) {
        obtainAccessibilityNodeInfo(i).m6452a(rect);
    }

    private static Rect guessPreviouslyFocusedRect(View view, int i, Rect rect) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (i == 17) {
            rect.set(width, 0, width, height);
        } else if (i == 33) {
            rect.set(0, height, width, height);
        } else if (i == 66) {
            rect.set(-1, 0, -1, height);
        } else if (i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            rect.set(0, -1, width, -1);
        }
        return rect;
    }

    private boolean isVisibleToUser(Rect rect) {
        boolean z = false;
        if (rect != null) {
            if (rect.isEmpty()) {
                z = false;
            } else if (this.mHost.getWindowVisibility() != 0) {
                return false;
            } else {
                ViewParent parent = this.mHost.getParent();
                while (true) {
                    ViewParent viewParent = parent;
                    if (viewParent instanceof View) {
                        View view = (View) viewParent;
                        if (view.getAlpha() <= FlexItem.FLEX_GROW_DEFAULT || view.getVisibility() != 0) {
                            return false;
                        }
                        parent = view.getParent();
                    } else {
                        z = false;
                        if (viewParent != null) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    private static int keyToDirection(int i) {
        if (i != 19) {
            if (i == 21) {
                return 17;
            }
            return i != 22 ? 130 : 66;
        }
        return 33;
    }

    private boolean moveFocus(int i, Rect rect) {
        C0510d c0510d;
        C0388h<C0510d> allNodes = getAllNodes();
        int i2 = this.mKeyboardFocusedVirtualViewId;
        C0510d m6805a = i2 == Integer.MIN_VALUE ? null : allNodes.m6805a(i2);
        if (i == 1 || i == 2) {
            c0510d = (C0510d) C0614b.m5946a(allNodes, SPARSE_VALUES_ADAPTER, NODE_ADAPTER, m6805a, i, C0552u.m6245f(this.mHost) == 1, false);
        } else if (i != 17 && i != 33 && i != 66 && i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            Rect rect2 = new Rect();
            int i3 = this.mKeyboardFocusedVirtualViewId;
            if (i3 != Integer.MIN_VALUE) {
                getBoundsInParent(i3, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                guessPreviouslyFocusedRect(this.mHost, i, rect2);
            }
            c0510d = (C0510d) C0614b.m5945a(allNodes, SPARSE_VALUES_ADAPTER, NODE_ADAPTER, m6805a, rect2, i);
        }
        return requestKeyboardFocusForVirtualView(c0510d == null ? Integer.MIN_VALUE : allNodes.m6798c(allNodes.m6803a((C0388h<C0510d>) c0510d)));
    }

    private boolean performActionForChild(int i, int i2, Bundle bundle) {
        return i2 != 1 ? i2 != 2 ? i2 != 64 ? i2 != 128 ? onPerformActionForVirtualView(i, i2, bundle) : clearAccessibilityFocus(i) : requestAccessibilityFocus(i) : clearKeyboardFocusForVirtualView(i) : requestKeyboardFocusForVirtualView(i);
    }

    private boolean performActionForHost(int i, Bundle bundle) {
        return C0552u.m6276a(this.mHost, i, bundle);
    }

    private boolean requestAccessibilityFocus(int i) {
        int i2;
        if (!this.mManager.isEnabled() || !this.mManager.isTouchExplorationEnabled() || (i2 = this.mAccessibilityFocusedVirtualViewId) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            clearAccessibilityFocus(i2);
        }
        this.mAccessibilityFocusedVirtualViewId = i;
        this.mHost.invalidate();
        sendEventForVirtualView(i, 32768);
        return true;
    }

    private void updateHoveredVirtualView(int i) {
        int i2 = this.mHoveredVirtualViewId;
        if (i2 == i) {
            return;
        }
        this.mHoveredVirtualViewId = i;
        sendEventForVirtualView(i, 128);
        sendEventForVirtualView(i2, 256);
    }

    public final boolean clearKeyboardFocusForVirtualView(int i) {
        if (this.mKeyboardFocusedVirtualViewId != i) {
            return false;
        }
        this.mKeyboardFocusedVirtualViewId = INVALID_ID;
        onVirtualViewKeyboardFocusChanged(i, false);
        sendEventForVirtualView(i, 8);
        return true;
    }

    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (this.mManager.isEnabled()) {
            if (!this.mManager.isTouchExplorationEnabled()) {
                z = false;
            } else {
                int action = motionEvent.getAction();
                if (action != 7 && action != 9) {
                    if (action != 10 || this.mHoveredVirtualViewId == Integer.MIN_VALUE) {
                        return false;
                    }
                    updateHoveredVirtualView(INVALID_ID);
                    return true;
                }
                int virtualViewAt = getVirtualViewAt(motionEvent.getX(), motionEvent.getY());
                updateHoveredVirtualView(virtualViewAt);
                z = false;
                if (virtualViewAt != Integer.MIN_VALUE) {
                    z = true;
                }
            }
        }
        return z;
    }

    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int i = 0;
        boolean z = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            z = false;
                            if (keyEvent.hasNoModifiers()) {
                                int keyToDirection = keyToDirection(keyCode);
                                int repeatCount = keyEvent.getRepeatCount();
                                boolean z2 = false;
                                while (true) {
                                    z = z2;
                                    if (i < repeatCount + 1 && moveFocus(keyToDirection, null)) {
                                        i++;
                                        z2 = true;
                                    }
                                }
                            }
                            break;
                        case 23:
                            break;
                        default:
                            z = false;
                            break;
                    }
                }
                z = false;
                if (keyEvent.hasNoModifiers()) {
                    z = false;
                    if (keyEvent.getRepeatCount() == 0) {
                        clickKeyboardFocusedVirtualView();
                        z = true;
                    }
                }
            } else if (keyEvent.hasNoModifiers()) {
                z = moveFocus(2, null);
            } else {
                z = false;
                if (keyEvent.hasModifiers(1)) {
                    z = moveFocus(1, null);
                }
            }
        }
        return z;
    }

    public final int getAccessibilityFocusedVirtualViewId() {
        return this.mAccessibilityFocusedVirtualViewId;
    }

    @Override // androidx.core.p023g.C0503a
    public C0514e getAccessibilityNodeProvider(View view) {
        if (this.mNodeProvider == null) {
            this.mNodeProvider = new C0613a();
        }
        return this.mNodeProvider;
    }

    @Deprecated
    public int getFocusedVirtualView() {
        return getAccessibilityFocusedVirtualViewId();
    }

    public final int getKeyboardFocusedVirtualViewId() {
        return this.mKeyboardFocusedVirtualViewId;
    }

    protected abstract int getVirtualViewAt(float f, float f2);

    protected abstract void getVisibleVirtualViews(List<Integer> list);

    public final void invalidateRoot() {
        invalidateVirtualView(-1, 1);
    }

    public final void invalidateVirtualView(int i) {
        invalidateVirtualView(i, 0);
    }

    public final void invalidateVirtualView(int i, int i2) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.mManager.isEnabled() || (parent = this.mHost.getParent()) == null) {
            return;
        }
        AccessibilityEvent createEvent = createEvent(i, 2048);
        C0506b.m6459a(createEvent, i2);
        C0563x.m6191a(parent, this.mHost, createEvent);
    }

    C0510d obtainAccessibilityNodeInfo(int i) {
        return i == -1 ? createNodeForHost() : createNodeForChild(i);
    }

    public final void onFocusChanged(boolean z, int i, Rect rect) {
        int i2 = this.mKeyboardFocusedVirtualViewId;
        if (i2 != Integer.MIN_VALUE) {
            clearKeyboardFocusForVirtualView(i2);
        }
        if (z) {
            moveFocus(i, rect);
        }
    }

    @Override // androidx.core.p023g.C0503a
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        onPopulateEventForHost(accessibilityEvent);
    }

    @Override // androidx.core.p023g.C0503a
    public void onInitializeAccessibilityNodeInfo(View view, C0510d c0510d) {
        super.onInitializeAccessibilityNodeInfo(view, c0510d);
        onPopulateNodeForHost(c0510d);
    }

    protected abstract boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle);

    protected void onPopulateEventForHost(AccessibilityEvent accessibilityEvent) {
    }

    protected void onPopulateEventForVirtualView(int i, AccessibilityEvent accessibilityEvent) {
    }

    protected void onPopulateNodeForHost(C0510d c0510d) {
    }

    protected abstract void onPopulateNodeForVirtualView(int i, C0510d c0510d);

    protected void onVirtualViewKeyboardFocusChanged(int i, boolean z) {
    }

    boolean performAction(int i, int i2, Bundle bundle) {
        return i != -1 ? performActionForChild(i, i2, bundle) : performActionForHost(i2, bundle);
    }

    public final boolean requestKeyboardFocusForVirtualView(int i) {
        int i2;
        if ((this.mHost.isFocused() || this.mHost.requestFocus()) && (i2 = this.mKeyboardFocusedVirtualViewId) != i) {
            if (i2 != Integer.MIN_VALUE) {
                clearKeyboardFocusForVirtualView(i2);
            }
            this.mKeyboardFocusedVirtualViewId = i;
            onVirtualViewKeyboardFocusChanged(i, true);
            sendEventForVirtualView(i, 8);
            return true;
        }
        return false;
    }

    public final boolean sendEventForVirtualView(int i, int i2) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.mManager.isEnabled() || (parent = this.mHost.getParent()) == null) {
            return false;
        }
        return C0563x.m6191a(parent, this.mHost, createEvent(i, i2));
    }
}
