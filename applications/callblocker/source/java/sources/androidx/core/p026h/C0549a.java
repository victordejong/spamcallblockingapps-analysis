package androidx.core.p026h;

import android.os.Build;
import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.core.C0433a;
import androidx.core.p026h.p027a.C0553c;
import androidx.core.p026h.p027a.C0557d;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.core.h.a */
/* loaded from: classes-dex2jar.jar:androidx/core/h/a.class */
public class C0549a {

    /* renamed from: a */
    private static final View.AccessibilityDelegate f2013a = new View.AccessibilityDelegate();

    /* renamed from: b */
    private final View.AccessibilityDelegate f2014b;

    /* renamed from: c */
    private final View.AccessibilityDelegate f2015c;

    /* renamed from: androidx.core.h.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/h/a$a.class */
    public static final class C0550a extends View.AccessibilityDelegate {

        /* renamed from: a */
        final C0549a f2016a;

        C0550a(C0549a c0549a) {
            this.f2016a = c0549a;
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f2016a.mo18435b(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            C0557d mo18439a = this.f2016a.mo18439a(view);
            return mo18439a != null ? (AccessibilityNodeProvider) mo18439a.m20449a() : null;
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f2016a.mo2915d(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            C0553c m20517a = C0553c.m20517a(accessibilityNodeInfo);
            m20517a.m20469l(C0595u.m20367E(view));
            m20517a.m20465n(C0595u.m20365G(view));
            m20517a.m20478h(C0595u.m20366F(view));
            this.f2016a.mo2272a(view, m20517a);
            m20517a.m20513a(accessibilityNodeInfo.getText(), view);
            List<C0553c.C0554a> m20529b = C0549a.m20529b(view);
            for (int i = 0; i < m20529b.size(); i++) {
                m20517a.m20516a(m20529b.get(i));
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f2016a.mo2271c(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.f2016a.mo18436a(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            return this.f2016a.mo2512a(view, i, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEvent(View view, int i) {
            this.f2016a.mo18438a(view, i);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.f2016a.mo18437a(view, accessibilityEvent);
        }
    }

    public C0549a() {
        this(f2013a);
    }

    public C0549a(View.AccessibilityDelegate accessibilityDelegate) {
        this.f2014b = accessibilityDelegate;
        this.f2015c = new C0550a(this);
    }

    /* renamed from: a */
    private boolean m20531a(int i, View view) {
        boolean z;
        WeakReference weakReference;
        SparseArray sparseArray = (SparseArray) view.getTag(C0433a.C0436c.tag_accessibility_clickable_spans);
        if (sparseArray != null && (weakReference = (WeakReference) sparseArray.get(i)) != null) {
            ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
            if (m20530a(clickableSpan, view)) {
                clickableSpan.onClick(view);
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: a */
    private boolean m20530a(ClickableSpan clickableSpan, View view) {
        boolean z = false;
        if (clickableSpan != null) {
            ClickableSpan[] m20491d = C0553c.m20491d(view.createAccessibilityNodeInfo().getText());
            int i = 0;
            while (true) {
                z = false;
                if (m20491d == null) {
                    break;
                }
                z = false;
                if (i >= m20491d.length) {
                    break;
                } else if (clickableSpan.equals(m20491d[i])) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    static List<C0553c.C0554a> m20529b(View view) {
        List<C0553c.C0554a> list = (List) view.getTag(C0433a.C0436c.tag_accessibility_actions);
        List<C0553c.C0554a> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    /* renamed from: a */
    public View.AccessibilityDelegate m20532a() {
        return this.f2015c;
    }

    /* renamed from: a */
    public C0557d mo18439a(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider;
        return (Build.VERSION.SDK_INT < 16 || (accessibilityNodeProvider = this.f2014b.getAccessibilityNodeProvider(view)) == null) ? null : new C0557d(accessibilityNodeProvider);
    }

    /* renamed from: a */
    public void mo18438a(View view, int i) {
        this.f2014b.sendAccessibilityEvent(view, i);
    }

    /* renamed from: a */
    public void mo18437a(View view, AccessibilityEvent accessibilityEvent) {
        this.f2014b.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    /* renamed from: a */
    public void mo2272a(View view, C0553c c0553c) {
        this.f2014b.onInitializeAccessibilityNodeInfo(view, c0553c.m20526a());
    }

    /* renamed from: a */
    public boolean mo2512a(View view, int i, Bundle bundle) {
        boolean z;
        List<C0553c.C0554a> m20529b = m20529b(view);
        int i2 = 0;
        while (true) {
            if (i2 >= m20529b.size()) {
                z = false;
                break;
            }
            C0553c.C0554a c0554a = m20529b.get(i2);
            if (c0554a.m20454a() == i) {
                z = c0554a.m20453a(view, bundle);
                break;
            }
            i2++;
        }
        boolean z2 = z;
        if (!z) {
            z2 = z;
            if (Build.VERSION.SDK_INT >= 16) {
                z2 = this.f2014b.performAccessibilityAction(view, i, bundle);
            }
        }
        boolean z3 = z2;
        if (!z2) {
            z3 = z2;
            if (i == C0433a.C0436c.accessibility_action_clickable_span) {
                z3 = m20531a(bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1), view);
            }
        }
        return z3;
    }

    /* renamed from: a */
    public boolean mo18436a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f2014b.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    /* renamed from: b */
    public boolean mo18435b(View view, AccessibilityEvent accessibilityEvent) {
        return this.f2014b.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: c */
    public void mo2271c(View view, AccessibilityEvent accessibilityEvent) {
        this.f2014b.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: d */
    public void mo2915d(View view, AccessibilityEvent accessibilityEvent) {
        this.f2014b.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }
}
