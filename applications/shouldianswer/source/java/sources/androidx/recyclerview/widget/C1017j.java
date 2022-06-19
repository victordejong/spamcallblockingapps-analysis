package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.p023g.C0503a;
import androidx.core.p023g.p024a.C0510d;
/* renamed from: androidx.recyclerview.widget.j */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/j.class */
public class C1017j extends C0503a {

    /* renamed from: a */
    final RecyclerView f3206a;

    /* renamed from: b */
    final C0503a f3207b = new C1018a(this);

    /* renamed from: androidx.recyclerview.widget.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/j$a.class */
    public static class C1018a extends C0503a {

        /* renamed from: a */
        final C1017j f3208a;

        public C1018a(C1017j c1017j) {
            this.f3208a = c1017j;
        }

        @Override // androidx.core.p023g.C0503a
        public void onInitializeAccessibilityNodeInfo(View view, C0510d c0510d) {
            super.onInitializeAccessibilityNodeInfo(view, c0510d);
            if (this.f3208a.m4559a() || this.f3208a.f3206a.getLayoutManager() == null) {
                return;
            }
            this.f3208a.f3206a.getLayoutManager().onInitializeAccessibilityNodeInfoForItem(view, c0510d);
        }

        @Override // androidx.core.p023g.C0503a
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (super.performAccessibilityAction(view, i, bundle)) {
                return true;
            }
            if (!this.f3208a.m4559a() && this.f3208a.f3206a.getLayoutManager() != null) {
                return this.f3208a.f3206a.getLayoutManager().performAccessibilityActionForItem(view, i, bundle);
            }
            return false;
        }
    }

    public C1017j(RecyclerView recyclerView) {
        this.f3206a = recyclerView;
    }

    /* renamed from: a */
    boolean m4559a() {
        return this.f3206a.hasPendingAdapterUpdates();
    }

    /* renamed from: b */
    public C0503a m4558b() {
        return this.f3207b;
    }

    @Override // androidx.core.p023g.C0503a
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName(RecyclerView.class.getName());
        if (!(view instanceof RecyclerView) || m4559a()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() == null) {
            return;
        }
        recyclerView.getLayoutManager().onInitializeAccessibilityEvent(accessibilityEvent);
    }

    @Override // androidx.core.p023g.C0503a
    public void onInitializeAccessibilityNodeInfo(View view, C0510d c0510d) {
        super.onInitializeAccessibilityNodeInfo(view, c0510d);
        c0510d.m6433b((CharSequence) RecyclerView.class.getName());
        if (m4559a() || this.f3206a.getLayoutManager() == null) {
            return;
        }
        this.f3206a.getLayoutManager().onInitializeAccessibilityNodeInfo(c0510d);
    }

    @Override // androidx.core.p023g.C0503a
    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        if (super.performAccessibilityAction(view, i, bundle)) {
            return true;
        }
        if (!m4559a() && this.f3206a.getLayoutManager() != null) {
            return this.f3206a.getLayoutManager().performAccessibilityAction(i, bundle);
        }
        return false;
    }
}
