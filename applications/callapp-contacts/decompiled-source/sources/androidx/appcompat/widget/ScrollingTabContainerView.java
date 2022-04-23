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
import androidx.appcompat.a;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.LinearLayoutCompat;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView.class */
public class ScrollingTabContainerView extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {
    private static final Interpolator k = new DecelerateInterpolator();

    /* renamed from: a  reason: collision with root package name */
    Runnable f977a;

    /* renamed from: b  reason: collision with root package name */
    LinearLayoutCompat f978b;

    /* renamed from: c  reason: collision with root package name */
    int f979c;

    /* renamed from: d  reason: collision with root package name */
    int f980d;
    int e;
    protected ViewPropertyAnimator f;
    protected final c g = new c();
    private Spinner h;
    private boolean i;
    private int j;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$a.class */
    final class a extends BaseAdapter {
        a() {
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return ScrollingTabContainerView.this.f978b.getChildCount();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return ((b) ScrollingTabContainerView.this.f978b.getChildAt(i)).f984a;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            b bVar;
            if (view == null) {
                ScrollingTabContainerView scrollingTabContainerView = ScrollingTabContainerView.this;
                b bVar2 = new b(scrollingTabContainerView.getContext(), (ActionBar.a) getItem(i), true);
                bVar2.setBackgroundDrawable(null);
                bVar2.setLayoutParams(new AbsListView.LayoutParams(-1, scrollingTabContainerView.e));
                bVar = bVar2;
            } else {
                b bVar3 = (b) view;
                bVar3.f984a = (ActionBar.a) getItem(i);
                bVar3.a();
                bVar = view;
            }
            return bVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$b.class */
    public final class b extends LinearLayout {

        /* renamed from: a  reason: collision with root package name */
        ActionBar.a f984a;

        /* renamed from: c  reason: collision with root package name */
        private final int[] f986c;

        /* renamed from: d  reason: collision with root package name */
        private TextView f987d;
        private ImageView e;
        private View f;

        public b(Context context, ActionBar.a aVar, boolean z) {
            super(context, null, a.C0018a.actionBarTabStyle);
            int[] iArr = {16842964};
            this.f986c = iArr;
            this.f984a = aVar;
            ab a2 = ab.a(context, null, iArr, a.C0018a.actionBarTabStyle, 0);
            if (a2.g(0)) {
                setBackgroundDrawable(a2.a(0));
            }
            a2.f1044a.recycle();
            if (z) {
                setGravity(8388627);
            }
            a();
        }

        public final void a() {
            ActionBar.a aVar = this.f984a;
            View c2 = aVar.c();
            CharSequence charSequence = null;
            if (c2 != null) {
                ViewParent parent = c2.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(c2);
                    }
                    addView(c2);
                }
                this.f = c2;
                TextView textView = this.f987d;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.e;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.e.setImageDrawable(null);
                    return;
                }
                return;
            }
            View view = this.f;
            if (view != null) {
                removeView(view);
                this.f = null;
            }
            Drawable a2 = aVar.a();
            CharSequence b2 = aVar.b();
            if (a2 != null) {
                if (this.e == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.e = appCompatImageView;
                }
                this.e.setImageDrawable(a2);
                this.e.setVisibility(0);
            } else {
                ImageView imageView2 = this.e;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.e.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(b2);
            if (z) {
                if (this.f987d == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, a.C0018a.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f987d = appCompatTextView;
                }
                this.f987d.setText(b2);
                this.f987d.setVisibility(0);
            } else {
                TextView textView2 = this.f987d;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f987d.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.e;
            if (imageView3 != null) {
                imageView3.setContentDescription(aVar.d());
            }
            if (!z) {
                charSequence = aVar.d();
            }
            ad.a(this, charSequence);
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
            if (ScrollingTabContainerView.this.f979c > 0 && getMeasuredWidth() > ScrollingTabContainerView.this.f979c) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(ScrollingTabContainerView.this.f979c, 1073741824), i2);
            }
        }

