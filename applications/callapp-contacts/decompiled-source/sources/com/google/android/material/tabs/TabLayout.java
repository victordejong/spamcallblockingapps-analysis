package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.ad;
import androidx.core.e.c;
import androidx.core.view.a.c;
import androidx.core.view.t;
import androidx.core.view.v;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.r;
import com.google.android.material.k.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
@ViewPager.a
/* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout.class */
public class TabLayout extends HorizontalScrollView {
    private f B;
    private int C;
    private final int D;
    private final int E;
    private final int F;
    private int G;
    private com.google.android.material.tabs.b H;
    private b I;
    private final ArrayList<b> J;
    private b K;
    private ValueAnimator L;
    private androidx.viewpager.widget.a M;
    private DataSetObserver N;
    private g O;
    private a P;
    private boolean Q;
    private final c.a<TabView> R;

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList<f> f30839a;

    /* renamed from: b  reason: collision with root package name */
    final e f30840b;

    /* renamed from: c  reason: collision with root package name */
    int f30841c;

    /* renamed from: d  reason: collision with root package name */
    int f30842d;
    int e;
    int f;
    int g;
    ColorStateList h;
    ColorStateList i;
    ColorStateList j;
    Drawable k;
    PorterDuff.Mode l;
    float m;
    float n;
    final int o;
    int p;
    int q;
    int r;
    int s;
    int t;
    boolean u;
    boolean v;
    int w;
    boolean x;
    ViewPager y;
    private static final int z = a.k.Widget_Design_TabLayout;
    private static final c.a<f> A = new c.C0049c(16);

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout$TabView.class */
    public final class TabView extends LinearLayout {

        /* renamed from: a  reason: collision with root package name */
        TextView f30844a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f30845b;

        /* renamed from: c  reason: collision with root package name */
        View f30846c;

        /* renamed from: d  reason: collision with root package name */
        TextView f30847d;
        ImageView e;
        private f g;
        private View h;
        private BadgeDrawable i;
        private Drawable j;
        private int k = 2;

        public TabView(Context context) {
            super(context);
            a(context);
            v.b(this, TabLayout.this.f30841c, TabLayout.this.f30842d, TabLayout.this.e, TabLayout.this.f);
            setGravity(17);
            setOrientation(!TabLayout.this.u ? 1 : 0);
            setClickable(true);
            v.a(this, t.a(getContext()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Context context) {
            GradientDrawable gradientDrawable = null;
            if (TabLayout.this.o != 0) {
                Drawable b2 = androidx.appcompat.a.a.a.b(context, TabLayout.this.o);
                this.j = b2;
                if (b2 != null && b2.isStateful()) {
                    this.j.setState(getDrawableState());
                }
            } else {
                this.j = null;
            }
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(0);
            Drawable drawable = gradientDrawable2;
            if (TabLayout.this.j != null) {
                gradientDrawable = new GradientDrawable();
                gradientDrawable.setCornerRadius(1.0E-5f);
                gradientDrawable.setColor(-1);
                ColorStateList a2 = com.google.android.material.i.b.a(TabLayout.this.j);
                if (Build.VERSION.SDK_INT >= 21) {
                    if (TabLayout.this.x) {
                        gradientDrawable2 = null;
                    }
                    if (TabLayout.this.x) {
                    }
                    drawable = new RippleDrawable(a2, gradientDrawable2, gradientDrawable);
                } else {
                    Drawable f = androidx.core.graphics.drawable.a.f(gradientDrawable);
                    androidx.core.graphics.drawable.a.a(f, a2);
                    drawable = new LayerDrawable(new Drawable[]{gradientDrawable2, f});
                }
            }
            v.a(this, drawable);
            TabLayout.this.invalidate();
        }

        private void a(final View view) {
            if (view != null) {
                view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.material.tabs.TabLayout.TabView.1
                    @Override // android.view.View.OnLayoutChangeListener
                    public final void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                        if (view.getVisibility() == 0) {
                            TabView.this.c(view);
                        }
                    }
                });
            }
        }

        static /* synthetic */ void a(TabView tabView, Canvas canvas) {
            Drawable drawable = tabView.j;
            if (drawable != null) {
                drawable.setBounds(tabView.getLeft(), tabView.getTop(), tabView.getRight(), tabView.getBottom());
                tabView.j.draw(canvas);
            }
        }

