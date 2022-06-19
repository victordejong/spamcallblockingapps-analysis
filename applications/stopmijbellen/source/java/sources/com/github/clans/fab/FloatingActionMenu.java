package com.github.clans.fab;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.ImageView;
import com.google.android.gms.internal.ads.C1676a;
import p132j2.C3169a;
import p132j2.C3170b;
import p132j2.C3173e;
import p132j2.C3177f;
import p132j2.View$OnClickListenerC3171c;
import p134j4.C3260w0;
/* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu.class */
public class FloatingActionMenu extends ViewGroup {

    /* renamed from: A */
    public int f6085A;

    /* renamed from: B */
    public float f6086B;

    /* renamed from: C */
    public float f6087C;

    /* renamed from: D */
    public float f6088D;

    /* renamed from: E */
    public int f6089E;

    /* renamed from: F */
    public int f6090F;

    /* renamed from: G */
    public int f6091G;

    /* renamed from: H */
    public Drawable f6092H;

    /* renamed from: I */
    public int f6093I;

    /* renamed from: J */
    public Interpolator f6094J;

    /* renamed from: K */
    public Interpolator f6095K;

    /* renamed from: M */
    public boolean f6097M;

    /* renamed from: N */
    public int f6098N;

    /* renamed from: O */
    public int f6099O;

    /* renamed from: P */
    public int f6100P;

    /* renamed from: R */
    public int f6101R;

    /* renamed from: S */
    public Typeface f6102S;

    /* renamed from: U */
    public ImageView f6104U;

    /* renamed from: V */
    public boolean f6105V;

    /* renamed from: W */
    public int f6106W;

    /* renamed from: a0 */
    public AbstractC1635c f6108a0;

    /* renamed from: b0 */
    public ValueAnimator f6110b0;

    /* renamed from: c */
    public AnimatorSet f6111c;

    /* renamed from: c0 */
    public ValueAnimator f6112c0;

    /* renamed from: d */
    public int f6113d;

    /* renamed from: d0 */
    public int f6114d0;

    /* renamed from: e */
    public FloatingActionButton f6115e;

    /* renamed from: e0 */
    public int f6116e0;

    /* renamed from: f */
    public int f6117f;

    /* renamed from: f0 */
    public Context f6118f0;

    /* renamed from: g */
    public int f6119g;

    /* renamed from: g0 */
    public String f6120g0;

    /* renamed from: h0 */
    public boolean f6122h0;

    /* renamed from: i */
    public int f6123i;

    /* renamed from: j */
    public boolean f6124j;

    /* renamed from: k */
    public boolean f6125k;

    /* renamed from: m */
    public int f6127m;

    /* renamed from: n */
    public int f6128n;

    /* renamed from: o */
    public int f6129o;

    /* renamed from: p */
    public int f6130p;

    /* renamed from: q */
    public int f6131q;

    /* renamed from: r */
    public int f6132r;

    /* renamed from: s */
    public ColorStateList f6133s;

    /* renamed from: t */
    public float f6134t;

    /* renamed from: u */
    public int f6135u;

    /* renamed from: v */
    public boolean f6136v;

    /* renamed from: w */
    public int f6137w;

    /* renamed from: x */
    public int f6138x;

    /* renamed from: y */
    public int f6139y;

    /* renamed from: z */
    public boolean f6140z;

    /* renamed from: a */
    public AnimatorSet f6107a = new AnimatorSet();

    /* renamed from: b */
    public AnimatorSet f6109b = new AnimatorSet();

    /* renamed from: h */
    public int f6121h = C3177f.m2573a(getContext(), 0.0f);

    /* renamed from: l */
    public Handler f6126l = new Handler();

    /* renamed from: L */
    public boolean f6096L = true;

    /* renamed from: T */
    public boolean f6103T = true;

    /* renamed from: com.github.clans.fab.FloatingActionMenu$a */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu$a.class */
    public class RunnableC1633a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ FloatingActionButton f6141a;

        /* renamed from: b */
        public final /* synthetic */ boolean f6142b;

