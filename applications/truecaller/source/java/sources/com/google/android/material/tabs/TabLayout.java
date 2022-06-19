package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.C2080R;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeDrawable$SavedState;
import e.m.a.g.o.n;
import e.m.a.g.s.a;
import e.m.a.g.u.h;
import e.m.a.g.x.b;
import e.m.a.g.x.c;
import e.m.a.g.x.d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import n3.k.h.g;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1789g0.C26232y;
import p1727n3.p1807k.p1820h.AbstractC26555e;
import p1727n3.p1807k.p1821i.C26613r;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1807k.p1821i.p1822f0.C26584b;
import p1727n3.p1825k0.p1826a.AbstractC26640a;
import p193e.p1577m.p1578a.p1677g.p1678a.C25156a;
@ViewPager.AbstractC0391d
/* loaded from: classes3-dex2jar.jar:com/google/android/material/tabs/TabLayout.class */
public class TabLayout extends HorizontalScrollView {

    /* renamed from: U */
    public static final int f6792U = C2080R.style.Widget_Design_TabLayout;

    /* renamed from: V */
    public static final AbstractC26555e<C2114g> f6793V = new g(16);

    /* renamed from: A */
    public boolean f6794A;

    /* renamed from: B */
    public boolean f6795B;

    /* renamed from: C */
    public int f6796C;

    /* renamed from: D */
    public boolean f6797D;

    /* renamed from: E */
    public b f6798E;

    /* renamed from: J */
    public AbstractC2109c f6799J;

    /* renamed from: K */
    public final ArrayList<AbstractC2109c> f6800K;

    /* renamed from: L */
    public AbstractC2109c f6801L;

    /* renamed from: M */
    public ValueAnimator f6802M;

    /* renamed from: N */
    public ViewPager f6803N;

    /* renamed from: O */
    public AbstractC26640a f6804O;

    /* renamed from: P */
    public DataSetObserver f6805P;

    /* renamed from: Q */
    public h f6806Q;

    /* renamed from: R */
    public b f6807R;

    /* renamed from: S */
    public boolean f6808S;

    /* renamed from: T */
    public final AbstractC26555e<C2115i> f6809T;

    /* renamed from: a */
    public final ArrayList<C2114g> f6810a;

    /* renamed from: b */
    public C2114g f6811b;

    /* renamed from: c */
    public final C2111f f6812c;

    /* renamed from: d */
    public int f6813d;

    /* renamed from: e */
    public int f6814e;

    /* renamed from: f */
    public int f6815f;

    /* renamed from: g */
    public int f6816g;

    /* renamed from: h */
    public int f6817h;

    /* renamed from: i */
    public ColorStateList f6818i;

    /* renamed from: j */
    public ColorStateList f6819j;

    /* renamed from: k */
    public ColorStateList f6820k;

    /* renamed from: l */
    public Drawable f6821l;

    /* renamed from: m */
    public int f6822m;

    /* renamed from: n */
    public PorterDuff.Mode f6823n;

    /* renamed from: o */
    public float f6824o;

    /* renamed from: p */
    public float f6825p;

    /* renamed from: q */
    public final int f6826q;

    /* renamed from: r */
    public int f6827r;

    /* renamed from: s */
    public final int f6828s;

    /* renamed from: t */
    public final int f6829t;

    /* renamed from: u */
    public final int f6830u;

    /* renamed from: v */
    public int f6831v;

    /* renamed from: w */
    public int f6832w;

    /* renamed from: x */
    public int f6833x;

    /* renamed from: y */
    public int f6834y;

    /* renamed from: z */
    public int f6835z;

