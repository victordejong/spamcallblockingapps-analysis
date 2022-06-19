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
import android.text.Layout;
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
import androidx.appcompat.widget.C0293g0;
import androidx.core.graphics.drawable.C0615a;
import androidx.core.widget.C0649k;
import androidx.viewpager.widget.AbstractC1197a;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.C8004a;
import com.google.android.material.internal.C8209q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p041h.p049k.AbstractC1594e;
import p020b.p041h.p049k.C1596g;
import p020b.p041h.p050l.C1664h;
import p020b.p041h.p050l.C1677u;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1892h;
import p078c.p084c.p085a.p096b.C1894j;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.p097m.C1897a;
import p078c.p084c.p085a.p096b.p106v.C1928b;
import p078c.p084c.p085a.p096b.p108x.C1942i;
@ViewPager.AbstractC1189e
/* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout.class */
public class TabLayout extends HorizontalScrollView {

    /* renamed from: d */
    private static final int f37274d = C1895k.Widget_Design_TabLayout;

    /* renamed from: e */
    private static final AbstractC1594e<C8278g> f37275e = new C1596g(16);

    /* renamed from: A */
    private int f37276A;

    /* renamed from: B */
    int f37277B;

    /* renamed from: C */
    int f37278C;

    /* renamed from: D */
    int f37279D;

    /* renamed from: E */
    int f37280E;

    /* renamed from: F */
    boolean f37281F;

    /* renamed from: G */
    boolean f37282G;

    /* renamed from: H */
    int f37283H;

    /* renamed from: I */
    boolean f37284I;

    /* renamed from: J */
    private C8282b f37285J;

    /* renamed from: K */
    private AbstractC8272c f37286K;

    /* renamed from: L */
    private final ArrayList<AbstractC8272c> f37287L;

    /* renamed from: M */
    private AbstractC8272c f37288M;

    /* renamed from: N */
    private ValueAnimator f37289N;

    /* renamed from: O */
    ViewPager f37290O;

    /* renamed from: P */
    private AbstractC1197a f37291P;

    /* renamed from: Q */
    private DataSetObserver f37292Q;

    /* renamed from: R */
    private C8279h f37293R;

    /* renamed from: S */
    private C8271b f37294S;

    /* renamed from: T */
    private boolean f37295T;

    /* renamed from: U */
    private final AbstractC1594e<TabView> f37296U;

    /* renamed from: f */
    private final ArrayList<C8278g> f37297f;

    /* renamed from: g */
    private C8278g f37298g;

    /* renamed from: h */
    final C8275f f37299h;

    /* renamed from: i */
    int f37300i;

    /* renamed from: j */
    int f37301j;

    /* renamed from: k */
    int f37302k;

    /* renamed from: l */
    int f37303l;

    /* renamed from: m */
    int f37304m;

    /* renamed from: n */
    ColorStateList f37305n;

    /* renamed from: o */
    ColorStateList f37306o;

    /* renamed from: p */
    ColorStateList f37307p;

    /* renamed from: q */
    Drawable f37308q;

    /* renamed from: r */
    private int f37309r;

    /* renamed from: s */
    PorterDuff.Mode f37310s;

    /* renamed from: t */
    float f37311t;

    /* renamed from: u */
    float f37312u;

    /* renamed from: v */
    final int f37313v;

    /* renamed from: w */
    int f37314w;

    /* renamed from: x */
    private final int f37315x;

    /* renamed from: y */
    private final int f37316y;

    /* renamed from: z */
    private final int f37317z;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$TabView.class */
    public final class TabView extends LinearLayout {

        /* renamed from: d */
        private C8278g f37318d;

        /* renamed from: e */
        private TextView f37319e;

        /* renamed from: f */
        private ImageView f37320f;

        /* renamed from: g */
        private View f37321g;

        /* renamed from: h */
        private BadgeDrawable f37322h;

        /* renamed from: i */
        private View f37323i;

        /* renamed from: j */
        private TextView f37324j;

        /* renamed from: k */
        private ImageView f37325k;

        /* renamed from: l */
        private Drawable f37326l;

        /* renamed from: m */
        private int f37327m = 2;

        /* renamed from: com.google.android.material.tabs.TabLayout$TabView$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$TabView$a.class */
        public class View$OnLayoutChangeListenerC8269a implements View.OnLayoutChangeListener {

            /* renamed from: d */
            final /* synthetic */ View f37329d;