        private void a(boolean z) {
            setClipChildren(z);
            setClipToPadding(z);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(z);
                viewGroup.setClipToPadding(z);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void b() {
            FrameLayout frameLayout;
            if (com.google.android.material.badge.a.f30251a) {
                frameLayout = d();
                addView(frameLayout, 0);
            } else {
                frameLayout = this;
            }
            ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(a.h.design_layout_tab_icon, (ViewGroup) frameLayout, false);
            this.f30845b = imageView;
            frameLayout.addView(imageView, 0);
        }

        private void b(View view) {
            if (g() && view != null) {
                a(false);
                com.google.android.material.badge.a.a(this.i, view, d(view));
                this.h = view;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void c() {
            FrameLayout frameLayout;
            if (com.google.android.material.badge.a.f30251a) {
                frameLayout = d();
                addView(frameLayout);
            } else {
                frameLayout = this;
            }
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(a.h.design_layout_tab_text, (ViewGroup) frameLayout, false);
            this.f30844a = textView;
            frameLayout.addView(textView);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(View view) {
            if (g() && view == this.h) {
                com.google.android.material.badge.a.b(this.i, view, d(view));
            }
        }

        private FrameLayout d() {
            FrameLayout frameLayout = new FrameLayout(getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            return frameLayout;
        }

        private FrameLayout d(View view) {
            if ((view == this.f30845b || view == this.f30844a) && com.google.android.material.badge.a.f30251a) {
                return (FrameLayout) view.getParent();
            }
            return null;
        }

        private void e() {
            f fVar;
            f fVar2;
            if (g()) {
                if (this.f30846c == null) {
                    if (this.f30845b != null && (fVar2 = this.g) != null && fVar2.f30863b != null) {
                        View view = this.h;
                        ImageView imageView = this.f30845b;
                        if (view != imageView) {
                            f();
                            b(this.f30845b);
                            return;
                        }
                        c(imageView);
                        return;
                    } else if (!(this.f30844a == null || (fVar = this.g) == null || fVar.g != 1)) {
                        View view2 = this.h;
                        TextView textView = this.f30844a;
                        if (view2 != textView) {
                            f();
                            b(this.f30844a);
                            return;
                        }
                        c(textView);
                        return;
                    }
                }
                f();
            }
        }

        private void f() {
            if (g()) {
                a(true);
                View view = this.h;
                if (view != null) {
                    com.google.android.material.badge.a.a(this.i, view);
                    this.h = null;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean g() {
            return this.i != null;
        }

        final void a() {
            f fVar = this.g;
            View view = fVar != null ? fVar.f : null;
            if (view != null) {
                ViewParent parent = view.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(view);
                    }
                    addView(view);
                }
                this.f30846c = view;
                TextView textView = this.f30844a;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f30845b;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f30845b.setImageDrawable(null);
                }
                TextView textView2 = (TextView) view.findViewById(16908308);
                this.f30847d = textView2;
                if (textView2 != null) {
                    this.k = androidx.core.widget.h.a(textView2);
                }
                this.e = (ImageView) view.findViewById(16908294);
            } else {
                View view2 = this.f30846c;
                if (view2 != null) {
                    removeView(view2);
                    this.f30846c = null;
                }
                this.f30847d = null;
                this.e = null;
            }
            if (this.f30846c == null) {
                if (this.f30845b == null) {
                    b();
                }
                Drawable drawable = null;
                if (fVar != null) {
                    drawable = null;
                    if (fVar.f30863b != null) {
                        drawable = androidx.core.graphics.drawable.a.f(fVar.f30863b).mutate();
                    }
                }
                if (drawable != null) {
                    androidx.core.graphics.drawable.a.a(drawable, TabLayout.this.i);
                    if (TabLayout.this.l != null) {
                        androidx.core.graphics.drawable.a.a(drawable, TabLayout.this.l);
                    }
                }
                if (this.f30844a == null) {
                    c();
                    this.k = androidx.core.widget.h.a(this.f30844a);
                }
                androidx.core.widget.h.a(this.f30844a, TabLayout.this.g);
                if (TabLayout.this.h != null) {
                    this.f30844a.setTextColor(TabLayout.this.h);
                }
                a(this.f30844a, this.f30845b);
                e();
                a(this.f30845b);
                a(this.f30844a);
            } else {
                TextView textView3 = this.f30847d;
                if (!(textView3 == null && this.e == null)) {
                    a(textView3, this.e);
                }
            }
            if (fVar != null && !TextUtils.isEmpty(fVar.f30865d)) {
                setContentDescription(fVar.f30865d);
            }
            setSelected(fVar != null && fVar.b());
        }

        final void a(TextView textView, ImageView imageView) {
            f fVar = this.g;
            CharSequence charSequence = null;
            Drawable mutate = (fVar == null || fVar.f30863b == null) ? null : androidx.core.graphics.drawable.a.f(this.g.f30863b).mutate();
            f fVar2 = this.g;
            charSequence = fVar2 != null ? fVar2.f30864c : null;
            if (imageView != null) {
                if (mutate != null) {
                    imageView.setImageDrawable(mutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(charSequence);
            if (textView != null) {
                if (z) {
                    textView.setText(charSequence);
                    if (this.g.g == 1) {
                        textView.setVisibility(0);
                    } else {
                        textView.setVisibility(8);
                    }
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int a2 = (!z || imageView.getVisibility() != 0) ? 0 : (int) r.a(getContext(), 8);
                if (TabLayout.this.u) {
                    if (a2 != androidx.core.view.h.b(marginLayoutParams)) {
                        androidx.core.view.h.b(marginLayoutParams, a2);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (a2 != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = a2;
                    androidx.core.view.h.b(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            f fVar3 = this.g;
            if (fVar3 != null) {
                charSequence = fVar3.f30865d;
            }
            if (!z) {
            }
            ad.a(this, charSequence);
        }

        final void a(f fVar) {
            if (fVar != this.g) {
                this.g = fVar;
                a();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected final void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.j;
            boolean z = false;
            if (drawable != null) {
                z = false;
                if (drawable.isStateful()) {
                    z = false | this.j.setState(drawableState);
                }
            }
            if (z) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            BadgeDrawable badgeDrawable = this.i;
            if (badgeDrawable != null && badgeDrawable.isVisible()) {
                CharSequence contentDescription = getContentDescription();
                accessibilityNodeInfo.setContentDescription(((Object) contentDescription) + ", " + ((Object) this.i.c()));
            }
            androidx.core.view.a.c a2 = androidx.core.view.a.c.a(accessibilityNodeInfo);
            a2.b(c.C0052c.a(0, 1, this.g.e, 1, isSelected()));
            if (isSelected()) {
                a2.g(false);
                a2.b(c.a.e);
            }
            a2.g(getResources().getString(a.j.item_view_role_description));
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x0128, code lost:
            if ((r0.getLineWidth(0) * (r13 / r0.getPaint().getTextSize())) > ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) goto L_0x012b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x0027, code lost:
            if (r0 > r0) goto L_0x002a;
         */
        @Override // android.widget.LinearLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onMeasure(int r5, int r6) {
            /*
                Method dump skipped, instructions count: 333
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.TabView.onMeasure(int, int):void");
        }

        @Override // android.view.View
        public final boolean performClick() {
            boolean performClick = super.performClick();
            boolean z = performClick;
            if (this.g != null) {
                if (!performClick) {
                    playSoundEffect(0);
                }
                this.g.a();
                z = true;
            }
            return z;
        }

        @Override // android.view.View
        public final void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z && Build.VERSION.SDK_INT < 16) {
                sendAccessibilityEvent(4);
            }
            TextView textView = this.f30844a;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.f30845b;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.f30846c;
            if (view != null) {
                view.setSelected(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout$a.class */
    public final class a implements ViewPager.d {

        /* renamed from: a  reason: collision with root package name */
        boolean f30850a;

        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.d
        public final void a(ViewPager viewPager, androidx.viewpager.widget.a aVar, androidx.viewpager.widget.a aVar2) {
            if (TabLayout.this.y == viewPager) {
                TabLayout.this.a(aVar2, this.f30850a);
            }
        }
    }

    @Deprecated
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout$b.class */
    public interface b<T extends f> {
        void a(T t);

        void b(T t);

        void c(T t);
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout$c.class */
    public interface c extends b<f> {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout$d.class */
    public final class d extends DataSetObserver {
        d() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            TabLayout.this.b();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            TabLayout.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout$e.class */
    public final class e extends LinearLayout {

        /* renamed from: a  reason: collision with root package name */
        ValueAnimator f30853a;

        /* renamed from: c  reason: collision with root package name */
        float f30855c;

        /* renamed from: b  reason: collision with root package name */
        int f30854b = -1;
        private int e = -1;

        e(Context context) {
            super(context);
            setWillNotDraw(false);
        }

        private void a() {
            View childAt = getChildAt(this.f30854b);
            com.google.android.material.tabs.b unused = TabLayout.this.H;
            TabLayout tabLayout = TabLayout.this;
            com.google.android.material.tabs.b.a(tabLayout, childAt, tabLayout.k);
        }

        final void a(int i) {
            Rect bounds = TabLayout.this.k.getBounds();
            TabLayout.this.k.setBounds(bounds.left, 0, bounds.right, i);
            requestLayout();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(View view, View view2, float f) {
            if (view != null && view.getWidth() > 0) {
                com.google.android.material.tabs.b bVar = TabLayout.this.H;
                TabLayout tabLayout = TabLayout.this;
                bVar.a(tabLayout, view, view2, f, tabLayout.k);
            } else {
                TabLayout.this.k.setBounds(-1, TabLayout.this.k.getBounds().top, -1, TabLayout.this.k.getBounds().bottom);
            }
            v.d(this);
        }

        final void a(boolean z, final int i, int i2) {
            final View childAt = getChildAt(this.f30854b);
            final View childAt2 = getChildAt(i);
            if (childAt2 == null) {
                a();
                return;
            }
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.tabs.TabLayout.e.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    e.this.a(childAt, childAt2, valueAnimator.getAnimatedFraction());
                }
            };
            if (z) {
                ValueAnimator valueAnimator = new ValueAnimator();
                this.f30853a = valueAnimator;
                valueAnimator.setInterpolator(com.google.android.material.a.a.f30174b);
                valueAnimator.setDuration(i2);
                valueAnimator.setFloatValues(BitmapDescriptorFactory.HUE_RED, 1.0f);
                valueAnimator.addUpdateListener(animatorUpdateListener);
                valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.tabs.TabLayout.e.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        e.this.f30854b = i;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                        e.this.f30854b = i;
                    }
                });
                valueAnimator.start();
                return;
            }
            this.f30853a.removeAllUpdateListeners();
            this.f30853a.addUpdateListener(animatorUpdateListener);
        }

        @Override // android.view.View
        public final void draw(Canvas canvas) {
            int i;
            int height = TabLayout.this.k.getBounds().height();
            int i2 = height;
            if (height < 0) {
                i2 = TabLayout.this.k.getIntrinsicHeight();
            }
            int i3 = TabLayout.this.s;
            if (i3 == 0) {
                i = getHeight() - i2;
                i2 = getHeight();
            } else if (i3 != 1) {
                i = 0;
                if (i3 != 2) {
                    if (i3 != 3) {
                        i2 = 0;
                        i = 0;
                    } else {
                        i2 = getHeight();
                        i = 0;
                    }
                }
            } else {
                i = (getHeight() - i2) / 2;
                i2 = (getHeight() + i2) / 2;
            }
            if (TabLayout.this.k.getBounds().width() > 0) {
                Rect bounds = TabLayout.this.k.getBounds();
                TabLayout.this.k.setBounds(bounds.left, i, bounds.right, i2);
                Drawable drawable = TabLayout.this.k;
                Drawable drawable2 = drawable;
                if (TabLayout.this.C != 0) {
                    drawable2 = androidx.core.graphics.drawable.a.f(drawable);
                    if (Build.VERSION.SDK_INT == 21) {
                        drawable2.setColorFilter(TabLayout.this.C, PorterDuff.Mode.SRC_IN);
                    } else {
                        androidx.core.graphics.drawable.a.a(drawable2, TabLayout.this.C);
                    }
                }
                drawable2.draw(canvas);
            }
            super.draw(canvas);
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ValueAnimator valueAnimator = this.f30853a;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                a();
            } else {
                a(false, this.f30854b, -1);
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected final void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) == 1073741824) {
                boolean z = true;
                if (TabLayout.this.q == 1 || TabLayout.this.t == 2) {
                    int childCount = getChildCount();
                    int i3 = 0;
                    for (int i4 = 0; i4 < childCount; i4++) {
                        View childAt = getChildAt(i4);
                        i3 = i3;
                        if (childAt.getVisibility() == 0) {
                            i3 = Math.max(i3, childAt.getMeasuredWidth());
                        }
                    }
                    if (i3 > 0) {
                        if (i3 * childCount <= getMeasuredWidth() - (((int) r.a(getContext(), 16)) * 2)) {
                            z = false;
                            for (int i5 = 0; i5 < childCount; i5++) {
                                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i5).getLayoutParams();
                                if (layoutParams.width != i3 || layoutParams.weight != BitmapDescriptorFactory.HUE_RED) {
                                    layoutParams.width = i3;
                                    layoutParams.weight = BitmapDescriptorFactory.HUE_RED;
                                    z = true;
                                }
                            }
                        } else {
                            TabLayout.this.q = 0;
                            TabLayout.this.a(false);
                        }
                        if (z) {
                            super.onMeasure(i, i2);
                        }
                    }
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public final void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
            if (Build.VERSION.SDK_INT < 23 && this.e != i) {
                requestLayout();
                this.e = i;
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout$f.class */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public Object f30862a;

        /* renamed from: b  reason: collision with root package name */
        Drawable f30863b;

        /* renamed from: c  reason: collision with root package name */
        CharSequence f30864c;

        /* renamed from: d  reason: collision with root package name */
        CharSequence f30865d;
        public View f;
        public TabLayout h;
        public TabView i;
        public int e = -1;
        int g = 1;
        int j = -1;

        public final f a(View view) {
            this.f = view;
            c();
            return this;
        }

        public final f a(CharSequence charSequence) {
            if (TextUtils.isEmpty(this.f30865d) && !TextUtils.isEmpty(charSequence)) {
                this.i.setContentDescription(charSequence);
            }
            this.f30864c = charSequence;
            c();
            return this;
        }

        public final void a() {
            TabLayout tabLayout = this.h;
            if (tabLayout != null) {
                tabLayout.a(this);
                return;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        public final boolean b() {
            TabLayout tabLayout = this.h;
            if (tabLayout != null) {
                return tabLayout.a() == this.e;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        final void c() {
            TabView tabView = this.i;
            if (tabView != null) {
                tabView.a();
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout$g.class */
    public static final class g implements ViewPager.e {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<TabLayout> f30866a;

        /* renamed from: b  reason: collision with root package name */
        private int f30867b;

        /* renamed from: c  reason: collision with root package name */
        private int f30868c;

        public g(TabLayout tabLayout) {
            this.f30866a = new WeakReference<>(tabLayout);
        }

        final void a() {
            this.f30868c = 0;
            this.f30867b = 0;
        }

        @Override // androidx.viewpager.widget.ViewPager.e
        public final void onPageScrollStateChanged(int i) {
            this.f30867b = this.f30868c;
            this.f30868c = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.e
        public final void onPageScrolled(int i, float f, int i2) {
            TabLayout tabLayout = this.f30866a.get();
            if (tabLayout != null) {
                int i3 = this.f30868c;
                boolean z = false;
                boolean z2 = i3 != 2 || this.f30867b == 1;
                if (!(i3 == 2 && this.f30867b == 0)) {
                    z = true;
                }
                tabLayout.setScrollPosition(i, f, z2, z);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.e
        public final void onPageSelected(int i) {
            TabLayout tabLayout = this.f30866a.get();
            if (tabLayout != null && tabLayout.a() != i && i < tabLayout.f30839a.size()) {
                int i2 = this.f30868c;
                tabLayout.a(tabLayout.a(i), i2 == 0 || (i2 == 2 && this.f30867b == 0));
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout$h.class */
    public static class h implements c {

        /* renamed from: a  reason: collision with root package name */
        private final ViewPager f30869a;

        public h(ViewPager viewPager) {
            this.f30869a = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.b
        public void a(f fVar) {
            this.f30869a.setCurrentItem(fVar.e);
        }

        @Override // com.google.android.material.tabs.TabLayout.b
        public void b(f fVar) {
        }

        @Override // com.google.android.material.tabs.TabLayout.b
        public void c(f fVar) {
        }
    }

    public TabLayout(Context context) {
        this(context, null);
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.tabStyle);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TabLayout(android.content.Context r11, android.util.AttributeSet r12, int r13) {
        /*
            Method dump skipped, instructions count: 674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private int a(int i, float f2) {
        int i2 = this.t;
        int i3 = 0;
        if (i2 != 0 && i2 != 2) {
            return 0;
        }
        View childAt = this.f30840b.getChildAt(i);
        int i4 = i + 1;
        View childAt2 = i4 < this.f30840b.getChildCount() ? this.f30840b.getChildAt(i4) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        if (childAt2 != null) {
            i3 = childAt2.getWidth();
        }
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i5 = (int) ((width + i3) * 0.5f * f2);
        return v.f(this) == 0 ? left + i5 : left - i5;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
    private static ColorStateList a(int i, int i2) {
        return new ColorStateList(new int[]{SELECTED_STATE_SET, EMPTY_STATE_SET}, new int[]{i2, i});
    }

    private void a(View view) {
        if (view instanceof TabItem) {
            a((TabItem) view);
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    private void a(LinearLayout.LayoutParams layoutParams) {
        if (this.t == 1 && this.q == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
            return;
        }
        layoutParams.width = -2;
        layoutParams.weight = BitmapDescriptorFactory.HUE_RED;
    }

    private void a(ViewPager viewPager, boolean z2, boolean z3) {
        ViewPager viewPager2 = this.y;
        if (viewPager2 != null) {
            g gVar = this.O;
            if (gVar != null) {
                viewPager2.removeOnPageChangeListener(gVar);
            }
            a aVar = this.P;
            if (aVar != null) {
                this.y.removeOnAdapterChangeListener(aVar);
            }
        }
        b bVar = this.K;
        if (bVar != null) {
            b(bVar);
            this.K = null;
        }
        if (viewPager != null) {
            this.y = viewPager;
            if (this.O == null) {
                this.O = new g(this);
            }
            this.O.a();
            viewPager.addOnPageChangeListener(this.O);
            h hVar = new h(viewPager);
            this.K = hVar;
            a(hVar);
            androidx.viewpager.widget.a adapter = viewPager.getAdapter();
            if (adapter != null) {
                a(adapter, z2);
            }
            if (this.P == null) {
                this.P = new a();
            }
            this.P.f30850a = z2;
            viewPager.addOnAdapterChangeListener(this.P);
            setScrollPosition(viewPager.getCurrentItem(), BitmapDescriptorFactory.HUE_RED, true);
        } else {
            this.y = null;
            a((androidx.viewpager.widget.a) null, false);
        }
        this.Q = z3;
    }

    private void a(TabItem tabItem) {
        f c2 = c();
        if (tabItem.f30836a != null) {
            c2.a(tabItem.f30836a);
        }
        if (tabItem.f30837b != null) {
            c2.f30863b = tabItem.f30837b;
            if (c2.h.q == 1 || c2.h.t == 2) {
                c2.h.a(true);
            }
            c2.c();
            if (com.google.android.material.badge.a.f30251a && c2.i.g() && c2.i.i.isVisible()) {
                c2.i.invalidate();
            }
        }
        if (tabItem.f30838c != 0) {
            c2.a(LayoutInflater.from(c2.i.getContext()).inflate(tabItem.f30838c, (ViewGroup) c2.i, false));
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            c2.f30865d = tabItem.getContentDescription();
            c2.c();
        }
        b(c2, this.f30839a.isEmpty());
    }

    private void a(f fVar, int i) {
        fVar.e = i;
        this.f30839a.add(i, fVar);
        int size = this.f30839a.size();
        while (true) {
            i++;
            if (i < size) {
                this.f30839a.get(i).e = i;
            } else {
                return;
            }
        }
    }

    private TabView b(f fVar) {
        c.a<TabView> aVar = this.R;
        TabView a2 = aVar != null ? aVar.a() : null;
        TabView tabView = a2;
        if (a2 == null) {
            tabView = new TabView(getContext());
        }
        tabView.a(fVar);
        tabView.setFocusable(true);
        tabView.setMinimumWidth(h());
        if (TextUtils.isEmpty(fVar.f30865d)) {
            tabView.setContentDescription(fVar.f30864c);
        } else {
            tabView.setContentDescription(fVar.f30865d);
        }
        return tabView;
    }

    private void b(int i) {
        boolean z2;
        if (i != -1) {
            if (getWindowToken() != null && v.B(this)) {
                e eVar = this.f30840b;
                int childCount = eVar.getChildCount();
                int i2 = 0;
                while (true) {
                    if (i2 >= childCount) {
                        z2 = false;
                        break;
                    } else if (eVar.getChildAt(i2).getWidth() <= 0) {
                        z2 = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (!z2) {
                    int scrollX = getScrollX();
                    int a2 = a(i, BitmapDescriptorFactory.HUE_RED);
                    if (scrollX != a2) {
                        if (this.L == null) {
                            ValueAnimator valueAnimator = new ValueAnimator();
                            this.L = valueAnimator;
                            valueAnimator.setInterpolator(com.google.android.material.a.a.f30174b);
                            this.L.setDuration(this.r);
                            this.L.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.tabs.TabLayout.1
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                                    TabLayout.this.scrollTo(((Integer) valueAnimator2.getAnimatedValue()).intValue(), 0);
                                }
                            });
                        }
                        this.L.setIntValues(scrollX, a2);
                        this.L.start();
                    }
                    e eVar2 = this.f30840b;
                    int i3 = this.r;
                    if (eVar2.f30853a != null && eVar2.f30853a.isRunning()) {
                        eVar2.f30853a.cancel();
                    }
                    eVar2.a(true, i, i3);
                    return;
                }
            }
            setScrollPosition(i, BitmapDescriptorFactory.HUE_RED, true);
        }
    }

    @Deprecated
    private void b(b bVar) {
        this.J.remove(bVar);
    }

    private void b(f fVar, boolean z2) {
        int size = this.f30839a.size();
        if (fVar.h == this) {
            a(fVar, size);
            TabView tabView = fVar.i;
            tabView.setSelected(false);
            tabView.setActivated(false);
            e eVar = this.f30840b;
            int i = fVar.e;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
            a(layoutParams);
            eVar.addView(tabView, i, layoutParams);
            if (z2) {
                fVar.a();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    private f c() {
        f d2 = d();
        d2.h = this;
        d2.i = b(d2);
        if (d2.j != -1) {
            d2.i.setId(d2.j);
        }
        return d2;
    }

    private void c(int i) {
        int childCount = this.f30840b.getChildCount();
        if (i < childCount) {
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = this.f30840b.getChildAt(i2);
                boolean z2 = true;
                childAt.setSelected(i2 == i);
                if (i2 != i) {
                    z2 = false;
                }
                childAt.setActivated(z2);
                i2++;
            }
        }
    }

    private void c(f fVar) {
        for (int size = this.J.size() - 1; size >= 0; size--) {
            this.J.get(size).a(fVar);
        }
    }

    private static f d() {
        f a2 = A.a();
        f fVar = a2;
        if (a2 == null) {
            fVar = new f();
        }
        return fVar;
    }

    private void d(int i) {
        if (i == 0) {
            Log.w("TabLayout", "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
        } else if (i == 1) {
            this.f30840b.setGravity(1);
            return;
        } else if (i != 2) {
            return;
        }
        this.f30840b.setGravity(8388611);
    }

    private void d(f fVar) {
        for (int size = this.J.size() - 1; size >= 0; size--) {
            this.J.get(size).b(fVar);
        }
    }

    private void e() {
        for (int childCount = this.f30840b.getChildCount() - 1; childCount >= 0; childCount--) {
            TabView tabView = (TabView) this.f30840b.getChildAt(childCount);
            this.f30840b.removeViewAt(childCount);
            if (tabView != null) {
                tabView.a((f) null);
                tabView.setSelected(false);
                this.R.a(tabView);
            }
            requestLayout();
        }
        Iterator<f> it2 = this.f30839a.iterator();
        while (it2.hasNext()) {
            f next = it2.next();
            it2.remove();
            next.h = null;
            next.i = null;
            next.f30862a = null;
            next.f30863b = null;
            next.j = -1;
            next.f30864c = null;
            next.f30865d = null;
            next.e = -1;
            next.f = null;
            A.a(next);
        }
        this.B = null;
    }

    private void e(f fVar) {
        for (int size = this.J.size() - 1; size >= 0; size--) {
            this.J.get(size).c(fVar);
        }
    }

    private void f() {
        int size = this.f30839a.size();
        for (int i = 0; i < size; i++) {
            this.f30839a.get(i).c();
        }
    }

    private void g() {
        int i = this.t;
        v.b(this.f30840b, (i == 0 || i == 2) ? Math.max(0, this.G - this.f30841c) : 0, 0, 0, 0);
        int i2 = this.t;
        if (i2 == 0) {
            d(this.q);
        } else if (i2 == 1 || i2 == 2) {
            if (this.q == 2) {
                Log.w("TabLayout", "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
            }
            this.f30840b.setGravity(1);
        }
        a(true);
    }

    private int h() {
        int i = this.D;
        if (i != -1) {
            return i;
        }
        int i2 = this.t;
        if (i2 == 0 || i2 == 2) {
            return this.F;
        }
        return 0;
    }

    public final int a() {
        f fVar = this.B;
        if (fVar != null) {
            return fVar.e;
        }
        return -1;
    }

    public final f a(int i) {
        if (i < 0 || i >= this.f30839a.size()) {
            return null;
        }
        return this.f30839a.get(i);
    }

    final void a(androidx.viewpager.widget.a aVar, boolean z2) {
        DataSetObserver dataSetObserver;
        androidx.viewpager.widget.a aVar2 = this.M;
        if (!(aVar2 == null || (dataSetObserver = this.N) == null)) {
            aVar2.b(dataSetObserver);
        }
        this.M = aVar;
        if (z2 && aVar != null) {
            if (this.N == null) {
                this.N = new d();
            }
            aVar.a(this.N);
        }
        b();
    }

    @Deprecated
    public final void a(b bVar) {
        if (!this.J.contains(bVar)) {
            this.J.add(bVar);
        }
    }

    public final void a(f fVar) {
        a(fVar, true);
    }

    public final void a(f fVar, boolean z2) {
        f fVar2 = this.B;
        if (fVar2 != fVar) {
            int i = fVar != null ? fVar.e : -1;
            if (z2) {
                if ((fVar2 == null || fVar2.e == -1) && i != -1) {
                    setScrollPosition(i, BitmapDescriptorFactory.HUE_RED, true);
                } else {
                    b(i);
                }
                if (i != -1) {
                    c(i);
                }
            }
            this.B = fVar;
            if (fVar2 != null) {
                d(fVar2);
            }
            if (fVar != null) {
                c(fVar);
            }
        } else if (fVar2 != null) {
            e(fVar);
            b(fVar.e);
        }
    }

    final void a(boolean z2) {
        for (int i = 0; i < this.f30840b.getChildCount(); i++) {
            View childAt = this.f30840b.getChildAt(i);
            childAt.setMinimumWidth(h());
            a((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z2) {
                childAt.requestLayout();
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    final void b() {
        int currentItem;
        e();
        androidx.viewpager.widget.a aVar = this.M;
        if (aVar != null) {
            int count = aVar.getCount();
            for (int i = 0; i < count; i++) {
                b(c().a(this.M.getPageTitle(i)), false);
            }
            ViewPager viewPager = this.y;
            if (viewPager != null && count > 0 && (currentItem = viewPager.getCurrentItem()) != a() && currentItem < this.f30839a.size()) {
                a(a(currentItem), true);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        i.a(this);
        if (this.y == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                a((ViewPager) parent, true, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.Q) {
            setupWithViewPager(null);
            this.Q = false;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        for (int i = 0; i < this.f30840b.getChildCount(); i++) {
            View childAt = this.f30840b.getChildAt(i);
            if (childAt instanceof TabView) {
                TabView.a((TabView) childAt, canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        androidx.core.view.a.c.a(accessibilityNodeInfo).a(c.b.a(1, this.f30839a.size(), false, 1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x012c, code lost:
        if (r0.getMeasuredWidth() != getMeasuredWidth()) goto L_0x012f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x012f, code lost:
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x013f, code lost:
        if (r0.getMeasuredWidth() < getMeasuredWidth()) goto L_0x012f;
     */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        super.setElevation(f2);
        i.a(this, f2);
    }

    public void setInlineLabel(boolean z2) {
        if (this.u != z2) {
            this.u = z2;
            for (int i = 0; i < this.f30840b.getChildCount(); i++) {
                View childAt = this.f30840b.getChildAt(i);
                if (childAt instanceof TabView) {
                    TabView tabView = (TabView) childAt;
                    tabView.setOrientation(!TabLayout.this.u ? 1 : 0);
                    if (tabView.f30847d == null && tabView.e == null) {
                        tabView.a(tabView.f30844a, tabView.f30845b);
                    } else {
                        tabView.a(tabView.f30847d, tabView.e);
                    }
                }
            }
            g();
        }
    }

    public void setInlineLabelResource(int i) {
        setInlineLabel(getResources().getBoolean(i));
    }

    @Deprecated
    public void setOnTabSelectedListener(b bVar) {
        b bVar2 = this.I;
        if (bVar2 != null) {
            b(bVar2);
        }
        this.I = bVar;
        if (bVar != null) {
            a(bVar);
        }
    }

    @Deprecated
    public void setOnTabSelectedListener(c cVar) {
        setOnTabSelectedListener((b) cVar);
    }

    public void setScrollPosition(int i, float f2, boolean z2) {
        setScrollPosition(i, f2, z2, true);
    }

    public void setScrollPosition(int i, float f2, boolean z2, boolean z3) {
        int round = Math.round(i + f2);
        if (round >= 0 && round < this.f30840b.getChildCount()) {
            if (z3) {
                e eVar = this.f30840b;
                if (eVar.f30853a != null && eVar.f30853a.isRunning()) {
                    eVar.f30853a.cancel();
                }
                eVar.f30854b = i;
                eVar.f30855c = f2;
                eVar.a(eVar.getChildAt(eVar.f30854b), eVar.getChildAt(eVar.f30854b + 1), eVar.f30855c);
            }
            ValueAnimator valueAnimator = this.L;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.L.cancel();
            }
            scrollTo(a(i, f2), 0);
            if (z2) {
                c(round);
            }
        }
    }

    public void setSelectedTabIndicator(int i) {
        if (i != 0) {
            setSelectedTabIndicator(androidx.appcompat.a.a.a.b(getContext(), i));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    public void setSelectedTabIndicator(Drawable drawable) {
        if (this.k != drawable) {
            if (drawable == null) {
                drawable = new GradientDrawable();
            }
            this.k = drawable;
        }
    }

    public void setSelectedTabIndicatorColor(int i) {
        this.C = i;
    }

    public void setSelectedTabIndicatorGravity(int i) {
        if (this.s != i) {
            this.s = i;
            v.d(this.f30840b);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i) {
        this.f30840b.a(i);
    }

    public void setTabGravity(int i) {
        if (this.q != i) {
            this.q = i;
            g();
        }
    }

    public void setTabIconTint(ColorStateList colorStateList) {
        if (this.i != colorStateList) {
            this.i = colorStateList;
            f();
        }
    }

    public void setTabIconTintResource(int i) {
        setTabIconTint(androidx.appcompat.a.a.a.a(getContext(), i));
    }

    public void setTabIndicatorAnimationMode(int i) {
        this.w = i;
        if (i == 0) {
            this.H = new com.google.android.material.tabs.b();
        } else if (i == 1) {
            this.H = new com.google.android.material.tabs.a();
        } else {
            throw new IllegalArgumentException(i + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z2) {
        this.v = z2;
        v.d(this.f30840b);
    }

    public void setTabMode(int i) {
        if (i != this.t) {
            this.t = i;
            g();
        }
    }

    public void setTabRippleColor(ColorStateList colorStateList) {
        if (this.j != colorStateList) {
            this.j = colorStateList;
            for (int i = 0; i < this.f30840b.getChildCount(); i++) {
                View childAt = this.f30840b.getChildAt(i);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).a(getContext());
                }
            }
        }
    }

    public void setTabRippleColorResource(int i) {
        setTabRippleColor(androidx.appcompat.a.a.a.a(getContext(), i));
    }

    public void setTabTextColors(int i, int i2) {
        setTabTextColors(a(i, i2));
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.h != colorStateList) {
            this.h = colorStateList;
            f();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(androidx.viewpager.widget.a aVar) {
        a(aVar, false);
    }

    public void setUnboundedRipple(boolean z2) {
        if (this.x != z2) {
            this.x = z2;
            for (int i = 0; i < this.f30840b.getChildCount(); i++) {
                View childAt = this.f30840b.getChildAt(i);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).a(getContext());
                }
            }
        }
    }

    public void setUnboundedRippleResource(int i) {
        setUnboundedRipple(getResources().getBoolean(i));
    }

    public void setupWithViewPager(ViewPager viewPager) {
        setupWithViewPager(viewPager, true);
    }

    public void setupWithViewPager(ViewPager viewPager, boolean z2) {
        a(viewPager, z2, false);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return Math.max(0, ((this.f30840b.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight()) > 0;
    }
}
