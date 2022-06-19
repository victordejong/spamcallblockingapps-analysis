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
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.appcompat.widget.C0374ad;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.p036e.C0829c;
import androidx.core.view.C0912h;
import androidx.core.view.C0924t;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import androidx.core.widget.C0959h;
import androidx.viewpager.widget.AbstractC2941a;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.C14419a;
import com.google.android.material.internal.C14654r;
import com.google.android.material.p364a.C14389a;
import com.google.android.material.p372i.C14607b;
import com.google.android.material.p374k.C14674i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
@ViewPager.AbstractC2932a
/* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout.class */
public class TabLayout extends HorizontalScrollView {

    /* renamed from: B */
    private C14778f f53887B;

    /* renamed from: C */
    private int f53888C;

    /* renamed from: D */
    private final int f53889D;

    /* renamed from: E */
    private final int f53890E;

    /* renamed from: F */
    private final int f53891F;

    /* renamed from: G */
    private int f53892G;

    /* renamed from: H */
    private C14782b f53893H;

    /* renamed from: I */
    private AbstractC14772b f53894I;

    /* renamed from: J */
    private final ArrayList<AbstractC14772b> f53895J;

    /* renamed from: K */
    private AbstractC14772b f53896K;

    /* renamed from: L */
    private ValueAnimator f53897L;

    /* renamed from: M */
    private AbstractC2941a f53898M;

    /* renamed from: N */
    private DataSetObserver f53899N;

    /* renamed from: O */
    private C14779g f53900O;

    /* renamed from: P */
    private C14771a f53901P;

    /* renamed from: Q */
    private boolean f53902Q;

    /* renamed from: R */
    private final C0829c.AbstractC0830a<TabView> f53903R;

    /* renamed from: a */
    public final ArrayList<C14778f> f53904a;

    /* renamed from: b */
    final C14775e f53905b;

    /* renamed from: c */
    int f53906c;

    /* renamed from: d */
    int f53907d;

    /* renamed from: e */
    int f53908e;

    /* renamed from: f */
    int f53909f;

    /* renamed from: g */
    int f53910g;

    /* renamed from: h */
    ColorStateList f53911h;

    /* renamed from: i */
    ColorStateList f53912i;

    /* renamed from: j */
    ColorStateList f53913j;

    /* renamed from: k */
    Drawable f53914k;

    /* renamed from: l */
    PorterDuff.Mode f53915l;

    /* renamed from: m */
    float f53916m;

    /* renamed from: n */
    float f53917n;

    /* renamed from: o */
    final int f53918o;

    /* renamed from: p */
    int f53919p;

    /* renamed from: q */
    int f53920q;

    /* renamed from: r */
    int f53921r;

    /* renamed from: s */
    int f53922s;

    /* renamed from: t */
    int f53923t;

    /* renamed from: u */
    boolean f53924u;

    /* renamed from: v */
    boolean f53925v;

    /* renamed from: w */
    int f53926w;

    /* renamed from: x */
    boolean f53927x;

    /* renamed from: y */
    ViewPager f53928y;

    /* renamed from: z */
    private static final int f53886z = C14376a.C14387k.Widget_Design_TabLayout;

    /* renamed from: A */
    private static final C0829c.AbstractC0830a<C14778f> f53885A = new C0829c.C0832c(16);

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout$TabView.class */
    public final class TabView extends LinearLayout {

        /* renamed from: a */
        TextView f53930a;

        /* renamed from: b */
        ImageView f53931b;

        /* renamed from: c */
        View f53932c;

        /* renamed from: d */
        TextView f53933d;

        /* renamed from: e */
        ImageView f53934e;

        /* renamed from: g */
        private C14778f f53936g;

        /* renamed from: h */
        private View f53937h;

        /* renamed from: i */
        private BadgeDrawable f53938i;

        /* renamed from: j */
        private Drawable f53939j;

        /* renamed from: k */
        private int f53940k = 2;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TabView(Context context) {
            super(context);
            TabLayout.this = r7;
            m10111a(context);
            C0926v.m44109b(this, r7.f53906c, r7.f53907d, r7.f53908e, r7.f53909f);
            setGravity(17);
            setOrientation(!r7.f53924u ? 1 : 0);
            setClickable(true);
            C0926v.m44119a(this, C0924t.m44159a(getContext()));
        }

        /* renamed from: a */
        public void m10111a(Context context) {
            if (TabLayout.this.f53918o != 0) {
                Drawable m46374b = C0153a.m46374b(context, TabLayout.this.f53918o);
                this.f53939j = m46374b;
                if (m46374b != null && m46374b.isStateful()) {
                    this.f53939j.setState(getDrawableState());
                }
            } else {
                this.f53939j = null;
            }
            Drawable gradientDrawable = new GradientDrawable();
            ((GradientDrawable) gradientDrawable).setColor(0);
            Drawable drawable = gradientDrawable;
            if (TabLayout.this.f53913j != null) {
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setCornerRadius(1.0E-5f);
                gradientDrawable2.setColor(-1);
                ColorStateList m10636a = C14607b.m10636a(TabLayout.this.f53913j);
                if (Build.VERSION.SDK_INT >= 21) {
                    if (TabLayout.this.f53927x) {
                        gradientDrawable = null;
                    }
                    if (TabLayout.this.f53927x) {
                        gradientDrawable2 = null;
                    }
                    drawable = new RippleDrawable(m10636a, gradientDrawable, gradientDrawable2);
                } else {
                    Drawable m44345f = C0840a.m44345f(gradientDrawable2);
                    C0840a.m44355a(m44345f, m10636a);
                    drawable = new LayerDrawable(new Drawable[]{gradientDrawable, m44345f});
                }
            }
            C0926v.m44128a(this, drawable);
            TabLayout.this.invalidate();
        }

