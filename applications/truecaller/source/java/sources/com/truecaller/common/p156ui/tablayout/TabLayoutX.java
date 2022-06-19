package com.truecaller.common.p156ui.tablayout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.google.android.material.tabs.TabLayout;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p373a.p381c0.C8280a;
import s1.d0.i;
import s1.d0.j;
import s1.u.z;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\n\u0018��2\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\u000b\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ/\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00070\u00148B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/truecaller/common/ui/tablayout/TabLayoutX;", "Lcom/google/android/material/tabs/TabLayout;", "", "ratio", "Ls1/s;", "setSelectedTabWidthRatio", "(F)V", "Lcom/google/android/material/tabs/TabLayout$g;", "tab", "", "updateIndicator", "l", "(Lcom/google/android/material/tabs/TabLayout$g;Z)V", "", "position", "positionOffset", "updateSelectedText", "updateIndicatorPosition", "n", "(IFZZ)V", "", "getTabs", "()Ljava/util/List;", "tabs", "g0", "I", "previouslySelectedTabPosition", "W", "F", "selectedTabWidthRatio", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.tablayout.TabLayoutX */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/tablayout/TabLayoutX.class */
public final class TabLayoutX extends TabLayout {

    /* renamed from: W */
    public float f11279W = 1.0f;

    /* renamed from: g0 */
    public int f11280g0 = getSelectedTabPosition();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TabLayoutX(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    private final List<TabLayout.C2114g> getTabs() {
        i j = j.j(0, getTabCount());
        ArrayList arrayList = new ArrayList();
        z it = j.iterator();
        while (it.hasNext()) {
            TabLayout.C2114g m38389h = m38389h(it.a());
            if (m38389h != null) {
                arrayList.add(m38389h);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.material.tabs.TabLayout
    /* renamed from: l */
    public void mo35634l(TabLayout.C2114g c2114g, boolean z) {
        this.f11280g0 = getSelectedTabPosition();
        super.mo35634l(c2114g, z);
    }

    @Override // com.google.android.material.tabs.TabLayout
    /* renamed from: n */
    public void mo35633n(int i, float f, boolean z, boolean z2) {
        super.mo35633n(i, f, z, true);
        float f2 = i;
        for (TabLayout.C2114g c2114g : getTabs()) {
            float max = Math.max(1.0f - Math.abs(c2114g.f6851d - (f2 + f)), 0.0f);
            TabLayout.C2115i c2115i = c2114g.f6854g;
            l.d(c2115i, "tab.view");
            ViewGroup.LayoutParams layoutParams = c2115i.getLayoutParams();
            if (!(layoutParams instanceof LinearLayout.LayoutParams)) {
                layoutParams = null;
            }
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            if (layoutParams2 != null) {
                layoutParams2.weight = C22128a.m8646a(this.f11279W, 1.0f, max, 1.0f);
            }
            c2114g.f6854g.requestLayout();
            View view = c2114g.f6852e;
            if (!(view instanceof C8280a)) {
                view = null;
            }
            C8280a c8280a = (C8280a) view;
            if (c8280a != null) {
                if (z || c2114g.f6851d == getSelectedTabPosition() || c2114g.f6851d == this.f11280g0) {
                    c8280a.m28695j1(1.0f - max);
                } else {
                    c8280a.m28695j1(1.0f);
                }
            }
        }
    }

    public final void setSelectedTabWidthRatio(float f) {
        this.f11279W = f;
    }
}
