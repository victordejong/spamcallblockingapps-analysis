package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
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
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.LinearLayoutCompat;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView.class */
public class ScrollingTabContainerView extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    public Runnable f566a;

    /* renamed from: b */
    public View$OnClickListenerC0087c f567b;

    /* renamed from: c */
    public LinearLayoutCompat f568c;

    /* renamed from: d */
    public Spinner f569d;

    /* renamed from: f */
    public boolean f570f;

    /* renamed from: g */
    public int f571g;

    /* renamed from: h */
    public int f572h;

    /* renamed from: j */
    public int f573j;

    /* renamed from: k */
    public int f574k;

    /* renamed from: l */
    public ViewPropertyAnimator f575l;

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$a.class */
    public class RunnableC0085a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f576a;

        public RunnableC0085a(View view) {
            ScrollingTabContainerView.this = r4;
            this.f576a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ScrollingTabContainerView.this.smoothScrollTo(this.f576a.getLeft() - ((ScrollingTabContainerView.this.getWidth() - this.f576a.getWidth()) / 2), 0);
            ScrollingTabContainerView.this.f566a = null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$b.class */
    public class C0086b extends BaseAdapter {
        public C0086b() {
            ScrollingTabContainerView.this = r4;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return ScrollingTabContainerView.this.f568c.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ((C0088d) ScrollingTabContainerView.this.f568c.getChildAt(i)).m6947b();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ScrollingTabContainerView.this.m6952d((ActionBar.AbstractC0063b) getItem(i), true);
            } else {
                ((C0088d) view).m6948a((ActionBar.AbstractC0063b) getItem(i));
            }
            return view;
        }
    }

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$c.class */
    public class View$OnClickListenerC0087c implements View.OnClickListener {
        public View$OnClickListenerC0087c() {
            ScrollingTabContainerView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((C0088d) view).m6947b().m7027e();
            int childCount = ScrollingTabContainerView.this.f568c.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = ScrollingTabContainerView.this.f568c.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$d.class */
    public class C0088d extends LinearLayout {

        /* renamed from: a */
        public final int[] f580a;

        /* renamed from: b */
        public ActionBar.AbstractC0063b f581b;

        /* renamed from: c */
        public TextView f582c;

        /* renamed from: d */
        public ImageView f583d;

        /* renamed from: f */
        public View f584f;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C0088d(android.content.Context r8, androidx.appcompat.app.ActionBar.AbstractC0063b r9, boolean r10) {
            /*
                r6 = this;
                r0 = r6
                r1 = r7
                androidx.appcompat.widget.ScrollingTabContainerView.this = r1
                int r0 = p000.C1389f.actionBarTabStyle
                r11 = r0
                r0 = r6
                r1 = r8
                r2 = 0
                r3 = r11
                r0.<init>(r1, r2, r3)
                r0 = 1
                int[] r0 = new int[r0]
                r7 = r0
                r0 = r7
                r1 = 0
                r2 = 16842964(0x10100d4, float:2.3694152E-38)
                r0[r1] = r2
                r0 = r6
                r1 = r7
                r0.f580a = r1
                r0 = r6
                r1 = r9
                r0.f581b = r1
                r0 = r8
                r1 = 0
                r2 = r7
                r3 = r11
                r4 = 0
                n2 r0 = n2.v(r0, r1, r2, r3, r4)
                r7 = r0
                r0 = r7
                r1 = 0
                boolean r0 = r0.s(r1)
                if (r0 == 0) goto L40
                r0 = r6
                r1 = r7
                r2 = 0
                android.graphics.drawable.Drawable r1 = r1.g(r2)
                r0.setBackgroundDrawable(r1)
            L40:
                r0 = r7
                r0.w()
                r0 = r10
                if (r0 == 0) goto L4f
                r0 = r6
                r1 = 8388627(0x800013, float:1.175497E-38)
                r0.setGravity(r1)
            L4f:
                r0 = r6
                r0.m6946c()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ScrollingTabContainerView.C0088d.<init>(androidx.appcompat.widget.ScrollingTabContainerView, android.content.Context, androidx.appcompat.app.ActionBar$b, boolean):void");
        }

        /* renamed from: a */
        public void m6948a(ActionBar.AbstractC0063b abstractC0063b) {
            this.f581b = abstractC0063b;
            m6946c();
        }

        /* renamed from: b */
        public ActionBar.AbstractC0063b m6947b() {
            return this.f581b;
        }

        /* renamed from: c */
        public void m6946c() {
            ActionBar.AbstractC0063b abstractC0063b = this.f581b;
            View m7030b = abstractC0063b.m7030b();
            CharSequence charSequence = null;
            if (m7030b != null) {
                ViewParent parent = m7030b.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(m7030b);
                    }
                    addView(m7030b);
                }
                this.f584f = m7030b;
                TextView textView = this.f582c;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f583d;
                if (imageView == null) {
                    return;
                }
                imageView.setVisibility(8);
                this.f583d.setImageDrawable(null);
                return;
            }
            View view = this.f584f;
            if (view != null) {
                removeView(view);
                this.f584f = null;
            }
            Drawable m7029c = abstractC0063b.m7029c();
            CharSequence m7028d = abstractC0063b.m7028d();
            if (m7029c != null) {
                if (this.f583d == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView((View) appCompatImageView, 0);
                    this.f583d = appCompatImageView;
                }
                this.f583d.setImageDrawable(m7029c);
                this.f583d.setVisibility(0);
            } else {
                ImageView imageView2 = this.f583d;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f583d.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(m7028d);
            if (z) {
                if (this.f582c == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), (AttributeSet) null, C1389f.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f582c = appCompatTextView;
                }
                this.f582c.setText(m7028d);
                this.f582c.setVisibility(0);
            } else {
                TextView textView2 = this.f582c;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f582c.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.f583d;
            if (imageView3 != null) {
                imageView3.setContentDescription(abstractC0063b.m7031a());
            }
            if (!z) {
                charSequence = abstractC0063b.m7031a();
            }
            p2.a(this, charSequence);
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
            if (ScrollingTabContainerView.this.f571g > 0) {
                int measuredWidth = getMeasuredWidth();
                int i3 = ScrollingTabContainerView.this.f571g;
                if (measuredWidth <= i3) {
                    return;
                }
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
            }
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

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$e.class */
    public class C0089e extends AnimatorListenerAdapter {

        /* renamed from: a */
        public boolean f586a = false;

        /* renamed from: b */
        public int f587b;

        public C0089e() {
            ScrollingTabContainerView.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f586a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f586a) {
                return;
            }
            ScrollingTabContainerView scrollingTabContainerView = ScrollingTabContainerView.this;
            scrollingTabContainerView.f575l = null;
            scrollingTabContainerView.setVisibility(this.f587b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ScrollingTabContainerView.this.setVisibility(0);
            this.f586a = false;
        }
    }

    static {
        new DecelerateInterpolator();
    }

    public ScrollingTabContainerView(Context context) {
        super(context);
        new C0089e();
        setHorizontalScrollBarEnabled(false);
        i0 b = i0.b(context);
        setContentHeight(b.f());
        this.f572h = b.e();
        LinearLayoutCompat m6953c = m6953c();
        this.f568c = m6953c;
        addView(m6953c, new ViewGroup.LayoutParams(-2, -1));
    }

    /* renamed from: a */
    public void m6955a(int i) {
        View childAt = this.f568c.getChildAt(i);
        Runnable runnable = this.f566a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        RunnableC0085a runnableC0085a = new RunnableC0085a(childAt);
        this.f566a = runnableC0085a;
        post(runnableC0085a);
    }

    /* renamed from: b */
    public final Spinner m6954b() {
        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), (AttributeSet) null, C1389f.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    /* renamed from: c */
    public final LinearLayoutCompat m6953c() {
        LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(getContext(), null, C1389f.actionBarTabBarStyle);
        linearLayoutCompat.setMeasureWithLargestChildEnabled(true);
        linearLayoutCompat.setGravity(17);
        linearLayoutCompat.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        return linearLayoutCompat;
    }

    /* renamed from: d */
    public C0088d m6952d(ActionBar.AbstractC0063b abstractC0063b, boolean z) {
        C0088d c0088d = new C0088d(getContext(), abstractC0063b, z);
        if (z) {
            c0088d.setBackgroundDrawable(null);
            c0088d.setLayoutParams(new AbsListView.LayoutParams(-1, this.f573j));
        } else {
            c0088d.setFocusable(true);
            if (this.f567b == null) {
                this.f567b = new View$OnClickListenerC0087c();
            }
            c0088d.setOnClickListener(this.f567b);
        }
        return c0088d;
    }

    /* renamed from: e */
    public final boolean m6951e() {
        Spinner spinner = this.f569d;
        return spinner != null && spinner.getParent() == this;
    }

    /* renamed from: f */
    public final void m6950f() {
        if (m6951e()) {
            return;
        }
        if (this.f569d == null) {
            this.f569d = m6954b();
        }
        removeView(this.f568c);
        addView(this.f569d, new ViewGroup.LayoutParams(-2, -1));
        if (this.f569d.getAdapter() == null) {
            this.f569d.setAdapter((SpinnerAdapter) new C0086b());
        }
        Runnable runnable = this.f566a;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.f566a = null;
        }
        this.f569d.setSelection(this.f574k);
    }

    /* renamed from: g */
    public final boolean m6949g() {
        if (!m6951e()) {
            return false;
        }
        removeView(this.f569d);
        addView(this.f568c, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f569d.getSelectedItemPosition());
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f566a;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        i0 b = i0.b(getContext());
        setContentHeight(b.f());
        this.f572h = b.e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f566a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ((C0088d) view).m6947b().m7027e();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int mode = View.MeasureSpec.getMode(i);
        boolean z = mode == 1073741824;
        setFillViewport(z);
        int childCount = this.f568c.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            i3 = -1;
        } else {
            if (childCount > 2) {
                this.f571g = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.f571g = View.MeasureSpec.getSize(i) / 2;
            }
            i3 = Math.min(this.f571g, this.f572h);
        }
        this.f571g = i3;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f573j, 1073741824);
        if (!z && this.f570f) {
            this.f568c.measure(0, makeMeasureSpec);
            if (this.f568c.getMeasuredWidth() > View.MeasureSpec.getSize(i)) {
                m6950f();
                int measuredWidth = getMeasuredWidth();
                super.onMeasure(i, makeMeasureSpec);
                int measuredWidth2 = getMeasuredWidth();
                if (z || measuredWidth == measuredWidth2) {
                }
                setTabSelected(this.f574k);
                return;
            }
        }
        m6949g();
        int measuredWidth3 = getMeasuredWidth();
        super.onMeasure(i, makeMeasureSpec);
        int measuredWidth22 = getMeasuredWidth();
        if (z) {
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z) {
        this.f570f = z;
    }

    public void setContentHeight(int i) {
        this.f573j = i;
        requestLayout();
    }

    public void setTabSelected(int i) {
        this.f574k = i;
        int childCount = this.f568c.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.f568c.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                m6955a(i);
            }
            i2++;
        }
        Spinner spinner = this.f569d;
        if (spinner == null || i < 0) {
            return;
        }
        spinner.setSelection(i);
    }
}
