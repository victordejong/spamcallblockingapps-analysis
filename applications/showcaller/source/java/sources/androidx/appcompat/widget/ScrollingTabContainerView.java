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
import android.view.animation.Interpolator;
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
import p020b.p021a.C1423a;
import p020b.p021a.p028o.C1454a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView.class */
public class ScrollingTabContainerView extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* renamed from: d */
    private static final Interpolator f1023d = new DecelerateInterpolator();

    /* renamed from: e */
    Runnable f1024e;

    /* renamed from: f */
    private View$OnClickListenerC0248c f1025f;

    /* renamed from: g */
    LinearLayoutCompat f1026g;

    /* renamed from: h */
    private Spinner f1027h;

    /* renamed from: i */
    private boolean f1028i;

    /* renamed from: j */
    int f1029j;

    /* renamed from: k */
    int f1030k;

    /* renamed from: l */
    private int f1031l;

    /* renamed from: m */
    private int f1032m;

    /* renamed from: n */
    protected ViewPropertyAnimator f1033n;

    /* renamed from: o */
    protected final C0250e f1034o = new C0250e();

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$a.class */
    public class RunnableC0246a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ View f1035d;

        RunnableC0246a(View view) {
            ScrollingTabContainerView.this = r4;
            this.f1035d = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ScrollingTabContainerView.this.smoothScrollTo(this.f1035d.getLeft() - ((ScrollingTabContainerView.this.getWidth() - this.f1035d.getWidth()) / 2), 0);
            ScrollingTabContainerView.this.f1024e = null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$b.class */
    public class C0247b extends BaseAdapter {
        C0247b() {
            ScrollingTabContainerView.this = r4;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return ScrollingTabContainerView.this.f1026g.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ((C0249d) ScrollingTabContainerView.this.f1026g.getChildAt(i)).m35106b();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ScrollingTabContainerView.this.m35111d((ActionBar.AbstractC0106b) getItem(i), true);
            } else {
                ((C0249d) view).m35107a((ActionBar.AbstractC0106b) getItem(i));
            }
            return view;
        }
    }

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$c.class */
    public class View$OnClickListenerC0248c implements View.OnClickListener {
        View$OnClickListenerC0248c() {
            ScrollingTabContainerView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((C0249d) view).m35106b().m35701e();
            int childCount = ScrollingTabContainerView.this.f1026g.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = ScrollingTabContainerView.this.f1026g.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$d.class */
    public class C0249d extends LinearLayout {

        /* renamed from: d */
        private final int[] f1039d;

        /* renamed from: e */
        private ActionBar.AbstractC0106b f1040e;

        /* renamed from: f */
        private TextView f1041f;

        /* renamed from: g */
        private ImageView f1042g;

        /* renamed from: h */
        private View f1043h;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C0249d(android.content.Context r8, androidx.appcompat.app.ActionBar.AbstractC0106b r9, boolean r10) {
            /*
                r6 = this;
                r0 = r6
                r1 = r7
                androidx.appcompat.widget.ScrollingTabContainerView.this = r1
                int r0 = p020b.p021a.C1423a.actionBarTabStyle
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
                r0.f1039d = r1
                r0 = r6
                r1 = r9
                r0.f1040e = r1
                r0 = r8
                r1 = 0
                r2 = r7
                r3 = r11
                r4 = 0
                androidx.appcompat.widget.e0 r0 = androidx.appcompat.widget.C0286e0.m34946v(r0, r1, r2, r3, r4)
                r7 = r0
                r0 = r7
                r1 = 0
                boolean r0 = r0.m34949s(r1)
                if (r0 == 0) goto L40
                r0 = r6
                r1 = r7
                r2 = 0
                android.graphics.drawable.Drawable r1 = r1.m34961g(r2)
                r0.setBackgroundDrawable(r1)
            L40:
                r0 = r7
                r0.m34945w()
                r0 = r10
                if (r0 == 0) goto L4f
                r0 = r6
                r1 = 8388627(0x800013, float:1.175497E-38)
                r0.setGravity(r1)
            L4f:
                r0 = r6
                r0.m35105c()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ScrollingTabContainerView.C0249d.<init>(androidx.appcompat.widget.ScrollingTabContainerView, android.content.Context, androidx.appcompat.app.ActionBar$b, boolean):void");
        }

        /* renamed from: a */
        public void m35107a(ActionBar.AbstractC0106b abstractC0106b) {
            this.f1040e = abstractC0106b;
            m35105c();
        }

        /* renamed from: b */
        public ActionBar.AbstractC0106b m35106b() {
            return this.f1040e;
        }

        /* renamed from: c */
        public void m35105c() {
            ActionBar.AbstractC0106b abstractC0106b = this.f1040e;
            View m35704b = abstractC0106b.m35704b();
            CharSequence charSequence = null;
            if (m35704b != null) {
                ViewParent parent = m35704b.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(m35704b);
                    }
                    addView(m35704b);
                }
                this.f1043h = m35704b;
                TextView textView = this.f1041f;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f1042g;
                if (imageView == null) {
                    return;
                }
                imageView.setVisibility(8);
                this.f1042g.setImageDrawable(null);
                return;
            }
            View view = this.f1043h;
            if (view != null) {
                removeView(view);
                this.f1043h = null;
            }
            Drawable m35703c = abstractC0106b.m35703c();
            CharSequence m35702d = abstractC0106b.m35702d();
            if (m35703c != null) {
                if (this.f1042g == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.f1042g = appCompatImageView;
                }
                this.f1042g.setImageDrawable(m35703c);
                this.f1042g.setVisibility(0);
            } else {
                ImageView imageView2 = this.f1042g;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f1042g.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(m35702d);
            if (z) {
                if (this.f1041f == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, C1423a.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f1041f = appCompatTextView;
                }
                this.f1041f.setText(m35702d);
                this.f1041f.setVisibility(0);
            } else {
                TextView textView2 = this.f1041f;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f1041f.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.f1042g;
            if (imageView3 != null) {
                imageView3.setContentDescription(abstractC0106b.m35705a());
            }
            if (!z) {
                charSequence = abstractC0106b.m35705a();
            }
            C0293g0.m34913a(this, charSequence);
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
            if (ScrollingTabContainerView.this.f1029j > 0) {
                int measuredWidth = getMeasuredWidth();
                int i3 = ScrollingTabContainerView.this.f1029j;
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
    protected class C0250e extends AnimatorListenerAdapter {

        /* renamed from: a */
        private boolean f1045a = false;

        /* renamed from: b */
        private int f1046b;

        protected C0250e() {
            ScrollingTabContainerView.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f1045a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f1045a) {
                return;
            }
            ScrollingTabContainerView scrollingTabContainerView = ScrollingTabContainerView.this;
            scrollingTabContainerView.f1033n = null;
            scrollingTabContainerView.setVisibility(this.f1046b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ScrollingTabContainerView.this.setVisibility(0);
            this.f1045a = false;
        }
    }

    public ScrollingTabContainerView(Context context) {
        super(context);
        setHorizontalScrollBarEnabled(false);
        C1454a m30053b = C1454a.m30053b(context);
        setContentHeight(m30053b.m30049f());
        this.f1030k = m30053b.m30050e();
        LinearLayoutCompat m35112c = m35112c();
        this.f1026g = m35112c;
        addView(m35112c, new ViewGroup.LayoutParams(-2, -1));
    }

    /* renamed from: b */
    private Spinner m35113b() {
        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, C1423a.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    /* renamed from: c */
    private LinearLayoutCompat m35112c() {
        LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(getContext(), null, C1423a.actionBarTabBarStyle);
        linearLayoutCompat.setMeasureWithLargestChildEnabled(true);
        linearLayoutCompat.setGravity(17);
        linearLayoutCompat.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        return linearLayoutCompat;
    }

    /* renamed from: e */
    private boolean m35110e() {
        Spinner spinner = this.f1027h;
        return spinner != null && spinner.getParent() == this;
    }

    /* renamed from: f */
    private void m35109f() {
        if (m35110e()) {
            return;
        }
        if (this.f1027h == null) {
            this.f1027h = m35113b();
        }
        removeView(this.f1026g);
        addView(this.f1027h, new ViewGroup.LayoutParams(-2, -1));
        if (this.f1027h.getAdapter() == null) {
            this.f1027h.setAdapter((SpinnerAdapter) new C0247b());
        }
        Runnable runnable = this.f1024e;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.f1024e = null;
        }
        this.f1027h.setSelection(this.f1032m);
    }

    /* renamed from: g */
    private boolean m35108g() {
        if (!m35110e()) {
            return false;
        }
        removeView(this.f1027h);
        addView(this.f1026g, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f1027h.getSelectedItemPosition());
        return false;
    }

    /* renamed from: a */
    public void m35114a(int i) {
        View childAt = this.f1026g.getChildAt(i);
        Runnable runnable = this.f1024e;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        RunnableC0246a runnableC0246a = new RunnableC0246a(childAt);
        this.f1024e = runnableC0246a;
        post(runnableC0246a);
    }

    /* renamed from: d */
    C0249d m35111d(ActionBar.AbstractC0106b abstractC0106b, boolean z) {
        C0249d c0249d = new C0249d(getContext(), abstractC0106b, z);
        if (z) {
            c0249d.setBackgroundDrawable(null);
            c0249d.setLayoutParams(new AbsListView.LayoutParams(-1, this.f1031l));
        } else {
            c0249d.setFocusable(true);
            if (this.f1025f == null) {
                this.f1025f = new View$OnClickListenerC0248c();
            }
            c0249d.setOnClickListener(this.f1025f);
        }
        return c0249d;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f1024e;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C1454a m30053b = C1454a.m30053b(getContext());
        setContentHeight(m30053b.m30049f());
        this.f1030k = m30053b.m30050e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f1024e;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ((C0249d) view).m35106b().m35701e();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        boolean z = true;
        boolean z2 = mode == 1073741824;
        setFillViewport(z2);
        int childCount = this.f1026g.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f1029j = -1;
        } else {
            if (childCount > 2) {
                this.f1029j = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.f1029j = View.MeasureSpec.getSize(i) / 2;
            }
            this.f1029j = Math.min(this.f1029j, this.f1030k);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1031l, 1073741824);
        if (z2 || !this.f1028i) {
            z = false;
        }
        if (z) {
            this.f1026g.measure(0, makeMeasureSpec);
            if (this.f1026g.getMeasuredWidth() > View.MeasureSpec.getSize(i)) {
                m35109f();
            } else {
                m35108g();
            }
        } else {
            m35108g();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, makeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z2 || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.f1032m);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z) {
        this.f1028i = z;
    }

    public void setContentHeight(int i) {
        this.f1031l = i;
        requestLayout();
    }

    public void setTabSelected(int i) {
        this.f1032m = i;
        int childCount = this.f1026g.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.f1026g.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                m35114a(i);
            }
            i2++;
        }
        Spinner spinner = this.f1027h;
        if (spinner == null || i < 0) {
            return;
        }
        spinner.setSelection(i);
    }
}
