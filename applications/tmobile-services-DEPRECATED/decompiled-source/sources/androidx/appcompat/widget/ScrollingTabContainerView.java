package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.widget.LinearLayoutCompat;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView.class */
public class ScrollingTabContainerView extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* renamed from: f */
    Runnable f1174f;

    /* renamed from: g */
    private TabClickListener f1175g;

    /* renamed from: h */
    LinearLayoutCompat f1176h;

    /* renamed from: i */
    private Spinner f1177i;

    /* renamed from: j */
    private boolean f1178j;

    /* renamed from: k */
    int f1179k;

    /* renamed from: l */
    int f1180l;

    /* renamed from: m */
    private int f1181m;

    /* renamed from: n */
    private int f1182n;

    /* renamed from: o */
    protected ViewPropertyAnimator f1183o;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$TabAdapter.class */
    public class TabAdapter extends BaseAdapter {
        TabAdapter() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return ScrollingTabContainerView.this.f1176h.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ((TabView) ScrollingTabContainerView.this.f1176h.getChildAt(i)).m21359b();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ScrollingTabContainerView.this.m21364d((ActionBar.Tab) getItem(i), true);
            } else {
                ((TabView) view).m21360a((ActionBar.Tab) getItem(i));
            }
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$TabClickListener.class */
    public class TabClickListener implements View.OnClickListener {
        TabClickListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((TabView) view).m21359b().mo22074f();
            int childCount = ScrollingTabContainerView.this.f1176h.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = ScrollingTabContainerView.this.f1176h.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$TabView.class */
    public class TabView extends LinearLayout {

        /* renamed from: f */
        private final int[] f1188f;

        /* renamed from: g */
        private ActionBar.Tab f1189g;

        /* renamed from: h */
        private TextView f1190h;

        /* renamed from: i */
        private ImageView f1191i;

        /* renamed from: j */
        private View f1192j;

        public TabView(Context context, ActionBar.Tab tab, boolean z) {
            super(context, null, C0042R.attr.actionBarTabStyle);
            int[] iArr = {16842964};
            this.f1188f = iArr;
            this.f1189g = tab;
            TintTypedArray v = TintTypedArray.m21244v(context, null, iArr, C0042R.attr.actionBarTabStyle, 0);
            if (v.m21247s(0)) {
                setBackgroundDrawable(v.m21259g(0));
            }
            v.m21243w();
            if (z) {
                setGravity(8388627);
            }
            m21358c();
        }

        /* renamed from: a */
        public void m21360a(ActionBar.Tab tab) {
            this.f1189g = tab;
            m21358c();
        }

        /* renamed from: b */
        public ActionBar.Tab m21359b() {
            return this.f1189g;
        }

        /* renamed from: c */
        public void m21358c() {
            ActionBar.Tab tab = this.f1189g;
            View b = tab.mo22078b();
            CharSequence charSequence = null;
            if (b != null) {
                ViewParent parent = b.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(b);
                    }
                    addView(b);
                }
                this.f1192j = b;
                TextView textView = this.f1190h;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f1191i;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f1191i.setImageDrawable(null);
                    return;
                }
                return;
            }
            View view = this.f1192j;
            if (view != null) {
                removeView(view);
                this.f1192j = null;
            }
            Drawable c = tab.mo22077c();
            CharSequence e = tab.mo22075e();
            if (c != null) {
                if (this.f1191i == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.f1191i = appCompatImageView;
                }
                this.f1191i.setImageDrawable(c);
                this.f1191i.setVisibility(0);
            } else {
                ImageView imageView2 = this.f1191i;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f1191i.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(e);
            if (z) {
                if (this.f1190h == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, C0042R.attr.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f1190h = appCompatTextView;
                }
                this.f1190h.setText(e);
                this.f1190h.setVisibility(0);
            } else {
                TextView textView2 = this.f1190h;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f1190h.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.f1191i;
            if (imageView3 != null) {
                imageView3.setContentDescription(tab.mo22079a());
            }
            if (!z) {
                charSequence = tab.mo22079a();
            }
            TooltipCompat.m21170a(this, charSequence);
        }

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
            if (ScrollingTabContainerView.this.f1179k > 0) {
                int measuredWidth = getMeasuredWidth();
                int i3 = ScrollingTabContainerView.this.f1179k;
                if (measuredWidth > i3) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
                }
            }
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener.class */
    protected class VisibilityAnimListener extends AnimatorListenerAdapter {

        /* renamed from: a */
        private boolean f1194a = false;

        /* renamed from: b */
        private int f1195b;

        protected VisibilityAnimListener() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f1194a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f1194a) {
                ScrollingTabContainerView scrollingTabContainerView = ScrollingTabContainerView.this;
                scrollingTabContainerView.f1183o = null;
                scrollingTabContainerView.setVisibility(this.f1195b);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ScrollingTabContainerView.this.setVisibility(0);
            this.f1194a = false;
        }
    }

    static {
        new DecelerateInterpolator();
    }

    public ScrollingTabContainerView(@NonNull Context context) {
        super(context);
        new VisibilityAnimListener();
        setHorizontalScrollBarEnabled(false);
        ActionBarPolicy b = ActionBarPolicy.m21991b(context);
        setContentHeight(b.m21987f());
        this.f1180l = b.m21988e();
        LinearLayoutCompat c = m21365c();
        this.f1176h = c;
        addView(c, new ViewGroup.LayoutParams(-2, -1));
    }

    /* renamed from: b */
    private Spinner m21366b() {
        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, C0042R.attr.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    /* renamed from: c */
    private LinearLayoutCompat m21365c() {
        LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(getContext(), null, C0042R.attr.actionBarTabBarStyle);
        linearLayoutCompat.setMeasureWithLargestChildEnabled(true);
        linearLayoutCompat.setGravity(17);
        linearLayoutCompat.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        return linearLayoutCompat;
    }

    /* renamed from: e */
    private boolean m21363e() {
        Spinner spinner = this.f1177i;
        return spinner != null && spinner.getParent() == this;
    }

    /* renamed from: f */
    private void m21362f() {
        if (!m21363e()) {
            if (this.f1177i == null) {
                this.f1177i = m21366b();
            }
            removeView(this.f1176h);
            addView(this.f1177i, new ViewGroup.LayoutParams(-2, -1));
            if (this.f1177i.getAdapter() == null) {
                this.f1177i.setAdapter((SpinnerAdapter) new TabAdapter());
            }
            Runnable runnable = this.f1174f;
            if (runnable != null) {
                removeCallbacks(runnable);
                this.f1174f = null;
            }
            this.f1177i.setSelection(this.f1182n);
        }
    }

    /* renamed from: g */
    private boolean m21361g() {
        if (!m21363e()) {
            return false;
        }
        removeView(this.f1177i);
        addView(this.f1176h, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f1177i.getSelectedItemPosition());
        return false;
    }

    /* renamed from: a */
    public void m21367a(int i) {
        final View childAt = this.f1176h.getChildAt(i);
        Runnable runnable = this.f1174f;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: androidx.appcompat.widget.ScrollingTabContainerView.1
            @Override // java.lang.Runnable
            public void run() {
                ScrollingTabContainerView.this.smoothScrollTo(childAt.getLeft() - ((ScrollingTabContainerView.this.getWidth() - childAt.getWidth()) / 2), 0);
                ScrollingTabContainerView.this.f1174f = null;
            }
        };
        this.f1174f = runnable2;
        post(runnable2);
    }

    /* renamed from: d */
    TabView m21364d(ActionBar.Tab tab, boolean z) {
        TabView tabView = new TabView(getContext(), tab, z);
        if (z) {
            tabView.setBackgroundDrawable(null);
            tabView.setLayoutParams(new AbsListView.LayoutParams(-1, this.f1181m));
        } else {
            tabView.setFocusable(true);
            if (this.f1175g == null) {
                this.f1175g = new TabClickListener();
            }
            tabView.setOnClickListener(this.f1175g);
        }
        return tabView;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f1174f;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionBarPolicy b = ActionBarPolicy.m21991b(getContext());
        setContentHeight(b.m21987f());
        this.f1180l = b.m21988e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f1174f;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ((TabView) view).m21359b().mo22074f();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        boolean z = true;
        boolean z2 = mode == 1073741824;
        setFillViewport(z2);
        int childCount = this.f1176h.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f1179k = -1;
        } else {
            if (childCount > 2) {
                this.f1179k = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.f1179k = View.MeasureSpec.getSize(i) / 2;
            }
            this.f1179k = Math.min(this.f1179k, this.f1180l);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1181m, 1073741824);
        if (z2 || !this.f1178j) {
            z = false;
        }
        if (z) {
            this.f1176h.measure(0, makeMeasureSpec);
            if (this.f1176h.getMeasuredWidth() > View.MeasureSpec.getSize(i)) {
                m21362f();
            } else {
                m21361g();
            }
        } else {
            m21361g();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, makeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (z2 && measuredWidth != measuredWidth2) {
            setTabSelected(this.f1182n);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z) {
        this.f1178j = z;
    }

    public void setContentHeight(int i) {
        this.f1181m = i;
        requestLayout();
    }

    public void setTabSelected(int i) {
        this.f1182n = i;
        int childCount = this.f1176h.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.f1176h.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                m21367a(i);
            }
            i2++;
        }
        Spinner spinner = this.f1177i;
        if (spinner != null && i >= 0) {
            spinner.setSelection(i);
        }
    }
}