        public RunnableC1633a(FloatingActionButton floatingActionButton, boolean z) {
            FloatingActionMenu.this = r4;
            this.f6141a = floatingActionButton;
            this.f6142b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            FloatingActionMenu floatingActionMenu = FloatingActionMenu.this;
            if (!floatingActionMenu.f6124j) {
                return;
            }
            FloatingActionButton floatingActionButton = this.f6141a;
            if (floatingActionButton != floatingActionMenu.f6115e) {
                floatingActionButton.m4840i(this.f6142b);
            }
            C3173e c3173e = (C3173e) this.f6141a.getTag(2131296606);
            if (c3173e == null || !c3173e.f10700q) {
                return;
            }
            if (this.f6142b && c3173e.f10698o != null) {
                c3173e.f10697n.cancel();
                c3173e.startAnimation(c3173e.f10698o);
            }
            c3173e.setVisibility(4);
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionMenu$b */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu$b.class */
    public class RunnableC1634b implements Runnable {
        public RunnableC1634b() {
            FloatingActionMenu.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            FloatingActionMenu floatingActionMenu = FloatingActionMenu.this;
            floatingActionMenu.f6124j = false;
            AbstractC1635c abstractC1635c = floatingActionMenu.f6108a0;
            if (abstractC1635c != null) {
                abstractC1635c.mo150d(false);
            }
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionMenu$c */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu$c.class */
    public interface AbstractC1635c {
        /* renamed from: d */
        void mo150d(boolean z);
    }

    public FloatingActionMenu(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        float f;
        this.f6113d = C3177f.m2573a(getContext(), 0.0f);
        this.f6119g = C3177f.m2573a(getContext(), 0.0f);
        this.f6129o = C3177f.m2573a(getContext(), 4.0f);
        this.f6130p = C3177f.m2573a(getContext(), 8.0f);
        this.f6131q = C3177f.m2573a(getContext(), 4.0f);
        this.f6132r = C3177f.m2573a(getContext(), 8.0f);
        this.f6135u = C3177f.m2573a(getContext(), 3.0f);
        this.f6086B = 4.0f;
        this.f6087C = 1.0f;
        this.f6088D = 3.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3260w0.f11018L, 0, 0);
        this.f6113d = obtainStyledAttributes.getDimensionPixelSize(2, this.f6113d);
        this.f6119g = obtainStyledAttributes.getDimensionPixelSize(19, this.f6119g);
        int i = obtainStyledAttributes.getInt(26, 0);
        this.f6116e0 = i;
        this.f6127m = obtainStyledAttributes.getResourceId(27, i == 0 ? 2130772004 : 2130772003);
        this.f6128n = obtainStyledAttributes.getResourceId(18, this.f6116e0 == 0 ? 2130772006 : 2130772005);
        this.f6129o = obtainStyledAttributes.getDimensionPixelSize(25, this.f6129o);
        this.f6130p = obtainStyledAttributes.getDimensionPixelSize(24, this.f6130p);
        this.f6131q = obtainStyledAttributes.getDimensionPixelSize(22, this.f6131q);
        this.f6132r = obtainStyledAttributes.getDimensionPixelSize(23, this.f6132r);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(31);
        this.f6133s = colorStateList;
        if (colorStateList == null) {
            this.f6133s = ColorStateList.valueOf(-1);
        }
        this.f6134t = obtainStyledAttributes.getDimension(32, getResources().getDimension(2131165381));
        this.f6135u = obtainStyledAttributes.getDimensionPixelSize(15, this.f6135u);
        this.f6136v = obtainStyledAttributes.getBoolean(28, true);
        this.f6137w = obtainStyledAttributes.getColor(12, -13421773);
        this.f6138x = obtainStyledAttributes.getColor(13, -12303292);
        this.f6139y = obtainStyledAttributes.getColor(14, 1728053247);
        this.f6140z = obtainStyledAttributes.getBoolean(38, true);
        this.f6085A = obtainStyledAttributes.getColor(34, 1711276032);
        this.f6086B = obtainStyledAttributes.getDimension(35, this.f6086B);
        this.f6087C = obtainStyledAttributes.getDimension(36, this.f6087C);
        this.f6088D = obtainStyledAttributes.getDimension(37, this.f6088D);
        this.f6089E = obtainStyledAttributes.getColor(4, -2473162);
        this.f6090F = obtainStyledAttributes.getColor(5, -1617853);
        this.f6091G = obtainStyledAttributes.getColor(6, -1711276033);
        this.f6093I = obtainStyledAttributes.getInt(0, 50);
        Drawable drawable = obtainStyledAttributes.getDrawable(11);
        this.f6092H = drawable;
        if (drawable == null) {
            this.f6092H = getResources().getDrawable(2131230900);
        }
        this.f6097M = obtainStyledAttributes.getBoolean(29, false);
        this.f6098N = obtainStyledAttributes.getInt(17, 0);
        this.f6099O = obtainStyledAttributes.getInt(20, -1);
        this.f6100P = obtainStyledAttributes.getInt(10, 0);
        this.f6101R = obtainStyledAttributes.getResourceId(30, 0);
        String string = obtainStyledAttributes.getString(16);
        try {
            if (!TextUtils.isEmpty(string)) {
                this.f6102S = Typeface.createFromAsset(getContext().getAssets(), string);
            }
            this.f6106W = obtainStyledAttributes.getInt(33, 0);
            this.f6114d0 = obtainStyledAttributes.getColor(1, 0);
            if (obtainStyledAttributes.hasValue(8)) {
                this.f6122h0 = true;
                this.f6120g0 = obtainStyledAttributes.getString(8);
            }
            if (obtainStyledAttributes.hasValue(21)) {
                int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(21, 0);
                this.f6129o = dimensionPixelSize;
                this.f6130p = dimensionPixelSize;
                this.f6131q = dimensionPixelSize;
                this.f6132r = dimensionPixelSize;
            }
            this.f6094J = new OvershootInterpolator();
            this.f6095K = new AnticipateInterpolator();
            this.f6118f0 = new ContextThemeWrapper(getContext(), this.f6101R);
            int alpha = Color.alpha(this.f6114d0);
            int red = Color.red(this.f6114d0);
            int green = Color.green(this.f6114d0);
            int blue = Color.blue(this.f6114d0);
            ValueAnimator ofInt = ValueAnimator.ofInt(0, alpha);
            this.f6110b0 = ofInt;
            ofInt.setDuration(300L);
            this.f6110b0.addUpdateListener(new C3169a(this, red, green, blue));
            ValueAnimator ofInt2 = ValueAnimator.ofInt(alpha, 0);
            this.f6112c0 = ofInt2;
            ofInt2.setDuration(300L);
            this.f6112c0.addUpdateListener(new C3170b(this, red, green, blue));
            FloatingActionButton floatingActionButton = new FloatingActionButton(getContext(), null);
            this.f6115e = floatingActionButton;
            boolean z = this.f6140z;
            floatingActionButton.f6037b = z;
            if (z) {
                floatingActionButton.f6039d = C3177f.m2573a(getContext(), this.f6086B);
                this.f6115e.f6040e = C3177f.m2573a(getContext(), this.f6087C);
                this.f6115e.f6041f = C3177f.m2573a(getContext(), this.f6088D);
            }
            FloatingActionButton floatingActionButton2 = this.f6115e;
            int i2 = this.f6089E;
            int i3 = this.f6090F;
            int i4 = this.f6091G;
            floatingActionButton2.f6042g = i2;
            floatingActionButton2.f6043h = i3;
            floatingActionButton2.f6045j = i4;
            floatingActionButton2.f6038c = this.f6085A;
            floatingActionButton2.f6036a = this.f6100P;
            floatingActionButton2.m4833p();
            this.f6115e.setLabelText(this.f6120g0);
            ImageView imageView = new ImageView(getContext());
            this.f6104U = imageView;
            imageView.setImageDrawable(this.f6092H);
            addView(this.f6115e, super.generateDefaultLayoutParams());
            addView(this.f6104U);
            float f2 = 135.0f;
            if (this.f6106W == 0) {
                int i5 = this.f6116e0;
                float f3 = i5 == 0 ? -135.0f : 135.0f;
                f = f3;
                if (i5 == 0) {
                    f = f3;
                    f2 = -135.0f;
                }
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f6104U, "rotation", f, 0.0f);
                this.f6107a.play(ObjectAnimator.ofFloat(this.f6104U, "rotation", 0.0f, f2));
                this.f6109b.play(ofFloat);
                this.f6107a.setInterpolator(this.f6094J);
                this.f6109b.setInterpolator(this.f6095K);
                this.f6107a.setDuration(300L);
                this.f6109b.setDuration(300L);
                int resourceId = obtainStyledAttributes.getResourceId(9, 2130772002);
                setMenuButtonShowAnimation(AnimationUtils.loadAnimation(getContext(), resourceId));
                AnimationUtils.loadAnimation(getContext(), resourceId);
                int resourceId2 = obtainStyledAttributes.getResourceId(7, 2130772001);
                setMenuButtonHideAnimation(AnimationUtils.loadAnimation(getContext(), resourceId2));
                AnimationUtils.loadAnimation(getContext(), resourceId2);
                obtainStyledAttributes.recycle();
            }
            int i6 = this.f6116e0;
            float f4 = i6 == 0 ? 135.0f : -135.0f;
            f = f4;
            if (i6 == 0) {
                f = f4;
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f6104U, "rotation", f, 0.0f);
                this.f6107a.play(ObjectAnimator.ofFloat(this.f6104U, "rotation", 0.0f, f2));
                this.f6109b.play(ofFloat2);
                this.f6107a.setInterpolator(this.f6094J);
                this.f6109b.setInterpolator(this.f6095K);
                this.f6107a.setDuration(300L);
                this.f6109b.setDuration(300L);
                int resourceId3 = obtainStyledAttributes.getResourceId(9, 2130772002);
                setMenuButtonShowAnimation(AnimationUtils.loadAnimation(getContext(), resourceId3));
                AnimationUtils.loadAnimation(getContext(), resourceId3);
                int resourceId22 = obtainStyledAttributes.getResourceId(7, 2130772001);
                setMenuButtonHideAnimation(AnimationUtils.loadAnimation(getContext(), resourceId22));
                AnimationUtils.loadAnimation(getContext(), resourceId22);
                obtainStyledAttributes.recycle();
            }
            f2 = -135.0f;
            ObjectAnimator ofFloat22 = ObjectAnimator.ofFloat(this.f6104U, "rotation", f, 0.0f);
            this.f6107a.play(ObjectAnimator.ofFloat(this.f6104U, "rotation", 0.0f, f2));
            this.f6109b.play(ofFloat22);
            this.f6107a.setInterpolator(this.f6094J);
            this.f6109b.setInterpolator(this.f6095K);
            this.f6107a.setDuration(300L);
            this.f6109b.setDuration(300L);
            int resourceId32 = obtainStyledAttributes.getResourceId(9, 2130772002);
            setMenuButtonShowAnimation(AnimationUtils.loadAnimation(getContext(), resourceId32));
            AnimationUtils.loadAnimation(getContext(), resourceId32);
            int resourceId222 = obtainStyledAttributes.getResourceId(7, 2130772001);
            setMenuButtonHideAnimation(AnimationUtils.loadAnimation(getContext(), resourceId222));
            AnimationUtils.loadAnimation(getContext(), resourceId222);
            obtainStyledAttributes.recycle();
        } catch (RuntimeException e) {
            throw new IllegalArgumentException(C1676a.m4789h("Unable to load specified custom font: ", string), e);
        }
    }

