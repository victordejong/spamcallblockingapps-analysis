package p012b.p042i.p054p;

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
import p012b.p042i.C0834d;
import p012b.p042i.p054p.p055d0.C0970c;
import p012b.p042i.p054p.p055d0.C0974d;
/* renamed from: b.i.p.a */
/* loaded from: classes-dex2jar.jar:b/i/p/a.class */
public class C0949a {

    /* renamed from: c */
    public static final View.AccessibilityDelegate f4196c = new View.AccessibilityDelegate();

    /* renamed from: a */
    public final View.AccessibilityDelegate f4197a;

    /* renamed from: b */
    public final View.AccessibilityDelegate f4198b;

    /* renamed from: b.i.p.a$a */
    /* loaded from: classes-dex2jar.jar:b/i/p/a$a.class */
    public static final class C0950a extends View.AccessibilityDelegate {

        /* renamed from: a */
        public final C0949a f4199a;

        public C0950a(C0949a aVar) {
            this.f4199a = aVar;
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f4199a.mo31582a(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            C0974d a = this.f4199a.mo31585a(view);
            return a != null ? (AccessibilityNodeProvider) a.m35312a() : null;
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f4199a.mo31579b(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            C0970c a = C0970c.m35376a(accessibilityNodeInfo);
            a.m35337i(C1002u.m35255B(view));
            a.m35341g(C1002u.m35198x(view));
            a.m35351d(C1002u.m35218f(view));
            this.f4199a.mo31581a(view, a);
            a.m35372a(accessibilityNodeInfo.getText(), view);
            List<C0970c.C0971a> b = C0949a.m35433b(view);
            for (int i = 0; i < b.size(); i++) {
                a.m35375a(b.get(i));
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f4199a.mo31577c(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.f4199a.mo31580a(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            return this.f4199a.mo31583a(view, i, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEvent(View view, int i) {
            this.f4199a.mo31584a(view, i);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.f4199a.mo31575d(view, accessibilityEvent);
        }
    }

    public C0949a() {
        this(f4196c);
    }

    public C0949a(View.AccessibilityDelegate accessibilityDelegate) {
        this.f4197a = accessibilityDelegate;
        this.f4198b = new C0950a(this);
    }

    /* renamed from: b */
    public static List<C0970c.C0971a> m35433b(View view) {
        List<C0970c.C0971a> list = (List) view.getTag(C0834d.tag_accessibility_actions);
        List<C0970c.C0971a> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    /* renamed from: a */
    public View.AccessibilityDelegate m35436a() {
        return this.f4198b;
    }

    /* renamed from: a */
    public C0974d mo31585a(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider;
        if (Build.VERSION.SDK_INT < 16 || (accessibilityNodeProvider = this.f4197a.getAccessibilityNodeProvider(view)) == null) {
            return null;
        }
        return new C0974d(accessibilityNodeProvider);
    }

    /* renamed from: a */
    public void mo31584a(View view, int i) {
        this.f4197a.sendAccessibilityEvent(view, i);
    }

    /* renamed from: a */
    public void mo31581a(View view, C0970c cVar) {
        this.f4197a.onInitializeAccessibilityNodeInfo(view, cVar.m35318y());
    }

    /* renamed from: a */
    public final boolean m35435a(int i, View view) {
        WeakReference weakReference;
        SparseArray sparseArray = (SparseArray) view.getTag(C0834d.tag_accessibility_clickable_spans);
        if (sparseArray == null || (weakReference = (WeakReference) sparseArray.get(i)) == null) {
            return false;
        }
        ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
        if (!m35434a(clickableSpan, view)) {
            return false;
        }
        clickableSpan.onClick(view);
        return true;
    }

    /* renamed from: a */
    public final boolean m35434a(ClickableSpan clickableSpan, View view) {
        if (clickableSpan == null) {
            return false;
        }
        ClickableSpan[] e = C0970c.m35347e(view.createAccessibilityNodeInfo().getText());
        for (int i = 0; e != null && i < e.length; i++) {
            if (clickableSpan.equals(e[i])) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public boolean mo31583a(View view, int i, Bundle bundle) {
        List<C0970c.C0971a> b = m35433b(view);
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= b.size()) {
                break;
            }
            C0970c.C0971a aVar = b.get(i2);
            if (aVar.m35317a() == i) {
                z = aVar.m35316a(view, bundle);
                break;
            }
            i2++;
        }
        boolean z2 = z;
        if (!z) {
            z2 = z;
            if (Build.VERSION.SDK_INT >= 16) {
                z2 = this.f4197a.performAccessibilityAction(view, i, bundle);
            }
        }
        boolean z3 = z2;
        if (!z2) {
            z3 = z2;
            if (i == C0834d.accessibility_action_clickable_span) {
                z3 = m35435a(bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1), view);
            }
        }
        return z3;
    }

    /* renamed from: a */
    public boolean mo31582a(View view, AccessibilityEvent accessibilityEvent) {
        return this.f4197a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: a */
    public boolean mo31580a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f4197a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    /* renamed from: b */
    public void mo31579b(View view, AccessibilityEvent accessibilityEvent) {
        this.f4197a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: c */
    public void mo31577c(View view, AccessibilityEvent accessibilityEvent) {
        this.f4197a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: d */
    public void mo31575d(View view, AccessibilityEvent accessibilityEvent) {
        this.f4197a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }
}
