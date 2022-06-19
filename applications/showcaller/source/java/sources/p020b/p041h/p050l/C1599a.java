package p020b.p041h.p050l;

import android.os.Build;
import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
import p020b.p041h.C1520c;
import p020b.p041h.p050l.p051f0.C1634c;
import p020b.p041h.p050l.p051f0.C1639d;
/* renamed from: b.h.l.a */
/* loaded from: classes-dex2jar.jar:b/h/l/a.class */
public class C1599a {

    /* renamed from: a */
    private static final View.AccessibilityDelegate f6194a = new View.AccessibilityDelegate();

    /* renamed from: b */
    private final View.AccessibilityDelegate f6195b;

    /* renamed from: c */
    private final View.AccessibilityDelegate f6196c;

    /* renamed from: b.h.l.a$a */
    /* loaded from: classes-dex2jar.jar:b/h/l/a$a.class */
    public static final class C1600a extends View.AccessibilityDelegate {

        /* renamed from: a */
        final C1599a f6197a;

        C1600a(C1599a c1599a) {
            this.f6197a = c1599a;
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f6197a.mo29651a(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            C1639d mo29176b = this.f6197a.mo29176b(view);
            return mo29176b != null ? (AccessibilityNodeProvider) mo29176b.m29432e() : null;
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f6197a.mo4650f(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            C1634c m29513H0 = C1634c.m29513H0(accessibilityNodeInfo);
            m29513H0.m29449w0(C1679w.m29310Y(view));
            m29513H0.m29471l0(C1679w.m29315T(view));
            m29513H0.m29459r0(C1679w.m29278p(view));
            m29513H0.m29523C0(C1679w.m29328L(view));
            this.f6197a.mo3869g(view, m29513H0);
            m29513H0.m29484f(accessibilityNodeInfo.getText(), view);
            List<C1634c.C1635a> m29650c = C1599a.m29650c(view);
            for (int i = 0; i < m29650c.size(); i++) {
                m29513H0.m29492b(m29650c.get(i));
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f6197a.mo3945h(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.f6197a.mo29647i(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            return this.f6197a.mo29646j(view, i, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEvent(View view, int i) {
            this.f6197a.mo29644l(view, i);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.f6197a.mo29643m(view, accessibilityEvent);
        }
    }

    public C1599a() {
        this(f6194a);
    }

    public C1599a(View.AccessibilityDelegate accessibilityDelegate) {
        this.f6195b = accessibilityDelegate;
        this.f6196c = new C1600a(this);
    }

    /* renamed from: c */
    static List<C1634c.C1635a> m29650c(View view) {
        List<C1634c.C1635a> list = (List) view.getTag(C1520c.tag_accessibility_actions);
        List<C1634c.C1635a> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    /* renamed from: e */
    private boolean m29648e(ClickableSpan clickableSpan, View view) {
        if (clickableSpan != null) {
            ClickableSpan[] m29462q = C1634c.m29462q(view.createAccessibilityNodeInfo().getText());
            for (int i = 0; m29462q != null && i < m29462q.length; i++) {
                if (clickableSpan.equals(m29462q[i])) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: k */
    private boolean m29645k(int i, View view) {
        WeakReference weakReference;
        SparseArray sparseArray = (SparseArray) view.getTag(C1520c.tag_accessibility_clickable_spans);
        if (sparseArray == null || (weakReference = (WeakReference) sparseArray.get(i)) == null) {
            return false;
        }
        ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
        if (!m29648e(clickableSpan, view)) {
            return false;
        }
        clickableSpan.onClick(view);
        return true;
    }

    /* renamed from: a */
    public boolean mo29651a(View view, AccessibilityEvent accessibilityEvent) {
        return this.f6195b.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: b */
    public C1639d mo29176b(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider;
        if (Build.VERSION.SDK_INT < 16 || (accessibilityNodeProvider = this.f6195b.getAccessibilityNodeProvider(view)) == null) {
            return null;
        }
        return new C1639d(accessibilityNodeProvider);
    }

    /* renamed from: d */
    public View.AccessibilityDelegate m29649d() {
        return this.f6196c;
    }

    /* renamed from: f */
    public void mo4650f(View view, AccessibilityEvent accessibilityEvent) {
        this.f6195b.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: g */
    public void mo3869g(View view, C1634c c1634c) {
        this.f6195b.onInitializeAccessibilityNodeInfo(view, c1634c.m29515G0());
    }

    /* renamed from: h */
    public void mo3945h(View view, AccessibilityEvent accessibilityEvent) {
        this.f6195b.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: i */
    public boolean mo29647i(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f6195b.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    /* renamed from: j */
    public boolean mo29646j(View view, int i, Bundle bundle) {
        boolean z;
        List<C1634c.C1635a> m29650c = m29650c(view);
        int i2 = 0;
        while (true) {
            z = false;
            if (i2 >= m29650c.size()) {
                break;
            }
            C1634c.C1635a c1635a = m29650c.get(i2);
            if (c1635a.m29441b() == i) {
                z = c1635a.m29439d(view, bundle);
                break;
            }
            i2++;
        }
        boolean z2 = z;
        if (!z) {
            z2 = z;
            if (Build.VERSION.SDK_INT >= 16) {
                z2 = this.f6195b.performAccessibilityAction(view, i, bundle);
            }
        }
        boolean z3 = z2;
        if (!z2) {
            z3 = z2;
            if (i == C1520c.accessibility_action_clickable_span) {
                z3 = m29645k(bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1), view);
            }
        }
        return z3;
    }

    /* renamed from: l */
    public void mo29644l(View view, int i) {
        this.f6195b.sendAccessibilityEvent(view, i);
    }

    /* renamed from: m */
    public void mo29643m(View view, AccessibilityEvent accessibilityEvent) {
        this.f6195b.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }
}