    /* renamed from: com.google.android.material.tabs.TabLayout$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/tabs/TabLayout$a.class */
    public class C2108a implements ValueAnimator.AnimatorUpdateListener {
        public C2108a() {
            TabLayout.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    @Deprecated
    /* renamed from: com.google.android.material.tabs.TabLayout$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/tabs/TabLayout$c.class */
    public interface AbstractC2109c<T extends C2114g> {
        /* renamed from: a */
        void m38380a(T t);

        /* renamed from: b */
        void m38379b(T t);

        /* renamed from: c */
        void m38378c(T t);
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/tabs/TabLayout$e.class */
    public class C2110e extends DataSetObserver {
        public C2110e() {
            TabLayout.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabLayout.this.m38387j();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TabLayout.this.m38387j();
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$f */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/tabs/TabLayout$f.class */
    public class C2111f extends LinearLayout {

        /* renamed from: a */
        public ValueAnimator f6838a;

        /* renamed from: c */
        public float f6840c;

        /* renamed from: b */
        public int f6839b = -1;

        /* renamed from: d */
        public int f6841d = -1;

        /* renamed from: com.google.android.material.tabs.TabLayout$f$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/material/tabs/TabLayout$f$a.class */
        public class C2112a implements ValueAnimator.AnimatorUpdateListener {

            /* renamed from: a */
            public final /* synthetic */ View f6843a;

            /* renamed from: b */
            public final /* synthetic */ View f6844b;

            public C2112a(View view, View view2) {
                C2111f.this = r4;
                this.f6843a = view;
                this.f6844b = view2;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                C2111f.this.m38375c(this.f6843a, this.f6844b, valueAnimator.getAnimatedFraction());
            }
        }

        /* renamed from: com.google.android.material.tabs.TabLayout$f$b */
        /* loaded from: classes3-dex2jar.jar:com/google/android/material/tabs/TabLayout$f$b.class */
        public class C2113b extends AnimatorListenerAdapter {

            /* renamed from: a */
            public final /* synthetic */ int f6846a;

            public C2113b(int i) {
                C2111f.this = r4;
                this.f6846a = i;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                C2111f.this.f6839b = this.f6846a;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                C2111f.this.f6839b = this.f6846a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2111f(Context context) {
            super(context);
            TabLayout.this = r4;
            setWillNotDraw(false);
        }

        /* renamed from: a */
        public final void m38377a() {
            View childAt = getChildAt(this.f6839b);
            TabLayout tabLayout = TabLayout.this;
            b bVar = tabLayout.f6798E;
            Drawable drawable = tabLayout.f6821l;
            Objects.requireNonNull(bVar);
            RectF a = b.a(tabLayout, childAt);
            drawable.setBounds((int) a.left, drawable.getBounds().top, (int) a.right, drawable.getBounds().bottom);
        }

        /* renamed from: b */
        public void m38376b(int i) {
            Rect bounds = TabLayout.this.f6821l.getBounds();
            TabLayout.this.f6821l.setBounds(bounds.left, 0, bounds.right, i);
            requestLayout();
        }

        /* renamed from: c */
        public final void m38375c(View view, View view2, float f) {
            if (view != null && view.getWidth() > 0) {
                TabLayout tabLayout = TabLayout.this;
                tabLayout.f6798E.b(tabLayout, view, view2, f, tabLayout.f6821l);
            } else {
                Drawable drawable = TabLayout.this.f6821l;
                drawable.setBounds(-1, drawable.getBounds().top, -1, TabLayout.this.f6821l.getBounds().bottom);
            }
            AtomicInteger atomicInteger = C26614s.f74505a;
            postInvalidateOnAnimation();
        }

        /* renamed from: d */
        public final void m38374d(boolean z, int i, int i2) {
            View childAt = getChildAt(this.f6839b);
            View childAt2 = getChildAt(i);
            if (childAt2 == null) {
                m38377a();
                return;
            }
            C2112a c2112a = new C2112a(childAt, childAt2);
            if (!z) {
                this.f6838a.removeAllUpdateListeners();
                this.f6838a.addUpdateListener(c2112a);
                return;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f6838a = valueAnimator;
            valueAnimator.setInterpolator(C25156a.f70398b);
            valueAnimator.setDuration(i2);
            valueAnimator.setFloatValues(0.0f, 1.0f);
            valueAnimator.addUpdateListener(c2112a);
            valueAnimator.addListener(new C2113b(i));
            valueAnimator.start();
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            int i;
            int height = TabLayout.this.f6821l.getBounds().height();
            int i2 = height;
            if (height < 0) {
                i2 = TabLayout.this.f6821l.getIntrinsicHeight();
            }
            int i3 = TabLayout.this.f6834y;
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
            if (TabLayout.this.f6821l.getBounds().width() > 0) {
                Rect bounds = TabLayout.this.f6821l.getBounds();
                TabLayout.this.f6821l.setBounds(bounds.left, i, bounds.right, i2);
                TabLayout tabLayout = TabLayout.this;
                Drawable drawable = tabLayout.f6821l;
                int i4 = tabLayout.f6822m;
                if (i4 != 0) {
                    drawable.setTint(i4);
                }
                drawable.draw(canvas);
            }
            super.draw(canvas);
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ValueAnimator valueAnimator = this.f6838a;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                m38377a();
            } else {
                m38374d(false, this.f6839b, -1);
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            int i3;
            boolean z;
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.f6832w != 1 && tabLayout.f6835z != 2) {
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
            if (i3 * childCount <= getMeasuredWidth() - (((int) C26232y.m2428P(getContext(), 16)) * 2)) {
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
                tabLayout2.f6832w = 0;
                tabLayout2.m38381r(false);
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
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$g */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/tabs/TabLayout$g.class */
    public static class C2114g {

        /* renamed from: a */
        public Drawable f6848a;

        /* renamed from: b */
        public CharSequence f6849b;

        /* renamed from: c */
        public CharSequence f6850c;

        /* renamed from: e */
        public View f6852e;

        /* renamed from: f */
        public TabLayout f6853f;

        /* renamed from: g */
        public C2115i f6854g;

        /* renamed from: d */
        public int f6851d = -1;

        /* renamed from: h */
        public int f6855h = -1;

        /* renamed from: a */
        public C2114g m38373a(Drawable drawable) {
            this.f6848a = drawable;
            TabLayout tabLayout = this.f6853f;
            if (tabLayout.f6832w == 1 || tabLayout.f6835z == 2) {
                tabLayout.m38381r(true);
            }
            m38371c();
            return this;
        }

        /* renamed from: b */
        public C2114g m38372b(CharSequence charSequence) {
            if (TextUtils.isEmpty(this.f6850c) && !TextUtils.isEmpty(charSequence)) {
                this.f6854g.setContentDescription(charSequence);
            }
            this.f6849b = charSequence;
            m38371c();
            return this;
        }

        /* renamed from: c */
        public void m38371c() {
            C2115i c2115i = this.f6854g;
            if (c2115i != null) {
                c2115i.m38365f();
            }
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$i */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/tabs/TabLayout$i.class */
    public final class C2115i extends LinearLayout {

        /* renamed from: l */
        public static final /* synthetic */ int f6856l = 0;

        /* renamed from: a */
        public C2114g f6857a;

        /* renamed from: b */
        public TextView f6858b;

        /* renamed from: c */
        public ImageView f6859c;

        /* renamed from: d */
        public View f6860d;

        /* renamed from: e */
        public BadgeDrawable f6861e;

        /* renamed from: f */
        public View f6862f;

        /* renamed from: g */
        public TextView f6863g;

        /* renamed from: h */
        public ImageView f6864h;

        /* renamed from: i */
        public Drawable f6865i;

        /* renamed from: j */
        public int f6866j = 2;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2115i(Context context) {
            super(context);
            TabLayout.this = r7;
            m38364g(context);
            int i = r7.f6813d;
            int i2 = r7.f6814e;
            int i3 = r7.f6815f;
            int i4 = r7.f6816g;
            AtomicInteger atomicInteger = C26614s.f74505a;
            setPaddingRelative(i, i2, i3, i4);
            setGravity(17);
            setOrientation(!r7.f6794A ? 1 : 0);
            setClickable(true);
            Context context2 = getContext();
            int i5 = Build.VERSION.SDK_INT;
            C26613r c26613r = i5 >= 24 ? new C26613r(PointerIcon.getSystemIcon(context2, 1002)) : new C26613r(null);
            if (i5 >= 24) {
                setPointerIcon((PointerIcon) c26613r.f74504a);
            }
        }

        private BadgeDrawable getBadge() {
            return this.f6861e;
        }

        private BadgeDrawable getOrCreateBadge() {
            if (this.f6861e == null) {
                Context context = getContext();
                int i = BadgeDrawable.r;
                int i2 = BadgeDrawable.q;
                BadgeDrawable badgeDrawable = new BadgeDrawable(context);
                int[] iArr = C2080R.styleable.Badge;
                FrameLayout frameLayout = null;
                n.a(context, (AttributeSet) null, i, i2);
                n.b(context, (AttributeSet) null, iArr, i, i2, new int[0]);
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, iArr, i, i2);
                int i3 = obtainStyledAttributes.getInt(C2080R.styleable.Badge_maxCharacterCount, 4);
                BadgeDrawable$SavedState badgeDrawable$SavedState = badgeDrawable.h;
                if (badgeDrawable$SavedState.f6631e != i3) {
                    badgeDrawable$SavedState.f6631e = i3;
                    badgeDrawable.k = ((int) Math.pow(10.0d, i3 - 1.0d)) - 1;
                    badgeDrawable.c.d = true;
                    badgeDrawable.g();
                    badgeDrawable.invalidateSelf();
                }
                int i4 = C2080R.styleable.Badge_number;
                if (obtainStyledAttributes.hasValue(i4)) {
                    int max = Math.max(0, obtainStyledAttributes.getInt(i4, 0));
                    BadgeDrawable$SavedState badgeDrawable$SavedState2 = badgeDrawable.h;
                    if (badgeDrawable$SavedState2.f6630d != max) {
                        badgeDrawable$SavedState2.f6630d = max;
                        badgeDrawable.c.d = true;
                        badgeDrawable.g();
                        badgeDrawable.invalidateSelf();
                    }
                }
                int defaultColor = C26232y.m2368d0(context, obtainStyledAttributes, C2080R.styleable.Badge_backgroundColor).getDefaultColor();
                badgeDrawable.h.f6627a = defaultColor;
                ColorStateList valueOf = ColorStateList.valueOf(defaultColor);
                h hVar = badgeDrawable.b;
                if (hVar.a.d != valueOf) {
                    hVar.q(valueOf);
                    badgeDrawable.invalidateSelf();
                }
                int i5 = C2080R.styleable.Badge_badgeTextColor;
                if (obtainStyledAttributes.hasValue(i5)) {
                    int defaultColor2 = C26232y.m2368d0(context, obtainStyledAttributes, i5).getDefaultColor();
                    badgeDrawable.h.f6628b = defaultColor2;
                    if (badgeDrawable.c.a.getColor() != defaultColor2) {
                        badgeDrawable.c.a.setColor(defaultColor2);
                        badgeDrawable.invalidateSelf();
                    }
                }
                int i6 = obtainStyledAttributes.getInt(C2080R.styleable.Badge_badgeGravity, 8388661);
                BadgeDrawable$SavedState badgeDrawable$SavedState3 = badgeDrawable.h;
                if (badgeDrawable$SavedState3.f6635i != i6) {
                    badgeDrawable$SavedState3.f6635i = i6;
                    WeakReference weakReference = badgeDrawable.o;
                    if (weakReference != null && weakReference.get() != null) {
                        View view = (View) badgeDrawable.o.get();
                        WeakReference weakReference2 = badgeDrawable.p;
                        if (weakReference2 != null) {
                            frameLayout = (FrameLayout) weakReference2.get();
                        }
                        badgeDrawable.f(view, frameLayout);
                    }
                }
                badgeDrawable.h.f6637k = obtainStyledAttributes.getDimensionPixelOffset(C2080R.styleable.Badge_horizontalOffset, 0);
                badgeDrawable.g();
                badgeDrawable.h.f6638l = obtainStyledAttributes.getDimensionPixelOffset(C2080R.styleable.Badge_verticalOffset, 0);
                badgeDrawable.g();
                obtainStyledAttributes.recycle();
                this.f6861e = badgeDrawable;
            }
            m38367d();
            BadgeDrawable badgeDrawable2 = this.f6861e;
            if (badgeDrawable2 != null) {
                return badgeDrawable2;
            }
            throw new IllegalStateException("Unable to create badge");
        }

        /* renamed from: a */
        public final boolean m38370a() {
            return this.f6861e != null;
        }

        /* renamed from: b */
        public final void m38369b(View view) {
            if (m38370a() && view != null) {
                setClipChildren(false);
                setClipToPadding(false);
                ViewGroup viewGroup = (ViewGroup) getParent();
                if (viewGroup != null) {
                    viewGroup.setClipChildren(false);
                    viewGroup.setClipToPadding(false);
                }
                Drawable drawable = this.f6861e;
                Rect rect = new Rect();
                view.getDrawingRect(rect);
                drawable.setBounds(rect);
                drawable.f(view, (FrameLayout) null);
                if (drawable.c() != null) {
                    drawable.c().setForeground(drawable);
                } else {
                    view.getOverlay().add(drawable);
                }
                this.f6860d = view;
            }
        }

        /* renamed from: c */
        public final void m38368c() {
            if (!m38370a()) {
                return;
            }
            setClipChildren(true);
            setClipToPadding(true);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(true);
                viewGroup.setClipToPadding(true);
            }
            View view = this.f6860d;
            if (view == null) {
                return;
            }
            BadgeDrawable badgeDrawable = this.f6861e;
            if (badgeDrawable != null) {
                if (badgeDrawable.c() != null) {
                    badgeDrawable.c().setForeground(null);
                } else {
                    view.getOverlay().remove(badgeDrawable);
                }
            }
            this.f6860d = null;
        }

        /* renamed from: d */
        public final void m38367d() {
            C2114g c2114g;
            C2114g c2114g2;
            if (!m38370a()) {
                return;
            }
            if (this.f6862f != null) {
                m38368c();
                return;
            }
            ImageView imageView = this.f6859c;
            if (imageView != null && (c2114g2 = this.f6857a) != null && c2114g2.f6848a != null) {
                if (this.f6860d == imageView) {
                    m38366e(imageView);
                    return;
                }
                m38368c();
                m38369b(this.f6859c);
            } else if (this.f6858b == null || (c2114g = this.f6857a) == null) {
                m38368c();
            } else {
                Objects.requireNonNull(c2114g);
                View view = this.f6860d;
                TextView textView = this.f6858b;
                if (view == textView) {
                    m38366e(textView);
                    return;
                }
                m38368c();
                m38369b(this.f6858b);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.f6865i;
            boolean z = false;
            if (drawable != null) {
                z = false;
                if (drawable.isStateful()) {
                    z = false | this.f6865i.setState(drawableState);
                }
            }
            if (z) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        /* renamed from: e */
        public final void m38366e(View view) {
            if (!m38370a() || view != this.f6860d) {
                return;
            }
            BadgeDrawable badgeDrawable = this.f6861e;
            Rect rect = new Rect();
            view.getDrawingRect(rect);
            badgeDrawable.setBounds(rect);
            badgeDrawable.f(view, (FrameLayout) null);
        }

        /* renamed from: f */
        public final void m38365f() {
            C2114g c2114g = this.f6857a;
            View view = c2114g != null ? c2114g.f6852e : null;
            if (view != null) {
                ViewParent parent = view.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(view);
                    }
                    addView(view);
                }
                this.f6862f = view;
                TextView textView = this.f6858b;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f6859c;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f6859c.setImageDrawable(null);
                }
                TextView textView2 = (TextView) view.findViewById(16908308);
                this.f6863g = textView2;
                if (textView2 != null) {
                    this.f6866j = textView2.getMaxLines();
                }
                this.f6864h = (ImageView) view.findViewById(16908294);
            } else {
                View view2 = this.f6862f;
                if (view2 != null) {
                    removeView(view2);
                    this.f6862f = null;
                }
                this.f6863g = null;
                this.f6864h = null;
            }
            if (this.f6862f == null) {
                if (this.f6859c == null) {
                    ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(C2080R.layout.design_layout_tab_icon, (ViewGroup) this, false);
                    this.f6859c = imageView2;
                    addView(imageView2, 0);
                }
                Drawable drawable = null;
                if (c2114g != null) {
                    Drawable drawable2 = c2114g.f6848a;
                    drawable = null;
                    if (drawable2 != null) {
                        drawable = drawable2.mutate();
                    }
                }
                if (drawable != null) {
                    drawable.setTintList(TabLayout.this.f6819j);
                    PorterDuff.Mode mode = TabLayout.this.f6823n;
                    if (mode != null) {
                        drawable.setTintMode(mode);
                    }
                }
                if (this.f6858b == null) {
                    TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(C2080R.layout.design_layout_tab_text, (ViewGroup) this, false);
                    this.f6858b = textView3;
                    addView(textView3);
                    this.f6866j = this.f6858b.getMaxLines();
                }
                this.f6858b.setTextAppearance(TabLayout.this.f6817h);
                ColorStateList colorStateList = TabLayout.this.f6818i;
                if (colorStateList != null) {
                    this.f6858b.setTextColor(colorStateList);
                }
                m38363h(this.f6858b, this.f6859c);
                m38367d();
                ImageView imageView3 = this.f6859c;
                if (imageView3 != null) {
                    imageView3.addOnLayoutChangeListener(new d(this, imageView3));
                }
                TextView textView4 = this.f6858b;
                if (textView4 != null) {
                    textView4.addOnLayoutChangeListener(new d(this, textView4));
                }
            } else {
                TextView textView5 = this.f6863g;
                if (textView5 != null || this.f6864h != null) {
                    m38363h(textView5, this.f6864h);
                }
            }
            if (c2114g != null && !TextUtils.isEmpty(c2114g.f6850c)) {
                setContentDescription(c2114g.f6850c);
            }
            boolean z = false;
            if (c2114g != null) {
                TabLayout tabLayout = c2114g.f6853f;
                if (tabLayout == null) {
                    throw new IllegalArgumentException("Tab not attached to a TabLayout");
                }
                z = false;
                if (tabLayout.getSelectedTabPosition() == c2114g.f6851d) {
                    z = true;
                }
            }
            setSelected(z);
        }

        /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
        /* renamed from: g */
        public final void m38364g(Context context) {
            int i = TabLayout.this.f6826q;
            if (i != 0) {
                Drawable m3540a = C25440a.m3540a(context, i);
                this.f6865i = m3540a;
                if (m3540a != null && m3540a.isStateful()) {
                    this.f6865i.setState(getDrawableState());
                }
            } else {
                this.f6865i = null;
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(0);
            RippleDrawable rippleDrawable = gradientDrawable;
            if (TabLayout.this.f6820k != null) {
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setCornerRadius(1.0E-5f);
                gradientDrawable2.setColor(-1);
                ColorStateList colorStateList = TabLayout.this.f6820k;
                ColorStateList colorStateList2 = new ColorStateList(new int[]{a.i, StateSet.NOTHING}, new int[]{a.a(colorStateList, a.e), a.a(colorStateList, a.a)});
                boolean z = TabLayout.this.f6797D;
                if (z) {
                    gradientDrawable = null;
                }
                if (z) {
                    gradientDrawable2 = null;
                }
                rippleDrawable = new RippleDrawable(colorStateList2, gradientDrawable, gradientDrawable2);
            }
            AtomicInteger atomicInteger = C26614s.f74505a;
            setBackground(rippleDrawable);
            TabLayout.this.invalidate();
        }

        public int getContentHeight() {
            TextView textView = this.f6858b;
            int i = 0;
            ImageView imageView = this.f6859c;
            View view = this.f6862f;
            int i2 = 0;
            boolean z = false;
            int i3 = 0;
            while (i < 3) {
                View view2 = new View[]{textView, imageView, view}[i];
                int i4 = i2;
                int i5 = i3;
                boolean z2 = z;
                if (view2 != null) {
                    i4 = i2;
                    i5 = i3;
                    z2 = z;
                    if (view2.getVisibility() == 0) {
                        i5 = z ? Math.min(i3, view2.getTop()) : view2.getTop();
                        z2 = true;
                        i4 = z ? Math.max(i2, view2.getBottom()) : view2.getBottom();
                    }
                }
                i++;
                i2 = i4;
                i3 = i5;
                z = z2;
            }
            return i2 - i3;
        }

        public int getContentWidth() {
            TextView textView = this.f6858b;
            int i = 0;
            ImageView imageView = this.f6859c;
            View view = this.f6862f;
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

        public C2114g getTab() {
            return this.f6857a;
        }

        /* renamed from: h */
        public final void m38363h(TextView textView, ImageView imageView) {
            Drawable drawable;
            C2114g c2114g = this.f6857a;
            Drawable mutate = (c2114g == null || (drawable = c2114g.f6848a) == null) ? null : drawable.mutate();
            C2114g c2114g2 = this.f6857a;
            CharSequence charSequence = c2114g2 != null ? c2114g2.f6849b : null;
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
                    Objects.requireNonNull(this.f6857a);
                    textView.setVisibility(0);
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int m2428P = (!z || imageView.getVisibility() != 0) ? 0 : (int) C26232y.m2428P(getContext(), 8);
                if (TabLayout.this.f6794A) {
                    if (m2428P != marginLayoutParams.getMarginEnd()) {
                        marginLayoutParams.setMarginEnd(m2428P);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (m2428P != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = m2428P;
                    marginLayoutParams.setMarginEnd(0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            C2114g c2114g3 = this.f6857a;
            CharSequence charSequence2 = null;
            if (c2114g3 != null) {
                charSequence2 = c2114g3.f6850c;
            }
            if (Build.VERSION.SDK_INT > 23) {
                if (z) {
                    charSequence2 = charSequence;
                }
                MediaSessionCompat.m43179z1(this, charSequence2);
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            String str;
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            BadgeDrawable badgeDrawable = this.f6861e;
            if (badgeDrawable != null && badgeDrawable.isVisible()) {
                CharSequence contentDescription = getContentDescription();
                StringBuilder sb = new StringBuilder();
                sb.append((Object) contentDescription);
                sb.append(", ");
                BadgeDrawable badgeDrawable2 = this.f6861e;
                if (!badgeDrawable2.isVisible()) {
                    str = null;
                } else if (badgeDrawable2.e()) {
                    str = null;
                    if (badgeDrawable2.h.f6633g > 0) {
                        Context context = (Context) badgeDrawable2.a.get();
                        if (context == null) {
                            str = null;
                        } else {
                            int d = badgeDrawable2.d();
                            int i = badgeDrawable2.k;
                            str = d <= i ? context.getResources().getQuantityString(badgeDrawable2.h.f6633g, badgeDrawable2.d(), Integer.valueOf(badgeDrawable2.d())) : context.getString(badgeDrawable2.h.f6634h, Integer.valueOf(i));
                        }
                    }
                } else {
                    str = badgeDrawable2.h.f6632f;
                }
                sb.append((Object) str);
                accessibilityNodeInfo.setContentDescription(sb.toString());
            }
            accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) C26584b.C26587c.m1610a(0, 1, this.f6857a.f6851d, 1, false, isSelected()).f74482a);
            if (isSelected()) {
                accessibilityNodeInfo.setClickable(false);
                accessibilityNodeInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) C26584b.C26585a.f74468g.f74477a);
            }
            accessibilityNodeInfo.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", getResources().getString(C2080R.string.item_view_role_description));
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x012d, code lost:
            if (((r13 / r0.getPaint().getTextSize()) * r0.getLineWidth(0)) > ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x0027, code lost:
            if (r0 > r0) goto L8;
         */
        @Override // android.widget.LinearLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onMeasure(int r5, int r6) {
            /*
                Method dump skipped, instructions count: 338
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.C2115i.onMeasure(int, int):void");
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean performClick = super.performClick();
            if (this.f6857a != null) {
                if (!performClick) {
                    playSoundEffect(0);
                }
                C2114g c2114g = this.f6857a;
                TabLayout tabLayout = c2114g.f6853f;
                if (tabLayout == null) {
                    throw new IllegalArgumentException("Tab not attached to a TabLayout");
                }
                tabLayout.mo35634l(c2114g, true);
                return true;
            }
            return performClick;
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            if (isSelected() != z) {
            }
            super.setSelected(z);
            TextView textView = this.f6858b;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.f6859c;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.f6862f;
            if (view != null) {
                view.setSelected(z);
            }
        }

        public void setTab(C2114g c2114g) {
            if (c2114g != this.f6857a) {
                this.f6857a = c2114g;
                m38365f();
            }
        }
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C2080R.attr.tabStyle);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TabLayout(android.content.Context r11, android.util.AttributeSet r12, int r13) {
        /*
            Method dump skipped, instructions count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
    /* renamed from: f */
    public static ColorStateList m38391f(int i, int i2) {
        return new ColorStateList(new int[]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i2, i});
    }

    private int getDefaultHeight() {
        boolean z;
        int size = this.f6810a.size();
        int i = 0;
        while (true) {
            z = false;
            if (i < size) {
                C2114g c2114g = this.f6810a.get(i);
                if (c2114g != null && c2114g.f6848a != null && !TextUtils.isEmpty(c2114g.f6849b)) {
                    z = true;
                    break;
                }
                i++;
            } else {
                break;
            }
        }
        return (!z || this.f6794A) ? 48 : 72;
    }

    private int getTabMinWidth() {
        int i = this.f6828s;
        if (i != -1) {
            return i;
        }
        int i2 = this.f6835z;
        return (i2 == 0 || i2 == 2) ? this.f6830u : 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f6812c.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void setSelectedTabView(int i) {
        int childCount = this.f6812c.getChildCount();
        if (i < childCount) {
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = this.f6812c.getChildAt(i2);
                childAt.setSelected(i2 == i);
                childAt.setActivated(i2 == i);
                i2++;
            }
        }
    }

    /* renamed from: a */
    public void m38396a(C2114g c2114g, boolean z) {
        int size = this.f6810a.size();
        if (c2114g.f6853f == this) {
            c2114g.f6851d = size;
            this.f6810a.add(size, c2114g);
            int size2 = this.f6810a.size();
            while (true) {
                size++;
                if (size >= size2) {
                    break;
                }
                this.f6810a.get(size).f6851d = size;
            }
            C2115i c2115i = c2114g.f6854g;
            c2115i.setSelected(false);
            c2115i.setActivated(false);
            C2111f c2111f = this.f6812c;
            int i = c2114g.f6851d;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
            m38382q(layoutParams);
            c2111f.addView(c2115i, i, layoutParams);
            if (!z) {
                return;
            }
            TabLayout tabLayout = c2114g.f6853f;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            tabLayout.mo35634l(c2114g, true);
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        m38395b(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i) {
        m38395b(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        m38395b(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        m38395b(view);
    }

    /* renamed from: b */
    public final void m38395b(View view) {
        if (view instanceof c) {
            c cVar = (c) view;
            C2114g m38388i = m38388i();
            Objects.requireNonNull(cVar);
            if (!TextUtils.isEmpty(cVar.getContentDescription())) {
                m38388i.f6850c = cVar.getContentDescription();
                m38388i.m38371c();
            }
            m38396a(m38388i, this.f6810a.isEmpty());
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    /* renamed from: c */
    public final void m38394c(int i) {
        boolean z;
        if (i == -1) {
            return;
        }
        if (getWindowToken() != null) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            if (isLaidOut()) {
                C2111f c2111f = this.f6812c;
                int childCount = c2111f.getChildCount();
                int i2 = 0;
                while (true) {
                    if (i2 >= childCount) {
                        z = false;
                        break;
                    } else if (c2111f.getChildAt(i2).getWidth() <= 0) {
                        z = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (!z) {
                    int scrollX = getScrollX();
                    int m38392e = m38392e(i, 0.0f);
                    if (scrollX != m38392e) {
                        m38390g();
                        this.f6802M.setIntValues(scrollX, m38392e);
                        this.f6802M.start();
                    }
                    C2111f c2111f2 = this.f6812c;
                    int i3 = this.f6833x;
                    ValueAnimator valueAnimator = c2111f2.f6838a;
                    if (valueAnimator != null && valueAnimator.isRunning()) {
                        c2111f2.f6838a.cancel();
                    }
                    c2111f2.m38374d(true, i, i3);
                    return;
                }
            }
        }
        mo35633n(i, 0.0f, true, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x006b, code lost:
        if (r0 != 2) goto L23;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m38393d() {
        /*
            r6 = this;
            r0 = r6
            int r0 = r0.f6835z
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L16
            r0 = r7
            r1 = 2
            if (r0 != r1) goto L11
            goto L16
        L11:
            r0 = 0
            r7 = r0
            goto L24
        L16:
            r0 = 0
            r1 = r6
            int r1 = r1.f6831v
            r2 = r6
            int r2 = r2.f6813d
            int r1 = r1 - r2
            int r0 = java.lang.Math.max(r0, r1)
            r7 = r0
        L24:
            r0 = r6
            com.google.android.material.tabs.TabLayout$f r0 = r0.f6812c
            r8 = r0
            java.util.concurrent.atomic.AtomicInteger r0 = p1727n3.p1807k.p1821i.C26614s.f74505a
            r9 = r0
            r0 = r8
            r1 = r7
            r2 = 0
            r3 = 0
            r4 = 0
            r0.setPaddingRelative(r1, r2, r3, r4)
            r0 = r6
            int r0 = r0.f6835z
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L5b
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L4b
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L4b
            goto L86
        L4b:
            r0 = r6
            int r0 = r0.f6832w
            r7 = r0
            r0 = r6
            com.google.android.material.tabs.TabLayout$f r0 = r0.f6812c
            r1 = 1
            r0.setGravity(r1)
            goto L86
        L5b:
            r0 = r6
            int r0 = r0.f6832w
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L7c
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L71
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L7c
            goto L86
        L71:
            r0 = r6
            com.google.android.material.tabs.TabLayout$f r0 = r0.f6812c
            r1 = 1
            r0.setGravity(r1)
            goto L86
        L7c:
            r0 = r6
            com.google.android.material.tabs.TabLayout$f r0 = r0.f6812c
            r1 = 8388611(0x800003, float:1.1754948E-38)
            r0.setGravity(r1)
        L86:
            r0 = r6
            r1 = 1
            r0.m38381r(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.m38393d():void");
    }

    /* renamed from: e */
    public final int m38392e(int i, float f) {
        int i2 = this.f6835z;
        int i3 = 0;
        if (i2 == 0 || i2 == 2) {
            View childAt = this.f6812c.getChildAt(i);
            int i4 = i + 1;
            View childAt2 = i4 < this.f6812c.getChildCount() ? this.f6812c.getChildAt(i4) : null;
            int width = childAt != null ? childAt.getWidth() : 0;
            if (childAt2 != null) {
                i3 = childAt2.getWidth();
            }
            int left = ((width / 2) + childAt.getLeft()) - (getWidth() / 2);
            int i5 = (int) ((width + i3) * 0.5f * f);
            AtomicInteger atomicInteger = C26614s.f74505a;
            return getLayoutDirection() == 0 ? left + i5 : left - i5;
        }
        return 0;
    }

    /* renamed from: g */
    public final void m38390g() {
        if (this.f6802M == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f6802M = valueAnimator;
            valueAnimator.setInterpolator(C25156a.f70398b);
            this.f6802M.setDuration(this.f6833x);
            this.f6802M.addUpdateListener(new C2108a());
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    public int getSelectedTabPosition() {
        C2114g c2114g = this.f6811b;
        return c2114g != null ? c2114g.f6851d : -1;
    }

    public int getTabCount() {
        return this.f6810a.size();
    }

    public int getTabGravity() {
        return this.f6832w;
    }

    public ColorStateList getTabIconTint() {
        return this.f6819j;
    }

    public int getTabIndicatorAnimationMode() {
        return this.f6796C;
    }

    public int getTabIndicatorGravity() {
        return this.f6834y;
    }

    public int getTabMaxWidth() {
        return this.f6827r;
    }

    public int getTabMode() {
        return this.f6835z;
    }

    public ColorStateList getTabRippleColor() {
        return this.f6820k;
    }

    public Drawable getTabSelectedIndicator() {
        return this.f6821l;
    }

    public ColorStateList getTabTextColors() {
        return this.f6818i;
    }

    /* renamed from: h */
    public C2114g m38389h(int i) {
        return (i < 0 || i >= getTabCount()) ? null : this.f6810a.get(i);
    }

    /* renamed from: i */
    public C2114g m38388i() {
        C2114g mo1689a = f6793V.mo1689a();
        C2114g c2114g = mo1689a;
        if (mo1689a == null) {
            c2114g = new C2114g();
        }
        c2114g.f6853f = this;
        AbstractC26555e<C2115i> abstractC26555e = this.f6809T;
        C2115i mo1689a2 = abstractC26555e != null ? abstractC26555e.mo1689a() : null;
        C2115i c2115i = mo1689a2;
        if (mo1689a2 == null) {
            c2115i = new C2115i(getContext());
        }
        c2115i.setTab(c2114g);
        c2115i.setFocusable(true);
        c2115i.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(c2114g.f6850c)) {
            c2115i.setContentDescription(c2114g.f6849b);
        } else {
            c2115i.setContentDescription(c2114g.f6850c);
        }
        c2114g.f6854g = c2115i;
        int i = c2114g.f6855h;
        if (i != -1) {
            c2115i.setId(i);
        }
        return c2114g;
    }

    /* renamed from: j */
    public void m38387j() {
        int currentItem;
        m38386k();
        AbstractC26640a abstractC26640a = this.f6804O;
        if (abstractC26640a != null) {
            int mo1537c = abstractC26640a.mo1537c();
            for (int i = 0; i < mo1537c; i++) {
                C2114g m38388i = m38388i();
                m38388i.m38372b(this.f6804O.m1536d(i));
                m38396a(m38388i, false);
            }
            ViewPager viewPager = this.f6803N;
            if (viewPager == null || mo1537c <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            mo35634l(m38389h(currentItem), true);
        }
    }

    /* renamed from: k */
    public void m38386k() {
        for (int childCount = this.f6812c.getChildCount() - 1; childCount >= 0; childCount--) {
            C2115i c2115i = (C2115i) this.f6812c.getChildAt(childCount);
            this.f6812c.removeViewAt(childCount);
            if (c2115i != null) {
                c2115i.setTab(null);
                c2115i.setSelected(false);
                this.f6809T.mo1688b(c2115i);
            }
            requestLayout();
        }
        Iterator<C2114g> it = this.f6810a.iterator();
        while (it.hasNext()) {
            C2114g next = it.next();
            it.remove();
            next.f6853f = null;
            next.f6854g = null;
            next.f6848a = null;
            next.f6855h = -1;
            next.f6849b = null;
            next.f6850c = null;
            next.f6851d = -1;
            next.f6852e = null;
            f6793V.mo1688b(next);
        }
        this.f6811b = null;
    }

    /* renamed from: l */
    public void mo35634l(C2114g c2114g, boolean z) {
        C2114g c2114g2 = this.f6811b;
        if (c2114g2 == c2114g) {
            if (c2114g2 == null) {
                return;
            }
            for (int size = this.f6800K.size() - 1; size >= 0; size--) {
                this.f6800K.get(size).m38378c(c2114g);
            }
            m38394c(c2114g.f6851d);
            return;
        }
        int i = c2114g != null ? c2114g.f6851d : -1;
        if (z) {
            if ((c2114g2 == null || c2114g2.f6851d == -1) && i != -1) {
                mo35633n(i, 0.0f, true, true);
            } else {
                m38394c(i);
            }
            if (i != -1) {
                setSelectedTabView(i);
            }
        }
        this.f6811b = c2114g;
        if (c2114g2 != null) {
            for (int size2 = this.f6800K.size() - 1; size2 >= 0; size2--) {
                this.f6800K.get(size2).m38379b(c2114g2);
            }
        }
        if (c2114g == null) {
            return;
        }
        for (int size3 = this.f6800K.size() - 1; size3 >= 0; size3--) {
            this.f6800K.get(size3).m38380a(c2114g);
        }
    }

    /* renamed from: m */
    public void m38385m(AbstractC26640a abstractC26640a, boolean z) {
        DataSetObserver dataSetObserver;
        AbstractC26640a abstractC26640a2 = this.f6804O;
        if (abstractC26640a2 != null && (dataSetObserver = this.f6805P) != null) {
            abstractC26640a2.f74570a.unregisterObserver(dataSetObserver);
        }
        this.f6804O = abstractC26640a;
        if (z && abstractC26640a != null) {
            if (this.f6805P == null) {
                this.f6805P = new C2110e();
            }
            abstractC26640a.f74570a.registerObserver(this.f6805P);
        }
        m38387j();
    }

    /* renamed from: n */
    public void mo35633n(int i, float f, boolean z, boolean z2) {
        int round = Math.round(i + f);
        if (round < 0 || round >= this.f6812c.getChildCount()) {
            return;
        }
        if (z2) {
            C2111f c2111f = this.f6812c;
            ValueAnimator valueAnimator = c2111f.f6838a;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                c2111f.f6838a.cancel();
            }
            c2111f.f6839b = i;
            c2111f.f6840c = f;
            c2111f.m38375c(c2111f.getChildAt(i), c2111f.getChildAt(c2111f.f6839b + 1), c2111f.f6840c);
        }
        ValueAnimator valueAnimator2 = this.f6802M;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.f6802M.cancel();
        }
        scrollTo(m38392e(i, f), 0);
        if (!z) {
            return;
        }
        setSelectedTabView(round);
    }

    /* renamed from: o */
    public final void m38384o(ViewPager viewPager, boolean z, boolean z2) {
        List<ViewPager.AbstractC0395h> list;
        List<ViewPager.AbstractC0396i> list2;
        ViewPager viewPager2 = this.f6803N;
        if (viewPager2 != null) {
            h hVar = this.f6806Q;
            if (hVar != null && (list2 = viewPager2.f1456V) != null) {
                list2.remove(hVar);
            }
            b bVar = this.f6807R;
            if (bVar != null && (list = this.f6803N.f1465g0) != null) {
                list.remove(bVar);
            }
        }
        AbstractC2109c abstractC2109c = this.f6801L;
        if (abstractC2109c != null) {
            this.f6800K.remove(abstractC2109c);
            this.f6801L = null;
        }
        if (viewPager != null) {
            this.f6803N = viewPager;
            if (this.f6806Q == null) {
                this.f6806Q = new h(this);
            }
            h hVar2 = this.f6806Q;
            hVar2.c = 0;
            hVar2.b = 0;
            viewPager.m42656b(hVar2);
            AbstractC2109c jVar = new j(viewPager);
            this.f6801L = jVar;
            if (!this.f6800K.contains(jVar)) {
                this.f6800K.add(jVar);
            }
            AbstractC26640a adapter = viewPager.getAdapter();
            if (adapter != null) {
                m38385m(adapter, z);
            }
            if (this.f6807R == null) {
                this.f6807R = new b(this);
            }
            ViewPager.AbstractC0395h abstractC0395h = this.f6807R;
            ((b) abstractC0395h).a = z;
            if (viewPager.f1465g0 == null) {
                viewPager.f1465g0 = new ArrayList();
            }
            viewPager.f1465g0.add(abstractC0395h);
            mo35633n(viewPager.getCurrentItem(), 0.0f, true, true);
        } else {
            this.f6803N = null;
            m38385m(null, false);
        }
        this.f6808S = z2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        h background = getBackground();
        if (background instanceof h) {
            C26232y.m2414S1(this, background);
        }
        if (this.f6803N == null) {
            ViewParent parent = getParent();
            if (!(parent instanceof ViewPager)) {
                return;
            }
            m38384o((ViewPager) parent, true, true);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f6808S) {
            setupWithViewPager(null);
            this.f6808S = false;
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        C2115i c2115i;
        Drawable drawable;
        for (int i = 0; i < this.f6812c.getChildCount(); i++) {
            View childAt = this.f6812c.getChildAt(i);
            if ((childAt instanceof C2115i) && (drawable = (c2115i = (C2115i) childAt).f6865i) != null) {
                drawable.setBounds(c2115i.getLeft(), c2115i.getTop(), c2115i.getRight(), c2115i.getBottom());
                c2115i.f6865i.draw(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) C26584b.C26586b.m1611a(1, getTabCount(), false, 1).f74481a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00cb, code lost:
        if (r0.getMeasuredWidth() != getMeasuredWidth()) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ce, code lost:
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00df, code lost:
        if (r0.getMeasuredWidth() < getMeasuredWidth()) goto L30;
     */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.onMeasure(int, int):void");
    }

    /* renamed from: p */
    public final void m38383p() {
        int size = this.f6810a.size();
        for (int i = 0; i < size; i++) {
            this.f6810a.get(i).m38371c();
        }
    }

    /* renamed from: q */
    public final void m38382q(LinearLayout.LayoutParams layoutParams) {
        if (this.f6835z == 1 && this.f6832w == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
            return;
        }
        layoutParams.width = -2;
        layoutParams.weight = 0.0f;
    }

    /* renamed from: r */
    public void m38381r(boolean z) {
        for (int i = 0; i < this.f6812c.getChildCount(); i++) {
            View childAt = this.f6812c.getChildAt(i);
            childAt.setMinimumWidth(getTabMinWidth());
            m38382q((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z) {
                childAt.requestLayout();
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C26232y.m2422Q1(this, f);
    }

    public void setInlineLabel(boolean z) {
        if (this.f6794A != z) {
            this.f6794A = z;
            for (int i = 0; i < this.f6812c.getChildCount(); i++) {
                View childAt = this.f6812c.getChildAt(i);
                if (childAt instanceof C2115i) {
                    C2115i c2115i = (C2115i) childAt;
                    c2115i.setOrientation(!TabLayout.this.f6794A ? 1 : 0);
                    TextView textView = c2115i.f6863g;
                    if (textView == null && c2115i.f6864h == null) {
                        c2115i.m38363h(c2115i.f6858b, c2115i.f6859c);
                    } else {
                        c2115i.m38363h(textView, c2115i.f6864h);
                    }
                }
            }
            m38393d();
        }
    }

    public void setInlineLabelResource(int i) {
        setInlineLabel(getResources().getBoolean(i));
    }

    @Deprecated
    public void setOnTabSelectedListener(AbstractC2109c abstractC2109c) {
        AbstractC2109c abstractC2109c2 = this.f6799J;
        if (abstractC2109c2 != null) {
            this.f6800K.remove(abstractC2109c2);
        }
        this.f6799J = abstractC2109c;
        if (abstractC2109c == null || this.f6800K.contains(abstractC2109c)) {
            return;
        }
        this.f6800K.add(abstractC2109c);
    }

    @Deprecated
    public void setOnTabSelectedListener(d dVar) {
        setOnTabSelectedListener((AbstractC2109c) dVar);
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        m38390g();
        this.f6802M.addListener(animatorListener);
    }

    public void setSelectedTabIndicator(int i) {
        if (i != 0) {
            setSelectedTabIndicator(C25440a.m3540a(getContext(), i));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    public void setSelectedTabIndicator(Drawable drawable) {
        if (this.f6821l != drawable) {
            if (drawable == null) {
                drawable = new GradientDrawable();
            }
            this.f6821l = drawable;
        }
    }

    public void setSelectedTabIndicatorColor(int i) {
        this.f6822m = i;
    }

    public void setSelectedTabIndicatorGravity(int i) {
        if (this.f6834y != i) {
            this.f6834y = i;
            C2111f c2111f = this.f6812c;
            AtomicInteger atomicInteger = C26614s.f74505a;
            c2111f.postInvalidateOnAnimation();
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i) {
        this.f6812c.m38376b(i);
    }

    public void setTabGravity(int i) {
        if (this.f6832w != i) {
            this.f6832w = i;
            m38393d();
        }
    }

    public void setTabIconTint(ColorStateList colorStateList) {
        if (this.f6819j != colorStateList) {
            this.f6819j = colorStateList;
            m38383p();
        }
    }

    public void setTabIconTintResource(int i) {
        Context context = getContext();
        ThreadLocal<TypedValue> threadLocal = C25440a.f71017a;
        setTabIconTint(context.getColorStateList(i));
    }

    public void setTabIndicatorAnimationMode(int i) {
        this.f6796C = i;
        if (i == 0) {
            this.f6798E = new b();
        } else if (i == 1) {
            this.f6798E = new e.m.a.g.x.a();
        } else {
            throw new IllegalArgumentException(i + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.f6795B = z;
        C2111f c2111f = this.f6812c;
        AtomicInteger atomicInteger = C26614s.f74505a;
        c2111f.postInvalidateOnAnimation();
    }

    public void setTabMode(int i) {
        if (i != this.f6835z) {
            this.f6835z = i;
            m38393d();
        }
    }

    public void setTabRippleColor(ColorStateList colorStateList) {
        if (this.f6820k != colorStateList) {
            this.f6820k = colorStateList;
            for (int i = 0; i < this.f6812c.getChildCount(); i++) {
                View childAt = this.f6812c.getChildAt(i);
                if (childAt instanceof C2115i) {
                    C2115i c2115i = (C2115i) childAt;
                    Context context = getContext();
                    int i2 = C2115i.f6856l;
                    c2115i.m38364g(context);
                }
            }
        }
    }

    public void setTabRippleColorResource(int i) {
        Context context = getContext();
        ThreadLocal<TypedValue> threadLocal = C25440a.f71017a;
        setTabRippleColor(context.getColorStateList(i));
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.f6818i != colorStateList) {
            this.f6818i = colorStateList;
            m38383p();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(AbstractC26640a abstractC26640a) {
        m38385m(abstractC26640a, false);
    }

    public void setUnboundedRipple(boolean z) {
        if (this.f6797D != z) {
            this.f6797D = z;
            for (int i = 0; i < this.f6812c.getChildCount(); i++) {
                View childAt = this.f6812c.getChildAt(i);
                if (childAt instanceof C2115i) {
                    C2115i c2115i = (C2115i) childAt;
                    Context context = getContext();
                    int i2 = C2115i.f6856l;
                    c2115i.m38364g(context);
                }
            }
        }
    }

    public void setUnboundedRippleResource(int i) {
        setUnboundedRipple(getResources().getBoolean(i));
    }

    public void setupWithViewPager(ViewPager viewPager) {
        m38384o(viewPager, true, false);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }
}
