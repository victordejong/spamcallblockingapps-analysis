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
import androidx.appcompat.C0142a;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.C0240a;
import androidx.appcompat.widget.LinearLayoutCompat;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView.class */
public class ScrollingTabContainerView extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* renamed from: k */
    private static final Interpolator f1287k = new DecelerateInterpolator();

    /* renamed from: a */
    Runnable f1288a;

    /* renamed from: b */
    LinearLayoutCompat f1289b;

    /* renamed from: c */
    int f1290c;

    /* renamed from: d */
    int f1291d;

    /* renamed from: e */
    int f1292e;

    /* renamed from: f */
    protected ViewPropertyAnimator f1293f;

    /* renamed from: g */
    protected final C0341c f1294g = new C0341c();

    /* renamed from: h */
    private Spinner f1295h;

    /* renamed from: i */
    private boolean f1296i;

    /* renamed from: j */
    private int f1297j;

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$a.class */
    final class C0339a extends BaseAdapter {
        C0339a() {
            ScrollingTabContainerView.this = r4;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return ScrollingTabContainerView.this.f1289b.getChildCount();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return ((C0340b) ScrollingTabContainerView.this.f1289b.getChildAt(i)).f1301a;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            C0340b c0340b;
            if (view == null) {
                ScrollingTabContainerView scrollingTabContainerView = ScrollingTabContainerView.this;
                C0340b c0340b2 = new C0340b(scrollingTabContainerView.getContext(), (ActionBar.AbstractC0155a) getItem(i), true);
                c0340b2.setBackgroundDrawable(null);
                c0340b2.setLayoutParams(new AbsListView.LayoutParams(-1, scrollingTabContainerView.f1292e));
                c0340b = c0340b2;
            } else {
                C0340b c0340b3 = (C0340b) view;
                c0340b3.f1301a = (ActionBar.AbstractC0155a) getItem(i);
                c0340b3.m45904a();
                c0340b = view;
            }
            return c0340b;
        }
    }

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$b.class */
    public final class C0340b extends LinearLayout {

        /* renamed from: a */
        ActionBar.AbstractC0155a f1301a;

        /* renamed from: c */
        private final int[] f1303c;

        /* renamed from: d */
        private TextView f1304d;

        /* renamed from: e */
        private ImageView f1305e;

        /* renamed from: f */
        private View f1306f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0340b(Context context, ActionBar.AbstractC0155a abstractC0155a, boolean z) {
            super(context, null, C0142a.C0143a.actionBarTabStyle);
            ScrollingTabContainerView.this = r7;
            int[] iArr = {16842964};
            this.f1303c = iArr;
            this.f1301a = abstractC0155a;
            C0370ab m45804a = C0370ab.m45804a(context, null, iArr, C0142a.C0143a.actionBarTabStyle, 0);
            if (m45804a.m45793g(0)) {
                setBackgroundDrawable(m45804a.m45810a(0));
            }
            m45804a.f1491a.recycle();
            if (z) {
                setGravity(8388627);
            }
            m45904a();
        }

        /* renamed from: a */
        public final void m45904a() {
            ActionBar.AbstractC0155a abstractC0155a = this.f1301a;
            View m46369c = abstractC0155a.m46369c();
            CharSequence charSequence = null;
            if (m46369c != null) {
                ViewParent parent = m46369c.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(m46369c);
                    }
                    addView(m46369c);
                }
                this.f1306f = m46369c;
                TextView textView = this.f1304d;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f1305e;
                if (imageView == null) {
                    return;
                }
                imageView.setVisibility(8);
                this.f1305e.setImageDrawable(null);
                return;
            }
            View view = this.f1306f;
            if (view != null) {
                removeView(view);
                this.f1306f = null;
            }
            Drawable m46371a = abstractC0155a.m46371a();
            CharSequence m46370b = abstractC0155a.m46370b();
            if (m46371a != null) {
                if (this.f1305e == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.f1305e = appCompatImageView;
                }
                this.f1305e.setImageDrawable(m46371a);
                this.f1305e.setVisibility(0);
            } else {
                ImageView imageView2 = this.f1305e;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f1305e.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(m46370b);
            if (z) {
                if (this.f1304d == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, C0142a.C0143a.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f1304d = appCompatTextView;
                }
                this.f1304d.setText(m46370b);
                this.f1304d.setVisibility(0);
            } else {
                TextView textView2 = this.f1304d;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f1304d.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.f1305e;
            if (imageView3 != null) {
                imageView3.setContentDescription(abstractC0155a.m46368d());
            }
            if (!z) {
                charSequence = abstractC0155a.m46368d();
            }
            C0374ad.m45785a(this, charSequence);
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.widget.LinearLayout, android.view.View
        public final void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (ScrollingTabContainerView.this.f1290c <= 0 || getMeasuredWidth() <= ScrollingTabContainerView.this.f1290c) {
                return;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(ScrollingTabContainerView.this.f1290c, 1073741824), i2);
        }

        @Override // android.view.View
        public final void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (!z2 || !z) {
                return;
            }
            sendAccessibilityEvent(4);
        }
    }

    /* renamed from: androidx.appcompat.widget.ScrollingTabContainerView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$c.class */
    protected final class C0341c extends AnimatorListenerAdapter {

        /* renamed from: b */
        private boolean f1308b = false;

        /* renamed from: c */
        private int f1309c;

        protected C0341c() {
            ScrollingTabContainerView.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f1308b = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.f1308b) {
                return;
            }
            ScrollingTabContainerView.this.f1293f = null;
            ScrollingTabContainerView.this.setVisibility(this.f1309c);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            ScrollingTabContainerView.this.setVisibility(0);
            this.f1308b = false;
        }
    }

    public ScrollingTabContainerView(Context context) {
        super(context);
        setHorizontalScrollBarEnabled(false);
        C0240a m46173a = C0240a.m46173a(context);
        setContentHeight(m46173a.m46171c());
        this.f1291d = m46173a.m46169e();
        LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(getContext(), null, C0142a.C0143a.actionBarTabBarStyle);
        linearLayoutCompat.setMeasureWithLargestChildEnabled(true);
        linearLayoutCompat.setGravity(17);
        linearLayoutCompat.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        this.f1289b = linearLayoutCompat;
        addView(linearLayoutCompat, new ViewGroup.LayoutParams(-2, -1));
    }

    /* renamed from: a */
    private boolean m45906a() {
        Spinner spinner = this.f1295h;
        return spinner != null && spinner.getParent() == this;
    }

    /* renamed from: b */
    private boolean m45905b() {
        if (!m45906a()) {
            return false;
        }
        removeView(this.f1295h);
        addView(this.f1289b, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f1295h.getSelectedItemPosition());
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f1288a;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0240a m46173a = C0240a.m46173a(getContext());
        setContentHeight(m46173a.m46171c());
        this.f1291d = m46173a.m46169e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f1288a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        boolean z = true;
        boolean z2 = mode == 1073741824;
        setFillViewport(z2);
        int childCount = this.f1289b.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f1290c = -1;
        } else {
            if (childCount > 2) {
                this.f1290c = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.f1290c = View.MeasureSpec.getSize(i) / 2;
            }
            this.f1290c = Math.min(this.f1290c, this.f1291d);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1292e, 1073741824);
        if (z2 || !this.f1296i) {
            z = false;
        }
        if (z) {
            this.f1289b.measure(0, makeMeasureSpec);
            if (this.f1289b.getMeasuredWidth() <= View.MeasureSpec.getSize(i)) {
                m45905b();
            } else if (!m45906a()) {
                if (this.f1295h == null) {
                    AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, C0142a.C0143a.actionDropDownStyle);
                    appCompatSpinner.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
                    appCompatSpinner.setOnItemSelectedListener(this);
                    this.f1295h = appCompatSpinner;
                }
                removeView(this.f1289b);
                addView(this.f1295h, new ViewGroup.LayoutParams(-2, -1));
                if (this.f1295h.getAdapter() == null) {
                    this.f1295h.setAdapter((SpinnerAdapter) new C0339a());
                }
                Runnable runnable = this.f1288a;
                if (runnable != null) {
                    removeCallbacks(runnable);
                    this.f1288a = null;
                }
                this.f1295h.setSelection(this.f1297j);
            }
        } else {
            m45905b();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, makeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z2 || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.f1297j);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z) {
        this.f1296i = z;
    }

    public void setContentHeight(int i) {
        this.f1292e = i;
        requestLayout();
    }

    public void setTabSelected(int i) {
        this.f1297j = i;
        int childCount = this.f1289b.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.f1289b.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                final View childAt2 = this.f1289b.getChildAt(i);
                Runnable runnable = this.f1288a;
                if (runnable != null) {
                    removeCallbacks(runnable);
                }
                Runnable runnable2 = new Runnable() { // from class: androidx.appcompat.widget.ScrollingTabContainerView.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ScrollingTabContainerView.this.smoothScrollTo(childAt2.getLeft() - ((ScrollingTabContainerView.this.getWidth() - childAt2.getWidth()) / 2), 0);
                        ScrollingTabContainerView.this.f1288a = null;
                    }
                };
                this.f1288a = runnable2;
                post(runnable2);
            }
            i2++;
        }
        Spinner spinner = this.f1295h;
        if (spinner == null || i < 0) {
            return;
        }
        spinner.setSelection(i);
    }
}