        @Override // android.view.View
        public final void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ScrollingTabContainerView$c.class */
    protected final class c extends AnimatorListenerAdapter {

        /* renamed from: b  reason: collision with root package name */
        private boolean f989b = false;

        /* renamed from: c  reason: collision with root package name */
        private int f990c;

        protected c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f989b = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (!this.f989b) {
                ScrollingTabContainerView.this.f = null;
                ScrollingTabContainerView.this.setVisibility(this.f990c);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            ScrollingTabContainerView.this.setVisibility(0);
            this.f989b = false;
        }
    }

    public ScrollingTabContainerView(Context context) {
        super(context);
        setHorizontalScrollBarEnabled(false);
        androidx.appcompat.view.a a2 = androidx.appcompat.view.a.a(context);
        setContentHeight(a2.c());
        this.f980d = a2.e();
        LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(getContext(), null, a.C0018a.actionBarTabBarStyle);
        linearLayoutCompat.setMeasureWithLargestChildEnabled(true);
        linearLayoutCompat.setGravity(17);
        linearLayoutCompat.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        this.f978b = linearLayoutCompat;
        addView(linearLayoutCompat, new ViewGroup.LayoutParams(-2, -1));
    }

    private boolean a() {
        Spinner spinner = this.h;
        return spinner != null && spinner.getParent() == this;
    }

    private boolean b() {
        if (!a()) {
            return false;
        }
        removeView(this.h);
        addView(this.f978b, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.h.getSelectedItemPosition());
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f977a;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        androidx.appcompat.view.a a2 = androidx.appcompat.view.a.a(getContext());
        setContentHeight(a2.c());
        this.f980d = a2.e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f977a;
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
        int childCount = this.f978b.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f979c = -1;
        } else {
            if (childCount > 2) {
                this.f979c = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.f979c = View.MeasureSpec.getSize(i) / 2;
            }
            this.f979c = Math.min(this.f979c, this.f980d);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.e, 1073741824);
        if (z2 || !this.i) {
            z = false;
        }
        if (z) {
            this.f978b.measure(0, makeMeasureSpec);
            if (this.f978b.getMeasuredWidth() <= View.MeasureSpec.getSize(i)) {
                b();
            } else if (!a()) {
                if (this.h == null) {
                    AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, a.C0018a.actionDropDownStyle);
                    appCompatSpinner.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
                    appCompatSpinner.setOnItemSelectedListener(this);
                    this.h = appCompatSpinner;
                }
                removeView(this.f978b);
                addView(this.h, new ViewGroup.LayoutParams(-2, -1));
                if (this.h.getAdapter() == null) {
                    this.h.setAdapter((SpinnerAdapter) new a());
                }
                Runnable runnable = this.f977a;
                if (runnable != null) {
                    removeCallbacks(runnable);
                    this.f977a = null;
                }
                this.h.setSelection(this.j);
            }
        } else {
            b();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, makeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (z2 && measuredWidth != measuredWidth2) {
            setTabSelected(this.j);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z) {
        this.i = z;
    }

    public void setContentHeight(int i) {
        this.e = i;
        requestLayout();
    }

    public void setTabSelected(int i) {
        this.j = i;
        int childCount = this.f978b.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.f978b.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                final View childAt2 = this.f978b.getChildAt(i);
                Runnable runnable = this.f977a;
                if (runnable != null) {
                    removeCallbacks(runnable);
                }
                Runnable runnable2 = new Runnable() { // from class: androidx.appcompat.widget.ScrollingTabContainerView.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ScrollingTabContainerView.this.smoothScrollTo(childAt2.getLeft() - ((ScrollingTabContainerView.this.getWidth() - childAt2.getWidth()) / 2), 0);
                        ScrollingTabContainerView.this.f977a = null;
                    }
                };
                this.f977a = runnable2;
                post(runnable2);
            }
            i2++;
        }
        Spinner spinner = this.h;
        if (spinner != null && i >= 0) {
            spinner.setSelection(i);
        }
    }
}
