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
import d.a.a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView.class */
public class ScrollingTabContainerView extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* renamed from: b */
    Runnable f438b;

    /* renamed from: c */
    private View$OnClickListenerC0113c f439c;

    /* renamed from: d */
    LinearLayoutCompat f440d;

    /* renamed from: e */
    private Spinner f441e;

    /* renamed from: f */
    private boolean f442f;

    /* renamed from: g */
    int f443g;

    /* renamed from: h */
    int f444h;

    /* renamed from: i */
    private int f445i;

    /* renamed from: j */
    private int f446j;

    /* renamed from: k */
    protected ViewPropertyAnimator f447k;

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$a.class */
    public class RunnableC0111a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ View f448b;

        RunnableC0111a(View view) {
            ScrollingTabContainerView.this = r4;
            this.f448b = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ScrollingTabContainerView.this.smoothScrollTo(this.f448b.getLeft() - ((ScrollingTabContainerView.this.getWidth() - this.f448b.getWidth()) / 2), 0);
            ScrollingTabContainerView.this.f438b = null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$b.class */
    public class C0112b extends BaseAdapter {
        C0112b() {
            ScrollingTabContainerView.this = r4;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return ScrollingTabContainerView.this.f440d.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ((C0114d) ScrollingTabContainerView.this.f440d.getChildAt(i)).m14732b();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ScrollingTabContainerView.this.m14737d((ActionBar.AbstractC0070b) getItem(i), true);
            } else {
                ((C0114d) view).m14733a((ActionBar.AbstractC0070b) getItem(i));
            }
            return view;
        }
    }

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$c.class */
    public class View$OnClickListenerC0113c implements View.OnClickListener {
        View$OnClickListenerC0113c() {
            ScrollingTabContainerView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((C0114d) view).m14732b().m14982e();
            int childCount = ScrollingTabContainerView.this.f440d.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = ScrollingTabContainerView.this.f440d.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$d.class */
    public class C0114d extends LinearLayout {

        /* renamed from: b */
        private final int[] f452b;

        /* renamed from: c */
        private ActionBar.AbstractC0070b f453c;

        /* renamed from: d */
        private TextView f454d;

        /* renamed from: e */
        private ImageView f455e;

        /* renamed from: f */
        private View f456f;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C0114d(android.content.Context r8, androidx.appcompat.app.ActionBar.AbstractC0070b r9, boolean r10) {
            /*
                r6 = this;
                r0 = r6
                r1 = r7
                androidx.appcompat.widget.ScrollingTabContainerView.this = r1
                int r0 = d.a.a.actionBarTabStyle
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
                r0.f452b = r1
                r0 = r6
                r1 = r9
                r0.f453c = r1
                r0 = r8
                r1 = 0
                r2 = r7
                r3 = r11
                r4 = 0
                androidx.appcompat.widget.d0 r0 = androidx.appcompat.widget.C0127d0.m14618v(r0, r1, r2, r3, r4)
                r7 = r0
                r0 = r7
                r1 = 0
                boolean r0 = r0.m14621s(r1)
                if (r0 == 0) goto L40
                r0 = r6
                r1 = r7
                r2 = 0
                android.graphics.drawable.Drawable r1 = r1.m14633g(r2)
                r0.setBackgroundDrawable(r1)
            L40:
                r0 = r7
                r0.m14617w()
                r0 = r10
                if (r0 == 0) goto L4f
                r0 = r6
                r1 = 8388627(0x800013, float:1.175497E-38)
                r0.setGravity(r1)
            L4f:
                r0 = r6
                r0.m14731c()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ScrollingTabContainerView.C0114d.<init>(androidx.appcompat.widget.ScrollingTabContainerView, android.content.Context, androidx.appcompat.app.ActionBar$b, boolean):void");
        }

        /* renamed from: a */
        public void m14733a(ActionBar.AbstractC0070b abstractC0070b) {
            this.f453c = abstractC0070b;
            m14731c();
        }

        /* renamed from: b */
        public ActionBar.AbstractC0070b m14732b() {
            return this.f453c;
        }

        /* renamed from: c */
        public void m14731c() {
            ActionBar.AbstractC0070b abstractC0070b = this.f453c;
            View m14985b = abstractC0070b.m14985b();
            CharSequence charSequence = null;
            if (m14985b != null) {
                ViewParent parent = m14985b.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(m14985b);
                    }
                    addView(m14985b);
                }
                this.f456f = m14985b;
                TextView textView = this.f454d;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f455e;
                if (imageView == null) {
                    return;
                }
                imageView.setVisibility(8);
                this.f455e.setImageDrawable(null);
                return;
            }
            View view = this.f456f;
            if (view != null) {
                removeView(view);
                this.f456f = null;
            }
            Drawable m14984c = abstractC0070b.m14984c();
            CharSequence m14983d = abstractC0070b.m14983d();
            if (m14984c != null) {
                if (this.f455e == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView((View) appCompatImageView, 0);
                    this.f455e = appCompatImageView;
                }
                this.f455e.setImageDrawable(m14984c);
                this.f455e.setVisibility(0);
            } else {
                ImageView imageView2 = this.f455e;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f455e.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(m14983d);
            if (z) {
                if (this.f454d == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), (AttributeSet) null, a.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f454d = appCompatTextView;
                }
                this.f454d.setText(m14983d);
                this.f454d.setVisibility(0);
            } else {
                TextView textView2 = this.f454d;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f454d.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.f455e;
            if (imageView3 != null) {
                imageView3.setContentDescription(abstractC0070b.m14986a());
            }
            if (!z) {
                charSequence = abstractC0070b.m14986a();
            }
            C0130f0.m14599a(this, charSequence);
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
            if (ScrollingTabContainerView.this.f443g > 0) {
                int measuredWidth = getMeasuredWidth();
                int i3 = ScrollingTabContainerView.this.f443g;
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
    protected class C0115e extends AnimatorListenerAdapter {

        /* renamed from: a */
        private boolean f458a = false;

        /* renamed from: b */
        private int f459b;

        protected C0115e() {
            ScrollingTabContainerView.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f458a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f458a) {
                return;
            }
            ScrollingTabContainerView scrollingTabContainerView = ScrollingTabContainerView.this;
            scrollingTabContainerView.f447k = null;
            scrollingTabContainerView.setVisibility(this.f459b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ScrollingTabContainerView.this.setVisibility(0);
            this.f458a = false;
        }
    }

    static {
        new DecelerateInterpolator();
    }

    public ScrollingTabContainerView(Context context) {
        super(context);
        new C0115e();
        setHorizontalScrollBarEnabled(false);
        d.a.o.a b = d.a.o.a.b(context);
        setContentHeight(b.f());
        this.f444h = b.e();
        LinearLayoutCompat m14738c = m14738c();
        this.f440d = m14738c;
        addView(m14738c, new ViewGroup.LayoutParams(-2, -1));
    }

    /* renamed from: b */
    private Spinner m14739b() {
        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), (AttributeSet) null, a.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    /* renamed from: c */
    private LinearLayoutCompat m14738c() {
        LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(getContext(), null, a.actionBarTabBarStyle);
        linearLayoutCompat.setMeasureWithLargestChildEnabled(true);
        linearLayoutCompat.setGravity(17);
        linearLayoutCompat.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        return linearLayoutCompat;
    }

    /* renamed from: e */
    private boolean m14736e() {
        Spinner spinner = this.f441e;
        return spinner != null && spinner.getParent() == this;
    }

    /* renamed from: f */
    private void m14735f() {
        if (m14736e()) {
            return;
        }
        if (this.f441e == null) {
            this.f441e = m14739b();
        }
        removeView(this.f440d);
        addView(this.f441e, new ViewGroup.LayoutParams(-2, -1));
        if (this.f441e.getAdapter() == null) {
            this.f441e.setAdapter((SpinnerAdapter) new C0112b());
        }
        Runnable runnable = this.f438b;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.f438b = null;
        }
        this.f441e.setSelection(this.f446j);
    }

    /* renamed from: g */
    private boolean m14734g() {
        if (!m14736e()) {
            return false;
        }
        removeView(this.f441e);
        addView(this.f440d, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f441e.getSelectedItemPosition());
        return false;
    }

    /* renamed from: a */
    public void m14740a(int i) {
        View childAt = this.f440d.getChildAt(i);
        Runnable runnable = this.f438b;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        RunnableC0111a runnableC0111a = new RunnableC0111a(childAt);
        this.f438b = runnableC0111a;
        post(runnableC0111a);
    }

    /* renamed from: d */
    C0114d m14737d(ActionBar.AbstractC0070b abstractC0070b, boolean z) {
        C0114d c0114d = new C0114d(getContext(), abstractC0070b, z);
        if (z) {
            c0114d.setBackgroundDrawable(null);
            c0114d.setLayoutParams(new AbsListView.LayoutParams(-1, this.f445i));
        } else {
            c0114d.setFocusable(true);
            if (this.f439c == null) {
                this.f439c = new View$OnClickListenerC0113c();
            }
            c0114d.setOnClickListener(this.f439c);
        }
        return c0114d;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f438b;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        d.a.o.a b = d.a.o.a.b(getContext());
        setContentHeight(b.f());
        this.f444h = b.e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f438b;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ((C0114d) view).m14732b().m14982e();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int mode = View.MeasureSpec.getMode(i);
        boolean z = mode == 1073741824;
        setFillViewport(z);
        int childCount = this.f440d.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            i3 = -1;
        } else {
            if (childCount > 2) {
                this.f443g = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.f443g = View.MeasureSpec.getSize(i) / 2;
            }
            i3 = Math.min(this.f443g, this.f444h);
        }
        this.f443g = i3;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f445i, 1073741824);
        if (!z && this.f442f) {
            this.f440d.measure(0, makeMeasureSpec);
            if (this.f440d.getMeasuredWidth() > View.MeasureSpec.getSize(i)) {
                m14735f();
                int measuredWidth = getMeasuredWidth();
                super.onMeasure(i, makeMeasureSpec);
                int measuredWidth2 = getMeasuredWidth();
                if (z || measuredWidth == measuredWidth2) {
                }
                setTabSelected(this.f446j);
                return;
            }
        }
        m14734g();
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
        this.f442f = z;
    }

    public void setContentHeight(int i) {
        this.f445i = i;
        requestLayout();
    }

    public void setTabSelected(int i) {
        this.f446j = i;
        int childCount = this.f440d.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.f440d.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                m14740a(i);
            }
            i2++;
        }
        Spinner spinner = this.f441e;
        if (spinner == null || i < 0) {
            return;
        }
        spinner.setSelection(i);
    }
}