            View$OnLayoutChangeListenerC8269a(View view) {
                TabView.this = r4;
                this.f37329d = view;
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                if (this.f37329d.getVisibility() == 0) {
                    TabView.this.m4132s(this.f37329d);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TabView(Context context) {
            super(context);
            TabLayout.this = r7;
            m4130u(context);
            C1679w.m29339F0(this, r7.f37300i, r7.f37301j, r7.f37302k, r7.f37303l);
            setGravity(17);
            setOrientation(!r7.f37281F ? 1 : 0);
            setClickable(true);
            C1679w.m29337G0(this, C1677u.m29351b(getContext(), 1002));
        }

        /* renamed from: f */
        private void m4145f(View view) {
            if (view == null) {
                return;
            }
            view.addOnLayoutChangeListener(new View$OnLayoutChangeListenerC8269a(view));
        }

        /* renamed from: g */
        private float m4144g(Layout layout, int i, float f) {
            return layout.getLineWidth(i) * (f / layout.getPaint().getTextSize());
        }

        private BadgeDrawable getBadge() {
            return this.f37322h;
        }

        private BadgeDrawable getOrCreateBadge() {
            if (this.f37322h == null) {
                this.f37322h = BadgeDrawable.m5652c(getContext());
            }
            m4133r();
            BadgeDrawable badgeDrawable = this.f37322h;
            if (badgeDrawable != null) {
                return badgeDrawable;
            }
            throw new IllegalStateException("Unable to create badge");
        }

        /* renamed from: h */
        private void m4143h(boolean z) {
            setClipChildren(z);
            setClipToPadding(z);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(z);
                viewGroup.setClipToPadding(z);
            }
        }

        /* renamed from: i */
        private FrameLayout m4142i() {
            FrameLayout frameLayout = new FrameLayout(getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            return frameLayout;
        }

        /* renamed from: j */
        public void m4141j(Canvas canvas) {
            Drawable drawable = this.f37326l;
            if (drawable != null) {
                drawable.setBounds(getLeft(), getTop(), getRight(), getBottom());
                this.f37326l.draw(canvas);
            }
        }

        /* renamed from: k */
        private FrameLayout m4140k(View view) {
            FrameLayout frameLayout = null;
            if (view == this.f37320f || view == this.f37319e) {
                if (C8004a.f36128a) {
                    frameLayout = (FrameLayout) view.getParent();
                }
                return frameLayout;
            }
            return null;
        }

        /* renamed from: l */
        public boolean m4139l() {
            return this.f37322h != null;
        }

        /* renamed from: m */
        private void m4138m() {
            FrameLayout frameLayout;
            if (C8004a.f36128a) {
                frameLayout = m4142i();
                addView(frameLayout, 0);
            } else {
                frameLayout = this;
            }
            ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(C1892h.design_layout_tab_icon, (ViewGroup) frameLayout, false);
            this.f37320f = imageView;
            frameLayout.addView(imageView, 0);
        }

        /* renamed from: n */
        private void m4137n() {
            FrameLayout frameLayout;
            if (C8004a.f36128a) {
                frameLayout = m4142i();
                addView(frameLayout);
            } else {
                frameLayout = this;
            }
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(C1892h.design_layout_tab_text, (ViewGroup) frameLayout, false);
            this.f37319e = textView;
            frameLayout.addView(textView);
        }

        /* renamed from: p */
        private void m4135p(View view) {
            if (m4139l() && view != null) {
                m4143h(false);
                C8004a.m5605a(this.f37322h, view, m4140k(view));
                this.f37321g = view;
            }
        }

        /* renamed from: q */
        private void m4134q() {
            if (!m4139l()) {
                return;
            }
            m4143h(true);
            View view = this.f37321g;
            if (view == null) {
                return;
            }
            C8004a.m5602d(this.f37322h, view);
            this.f37321g = null;
        }

        /* renamed from: r */
        private void m4133r() {
            C8278g c8278g;
            C8278g c8278g2;
            if (!m4139l()) {
                return;
            }
            if (this.f37323i != null) {
                m4134q();
            } else if (this.f37320f != null && (c8278g2 = this.f37318d) != null && c8278g2.m4112f() != null) {
                View view = this.f37321g;
                ImageView imageView = this.f37320f;
                if (view == imageView) {
                    m4132s(imageView);
                    return;
                }
                m4134q();
                m4135p(this.f37320f);
            } else if (this.f37319e == null || (c8278g = this.f37318d) == null || c8278g.m4110h() != 1) {
                m4134q();
            } else {
                View view2 = this.f37321g;
                TextView textView = this.f37319e;
                if (view2 == textView) {
                    m4132s(textView);
                    return;
                }
                m4134q();
                m4135p(this.f37319e);
            }
        }

        /* renamed from: s */
        public void m4132s(View view) {
            if (!m4139l() || view != this.f37321g) {
                return;
            }
            C8004a.m5601e(this.f37322h, view, m4140k(view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v25, types: [android.graphics.drawable.LayerDrawable] */
        /* JADX WARN: Type inference failed for: r0v31, types: [android.graphics.drawable.RippleDrawable] */
        /* renamed from: u */
        public void m4130u(Context context) {
            int i = TabLayout.this.f37313v;
            if (i != 0) {
                Drawable m30126d = C1433a.m30126d(context, i);
                this.f37326l = m30126d;
                if (m30126d != null && m30126d.isStateful()) {
                    this.f37326l.setState(getDrawableState());
                }
            } else {
                this.f37326l = null;
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(0);
            GradientDrawable gradientDrawable2 = gradientDrawable;
            if (TabLayout.this.f37307p != null) {
                GradientDrawable gradientDrawable3 = new GradientDrawable();
                gradientDrawable3.setCornerRadius(1.0E-5f);
                gradientDrawable3.setColor(-1);
                ColorStateList m28661a = C1928b.m28661a(TabLayout.this.f37307p);
                if (Build.VERSION.SDK_INT >= 21) {
                    boolean z = TabLayout.this.f37284I;
                    if (z) {
                        gradientDrawable = null;
                    }
                    if (z) {
                        gradientDrawable3 = null;
                    }
                    gradientDrawable2 = new RippleDrawable(m28661a, gradientDrawable, gradientDrawable3);
                } else {
                    Drawable m33212r = C0615a.m33212r(gradientDrawable3);
                    C0615a.m33215o(m33212r, m28661a);
                    gradientDrawable2 = new LayerDrawable(new Drawable[]{gradientDrawable, m33212r});
                }
            }
            C1679w.m29267u0(this, gradientDrawable2);
            TabLayout.this.invalidate();
        }

        /* renamed from: w */
        private void m4128w(TextView textView, ImageView imageView) {
            C8278g c8278g = this.f37318d;
            Drawable mutate = (c8278g == null || c8278g.m4112f() == null) ? null : C0615a.m33212r(this.f37318d.m4112f()).mutate();
            C8278g c8278g2 = this.f37318d;
            CharSequence m4109i = c8278g2 != null ? c8278g2.m4109i() : null;
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
            boolean z = !TextUtils.isEmpty(m4109i);
            if (textView != null) {
                if (z) {
                    textView.setText(m4109i);
                    if (this.f37318d.f37351g == 1) {
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
                int m4450c = (!z || imageView.getVisibility() != 0) ? 0 : (int) C8209q.m4450c(getContext(), 8);
                if (TabLayout.this.f37281F) {
                    if (m4450c != C1664h.m29402a(marginLayoutParams)) {
                        C1664h.m29400c(marginLayoutParams, m4450c);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (m4450c != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = m4450c;
                    C1664h.m29400c(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            C8278g c8278g3 = this.f37318d;
            CharSequence charSequence = null;
            if (c8278g3 != null) {
                charSequence = c8278g3.f37348d;
            }
            if (!z) {
                m4109i = charSequence;
            }
            C0293g0.m34913a(this, m4109i);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.f37326l;
            boolean z = false;
            if (drawable != null) {
                z = false;
                if (drawable.isStateful()) {
                    z = false | this.f37326l.setState(drawableState);
                }
            }
            if (z) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        public int getContentHeight() {
            TextView textView = this.f37319e;
            int i = 0;
            ImageView imageView = this.f37320f;
            View view = this.f37323i;
            int i2 = 0;
            int i3 = 0;
            boolean z = false;
            while (true) {
                boolean z2 = z;
                if (i < 3) {
                    View view2 = new View[]{textView, imageView, view}[i];
                    int i4 = i2;
                    int i5 = i3;
                    boolean z3 = z2;
                    if (view2 != null) {
                        i4 = i2;
                        i5 = i3;
                        z3 = z2;
                        if (view2.getVisibility() == 0) {
                            i5 = z2 ? Math.min(i3, view2.getTop()) : view2.getTop();
                            z3 = true;
                            i4 = z2 ? Math.max(i2, view2.getBottom()) : view2.getBottom();
                        }
                    }
                    i++;
                    i2 = i4;
                    i3 = i5;
                    z = z3;
                } else {
                    return i2 - i3;
                }
            }
        }

        public int getContentWidth() {
            TextView textView = this.f37319e;
            int i = 0;
            ImageView imageView = this.f37320f;
            View view = this.f37323i;
            int i2 = 0;
            int i3 = 0;
            boolean z = false;
            while (true) {
                boolean z2 = z;
                if (i < 3) {
                    View view2 = new View[]{textView, imageView, view}[i];
                    int i4 = i2;
                    int i5 = i3;
                    boolean z3 = z2;
                    if (view2 != null) {
                        i4 = i2;
                        i5 = i3;
                        z3 = z2;
                        if (view2.getVisibility() == 0) {
                            z3 = true;
                            i5 = z2 ? Math.min(i3, view2.getLeft()) : view2.getLeft();
                            i4 = z2 ? Math.max(i2, view2.getRight()) : view2.getRight();
                        }
                    }
                    i++;
                    i2 = i4;
                    i3 = i5;
                    z = z3;
                } else {
                    return i2 - i3;
                }
            }
        }

        public C8278g getTab() {
            return this.f37318d;
        }

        /* renamed from: o */
        void m4136o() {
            setTab(null);
            setSelected(false);
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            BadgeDrawable badgeDrawable = this.f37322h;
            if (badgeDrawable != null && badgeDrawable.isVisible()) {
                CharSequence contentDescription = getContentDescription();
                accessibilityNodeInfo.setContentDescription(((Object) contentDescription) + ", " + ((Object) this.f37322h.m5647h()));
            }
            C1634c m29513H0 = C1634c.m29513H0(accessibilityNodeInfo);
            m29513H0.m29483f0(C1634c.C1637c.m29436a(0, 1, this.f37318d.m4111g(), 1, false, isSelected()));
            if (isSelected()) {
                m29513H0.m29487d0(false);
                m29513H0.m29501T(C1634c.C1635a.f6286e);
            }
            m29513H0.m29451v0(getResources().getString(C1894j.item_view_role_description));
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x011d, code lost:
            if (m4144g(r0, 0, r14) > ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x0027, code lost:
            if (r0 > r0) goto L8;
         */
        @Override // android.widget.LinearLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onMeasure(int r6, int r7) {
            /*
                Method dump skipped, instructions count: 322
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.TabView.onMeasure(int, int):void");
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean performClick = super.performClick();
            boolean z = performClick;
            if (this.f37318d != null) {
                if (!performClick) {
                    playSoundEffect(0);
                }
                this.f37318d.m4106l();
                z = true;
            }
            return z;
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z && Build.VERSION.SDK_INT < 16) {
                sendAccessibilityEvent(4);
            }
            TextView textView = this.f37319e;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.f37320f;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.f37323i;
            if (view != null) {
                view.setSelected(z);
            }
        }

        void setTab(C8278g c8278g) {
            if (c8278g != this.f37318d) {
                this.f37318d = c8278g;
                m4131t();
            }
        }

        /* renamed from: t */
        final void m4131t() {
            C8278g c8278g = this.f37318d;
            View m4113e = c8278g != null ? c8278g.m4113e() : null;
            if (m4113e != null) {
                ViewParent parent = m4113e.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(m4113e);
                    }
                    addView(m4113e);
                }
                this.f37323i = m4113e;
                TextView textView = this.f37319e;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f37320f;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f37320f.setImageDrawable(null);
                }
                TextView textView2 = (TextView) m4113e.findViewById(16908308);
                this.f37324j = textView2;
                if (textView2 != null) {
                    this.f37327m = C0649k.m33087d(textView2);
                }
                this.f37325k = (ImageView) m4113e.findViewById(16908294);
            } else {
                View view = this.f37323i;
                if (view != null) {
                    removeView(view);
                    this.f37323i = null;
                }
                this.f37324j = null;
                this.f37325k = null;
            }
            if (this.f37323i == null) {
                if (this.f37320f == null) {
                    m4138m();
                }
                Drawable drawable = null;
                if (c8278g != null) {
                    drawable = null;
                    if (c8278g.m4112f() != null) {
                        drawable = C0615a.m33212r(c8278g.m4112f()).mutate();
                    }
                }
                if (drawable != null) {
                    C0615a.m33215o(drawable, TabLayout.this.f37306o);
                    PorterDuff.Mode mode = TabLayout.this.f37310s;
                    if (mode != null) {
                        C0615a.m33214p(drawable, mode);
                    }
                }
                if (this.f37319e == null) {
                    m4137n();
                    this.f37327m = C0649k.m33087d(this.f37319e);
                }
                C0649k.m33074q(this.f37319e, TabLayout.this.f37304m);
                ColorStateList colorStateList = TabLayout.this.f37305n;
                if (colorStateList != null) {
                    this.f37319e.setTextColor(colorStateList);
                }
                m4128w(this.f37319e, this.f37320f);
                m4133r();
                m4145f(this.f37320f);
                m4145f(this.f37319e);
            } else {
                TextView textView3 = this.f37324j;
                if (textView3 != null || this.f37325k != null) {
                    m4128w(textView3, this.f37325k);
                }
            }
            if (c8278g != null && !TextUtils.isEmpty(c8278g.f37348d)) {
                setContentDescription(c8278g.f37348d);
            }
            setSelected(c8278g != null && c8278g.m4108j());
        }

        /* renamed from: v */
        final void m4129v() {
            setOrientation(!TabLayout.this.f37281F ? 1 : 0);
            TextView textView = this.f37324j;
            if (textView == null && this.f37325k == null) {
                m4128w(this.f37319e, this.f37320f);
            } else {
                m4128w(textView, this.f37325k);
            }
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$a.class */
    public class C8270a implements ValueAnimator.AnimatorUpdateListener {
        C8270a() {
            TabLayout.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$b.class */
    public class C8271b implements ViewPager.AbstractC1192h {

        /* renamed from: d */
        private boolean f37332d;

        C8271b() {
            TabLayout.this = r4;
        }

        /* renamed from: a */
        void m4127a(boolean z) {
            this.f37332d = z;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1192h
        /* renamed from: b */
        public void mo4126b(ViewPager viewPager, AbstractC1197a abstractC1197a, AbstractC1197a abstractC1197a2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.f37290O == viewPager) {
                tabLayout.m4181G(abstractC1197a2, this.f37332d);
            }
        }
    }

    @Deprecated
    /* renamed from: com.google.android.material.tabs.TabLayout$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$c.class */
    public interface AbstractC8272c<T extends C8278g> {
        /* renamed from: a */
        void mo4094a(T t);

        /* renamed from: b */
        void mo4093b(T t);

        /* renamed from: c */
        void mo4092c(T t);
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$d.class */
    public interface AbstractC8273d extends AbstractC8272c<C8278g> {
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$e.class */
    public class C8274e extends DataSetObserver {
        C8274e() {
            TabLayout.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabLayout.this.m4151z();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TabLayout.this.m4151z();
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$f */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$f.class */
    public class C8275f extends LinearLayout {

        /* renamed from: d */
        ValueAnimator f37335d;

        /* renamed from: f */
        float f37337f;

        /* renamed from: e */
        int f37336e = -1;

        /* renamed from: g */
        private int f37338g = -1;

        /* renamed from: com.google.android.material.tabs.TabLayout$f$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$f$a.class */
        public class C8276a implements ValueAnimator.AnimatorUpdateListener {

            /* renamed from: a */
            final /* synthetic */ View f37340a;

            /* renamed from: b */
            final /* synthetic */ View f37341b;

            C8276a(View view, View view2) {
                C8275f.this = r4;
                this.f37340a = view;
                this.f37341b = view2;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                C8275f.this.m4119g(this.f37340a, this.f37341b, valueAnimator.getAnimatedFraction());
            }
        }

        /* renamed from: com.google.android.material.tabs.TabLayout$f$b */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$f$b.class */
        public class C8277b extends AnimatorListenerAdapter {

            /* renamed from: a */
            final /* synthetic */ int f37343a;

            C8277b(int i) {
                C8275f.this = r4;
                this.f37343a = i;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                C8275f.this.f37336e = this.f37343a;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                C8275f.this.f37336e = this.f37343a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8275f(Context context) {
            super(context);
            TabLayout.this = r4;
            setWillNotDraw(false);
        }

        /* renamed from: d */
        private void m4122d() {
            View childAt = getChildAt(this.f37336e);
            C8282b c8282b = TabLayout.this.f37285J;
            TabLayout tabLayout = TabLayout.this;
            c8282b.m4086d(tabLayout, childAt, tabLayout.f37308q);
        }

        /* renamed from: g */
        public void m4119g(View view, View view2, float f) {
            if (view != null && view.getWidth() > 0) {
                C8282b c8282b = TabLayout.this.f37285J;
                TabLayout tabLayout = TabLayout.this;
                c8282b.mo4087c(tabLayout, view, view2, f, tabLayout.f37308q);
            } else {
                Drawable drawable = TabLayout.this.f37308q;
                drawable.setBounds(-1, drawable.getBounds().top, -1, TabLayout.this.f37308q.getBounds().bottom);
            }
            C1679w.m29293h0(this);
        }

        /* renamed from: h */
        private void m4118h(boolean z, int i, int i2) {
            View childAt = getChildAt(this.f37336e);
            View childAt2 = getChildAt(i);
            if (childAt2 == null) {
                m4122d();
                return;
            }
            C8276a c8276a = new C8276a(childAt, childAt2);
            if (!z) {
                this.f37335d.removeAllUpdateListeners();
                this.f37335d.addUpdateListener(c8276a);
                return;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f37335d = valueAnimator;
            valueAnimator.setInterpolator(C1897a.f6814b);
            valueAnimator.setDuration(i2);
            valueAnimator.setFloatValues(0.0f, 1.0f);
            valueAnimator.addUpdateListener(c8276a);
            valueAnimator.addListener(new C8277b(i));
            valueAnimator.start();
        }

        /* renamed from: b */
        void m4124b(int i, int i2) {
            ValueAnimator valueAnimator = this.f37335d;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f37335d.cancel();
            }
            m4118h(true, i, i2);
        }

        /* renamed from: c */
        boolean m4123c() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (getChildAt(i).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            int i;
            int height = TabLayout.this.f37308q.getBounds().height();
            int i2 = height;
            if (height < 0) {
                i2 = TabLayout.this.f37308q.getIntrinsicHeight();
            }
            int i3 = TabLayout.this.f37279D;
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
            if (TabLayout.this.f37308q.getBounds().width() > 0) {
                Rect bounds = TabLayout.this.f37308q.getBounds();
                TabLayout.this.f37308q.setBounds(bounds.left, i, bounds.right, i2);
                TabLayout tabLayout = TabLayout.this;
                Drawable drawable = tabLayout.f37308q;
                Drawable drawable2 = drawable;
                if (tabLayout.f37309r != 0) {
                    drawable2 = C0615a.m33212r(drawable);
                    if (Build.VERSION.SDK_INT == 21) {
                        drawable2.setColorFilter(TabLayout.this.f37309r, PorterDuff.Mode.SRC_IN);
                    } else {
                        C0615a.m33216n(drawable2, TabLayout.this.f37309r);
                    }
                }
                drawable2.draw(canvas);
            }
            super.draw(canvas);
        }

        /* renamed from: e */
        void m4121e(int i, float f) {
            ValueAnimator valueAnimator = this.f37335d;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f37335d.cancel();
            }
            this.f37336e = i;
            this.f37337f = f;
            m4119g(getChildAt(i), getChildAt(this.f37336e + 1), this.f37337f);
        }

        /* renamed from: f */
        void m4120f(int i) {
            Rect bounds = TabLayout.this.f37308q.getBounds();
            TabLayout.this.f37308q.setBounds(bounds.left, 0, bounds.right, i);
            requestLayout();
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ValueAnimator valueAnimator = this.f37335d;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                m4122d();
            } else {
                m4118h(false, this.f37336e, -1);
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            boolean z;
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.f37277B != 1 && tabLayout.f37280E != 2) {
                return;
            }
            int childCount = getChildCount();
            int i4 = 0;
            int i5 = 0;
            while (true) {
                i3 = i5;
                if (i4 >= childCount) {
                    break;
                }
                View childAt = getChildAt(i4);
                int i6 = i3;
                if (childAt.getVisibility() == 0) {
                    i6 = Math.max(i3, childAt.getMeasuredWidth());
                }
                i4++;
                i5 = i6;
            }
            if (i3 <= 0) {
                return;
            }
            if (i3 * childCount <= getMeasuredWidth() - (((int) C8209q.m4450c(getContext(), 16)) * 2)) {
                z = false;
                for (int i7 = 0; i7 < childCount; i7++) {
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i7).getLayoutParams();
                    if (layoutParams.width != i3 || layoutParams.weight != 0.0f) {
                        layoutParams.width = i3;
                        layoutParams.weight = 0.0f;
                        z = true;
                    }
                }
            } else {
                TabLayout tabLayout2 = TabLayout.this;
                tabLayout2.f37277B = 0;
                tabLayout2.m4177K(false);
                z = true;
            }
            if (!z) {
                return;
            }
            super.onMeasure(i, i2);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
            if (Build.VERSION.SDK_INT >= 23 || this.f37338g == i) {
                return;
            }
            requestLayout();
            this.f37338g = i;
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$g */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$g.class */
    public static class C8278g {

        /* renamed from: a */
        private Object f37345a;

        /* renamed from: b */
        private Drawable f37346b;

        /* renamed from: c */
        private CharSequence f37347c;

        /* renamed from: d */
        private CharSequence f37348d;

        /* renamed from: f */
        private View f37350f;

        /* renamed from: h */
        public TabLayout f37352h;

        /* renamed from: i */
        public TabView f37353i;

        /* renamed from: e */
        private int f37349e = -1;

        /* renamed from: g */
        private int f37351g = 1;

        /* renamed from: j */
        private int f37354j = -1;

        /* renamed from: e */
        public View m4113e() {
            return this.f37350f;
        }

        /* renamed from: f */
        public Drawable m4112f() {
            return this.f37346b;
        }

        /* renamed from: g */
        public int m4111g() {
            return this.f37349e;
        }

        /* renamed from: h */
        public int m4110h() {
            return this.f37351g;
        }

        /* renamed from: i */
        public CharSequence m4109i() {
            return this.f37347c;
        }

        /* renamed from: j */
        public boolean m4108j() {
            TabLayout tabLayout = this.f37352h;
            if (tabLayout != null) {
                return tabLayout.getSelectedTabPosition() == this.f37349e;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        /* renamed from: k */
        void m4107k() {
            this.f37352h = null;
            this.f37353i = null;
            this.f37345a = null;
            this.f37346b = null;
            this.f37354j = -1;
            this.f37347c = null;
            this.f37348d = null;
            this.f37349e = -1;
            this.f37350f = null;
        }

        /* renamed from: l */
        public void m4106l() {
            TabLayout tabLayout = this.f37352h;
            if (tabLayout != null) {
                tabLayout.m4183E(this);
                return;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        /* renamed from: m */
        public C8278g m4105m(CharSequence charSequence) {
            this.f37348d = charSequence;
            m4099s();
            return this;
        }

        /* renamed from: n */
        public C8278g m4104n(int i) {
            return m4103o(LayoutInflater.from(this.f37353i.getContext()).inflate(i, (ViewGroup) this.f37353i, false));
        }

        /* renamed from: o */
        public C8278g m4103o(View view) {
            this.f37350f = view;
            m4099s();
            return this;
        }

        /* renamed from: p */
        public C8278g m4102p(Drawable drawable) {
            this.f37346b = drawable;
            TabLayout tabLayout = this.f37352h;
            if (tabLayout.f37277B == 1 || tabLayout.f37280E == 2) {
                tabLayout.m4177K(true);
            }
            m4099s();
            if (C8004a.f36128a && this.f37353i.m4139l() && this.f37353i.f37322h.isVisible()) {
                this.f37353i.invalidate();
            }
            return this;
        }

        /* renamed from: q */
        void m4101q(int i) {
            this.f37349e = i;
        }

        /* renamed from: r */
        public C8278g m4100r(CharSequence charSequence) {
            if (TextUtils.isEmpty(this.f37348d) && !TextUtils.isEmpty(charSequence)) {
                this.f37353i.setContentDescription(charSequence);
            }
            this.f37347c = charSequence;
            m4099s();
            return this;
        }

        /* renamed from: s */
        void m4099s() {
            TabView tabView = this.f37353i;
            if (tabView != null) {
                tabView.m4131t();
            }
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$h */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$h.class */
    public static class C8279h implements ViewPager.AbstractC1193i {

        /* renamed from: d */
        private final WeakReference<TabLayout> f37355d;

        /* renamed from: e */
        private int f37356e;

        /* renamed from: f */
        private int f37357f;

        public C8279h(TabLayout tabLayout) {
            this.f37355d = new WeakReference<>(tabLayout);
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: a */
        public void mo4098a(int i, float f, int i2) {
            TabLayout tabLayout = this.f37355d.get();
            if (tabLayout != null) {
                int i3 = this.f37357f;
                boolean z = false;
                boolean z2 = i3 != 2 || this.f37356e == 1;
                if (i3 != 2 || this.f37356e != 0) {
                    z = true;
                }
                tabLayout.setScrollPosition(i, f, z2, z);
            }
        }

        /* renamed from: b */
        void m4097b() {
            this.f37357f = 0;
            this.f37356e = 0;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: c */
        public void mo4096c(int i) {
            this.f37356e = this.f37357f;
            this.f37357f = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: d */
        public void mo4095d(int i) {
            TabLayout tabLayout = this.f37355d.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i || i >= tabLayout.getTabCount()) {
                return;
            }
            int i2 = this.f37357f;
            tabLayout.m4182F(tabLayout.m4154w(i), i2 == 0 || (i2 == 2 && this.f37356e == 0));
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$i */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$i.class */
    public static class C8280i implements AbstractC8273d {

        /* renamed from: a */
        private final ViewPager f37358a;

        public C8280i(ViewPager viewPager) {
            this.f37358a = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.AbstractC8272c
        /* renamed from: a */
        public void mo4094a(C8278g c8278g) {
        }

        @Override // com.google.android.material.tabs.TabLayout.AbstractC8272c
        /* renamed from: b */
        public void mo4093b(C8278g c8278g) {
            this.f37358a.setCurrentItem(c8278g.m4111g());
        }

        @Override // com.google.android.material.tabs.TabLayout.AbstractC8272c
        /* renamed from: c */
        public void mo4092c(C8278g c8278g) {
        }
    }

    public TabLayout(Context context) {
        this(context, null);
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.tabStyle);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TabLayout(android.content.Context r11, android.util.AttributeSet r12, int r13) {
        /*
            Method dump skipped, instructions count: 678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: D */
    private void m4184D(int i) {
        TabView tabView = (TabView) this.f37299h.getChildAt(i);
        this.f37299h.removeViewAt(i);
        if (tabView != null) {
            tabView.m4136o();
            this.f37296U.mo22685b(tabView);
        }
        requestLayout();
    }

    /* renamed from: H */
    private void m4180H(ViewPager viewPager, boolean z, boolean z2) {
        ViewPager viewPager2 = this.f37290O;
        if (viewPager2 != null) {
            C8279h c8279h = this.f37293R;
            if (c8279h != null) {
                viewPager2.m30755N(c8279h);
            }
            C8271b c8271b = this.f37294S;
            if (c8271b != null) {
                this.f37290O.m30756M(c8271b);
            }
        }
        AbstractC8272c abstractC8272c = this.f37288M;
        if (abstractC8272c != null) {
            m4185C(abstractC8272c);
            this.f37288M = null;
        }
        if (viewPager != null) {
            this.f37290O = viewPager;
            if (this.f37293R == null) {
                this.f37293R = new C8279h(this);
            }
            this.f37293R.m4097b();
            viewPager.m30744c(this.f37293R);
            C8280i c8280i = new C8280i(viewPager);
            this.f37288M = c8280i;
            m4174c(c8280i);
            AbstractC1197a adapter = viewPager.getAdapter();
            if (adapter != null) {
                m4181G(adapter, z);
            }
            if (this.f37294S == null) {
                this.f37294S = new C8271b();
            }
            this.f37294S.m4127a(z);
            viewPager.m30745b(this.f37294S);
            setScrollPosition(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.f37290O = null;
            m4181G(null, false);
        }
        this.f37295T = z2;
    }

    /* renamed from: I */
    private void m4179I() {
        int size = this.f37297f.size();
        for (int i = 0; i < size; i++) {
            this.f37297f.get(i).m4099s();
        }
    }

    /* renamed from: J */
    private void m4178J(LinearLayout.LayoutParams layoutParams) {
        if (this.f37280E == 1 && this.f37277B == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
            return;
        }
        layoutParams.width = -2;
        layoutParams.weight = 0.0f;
    }

    /* renamed from: g */
    private void m4170g(TabItem tabItem) {
        C8278g m4152y = m4152y();
        CharSequence charSequence = tabItem.f37271d;
        if (charSequence != null) {
            m4152y.m4100r(charSequence);
        }
        Drawable drawable = tabItem.f37272e;
        if (drawable != null) {
            m4152y.m4102p(drawable);
        }
        int i = tabItem.f37273f;
        if (i != 0) {
            m4152y.m4104n(i);
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            m4152y.m4105m(tabItem.getContentDescription());
        }
        m4173d(m4152y);
    }

    private int getDefaultHeight() {
        boolean z;
        int size = this.f37297f.size();
        int i = 0;
        while (true) {
            z = false;
            if (i < size) {
                C8278g c8278g = this.f37297f.get(i);
                if (c8278g != null && c8278g.m4112f() != null && !TextUtils.isEmpty(c8278g.m4109i())) {
                    z = true;
                    break;
                }
                i++;
            } else {
                break;
            }
        }
        return (!z || this.f37281F) ? 48 : 72;
    }

    private int getTabMinWidth() {
        int i = this.f37315x;
        if (i != -1) {
            return i;
        }
        int i2 = this.f37280E;
        return (i2 == 0 || i2 == 2) ? this.f37317z : 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f37299h.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    /* renamed from: h */
    private void m4169h(C8278g c8278g) {
        TabView tabView = c8278g.f37353i;
        tabView.setSelected(false);
        tabView.setActivated(false);
        this.f37299h.addView(tabView, c8278g.m4111g(), m4161p());
    }

    /* renamed from: i */
    private void m4168i(View view) {
        if (view instanceof TabItem) {
            m4170g((TabItem) view);
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    /* renamed from: j */
    private void m4167j(int i) {
        if (i == -1) {
            return;
        }
        if (getWindowToken() == null || !C1679w.m29313V(this) || this.f37299h.m4123c()) {
            setScrollPosition(i, 0.0f, true);
            return;
        }
        int scrollX = getScrollX();
        int m4164m = m4164m(i, 0.0f);
        if (scrollX != m4164m) {
            m4155v();
            this.f37289N.setIntValues(scrollX, m4164m);
            this.f37289N.start();
        }
        this.f37299h.m4124b(i, this.f37278C);
    }

    /* renamed from: k */
    private void m4166k(int i) {
        if (i == 0) {
            Log.w("TabLayout", "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
        } else if (i == 1) {
            this.f37299h.setGravity(1);
            return;
        } else if (i != 2) {
            return;
        }
        this.f37299h.setGravity(8388611);
    }

    /* renamed from: l */
    private void m4165l() {
        int i = this.f37280E;
        C1679w.m29339F0(this.f37299h, (i == 0 || i == 2) ? Math.max(0, this.f37276A - this.f37300i) : 0, 0, 0, 0);
        int i2 = this.f37280E;
        if (i2 == 0) {
            m4166k(this.f37277B);
        } else if (i2 == 1 || i2 == 2) {
            if (this.f37277B == 2) {
                Log.w("TabLayout", "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
            }
            this.f37299h.setGravity(1);
        }
        m4177K(true);
    }

    /* renamed from: m */
    private int m4164m(int i, float f) {
        int i2 = this.f37280E;
        int i3 = 0;
        if (i2 == 0 || i2 == 2) {
            View childAt = this.f37299h.getChildAt(i);
            int i4 = i + 1;
            View childAt2 = i4 < this.f37299h.getChildCount() ? this.f37299h.getChildAt(i4) : null;
            int width = childAt != null ? childAt.getWidth() : 0;
            if (childAt2 != null) {
                i3 = childAt2.getWidth();
            }
            int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
            int i5 = (int) ((width + i3) * 0.5f * f);
            return C1679w.m29346C(this) == 0 ? left + i5 : left - i5;
        }
        return 0;
    }

    /* renamed from: n */
    private void m4163n(C8278g c8278g, int i) {
        c8278g.m4101q(i);
        this.f37297f.add(i, c8278g);
        int size = this.f37297f.size();
        while (true) {
            i++;
            if (i < size) {
                this.f37297f.get(i).m4101q(i);
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
    /* renamed from: o */
    private static ColorStateList m4162o(int i, int i2) {
        return new ColorStateList(new int[]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i2, i});
    }

    /* renamed from: p */
    private LinearLayout.LayoutParams m4161p() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        m4178J(layoutParams);
        return layoutParams;
    }

    /* renamed from: r */
    private TabView m4159r(C8278g c8278g) {
        AbstractC1594e<TabView> abstractC1594e = this.f37296U;
        TabView mo22686a = abstractC1594e != null ? abstractC1594e.mo22686a() : null;
        TabView tabView = mo22686a;
        if (mo22686a == null) {
            tabView = new TabView(getContext());
        }
        tabView.setTab(c8278g);
        tabView.setFocusable(true);
        tabView.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(c8278g.f37348d)) {
            tabView.setContentDescription(c8278g.f37347c);
        } else {
            tabView.setContentDescription(c8278g.f37348d);
        }
        return tabView;
    }

    /* renamed from: s */
    private void m4158s(C8278g c8278g) {
        for (int size = this.f37287L.size() - 1; size >= 0; size--) {
            this.f37287L.get(size).mo4094a(c8278g);
        }
    }

    private void setSelectedTabView(int i) {
        int childCount = this.f37299h.getChildCount();
        if (i < childCount) {
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = this.f37299h.getChildAt(i2);
                childAt.setSelected(i2 == i);
                childAt.setActivated(i2 == i);
                i2++;
            }
        }
    }

    /* renamed from: t */
    private void m4157t(C8278g c8278g) {
        for (int size = this.f37287L.size() - 1; size >= 0; size--) {
            this.f37287L.get(size).mo4093b(c8278g);
        }
    }

    /* renamed from: u */
    private void m4156u(C8278g c8278g) {
        for (int size = this.f37287L.size() - 1; size >= 0; size--) {
            this.f37287L.get(size).mo4092c(c8278g);
        }
    }

    /* renamed from: v */
    private void m4155v() {
        if (this.f37289N == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f37289N = valueAnimator;
            valueAnimator.setInterpolator(C1897a.f6814b);
            this.f37289N.setDuration(this.f37278C);
            this.f37289N.addUpdateListener(new C8270a());
        }
    }

    /* renamed from: A */
    protected boolean m4187A(C8278g c8278g) {
        return f37275e.mo22685b(c8278g);
    }

    /* renamed from: B */
    public void m4186B() {
        for (int childCount = this.f37299h.getChildCount() - 1; childCount >= 0; childCount--) {
            m4184D(childCount);
        }
        Iterator<C8278g> it = this.f37297f.iterator();
        while (it.hasNext()) {
            C8278g next = it.next();
            it.remove();
            next.m4107k();
            m4187A(next);
        }
        this.f37298g = null;
    }

    @Deprecated
    /* renamed from: C */
    public void m4185C(AbstractC8272c abstractC8272c) {
        this.f37287L.remove(abstractC8272c);
    }

    /* renamed from: E */
    public void m4183E(C8278g c8278g) {
        m4182F(c8278g, true);
    }

    /* renamed from: F */
    public void m4182F(C8278g c8278g, boolean z) {
        C8278g c8278g2 = this.f37298g;
        if (c8278g2 == c8278g) {
            if (c8278g2 == null) {
                return;
            }
            m4158s(c8278g);
            m4167j(c8278g.m4111g());
            return;
        }
        int m4111g = c8278g != null ? c8278g.m4111g() : -1;
        if (z) {
            if ((c8278g2 == null || c8278g2.m4111g() == -1) && m4111g != -1) {
                setScrollPosition(m4111g, 0.0f, true);
            } else {
                m4167j(m4111g);
            }
            if (m4111g != -1) {
                setSelectedTabView(m4111g);
            }
        }
        this.f37298g = c8278g;
        if (c8278g2 != null) {
            m4156u(c8278g2);
        }
        if (c8278g == null) {
            return;
        }
        m4157t(c8278g);
    }

    /* renamed from: G */
    void m4181G(AbstractC1197a abstractC1197a, boolean z) {
        DataSetObserver dataSetObserver;
        AbstractC1197a abstractC1197a2 = this.f37291P;
        if (abstractC1197a2 != null && (dataSetObserver = this.f37292Q) != null) {
            abstractC1197a2.m30702u(dataSetObserver);
        }
        this.f37291P = abstractC1197a;
        if (z && abstractC1197a != null) {
            if (this.f37292Q == null) {
                this.f37292Q = new C8274e();
            }
            abstractC1197a.m30707m(this.f37292Q);
        }
        m4151z();
    }

    /* renamed from: K */
    void m4177K(boolean z) {
        for (int i = 0; i < this.f37299h.getChildCount(); i++) {
            View childAt = this.f37299h.getChildAt(i);
            childAt.setMinimumWidth(getTabMinWidth());
            m4178J((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z) {
                childAt.requestLayout();
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        m4168i(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i) {
        m4168i(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        m4168i(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        m4168i(view);
    }

    @Deprecated
    /* renamed from: c */
    public void m4174c(AbstractC8272c abstractC8272c) {
        if (!this.f37287L.contains(abstractC8272c)) {
            this.f37287L.add(abstractC8272c);
        }
    }

    /* renamed from: d */
    public void m4173d(C8278g c8278g) {
        m4171f(c8278g, this.f37297f.isEmpty());
    }

    /* renamed from: e */
    public void m4172e(C8278g c8278g, int i, boolean z) {
        if (c8278g.f37352h == this) {
            m4163n(c8278g, i);
            m4169h(c8278g);
            if (!z) {
                return;
            }
            c8278g.m4106l();
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    /* renamed from: f */
    public void m4171f(C8278g c8278g, boolean z) {
        m4172e(c8278g, this.f37297f.size(), z);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    public int getSelectedTabPosition() {
        C8278g c8278g = this.f37298g;
        return c8278g != null ? c8278g.m4111g() : -1;
    }

    public int getTabCount() {
        return this.f37297f.size();
    }

    public int getTabGravity() {
        return this.f37277B;
    }

    public ColorStateList getTabIconTint() {
        return this.f37306o;
    }

    public int getTabIndicatorAnimationMode() {
        return this.f37283H;
    }

    public int getTabIndicatorGravity() {
        return this.f37279D;
    }

    int getTabMaxWidth() {
        return this.f37314w;
    }

    public int getTabMode() {
        return this.f37280E;
    }

    public ColorStateList getTabRippleColor() {
        return this.f37307p;
    }

    public Drawable getTabSelectedIndicator() {
        return this.f37308q;
    }

    public ColorStateList getTabTextColors() {
        return this.f37305n;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C1942i.m28580e(this);
        if (this.f37290O == null) {
            ViewParent parent = getParent();
            if (!(parent instanceof ViewPager)) {
                return;
            }
            m4180H((ViewPager) parent, true, true);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f37295T) {
            setupWithViewPager(null);
            this.f37295T = false;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        for (int i = 0; i < this.f37299h.getChildCount(); i++) {
            View childAt = this.f37299h.getChildAt(i);
            if (childAt instanceof TabView) {
                ((TabView) childAt).m4141j(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        C1634c.m29513H0(accessibilityNodeInfo).m29485e0(C1634c.C1636b.m29437b(1, getTabCount(), false, 1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c9, code lost:
        if (r0.getMeasuredWidth() != getMeasuredWidth()) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00cc, code lost:
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00dd, code lost:
        if (r0.getMeasuredWidth() < getMeasuredWidth()) goto L30;
     */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.onMeasure(int, int):void");
    }

    /* renamed from: q */
    protected C8278g m4160q() {
        C8278g mo22686a = f37275e.mo22686a();
        C8278g c8278g = mo22686a;
        if (mo22686a == null) {
            c8278g = new C8278g();
        }
        return c8278g;
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C1942i.m28581d(this, f);
    }

    public void setInlineLabel(boolean z) {
        if (this.f37281F != z) {
            this.f37281F = z;
            for (int i = 0; i < this.f37299h.getChildCount(); i++) {
                View childAt = this.f37299h.getChildAt(i);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).m4129v();
                }
            }
            m4165l();
        }
    }

    public void setInlineLabelResource(int i) {
        setInlineLabel(getResources().getBoolean(i));
    }

    @Deprecated
    public void setOnTabSelectedListener(AbstractC8272c abstractC8272c) {
        AbstractC8272c abstractC8272c2 = this.f37286K;
        if (abstractC8272c2 != null) {
            m4185C(abstractC8272c2);
        }
        this.f37286K = abstractC8272c;
        if (abstractC8272c != null) {
            m4174c(abstractC8272c);
        }
    }

    @Deprecated
    public void setOnTabSelectedListener(AbstractC8273d abstractC8273d) {
        setOnTabSelectedListener((AbstractC8272c) abstractC8273d);
    }

    void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        m4155v();
        this.f37289N.addListener(animatorListener);
    }

    public void setScrollPosition(int i, float f, boolean z) {
        setScrollPosition(i, f, z, true);
    }

    public void setScrollPosition(int i, float f, boolean z, boolean z2) {
        int round = Math.round(i + f);
        if (round < 0 || round >= this.f37299h.getChildCount()) {
            return;
        }
        if (z2) {
            this.f37299h.m4121e(i, f);
        }
        ValueAnimator valueAnimator = this.f37289N;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f37289N.cancel();
        }
        scrollTo(m4164m(i, f), 0);
        if (!z) {
            return;
        }
        setSelectedTabView(round);
    }

    public void setSelectedTabIndicator(int i) {
        if (i != 0) {
            setSelectedTabIndicator(C1433a.m30126d(getContext(), i));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    public void setSelectedTabIndicator(Drawable drawable) {
        if (this.f37308q != drawable) {
            if (drawable == null) {
                drawable = new GradientDrawable();
            }
            this.f37308q = drawable;
        }
    }

    public void setSelectedTabIndicatorColor(int i) {
        this.f37309r = i;
    }

    public void setSelectedTabIndicatorGravity(int i) {
        if (this.f37279D != i) {
            this.f37279D = i;
            C1679w.m29293h0(this.f37299h);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i) {
        this.f37299h.m4120f(i);
    }

    public void setTabGravity(int i) {
        if (this.f37277B != i) {
            this.f37277B = i;
            m4165l();
        }
    }

    public void setTabIconTint(ColorStateList colorStateList) {
        if (this.f37306o != colorStateList) {
            this.f37306o = colorStateList;
            m4179I();
        }
    }

    public void setTabIconTintResource(int i) {
        setTabIconTint(C1433a.m30127c(getContext(), i));
    }

    public void setTabIndicatorAnimationMode(int i) {
        this.f37283H = i;
        if (i == 0) {
            this.f37285J = new C8282b();
        } else if (i == 1) {
            this.f37285J = new C8281a();
        } else {
            throw new IllegalArgumentException(i + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.f37282G = z;
        C1679w.m29293h0(this.f37299h);
    }

    public void setTabMode(int i) {
        if (i != this.f37280E) {
            this.f37280E = i;
            m4165l();
        }
    }

    public void setTabRippleColor(ColorStateList colorStateList) {
        if (this.f37307p != colorStateList) {
            this.f37307p = colorStateList;
            for (int i = 0; i < this.f37299h.getChildCount(); i++) {
                View childAt = this.f37299h.getChildAt(i);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).m4130u(getContext());
                }
            }
        }
    }

    public void setTabRippleColorResource(int i) {
        setTabRippleColor(C1433a.m30127c(getContext(), i));
    }

    public void setTabTextColors(int i, int i2) {
        setTabTextColors(m4162o(i, i2));
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.f37305n != colorStateList) {
            this.f37305n = colorStateList;
            m4179I();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(AbstractC1197a abstractC1197a) {
        m4181G(abstractC1197a, false);
    }

    public void setUnboundedRipple(boolean z) {
        if (this.f37284I != z) {
            this.f37284I = z;
            for (int i = 0; i < this.f37299h.getChildCount(); i++) {
                View childAt = this.f37299h.getChildAt(i);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).m4130u(getContext());
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

    public void setupWithViewPager(ViewPager viewPager, boolean z) {
        m4180H(viewPager, z, false);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    /* renamed from: w */
    public C8278g m4154w(int i) {
        return (i < 0 || i >= getTabCount()) ? null : this.f37297f.get(i);
    }

    /* renamed from: x */
    public boolean m4153x() {
        return this.f37282G;
    }

    /* renamed from: y */
    public C8278g m4152y() {
        C8278g m4160q = m4160q();
        m4160q.f37352h = this;
        m4160q.f37353i = m4159r(m4160q);
        if (m4160q.f37354j != -1) {
            m4160q.f37353i.setId(m4160q.f37354j);
        }
        return m4160q;
    }

    /* renamed from: z */
    void m4151z() {
        int currentItem;
        m4186B();
        AbstractC1197a abstractC1197a = this.f37291P;
        if (abstractC1197a != null) {
            int mo25082e = abstractC1197a.mo25082e();
            for (int i = 0; i < mo25082e; i++) {
                m4171f(m4152y().m4100r(this.f37291P.mo25081g(i)), false);
            }
            ViewPager viewPager = this.f37290O;
            if (viewPager == null || mo25082e <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            m4183E(m4154w(currentItem));
        }
    }
}