        /* renamed from: a */
        private void m10110a(final View view) {
            if (view == null) {
                return;
            }
            view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.material.tabs.TabLayout.TabView.1
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    if (view.getVisibility() == 0) {
                        TabView.this.m10098c(view);
                    }
                }
            });
        }

        /* renamed from: a */
        static /* synthetic */ void m10106a(TabView tabView, Canvas canvas) {
            Drawable drawable = tabView.f53939j;
            if (drawable != null) {
                drawable.setBounds(tabView.getLeft(), tabView.getTop(), tabView.getRight(), tabView.getBottom());
                tabView.f53939j.draw(canvas);
            }
        }

        /* renamed from: a */
        private void m10103a(boolean z) {
            setClipChildren(z);
            setClipToPadding(z);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(z);
                viewGroup.setClipToPadding(z);
            }
        }

        /* renamed from: b */
        private void m10102b() {
            FrameLayout frameLayout;
            if (C14419a.f52510a) {
                frameLayout = m10097d();
                addView(frameLayout, 0);
            } else {
                frameLayout = this;
            }
            ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(C14376a.C14384h.design_layout_tab_icon, (ViewGroup) frameLayout, false);
            this.f53931b = imageView;
            frameLayout.addView(imageView, 0);
        }

        /* renamed from: b */
        private void m10101b(View view) {
            if (m10093g() && view != null) {
                m10103a(false);
                C14419a.m11224a(this.f53938i, view, m10096d(view));
                this.f53937h = view;
            }
        }

        /* renamed from: c */
        private void m10099c() {
            FrameLayout frameLayout;
            if (C14419a.f52510a) {
                frameLayout = m10097d();
                addView(frameLayout);
            } else {
                frameLayout = this;
            }
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(C14376a.C14384h.design_layout_tab_text, (ViewGroup) frameLayout, false);
            this.f53930a = textView;
            frameLayout.addView(textView);
        }

        /* renamed from: c */
        public void m10098c(View view) {
            if (!m10093g() || view != this.f53937h) {
                return;
            }
            C14419a.m11223b(this.f53938i, view, m10096d(view));
        }

        /* renamed from: d */
        private FrameLayout m10097d() {
            FrameLayout frameLayout = new FrameLayout(getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            return frameLayout;
        }

        /* renamed from: d */
        private FrameLayout m10096d(View view) {
            if ((view == this.f53931b || view == this.f53930a) && C14419a.f52510a) {
                return (FrameLayout) view.getParent();
            }
            return null;
        }

        /* renamed from: e */
        private void m10095e() {
            C14778f c14778f;
            C14778f c14778f2;
            if (!m10093g()) {
                return;
            }
            if (this.f53932c == null) {
                if (this.f53931b != null && (c14778f2 = this.f53936g) != null && c14778f2.f53957b != null) {
                    View view = this.f53937h;
                    ImageView imageView = this.f53931b;
                    if (view == imageView) {
                        m10098c(imageView);
                        return;
                    }
                    m10094f();
                    m10101b(this.f53931b);
                    return;
                } else if (this.f53930a != null && (c14778f = this.f53936g) != null && c14778f.f53962g == 1) {
                    View view2 = this.f53937h;
                    TextView textView = this.f53930a;
                    if (view2 == textView) {
                        m10098c(textView);
                        return;
                    }
                    m10094f();
                    m10101b(this.f53930a);
                    return;
                }
            }
            m10094f();
        }

        /* renamed from: f */
        private void m10094f() {
            if (!m10093g()) {
                return;
            }
            m10103a(true);
            View view = this.f53937h;
            if (view == null) {
                return;
            }
            C14419a.m11225a(this.f53938i, view);
            this.f53937h = null;
        }

        /* renamed from: g */
        public boolean m10093g() {
            return this.f53938i != null;
        }

        /* renamed from: a */
        final void m10112a() {
            C14778f c14778f = this.f53936g;
            View view = c14778f != null ? c14778f.f53961f : null;
            if (view != null) {
                ViewParent parent = view.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(view);
                    }
                    addView(view);
                }
                this.f53932c = view;
                TextView textView = this.f53930a;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f53931b;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f53931b.setImageDrawable(null);
                }
                TextView textView2 = (TextView) view.findViewById(16908308);
                this.f53933d = textView2;
                if (textView2 != null) {
                    this.f53940k = C0959h.m43966a(textView2);
                }
                this.f53934e = (ImageView) view.findViewById(16908294);
            } else {
                View view2 = this.f53932c;
                if (view2 != null) {
                    removeView(view2);
                    this.f53932c = null;
                }
                this.f53933d = null;
                this.f53934e = null;
            }
            if (this.f53932c == null) {
                if (this.f53931b == null) {
                    m10102b();
                }
                Drawable drawable = null;
                if (c14778f != null) {
                    drawable = null;
                    if (c14778f.f53957b != null) {
                        drawable = C0840a.m44345f(c14778f.f53957b).mutate();
                    }
                }
                if (drawable != null) {
                    C0840a.m44355a(drawable, TabLayout.this.f53912i);
                    if (TabLayout.this.f53915l != null) {
                        C0840a.m44352a(drawable, TabLayout.this.f53915l);
                    }
                }
                if (this.f53930a == null) {
                    m10099c();
                    this.f53940k = C0959h.m43966a(this.f53930a);
                }
                C0959h.m43965a(this.f53930a, TabLayout.this.f53910g);
                if (TabLayout.this.f53911h != null) {
                    this.f53930a.setTextColor(TabLayout.this.f53911h);
                }
                m10109a(this.f53930a, this.f53931b);
                m10095e();
                m10110a(this.f53931b);
                m10110a(this.f53930a);
            } else {
                TextView textView3 = this.f53933d;
                if (textView3 != null || this.f53934e != null) {
                    m10109a(textView3, this.f53934e);
                }
            }
            if (c14778f != null && !TextUtils.isEmpty(c14778f.f53959d)) {
                setContentDescription(c14778f.f53959d);
            }
            setSelected(c14778f != null && c14778f.m10083b());
        }

        /* renamed from: a */
        final void m10109a(TextView textView, ImageView imageView) {
            C14778f c14778f = this.f53936g;
            Drawable mutate = (c14778f == null || c14778f.f53957b == null) ? null : C0840a.m44345f(this.f53936g.f53957b).mutate();
            C14778f c14778f2 = this.f53936g;
            CharSequence charSequence = c14778f2 != null ? c14778f2.f53958c : null;
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
                    if (this.f53936g.f53962g == 1) {
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
                int m10498a = (!z || imageView.getVisibility() != 0) ? 0 : (int) C14654r.m10498a(getContext(), 8);
                if (TabLayout.this.f53924u) {
                    if (m10498a != C0912h.m44185b(marginLayoutParams)) {
                        C0912h.m44184b(marginLayoutParams, m10498a);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (m10498a != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = m10498a;
                    C0912h.m44184b(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            C14778f c14778f3 = this.f53936g;
            CharSequence charSequence2 = null;
            if (c14778f3 != null) {
                charSequence2 = c14778f3.f53959d;
            }
            if (!z) {
                charSequence = charSequence2;
            }
            C0374ad.m45785a(this, charSequence);
        }

        /* renamed from: a */
        final void m10104a(C14778f c14778f) {
            if (c14778f != this.f53936g) {
                this.f53936g = c14778f;
                m10112a();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected final void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.f53939j;
            boolean z = false;
            if (drawable != null) {
                z = false;
                if (drawable.isStateful()) {
                    z = false | this.f53939j.setState(drawableState);
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
            BadgeDrawable badgeDrawable = this.f53938i;
            if (badgeDrawable != null && badgeDrawable.isVisible()) {
                CharSequence contentDescription = getContentDescription();
                accessibilityNodeInfo.setContentDescription(((Object) contentDescription) + ", " + ((Object) this.f53938i.m11233c()));
            }
            C0869c m44278a = C0869c.m44278a(accessibilityNodeInfo);
            m44278a.m44264b(C0869c.C0872c.m44234a(0, 1, this.f53936g.f53960e, 1, isSelected()));
            if (isSelected()) {
                m44278a.m44243g(false);
                m44278a.m44266b(C0869c.C0870a.f3662e);
            }
            m44278a.m44244g(getResources().getString(C14376a.C14386j.item_view_role_description));
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x0128, code lost:
            if ((r0.getLineWidth(0) * (r13 / r0.getPaint().getTextSize())) > ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x0027, code lost:
            if (r0 > r0) goto L8;
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
            if (this.f53936g != null) {
                if (!performClick) {
                    playSoundEffect(0);
                }
                this.f53936g.m10086a();
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
            TextView textView = this.f53930a;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.f53931b;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.f53932c;
            if (view != null) {
                view.setSelected(z);
            }
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout$a.class */
    public final class C14771a implements ViewPager.AbstractC2935d {

        /* renamed from: a */
        boolean f53943a;

        C14771a() {
            TabLayout.this = r4;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC2935d
        /* renamed from: a */
        public final void mo10092a(ViewPager viewPager, AbstractC2941a abstractC2941a, AbstractC2941a abstractC2941a2) {
            if (TabLayout.this.f53928y == viewPager) {
                TabLayout.this.m10137a(abstractC2941a2, this.f53943a);
            }
        }
    }

    @Deprecated
    /* renamed from: com.google.android.material.tabs.TabLayout$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout$b.class */
    public interface AbstractC14772b<T extends C14778f> {
        /* renamed from: a */
        void mo10080a(T t);

        /* renamed from: b */
        void mo10079b(T t);

        /* renamed from: c */
        void mo10078c(T t);
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$c */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout$c.class */
    public interface AbstractC14773c extends AbstractC14772b<C14778f> {
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$d */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout$d.class */
    public final class C14774d extends DataSetObserver {
        C14774d() {
            TabLayout.this = r4;
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            TabLayout.this.m10129b();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            TabLayout.this.m10129b();
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$e */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout$e.class */
    public final class C14775e extends LinearLayout {

        /* renamed from: a */
        ValueAnimator f53946a;

        /* renamed from: c */
        float f53948c;

        /* renamed from: b */
        int f53947b = -1;

        /* renamed from: e */
        private int f53950e = -1;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C14775e(Context context) {
            super(context);
            TabLayout.this = r4;
            setWillNotDraw(false);
        }

        /* renamed from: a */
        private void m10091a() {
            View childAt = getChildAt(this.f53947b);
            C14782b unused = TabLayout.this.f53893H;
            TabLayout tabLayout = TabLayout.this;
            C14782b.m10073a(tabLayout, childAt, tabLayout.f53914k);
        }

        /* renamed from: a */
        final void m10090a(int i) {
            Rect bounds = TabLayout.this.f53914k.getBounds();
            TabLayout.this.f53914k.setBounds(bounds.left, 0, bounds.right, i);
            requestLayout();
        }

        /* renamed from: a */
        public final void m10089a(View view, View view2, float f) {
            if (view != null && view.getWidth() > 0) {
                C14782b c14782b = TabLayout.this.f53893H;
                TabLayout tabLayout = TabLayout.this;
                c14782b.mo10072a(tabLayout, view, view2, f, tabLayout.f53914k);
            } else {
                TabLayout.this.f53914k.setBounds(-1, TabLayout.this.f53914k.getBounds().top, -1, TabLayout.this.f53914k.getBounds().bottom);
            }
            C0926v.m44101d(this);
        }

        /* renamed from: a */
        final void m10087a(boolean z, final int i, int i2) {
            final View childAt = getChildAt(this.f53947b);
            final View childAt2 = getChildAt(i);
            if (childAt2 == null) {
                m10091a();
                return;
            }
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.tabs.TabLayout.e.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    C14775e.this.m10089a(childAt, childAt2, valueAnimator.getAnimatedFraction());
                }
            };
            if (!z) {
                this.f53946a.removeAllUpdateListeners();
                this.f53946a.addUpdateListener(animatorUpdateListener);
                return;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f53946a = valueAnimator;
            valueAnimator.setInterpolator(C14389a.f52369b);
            valueAnimator.setDuration(i2);
            valueAnimator.setFloatValues(BitmapDescriptorFactory.HUE_RED, 1.0f);
            valueAnimator.addUpdateListener(animatorUpdateListener);
            valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.tabs.TabLayout.e.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    C14775e.this.f53947b = i;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    C14775e.this.f53947b = i;
                }
            });
            valueAnimator.start();
        }

        @Override // android.view.View
        public final void draw(Canvas canvas) {
            int i;
            int height = TabLayout.this.f53914k.getBounds().height();
            int i2 = height;
            if (height < 0) {
                i2 = TabLayout.this.f53914k.getIntrinsicHeight();
            }
            int i3 = TabLayout.this.f53922s;
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
            if (TabLayout.this.f53914k.getBounds().width() > 0) {
                Rect bounds = TabLayout.this.f53914k.getBounds();
                TabLayout.this.f53914k.setBounds(bounds.left, i, bounds.right, i2);
                Drawable drawable = TabLayout.this.f53914k;
                Drawable drawable2 = drawable;
                if (TabLayout.this.f53888C != 0) {
                    drawable2 = C0840a.m44345f(drawable);
                    if (Build.VERSION.SDK_INT == 21) {
                        drawable2.setColorFilter(TabLayout.this.f53888C, PorterDuff.Mode.SRC_IN);
                    } else {
                        C0840a.m44357a(drawable2, TabLayout.this.f53888C);
                    }
                }
                drawable2.draw(canvas);
            }
            super.draw(canvas);
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ValueAnimator valueAnimator = this.f53946a;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                m10091a();
            } else {
                m10087a(false, this.f53947b, -1);
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected final void onMeasure(int i, int i2) {
            int i3;
            boolean z;
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) != 1073741824) {
                return;
            }
            if (TabLayout.this.f53920q != 1 && TabLayout.this.f53923t != 2) {
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
            if (i3 * childCount <= getMeasuredWidth() - (((int) C14654r.m10498a(getContext(), 16)) * 2)) {
                z = false;
                for (int i7 = 0; i7 < childCount; i7++) {
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i7).getLayoutParams();
                    if (layoutParams.width != i3 || layoutParams.weight != BitmapDescriptorFactory.HUE_RED) {
                        layoutParams.width = i3;
                        layoutParams.weight = BitmapDescriptorFactory.HUE_RED;
                        z = true;
                    }
                }
            } else {
                TabLayout.this.f53920q = 0;
                TabLayout.this.m10130a(false);
                z = true;
            }
            if (!z) {
                return;
            }
            super.onMeasure(i, i2);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public final void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
            if (Build.VERSION.SDK_INT >= 23 || this.f53950e == i) {
                return;
            }
            requestLayout();
            this.f53950e = i;
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$f */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout$f.class */
    public static final class C14778f {

        /* renamed from: a */
        public Object f53956a;

        /* renamed from: b */
        Drawable f53957b;

        /* renamed from: c */
        CharSequence f53958c;

        /* renamed from: d */
        CharSequence f53959d;

        /* renamed from: f */
        public View f53961f;

        /* renamed from: h */
        public TabLayout f53963h;

        /* renamed from: i */
        public TabView f53964i;

        /* renamed from: e */
        public int f53960e = -1;

        /* renamed from: g */
        int f53962g = 1;

        /* renamed from: j */
        int f53965j = -1;

        /* renamed from: a */
        public final C14778f m10085a(View view) {
            this.f53961f = view;
            m10082c();
            return this;
        }

        /* renamed from: a */
        public final C14778f m10084a(CharSequence charSequence) {
            if (TextUtils.isEmpty(this.f53959d) && !TextUtils.isEmpty(charSequence)) {
                this.f53964i.setContentDescription(charSequence);
            }
            this.f53958c = charSequence;
            m10082c();
            return this;
        }

        /* renamed from: a */
        public final void m10086a() {
            TabLayout tabLayout = this.f53963h;
            if (tabLayout != null) {
                tabLayout.m10134a(this);
                return;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        /* renamed from: b */
        public final boolean m10083b() {
            TabLayout tabLayout = this.f53963h;
            if (tabLayout != null) {
                return tabLayout.m10144a() == this.f53960e;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        /* renamed from: c */
        final void m10082c() {
            TabView tabView = this.f53964i;
            if (tabView != null) {
                tabView.m10112a();
            }
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$g */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout$g.class */
    public static final class C14779g implements ViewPager.AbstractC2936e {

        /* renamed from: a */
        private final WeakReference<TabLayout> f53966a;

        /* renamed from: b */
        private int f53967b;

        /* renamed from: c */
        private int f53968c;

        public C14779g(TabLayout tabLayout) {
            this.f53966a = new WeakReference<>(tabLayout);
        }

        /* renamed from: a */
        final void m10081a() {
            this.f53968c = 0;
            this.f53967b = 0;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
        public final void onPageScrollStateChanged(int i) {
            this.f53967b = this.f53968c;
            this.f53968c = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
        public final void onPageScrolled(int i, float f, int i2) {
            TabLayout tabLayout = this.f53966a.get();
            if (tabLayout != null) {
                int i3 = this.f53968c;
                boolean z = false;
                boolean z2 = i3 != 2 || this.f53967b == 1;
                if (i3 != 2 || this.f53967b != 0) {
                    z = true;
                }
                tabLayout.setScrollPosition(i, f, z2, z);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
        public final void onPageSelected(int i) {
            TabLayout tabLayout = this.f53966a.get();
            if (tabLayout == null || tabLayout.m10144a() == i || i >= tabLayout.f53904a.size()) {
                return;
            }
            int i2 = this.f53968c;
            tabLayout.m10132a(tabLayout.m10143a(i), i2 == 0 || (i2 == 2 && this.f53967b == 0));
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$h */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/tabs/TabLayout$h.class */
    public static class C14780h implements AbstractC14773c {

        /* renamed from: a */
        private final ViewPager f53969a;

        public C14780h(ViewPager viewPager) {
            this.f53969a = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.AbstractC14772b
        /* renamed from: a */
        public void mo10080a(C14778f c14778f) {
            this.f53969a.setCurrentItem(c14778f.f53960e);
        }

        @Override // com.google.android.material.tabs.TabLayout.AbstractC14772b
        /* renamed from: b */
        public void mo10079b(C14778f c14778f) {
        }

        @Override // com.google.android.material.tabs.TabLayout.AbstractC14772b
        /* renamed from: c */
        public void mo10078c(C14778f c14778f) {
        }
    }

    public TabLayout(Context context) {
        this(context, null);
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.tabStyle);
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

    /* renamed from: a */
    private int m10142a(int i, float f) {
        int i2 = this.f53923t;
        int i3 = 0;
        if (i2 == 0 || i2 == 2) {
            View childAt = this.f53905b.getChildAt(i);
            int i4 = i + 1;
            View childAt2 = i4 < this.f53905b.getChildCount() ? this.f53905b.getChildAt(i4) : null;
            int width = childAt != null ? childAt.getWidth() : 0;
            if (childAt2 != null) {
                i3 = childAt2.getWidth();
            }
            int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
            int i5 = (int) ((width + i3) * 0.5f * f);
            return C0926v.m44097f(this) == 0 ? left + i5 : left - i5;
        }
        return 0;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
    /* renamed from: a */
    private static ColorStateList m10141a(int i, int i2) {
        return new ColorStateList(new int[]{SELECTED_STATE_SET, EMPTY_STATE_SET}, new int[]{i2, i});
    }

    /* renamed from: a */
    private void m10140a(View view) {
        if (view instanceof TabItem) {
            m10136a((TabItem) view);
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    /* renamed from: a */
    private void m10139a(LinearLayout.LayoutParams layoutParams) {
        if (this.f53923t == 1 && this.f53920q == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
            return;
        }
        layoutParams.width = -2;
        layoutParams.weight = BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: a */
    private void m10138a(ViewPager viewPager, boolean z, boolean z2) {
        ViewPager viewPager2 = this.f53928y;
        if (viewPager2 != null) {
            C14779g c14779g = this.f53900O;
            if (c14779g != null) {
                viewPager2.removeOnPageChangeListener(c14779g);
            }
            C14771a c14771a = this.f53901P;
            if (c14771a != null) {
                this.f53928y.removeOnAdapterChangeListener(c14771a);
            }
        }
        AbstractC14772b abstractC14772b = this.f53896K;
        if (abstractC14772b != null) {
            m10127b(abstractC14772b);
            this.f53896K = null;
        }
        if (viewPager != null) {
            this.f53928y = viewPager;
            if (this.f53900O == null) {
                this.f53900O = new C14779g(this);
            }
            this.f53900O.m10081a();
            viewPager.addOnPageChangeListener(this.f53900O);
            C14780h c14780h = new C14780h(viewPager);
            this.f53896K = c14780h;
            m10135a(c14780h);
            AbstractC2941a adapter = viewPager.getAdapter();
            if (adapter != null) {
                m10137a(adapter, z);
            }
            if (this.f53901P == null) {
                this.f53901P = new C14771a();
            }
            this.f53901P.f53943a = z;
            viewPager.addOnAdapterChangeListener(this.f53901P);
            setScrollPosition(viewPager.getCurrentItem(), BitmapDescriptorFactory.HUE_RED, true);
        } else {
            this.f53928y = null;
            m10137a((AbstractC2941a) null, false);
        }
        this.f53902Q = z2;
    }

    /* renamed from: a */
    private void m10136a(TabItem tabItem) {
        C14778f m10123c = m10123c();
        if (tabItem.f53882a != null) {
            m10123c.m10084a(tabItem.f53882a);
        }
        if (tabItem.f53883b != null) {
            m10123c.f53957b = tabItem.f53883b;
            if (m10123c.f53963h.f53920q == 1 || m10123c.f53963h.f53923t == 2) {
                m10123c.f53963h.m10130a(true);
            }
            m10123c.m10082c();
            if (C14419a.f52510a && m10123c.f53964i.m10093g() && m10123c.f53964i.f53938i.isVisible()) {
                m10123c.f53964i.invalidate();
            }
        }
        if (tabItem.f53884c != 0) {
            m10123c.m10085a(LayoutInflater.from(m10123c.f53964i.getContext()).inflate(tabItem.f53884c, (ViewGroup) m10123c.f53964i, false));
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            m10123c.f53959d = tabItem.getContentDescription();
            m10123c.m10082c();
        }
        m10125b(m10123c, this.f53904a.isEmpty());
    }

    /* renamed from: a */
    private void m10133a(C14778f c14778f, int i) {
        c14778f.f53960e = i;
        this.f53904a.add(i, c14778f);
        int size = this.f53904a.size();
        while (true) {
            i++;
            if (i < size) {
                this.f53904a.get(i).f53960e = i;
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    private TabView m10126b(C14778f c14778f) {
        C0829c.AbstractC0830a<TabView> abstractC0830a = this.f53903R;
        TabView mo37607a = abstractC0830a != null ? abstractC0830a.mo37607a() : null;
        TabView tabView = mo37607a;
        if (mo37607a == null) {
            tabView = new TabView(getContext());
        }
        tabView.m10104a(c14778f);
        tabView.setFocusable(true);
        tabView.setMinimumWidth(m10113h());
        if (TextUtils.isEmpty(c14778f.f53959d)) {
            tabView.setContentDescription(c14778f.f53958c);
        } else {
            tabView.setContentDescription(c14778f.f53959d);
        }
        return tabView;
    }

    /* renamed from: b */
    private void m10128b(int i) {
        boolean z;
        if (i == -1) {
            return;
        }
        if (getWindowToken() != null && C0926v.m44157B(this)) {
            C14775e c14775e = this.f53905b;
            int childCount = c14775e.getChildCount();
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    z = false;
                    break;
                } else if (c14775e.getChildAt(i2).getWidth() <= 0) {
                    z = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (!z) {
                int scrollX = getScrollX();
                int m10142a = m10142a(i, BitmapDescriptorFactory.HUE_RED);
                if (scrollX != m10142a) {
                    if (this.f53897L == null) {
                        ValueAnimator valueAnimator = new ValueAnimator();
                        this.f53897L = valueAnimator;
                        valueAnimator.setInterpolator(C14389a.f52369b);
                        this.f53897L.setDuration(this.f53921r);
                        this.f53897L.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.tabs.TabLayout.1
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                                TabLayout.this.scrollTo(((Integer) valueAnimator2.getAnimatedValue()).intValue(), 0);
                            }
                        });
                    }
                    this.f53897L.setIntValues(scrollX, m10142a);
                    this.f53897L.start();
                }
                C14775e c14775e2 = this.f53905b;
                int i3 = this.f53921r;
                if (c14775e2.f53946a != null && c14775e2.f53946a.isRunning()) {
                    c14775e2.f53946a.cancel();
                }
                c14775e2.m10087a(true, i, i3);
                return;
            }
        }
        setScrollPosition(i, BitmapDescriptorFactory.HUE_RED, true);
    }

    @Deprecated
    /* renamed from: b */
    private void m10127b(AbstractC14772b abstractC14772b) {
        this.f53895J.remove(abstractC14772b);
    }

    /* renamed from: b */
    private void m10125b(C14778f c14778f, boolean z) {
        int size = this.f53904a.size();
        if (c14778f.f53963h == this) {
            m10133a(c14778f, size);
            TabView tabView = c14778f.f53964i;
            tabView.setSelected(false);
            tabView.setActivated(false);
            C14775e c14775e = this.f53905b;
            int i = c14778f.f53960e;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
            m10139a(layoutParams);
            c14775e.addView(tabView, i, layoutParams);
            if (!z) {
                return;
            }
            c14778f.m10086a();
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    /* renamed from: c */
    private C14778f m10123c() {
        C14778f m10120d = m10120d();
        m10120d.f53963h = this;
        m10120d.f53964i = m10126b(m10120d);
        if (m10120d.f53965j != -1) {
            m10120d.f53964i.setId(m10120d.f53965j);
        }
        return m10120d;
    }

    /* renamed from: c */
    private void m10122c(int i) {
        int childCount = this.f53905b.getChildCount();
        if (i < childCount) {
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = this.f53905b.getChildAt(i2);
                childAt.setSelected(i2 == i);
                childAt.setActivated(i2 == i);
                i2++;
            }
        }
    }

    /* renamed from: c */
    private void m10121c(C14778f c14778f) {
        for (int size = this.f53895J.size() - 1; size >= 0; size--) {
            this.f53895J.get(size).mo10080a(c14778f);
        }
    }

    /* renamed from: d */
    private static C14778f m10120d() {
        C14778f mo37607a = f53885A.mo37607a();
        C14778f c14778f = mo37607a;
        if (mo37607a == null) {
            c14778f = new C14778f();
        }
        return c14778f;
    }

    /* renamed from: d */
    private void m10119d(int i) {
        if (i == 0) {
            Log.w("TabLayout", "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
        } else if (i == 1) {
            this.f53905b.setGravity(1);
            return;
        } else if (i != 2) {
            return;
        }
        this.f53905b.setGravity(8388611);
    }

    /* renamed from: d */
    private void m10118d(C14778f c14778f) {
        for (int size = this.f53895J.size() - 1; size >= 0; size--) {
            this.f53895J.get(size).mo10079b(c14778f);
        }
    }

    /* renamed from: e */
    private void m10117e() {
        for (int childCount = this.f53905b.getChildCount() - 1; childCount >= 0; childCount--) {
            TabView tabView = (TabView) this.f53905b.getChildAt(childCount);
            this.f53905b.removeViewAt(childCount);
            if (tabView != null) {
                tabView.m10104a((C14778f) null);
                tabView.setSelected(false);
                this.f53903R.mo37606a(tabView);
            }
            requestLayout();
        }
        Iterator<C14778f> it2 = this.f53904a.iterator();
        while (it2.hasNext()) {
            C14778f next = it2.next();
            it2.remove();
            next.f53963h = null;
            next.f53964i = null;
            next.f53956a = null;
            next.f53957b = null;
            next.f53965j = -1;
            next.f53958c = null;
            next.f53959d = null;
            next.f53960e = -1;
            next.f53961f = null;
            f53885A.mo37606a(next);
        }
        this.f53887B = null;
    }

    /* renamed from: e */
    private void m10116e(C14778f c14778f) {
        for (int size = this.f53895J.size() - 1; size >= 0; size--) {
            this.f53895J.get(size).mo10078c(c14778f);
        }
    }

    /* renamed from: f */
    private void m10115f() {
        int size = this.f53904a.size();
        for (int i = 0; i < size; i++) {
            this.f53904a.get(i).m10082c();
        }
    }

    /* renamed from: g */
    private void m10114g() {
        int i = this.f53923t;
        C0926v.m44109b(this.f53905b, (i == 0 || i == 2) ? Math.max(0, this.f53892G - this.f53906c) : 0, 0, 0, 0);
        int i2 = this.f53923t;
        if (i2 == 0) {
            m10119d(this.f53920q);
        } else if (i2 == 1 || i2 == 2) {
            if (this.f53920q == 2) {
                Log.w("TabLayout", "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
            }
            this.f53905b.setGravity(1);
        }
        m10130a(true);
    }

    /* renamed from: h */
    private int m10113h() {
        int i = this.f53889D;
        if (i != -1) {
            return i;
        }
        int i2 = this.f53923t;
        if (i2 != 0 && i2 != 2) {
            return 0;
        }
        return this.f53891F;
    }

    /* renamed from: a */
    public final int m10144a() {
        C14778f c14778f = this.f53887B;
        if (c14778f != null) {
            return c14778f.f53960e;
        }
        return -1;
    }

    /* renamed from: a */
    public final C14778f m10143a(int i) {
        if (i < 0 || i >= this.f53904a.size()) {
            return null;
        }
        return this.f53904a.get(i);
    }

    /* renamed from: a */
    final void m10137a(AbstractC2941a abstractC2941a, boolean z) {
        DataSetObserver dataSetObserver;
        AbstractC2941a abstractC2941a2 = this.f53898M;
        if (abstractC2941a2 != null && (dataSetObserver = this.f53899N) != null) {
            abstractC2941a2.m39590b(dataSetObserver);
        }
        this.f53898M = abstractC2941a;
        if (z && abstractC2941a != null) {
            if (this.f53899N == null) {
                this.f53899N = new C14774d();
            }
            abstractC2941a.m39594a(this.f53899N);
        }
        m10129b();
    }

    @Deprecated
    /* renamed from: a */
    public final void m10135a(AbstractC14772b abstractC14772b) {
        if (!this.f53895J.contains(abstractC14772b)) {
            this.f53895J.add(abstractC14772b);
        }
    }

    /* renamed from: a */
    public final void m10134a(C14778f c14778f) {
        m10132a(c14778f, true);
    }

    /* renamed from: a */
    public final void m10132a(C14778f c14778f, boolean z) {
        C14778f c14778f2 = this.f53887B;
        if (c14778f2 == c14778f) {
            if (c14778f2 == null) {
                return;
            }
            m10116e(c14778f);
            m10128b(c14778f.f53960e);
            return;
        }
        int i = c14778f != null ? c14778f.f53960e : -1;
        if (z) {
            if ((c14778f2 == null || c14778f2.f53960e == -1) && i != -1) {
                setScrollPosition(i, BitmapDescriptorFactory.HUE_RED, true);
            } else {
                m10128b(i);
            }
            if (i != -1) {
                m10122c(i);
            }
        }
        this.f53887B = c14778f;
        if (c14778f2 != null) {
            m10118d(c14778f2);
        }
        if (c14778f == null) {
            return;
        }
        m10121c(c14778f);
    }

    /* renamed from: a */
    final void m10130a(boolean z) {
        for (int i = 0; i < this.f53905b.getChildCount(); i++) {
            View childAt = this.f53905b.getChildAt(i);
            childAt.setMinimumWidth(m10113h());
            m10139a((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z) {
                childAt.requestLayout();
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        m10140a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i) {
        m10140a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        m10140a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        m10140a(view);
    }

    /* renamed from: b */
    final void m10129b() {
        int currentItem;
        m10117e();
        AbstractC2941a abstractC2941a = this.f53898M;
        if (abstractC2941a != null) {
            int count = abstractC2941a.getCount();
            for (int i = 0; i < count; i++) {
                m10125b(m10123c().m10084a(this.f53898M.getPageTitle(i)), false);
            }
            ViewPager viewPager = this.f53928y;
            if (viewPager == null || count <= 0 || (currentItem = viewPager.getCurrentItem()) == m10144a() || currentItem >= this.f53904a.size()) {
                return;
            }
            m10132a(m10143a(currentItem), true);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C14674i.m10437a(this);
        if (this.f53928y == null) {
            ViewParent parent = getParent();
            if (!(parent instanceof ViewPager)) {
                return;
            }
            m10138a((ViewPager) parent, true, true);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f53902Q) {
            setupWithViewPager(null);
            this.f53902Q = false;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        for (int i = 0; i < this.f53905b.getChildCount(); i++) {
            View childAt = this.f53905b.getChildAt(i);
            if (childAt instanceof TabView) {
                TabView.m10106a((TabView) childAt, canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        C0869c.m44278a(accessibilityNodeInfo).m44274a(C0869c.C0871b.m44235a(1, this.f53904a.size(), false, 1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x012c, code lost:
        if (r0.getMeasuredWidth() != getMeasuredWidth()) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x012f, code lost:
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x013f, code lost:
        if (r0.getMeasuredWidth() < getMeasuredWidth()) goto L48;
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
    public void setElevation(float f) {
        super.setElevation(f);
        C14674i.m10436a(this, f);
    }

    public void setInlineLabel(boolean z) {
        if (this.f53924u != z) {
            this.f53924u = z;
            for (int i = 0; i < this.f53905b.getChildCount(); i++) {
                View childAt = this.f53905b.getChildAt(i);
                if (childAt instanceof TabView) {
                    TabView tabView = (TabView) childAt;
                    tabView.setOrientation(!TabLayout.this.f53924u ? 1 : 0);
                    if (tabView.f53933d == null && tabView.f53934e == null) {
                        tabView.m10109a(tabView.f53930a, tabView.f53931b);
                    } else {
                        tabView.m10109a(tabView.f53933d, tabView.f53934e);
                    }
                }
            }
            m10114g();
        }
    }

    public void setInlineLabelResource(int i) {
        setInlineLabel(getResources().getBoolean(i));
    }

    @Deprecated
    public void setOnTabSelectedListener(AbstractC14772b abstractC14772b) {
        AbstractC14772b abstractC14772b2 = this.f53894I;
        if (abstractC14772b2 != null) {
            m10127b(abstractC14772b2);
        }
        this.f53894I = abstractC14772b;
        if (abstractC14772b != null) {
            m10135a(abstractC14772b);
        }
    }

    @Deprecated
    public void setOnTabSelectedListener(AbstractC14773c abstractC14773c) {
        setOnTabSelectedListener((AbstractC14772b) abstractC14773c);
    }

    public void setScrollPosition(int i, float f, boolean z) {
        setScrollPosition(i, f, z, true);
    }

    public void setScrollPosition(int i, float f, boolean z, boolean z2) {
        int round = Math.round(i + f);
        if (round < 0 || round >= this.f53905b.getChildCount()) {
            return;
        }
        if (z2) {
            C14775e c14775e = this.f53905b;
            if (c14775e.f53946a != null && c14775e.f53946a.isRunning()) {
                c14775e.f53946a.cancel();
            }
            c14775e.f53947b = i;
            c14775e.f53948c = f;
            c14775e.m10089a(c14775e.getChildAt(c14775e.f53947b), c14775e.getChildAt(c14775e.f53947b + 1), c14775e.f53948c);
        }
        ValueAnimator valueAnimator = this.f53897L;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f53897L.cancel();
        }
        scrollTo(m10142a(i, f), 0);
        if (!z) {
            return;
        }
        m10122c(round);
    }

    public void setSelectedTabIndicator(int i) {
        if (i != 0) {
            setSelectedTabIndicator(C0153a.m46374b(getContext(), i));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    public void setSelectedTabIndicator(Drawable drawable) {
        if (this.f53914k != drawable) {
            if (drawable == null) {
                drawable = new GradientDrawable();
            }
            this.f53914k = drawable;
        }
    }

    public void setSelectedTabIndicatorColor(int i) {
        this.f53888C = i;
    }

    public void setSelectedTabIndicatorGravity(int i) {
        if (this.f53922s != i) {
            this.f53922s = i;
            C0926v.m44101d(this.f53905b);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i) {
        this.f53905b.m10090a(i);
    }

    public void setTabGravity(int i) {
        if (this.f53920q != i) {
            this.f53920q = i;
            m10114g();
        }
    }

    public void setTabIconTint(ColorStateList colorStateList) {
        if (this.f53912i != colorStateList) {
            this.f53912i = colorStateList;
            m10115f();
        }
    }

    public void setTabIconTintResource(int i) {
        setTabIconTint(C0153a.m46375a(getContext(), i));
    }

    public void setTabIndicatorAnimationMode(int i) {
        this.f53926w = i;
        if (i == 0) {
            this.f53893H = new C14782b();
        } else if (i == 1) {
            this.f53893H = new C14781a();
        } else {
            throw new IllegalArgumentException(i + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.f53925v = z;
        C0926v.m44101d(this.f53905b);
    }

    public void setTabMode(int i) {
        if (i != this.f53923t) {
            this.f53923t = i;
            m10114g();
        }
    }

    public void setTabRippleColor(ColorStateList colorStateList) {
        if (this.f53913j != colorStateList) {
            this.f53913j = colorStateList;
            for (int i = 0; i < this.f53905b.getChildCount(); i++) {
                View childAt = this.f53905b.getChildAt(i);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).m10111a(getContext());
                }
            }
        }
    }

    public void setTabRippleColorResource(int i) {
        setTabRippleColor(C0153a.m46375a(getContext(), i));
    }

    public void setTabTextColors(int i, int i2) {
        setTabTextColors(m10141a(i, i2));
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.f53911h != colorStateList) {
            this.f53911h = colorStateList;
            m10115f();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(AbstractC2941a abstractC2941a) {
        m10137a(abstractC2941a, false);
    }

    public void setUnboundedRipple(boolean z) {
        if (this.f53927x != z) {
            this.f53927x = z;
            for (int i = 0; i < this.f53905b.getChildCount(); i++) {
                View childAt = this.f53905b.getChildAt(i);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).m10111a(getContext());
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
        m10138a(viewPager, z, false);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return Math.max(0, ((this.f53905b.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight()) > 0;
    }
}
