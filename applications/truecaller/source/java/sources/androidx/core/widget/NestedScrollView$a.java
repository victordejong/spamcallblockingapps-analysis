package androidx.core.widget;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.ScrollView;
import p1727n3.p1807k.p1821i.C26558a;
import p1727n3.p1807k.p1821i.p1822f0.C26584b;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$a.class */
public class NestedScrollView$a extends C26558a {
    @Override // p1727n3.p1807k.p1821i.C26558a
    /* renamed from: c */
    public void mo1511c(View view, AccessibilityEvent accessibilityEvent) {
        this.f74411a.onInitializeAccessibilityEvent(view, accessibilityEvent);
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        accessibilityEvent.setClassName(ScrollView.class.getName());
        accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
        accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
        accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
        accessibilityEvent.setMaxScrollX(nestedScrollView.getScrollX());
        accessibilityEvent.setMaxScrollY(nestedScrollView.getScrollRange());
    }

    @Override // p1727n3.p1807k.p1821i.C26558a
    /* renamed from: d */
    public void mo1510d(View view, C26584b c26584b) {
        int scrollRange;
        this.f74411a.onInitializeAccessibilityNodeInfo(view, c26584b.f74463a);
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        c26584b.f74463a.setClassName(ScrollView.class.getName());
        if (!nestedScrollView.isEnabled() || (scrollRange = nestedScrollView.getScrollRange()) <= 0) {
            return;
        }
        c26584b.f74463a.setScrollable(true);
        if (nestedScrollView.getScrollY() > 0) {
            c26584b.m1630a(C26584b.C26585a.f74470i);
            c26584b.m1630a(C26584b.C26585a.f74474m);
        }
        if (nestedScrollView.getScrollY() >= scrollRange) {
            return;
        }
        c26584b.m1630a(C26584b.C26585a.f74469h);
        c26584b.m1630a(C26584b.C26585a.f74475n);
    }

    @Override // p1727n3.p1807k.p1821i.C26558a
    /* renamed from: g */
    public boolean mo1680g(View view, int i, Bundle bundle) {
        if (super.mo1680g(view, i, bundle)) {
            return true;
        }
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        if (!nestedScrollView.isEnabled()) {
            return false;
        }
        if (i != 4096) {
            if (i == 8192 || i == 16908344) {
                int height = nestedScrollView.getHeight();
                int paddingBottom = nestedScrollView.getPaddingBottom();
                int max = Math.max(nestedScrollView.getScrollY() - ((height - paddingBottom) - nestedScrollView.getPaddingTop()), 0);
                if (max == nestedScrollView.getScrollY()) {
                    return false;
                }
                nestedScrollView.x(0 - nestedScrollView.getScrollX(), max - nestedScrollView.getScrollY(), 250, true);
                return true;
            } else if (i != 16908346) {
                return false;
            }
        }
        int height2 = nestedScrollView.getHeight();
        int paddingBottom2 = nestedScrollView.getPaddingBottom();
        int min = Math.min(nestedScrollView.getScrollY() + ((height2 - paddingBottom2) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
        if (min == nestedScrollView.getScrollY()) {
            return false;
        }
        nestedScrollView.x(0 - nestedScrollView.getScrollX(), min - nestedScrollView.getScrollY(), 250, true);
        return true;
    }
}
