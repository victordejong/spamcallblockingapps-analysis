package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.widget.AdapterView;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import java.util.Objects;
import me.zhanghai.android.materialprogressbar.C3681R;
import p086f.AbstractC2635a;
import p117h8.C3035k;
/* renamed from: androidx.appcompat.widget.s0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/s0.class */
public class C0277s0 extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    public int f1090a;

    /* renamed from: b */
    public int f1091b;

    /* renamed from: androidx.appcompat.widget.s0$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/s0$a.class */
    public class C0278a extends LinearLayout {

        /* renamed from: a */
        public AbstractC2635a.AbstractC2638c f1092a;

        /* renamed from: b */
        public final /* synthetic */ C0277s0 f1093b;

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            Objects.requireNonNull(this.f1093b);
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (!z2 || !z) {
                return;
            }
            sendAccessibilityEvent(4);
        }
    }

    static {
        new DecelerateInterpolator();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Context context = getContext();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C3035k.f10214a, C3681R.attr.actionBarStyle, 0);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(13, 0);
        Resources resources = context.getResources();
        int i = layoutDimension;
        if (!context.getResources().getBoolean(C3681R.bool.abc_action_bar_embed_tabs)) {
            i = Math.min(layoutDimension, resources.getDimensionPixelSize(C3681R.dimen.abc_action_bar_stacked_max_height));
        }
        obtainStyledAttributes.recycle();
        setContentHeight(i);
        context.getResources().getDimensionPixelSize(C3681R.dimen.abc_action_bar_stacked_tab_max_width);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ((C0278a) view).f1092a.m3376a();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        setFillViewport(View.MeasureSpec.getMode(i) == 1073741824);
        throw null;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z) {
    }

    public void setContentHeight(int i) {
        this.f1090a = i;
        requestLayout();
    }

    public void setTabSelected(int i) {
        this.f1091b = i;
        throw null;
    }
}