    private void setLabelEllipsize(C3173e c3173e) {
        int i = this.f6098N;
        if (i == 1) {
            c3173e.setEllipsize(TextUtils.TruncateAt.START);
        } else if (i == 2) {
            c3173e.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        } else if (i == 3) {
            c3173e.setEllipsize(TextUtils.TruncateAt.END);
        } else if (i != 4) {
        } else {
            c3173e.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        }
    }

    /* renamed from: a */
    public void m4832a(boolean z) {
        if (this.f6124j) {
            if (this.f6114d0 != 0) {
                this.f6112c0.start();
            }
            if (this.f6103T) {
                AnimatorSet animatorSet = this.f6111c;
                if (animatorSet != null) {
                    animatorSet.start();
                } else {
                    this.f6109b.start();
                    this.f6107a.cancel();
                }
            }
            this.f6125k = false;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (i3 < getChildCount()) {
                View childAt = getChildAt(i3);
                int i4 = i;
                int i5 = i2;
                if (childAt instanceof FloatingActionButton) {
                    i4 = i;
                    i5 = i2;
                    if (childAt.getVisibility() != 8) {
                        i4 = i + 1;
                        this.f6126l.postDelayed(new RunnableC1633a((FloatingActionButton) childAt, z), i2);
                        i5 = i2 + this.f6093I;
                    }
                }
                i3++;
                i = i4;
                i2 = i5;
            }
            this.f6126l.postDelayed(new RunnableC1634b(), (i + 1) * this.f6093I);
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    public int getAnimationDelayPerItem() {
        return this.f6093I;
    }

    public AnimatorSet getIconToggleAnimatorSet() {
        return this.f6111c;
    }

    public int getMenuButtonColorNormal() {
        return this.f6089E;
    }

    public int getMenuButtonColorPressed() {
        return this.f6090F;
    }

    public int getMenuButtonColorRipple() {
        return this.f6091G;
    }

    public String getMenuButtonLabelText() {
        return this.f6120g0;
    }

    public ImageView getMenuIconView() {
        return this.f6104U;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        bringChildToFront(this.f6115e);
        bringChildToFront(this.f6104U);
        this.f6123i = getChildCount();
        for (int i = 0; i < this.f6123i; i++) {
            if (getChildAt(i) != this.f6104U) {
                FloatingActionButton floatingActionButton = (FloatingActionButton) getChildAt(i);
                if (floatingActionButton.getTag(2131296606) == null) {
                    String labelText = floatingActionButton.getLabelText();
                    if (!TextUtils.isEmpty(labelText)) {
                        C3173e c3173e = new C3173e(this.f6118f0);
                        c3173e.setClickable(true);
                        c3173e.setFab(floatingActionButton);
                        c3173e.setShowAnimation(AnimationUtils.loadAnimation(getContext(), this.f6127m));
                        c3173e.setHideAnimation(AnimationUtils.loadAnimation(getContext(), this.f6128n));
                        if (this.f6101R > 0) {
                            c3173e.setTextAppearance(getContext(), this.f6101R);
                            c3173e.setShowShadow(false);
                            c3173e.setUsingStyle(true);
                        } else {
                            int i2 = this.f6137w;
                            int i3 = this.f6138x;
                            int i4 = this.f6139y;
                            c3173e.f10692i = i2;
                            c3173e.f10693j = i3;
                            c3173e.f10694k = i4;
                            c3173e.setShowShadow(this.f6136v);
                            c3173e.setCornerRadius(this.f6135u);
                            if (this.f6098N > 0) {
                                setLabelEllipsize(c3173e);
                            }
                            c3173e.setMaxLines(this.f6099O);
                            c3173e.m2574e();
                            c3173e.setTextSize(0, this.f6134t);
                            c3173e.setTextColor(this.f6133s);
                            int i5 = this.f6132r;
                            int i6 = this.f6129o;
                            int i7 = i5;
                            int i8 = i6;
                            if (this.f6136v) {
                                i7 = i5 + Math.abs(floatingActionButton.getShadowXOffset()) + floatingActionButton.getShadowRadius();
                                i8 = i6 + Math.abs(floatingActionButton.getShadowYOffset()) + floatingActionButton.getShadowRadius();
                            }
                            c3173e.setPadding(i7, i8, this.f6132r, this.f6129o);
                            if (this.f6099O < 0 || this.f6097M) {
                                c3173e.setSingleLine(this.f6097M);
                            }
                        }
                        Typeface typeface = this.f6102S;
                        if (typeface != null) {
                            c3173e.setTypeface(typeface);
                        }
                        c3173e.setText(labelText);
                        c3173e.setOnClickListener(floatingActionButton.getOnClickListener());
                        addView(c3173e);
                        floatingActionButton.setTag(2131296606, c3173e);
                    }
                    FloatingActionButton floatingActionButton2 = this.f6115e;
                    if (floatingActionButton == floatingActionButton2) {
                        floatingActionButton2.setOnClickListener(new View$OnClickListenerC3171c(this));
                    }
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingRight = this.f6116e0 == 0 ? ((i3 - i) - (this.f6117f / 2)) - getPaddingRight() : getPaddingLeft() + (this.f6117f / 2);
        boolean z2 = this.f6106W == 0;
        int measuredHeight = z2 ? ((i4 - i2) - this.f6115e.getMeasuredHeight()) - getPaddingBottom() : getPaddingTop();
        int measuredWidth = paddingRight - (this.f6115e.getMeasuredWidth() / 2);
        FloatingActionButton floatingActionButton = this.f6115e;
        floatingActionButton.layout(measuredWidth, measuredHeight, floatingActionButton.getMeasuredWidth() + measuredWidth, this.f6115e.getMeasuredHeight() + measuredHeight);
        int measuredWidth2 = paddingRight - (this.f6104U.getMeasuredWidth() / 2);
        int measuredHeight2 = ((this.f6115e.getMeasuredHeight() / 2) + measuredHeight) - (this.f6104U.getMeasuredHeight() / 2);
        ImageView imageView = this.f6104U;
        imageView.layout(measuredWidth2, measuredHeight2, imageView.getMeasuredWidth() + measuredWidth2, this.f6104U.getMeasuredHeight() + measuredHeight2);
        int i5 = measuredHeight;
        if (z2) {
            i5 = this.f6113d + this.f6115e.getMeasuredHeight() + measuredHeight;
        }
        int i6 = i5;
        for (int i7 = this.f6123i - 1; i7 >= 0; i7--) {
            View childAt = getChildAt(i7);
            if (childAt != this.f6104U) {
                FloatingActionButton floatingActionButton2 = (FloatingActionButton) childAt;
                if (floatingActionButton2.getVisibility() != 8) {
                    int measuredWidth3 = paddingRight - (floatingActionButton2.getMeasuredWidth() / 2);
                    int i8 = i6;
                    if (z2) {
                        i8 = (i6 - floatingActionButton2.getMeasuredHeight()) - this.f6113d;
                    }
                    if (floatingActionButton2 != this.f6115e) {
                        floatingActionButton2.layout(measuredWidth3, i8, floatingActionButton2.getMeasuredWidth() + measuredWidth3, floatingActionButton2.getMeasuredHeight() + i8);
                        if (!this.f6125k) {
                            floatingActionButton2.m4840i(false);
                        }
                    }
                    View view = (View) floatingActionButton2.getTag(2131296606);
                    if (view != null) {
                        int measuredWidth4 = ((this.f6122h0 ? this.f6117f : floatingActionButton2.getMeasuredWidth()) / 2) + this.f6119g;
                        int i9 = this.f6116e0;
                        int i10 = i9 == 0 ? paddingRight - measuredWidth4 : measuredWidth4 + paddingRight;
                        int measuredWidth5 = i9 == 0 ? i10 - view.getMeasuredWidth() : view.getMeasuredWidth() + i10;
                        int i11 = this.f6116e0;
                        int i12 = i11 == 0 ? measuredWidth5 : i10;
                        if (i11 != 0) {
                            i10 = measuredWidth5;
                        }
                        int measuredHeight3 = ((floatingActionButton2.getMeasuredHeight() - view.getMeasuredHeight()) / 2) + (i8 - this.f6121h);
                        view.layout(i12, measuredHeight3, i10, view.getMeasuredHeight() + measuredHeight3);
                        if (!this.f6125k) {
                            view.setVisibility(4);
                        }
                    }
                    i6 = z2 ? i8 - this.f6113d : this.f6113d + childAt.getMeasuredHeight() + i8;
                }
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        this.f6117f = 0;
        measureChildWithMargins(this.f6104U, i, 0, i2, 0);
        for (int i4 = 0; i4 < this.f6123i; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8 && childAt != this.f6104U) {
                measureChildWithMargins(childAt, i, 0, i2, 0);
                this.f6117f = Math.max(this.f6117f, childAt.getMeasuredWidth());
            }
        }
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i3 = i7;
            if (i6 >= this.f6123i) {
                break;
            }
            View childAt2 = getChildAt(i6);
            int i8 = i5;
            int i9 = i3;
            if (childAt2.getVisibility() != 8) {
                if (childAt2 == this.f6104U) {
                    i8 = i5;
                    i9 = i3;
                } else {
                    int measuredWidth = childAt2.getMeasuredWidth();
                    int measuredHeight = childAt2.getMeasuredHeight();
                    C3173e c3173e = (C3173e) childAt2.getTag(2131296606);
                    i9 = i3;
                    if (c3173e != null) {
                        int measuredWidth2 = (this.f6117f - childAt2.getMeasuredWidth()) / (this.f6122h0 ? 1 : 2);
                        measureChildWithMargins(c3173e, i, childAt2.getMeasuredWidth() + (c3173e.f10689f ? Math.abs(c3173e.f10685b) + c3173e.f10684a : 0) + this.f6119g + measuredWidth2, i2, 0);
                        i9 = Math.max(i3, c3173e.getMeasuredWidth() + measuredWidth + 0 + measuredWidth2);
                    }
                    i8 = measuredHeight + i5;
                }
            }
            i6++;
            i5 = i8;
            i7 = i9;
        }
        int paddingRight = getPaddingRight() + getPaddingLeft() + Math.max(this.f6117f, i3 + this.f6119g);
        double paddingBottom = getPaddingBottom() + getPaddingTop() + ((this.f6123i - 1) * this.f6113d) + i5;
        int i10 = (int) ((0.03d * paddingBottom) + paddingBottom);
        if (getLayoutParams().width == -1) {
            paddingRight = ViewGroup.getDefaultSize(getSuggestedMinimumWidth(), i);
        }
        int i11 = i10;
        if (getLayoutParams().height == -1) {
            i11 = ViewGroup.getDefaultSize(getSuggestedMinimumHeight(), i2);
        }
        setMeasuredDimension(paddingRight, i11);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f6105V) {
            boolean z = false;
            int action = motionEvent.getAction();
            if (action == 0) {
                z = this.f6124j;
            } else if (action == 1) {
                m4832a(this.f6096L);
                z = true;
            }
            return z;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setAnimated(boolean z) {
        this.f6096L = z;
        this.f6107a.setDuration((z ? 300 : null) == 1 ? 1L : 0L);
        this.f6109b.setDuration((z ? 300 : null) == 1 ? 1L : 0L);
    }

    public void setAnimationDelayPerItem(int i) {
        this.f6093I = i;
    }

    public void setClosedOnTouchOutside(boolean z) {
        this.f6105V = z;
    }

    public void setIconAnimated(boolean z) {
        this.f6103T = z;
    }

    public void setIconAnimationCloseInterpolator(Interpolator interpolator) {
        this.f6109b.setInterpolator(interpolator);
    }

    public void setIconAnimationInterpolator(Interpolator interpolator) {
        this.f6107a.setInterpolator(interpolator);
        this.f6109b.setInterpolator(interpolator);
    }

    public void setIconAnimationOpenInterpolator(Interpolator interpolator) {
        this.f6107a.setInterpolator(interpolator);
    }

    public void setIconToggleAnimatorSet(AnimatorSet animatorSet) {
        this.f6111c = animatorSet;
    }

    public void setMenuButtonColorNormal(int i) {
        this.f6089E = i;
        this.f6115e.setColorNormal(i);
    }

    public void setMenuButtonColorNormalResId(int i) {
        this.f6089E = getResources().getColor(i);
        this.f6115e.setColorNormalResId(i);
    }

    public void setMenuButtonColorPressed(int i) {
        this.f6090F = i;
        this.f6115e.setColorPressed(i);
    }

    public void setMenuButtonColorPressedResId(int i) {
        this.f6090F = getResources().getColor(i);
        this.f6115e.setColorPressedResId(i);
    }

    public void setMenuButtonColorRipple(int i) {
        this.f6091G = i;
        this.f6115e.setColorRipple(i);
    }

    public void setMenuButtonColorRippleResId(int i) {
        this.f6091G = getResources().getColor(i);
        this.f6115e.setColorRippleResId(i);
    }

    public void setMenuButtonHideAnimation(Animation animation) {
        this.f6115e.setHideAnimation(animation);
    }

    public void setMenuButtonLabelText(String str) {
        this.f6115e.setLabelText(str);
    }

    public void setMenuButtonShowAnimation(Animation animation) {
        this.f6115e.setShowAnimation(animation);
    }

    public void setOnMenuButtonClickListener(View.OnClickListener onClickListener) {
        this.f6115e.setOnClickListener(onClickListener);
    }

    public void setOnMenuButtonLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f6115e.setOnLongClickListener(onLongClickListener);
    }

    public void setOnMenuToggleListener(AbstractC1635c abstractC1635c) {
        this.f6108a0 = abstractC1635c;
    }
}
