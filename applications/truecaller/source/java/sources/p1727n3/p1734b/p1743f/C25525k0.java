package p1727n3.p1734b.p1743f;

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
import androidx.appcompat.C0032R;
import java.util.Objects;
import p1727n3.p1734b.p1735a.AbstractC25393a;
/* renamed from: n3.b.f.k0 */
/* loaded from: classes-dex2jar.jar:n3/b/f/k0.class */
public class C25525k0 extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    public boolean f71410a;

    /* renamed from: b */
    public int f71411b;

    /* renamed from: c */
    public int f71412c;

    /* renamed from: d */
    public int f71413d;

    /* renamed from: n3.b.f.k0$a */
    /* loaded from: classes-dex2jar.jar:n3/b/f/k0$a.class */
    public class C25526a extends LinearLayout {

        /* renamed from: a */
        public AbstractC25393a.AbstractC25396c f71414a;

        /* renamed from: b */
        public final /* synthetic */ C25525k0 f71415b;

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
            Objects.requireNonNull(this.f71415b);
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
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C0032R.styleable.ActionBar, C0032R.attr.actionBarStyle, 0);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(C0032R.styleable.ActionBar_height, 0);
        Resources resources = context.getResources();
        int i = layoutDimension;
        if (!context.getResources().getBoolean(C0032R.bool.abc_action_bar_embed_tabs)) {
            i = Math.min(layoutDimension, resources.getDimensionPixelSize(C0032R.dimen.abc_action_bar_stacked_max_height));
        }
        obtainStyledAttributes.recycle();
        setContentHeight(i);
        this.f71411b = context.getResources().getDimensionPixelSize(C0032R.dimen.abc_action_bar_stacked_tab_max_width);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ((C25526a) view).f71414a.m3675a();
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
        this.f71410a = z;
    }

    public void setContentHeight(int i) {
        this.f71412c = i;
        requestLayout();
    }

    public void setTabSelected(int i) {
        this.f71413d = i;
        throw null;
    }
}
