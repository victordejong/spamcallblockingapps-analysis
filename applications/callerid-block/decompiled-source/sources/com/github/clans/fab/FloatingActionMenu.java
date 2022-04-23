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
import com.callerid.block.R$anim;
import com.callerid.block.R$dimen;
import com.callerid.block.R$drawable;
import com.callerid.block.R$id;
import com.callerid.block.R$styleable;
/* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu.class */
public class FloatingActionMenu extends ViewGroup {

    /* renamed from: A */
    private boolean f5192A;

    /* renamed from: B */
    private int f5193B;

    /* renamed from: C */
    private float f5194C;

    /* renamed from: D */
    private float f5195D;

    /* renamed from: E */
    private float f5196E;

    /* renamed from: F */
    private int f5197F;

    /* renamed from: G */
    private int f5198G;

    /* renamed from: H */
    private int f5199H;

    /* renamed from: I */
    private Drawable f5200I;

    /* renamed from: J */
    private int f5201J;

    /* renamed from: K */
    private Interpolator f5202K;

    /* renamed from: L */
    private Interpolator f5203L;

    /* renamed from: M */
    private boolean f5204M;

    /* renamed from: N */
    private boolean f5205N;

    /* renamed from: O */
    private int f5206O;

    /* renamed from: P */
    private int f5207P;

    /* renamed from: Q */
    private int f5208Q;

    /* renamed from: R */
    private int f5209R;

    /* renamed from: S */
    private Typeface f5210S;

    /* renamed from: T */
    private boolean f5211T;

    /* renamed from: U */
    private ImageView f5212U;

    /* renamed from: V */
    private boolean f5213V;

    /* renamed from: W */
    private int f5214W;

    /* renamed from: a0 */
    private AbstractC1264h f5215a0;

    /* renamed from: b */
    private AnimatorSet f5216b;

    /* renamed from: b0 */
    private ValueAnimator f5217b0;

    /* renamed from: c */
    private AnimatorSet f5218c;

    /* renamed from: c0 */
    private ValueAnimator f5219c0;

    /* renamed from: d */
    private AnimatorSet f5220d;

    /* renamed from: d0 */
    private int f5221d0;

    /* renamed from: e */
    private int f5222e;

    /* renamed from: e0 */
    private int f5223e0;

    /* renamed from: f */
    private FloatingActionButton f5224f;

    /* renamed from: f0 */
    private Context f5225f0;

    /* renamed from: g */
    private int f5226g;

    /* renamed from: g0 */
    private String f5227g0;

    /* renamed from: h */
    private int f5228h;

    /* renamed from: h0 */
    private boolean f5229h0;

    /* renamed from: i */
    private int f5230i;

    /* renamed from: j */
    private int f5231j;

    /* renamed from: k */
    private boolean f5232k;

    /* renamed from: l */
    private boolean f5233l;

    /* renamed from: m */
    private Handler f5234m;

    /* renamed from: n */
    private int f5235n;

    /* renamed from: o */
    private int f5236o;

    /* renamed from: p */
    private int f5237p;

    /* renamed from: q */
    private int f5238q;

    /* renamed from: r */
    private int f5239r;

    /* renamed from: s */
    private int f5240s;

    /* renamed from: t */
    private ColorStateList f5241t;

    /* renamed from: u */
    private float f5242u;

    /* renamed from: v */
    private int f5243v;

    /* renamed from: w */
    private boolean f5244w;

    /* renamed from: x */
    private int f5245x;

    /* renamed from: y */
    private int f5246y;

    /* renamed from: z */
    private int f5247z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.github.clans.fab.FloatingActionMenu$a */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu$a.class */
    public class C1257a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        final /* synthetic */ int f5248a;

        /* renamed from: b */
        final /* synthetic */ int f5249b;

        /* renamed from: c */
        final /* synthetic */ int f5250c;

        C1257a(int i, int i2, int i3) {
            this.f5248a = i;
            this.f5249b = i2;
            this.f5250c = i3;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            FloatingActionMenu.this.setBackgroundColor(Color.argb(((Integer) valueAnimator.getAnimatedValue()).intValue(), this.f5248a, this.f5249b, this.f5250c));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.github.clans.fab.FloatingActionMenu$b */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu$b.class */
    public class C1258b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        final /* synthetic */ int f5252a;

        /* renamed from: b */
        final /* synthetic */ int f5253b;

        /* renamed from: c */
        final /* synthetic */ int f5254c;

        C1258b(int i, int i2, int i3) {
            this.f5252a = i;
            this.f5253b = i2;
            this.f5254c = i3;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            FloatingActionMenu.this.setBackgroundColor(Color.argb(((Integer) valueAnimator.getAnimatedValue()).intValue(), this.f5252a, this.f5253b, this.f5254c));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.github.clans.fab.FloatingActionMenu$c */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu$c.class */
    public class View$OnClickListenerC1259c implements View.OnClickListener {
        View$OnClickListenerC1259c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FloatingActionMenu floatingActionMenu = FloatingActionMenu.this;
            floatingActionMenu.m9380u(floatingActionMenu.f5204M);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.github.clans.fab.FloatingActionMenu$d */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu$d.class */
    public class RunnableC1260d implements Runnable {

        /* renamed from: b */
        final /* synthetic */ FloatingActionButton f5257b;

        /* renamed from: c */
        final /* synthetic */ boolean f5258c;

        RunnableC1260d(FloatingActionButton floatingActionButton, boolean z) {
            this.f5257b = floatingActionButton;
            this.f5258c = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!FloatingActionMenu.this.m9382s()) {
                if (this.f5257b != FloatingActionMenu.this.f5224f) {
                    this.f5257b.m9433H(this.f5258c);
                }
                Label label = (Label) this.f5257b.getTag(R$id.fab_label);
                if (label != null && label.m9361r()) {
                    label.m9355x(this.f5258c);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.github.clans.fab.FloatingActionMenu$e */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu$e.class */
    public class RunnableC1261e implements Runnable {
        RunnableC1261e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FloatingActionMenu.this.f5232k = true;
            if (FloatingActionMenu.this.f5215a0 != null) {
                FloatingActionMenu.this.f5215a0.m9379a(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.github.clans.fab.FloatingActionMenu$f */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu$f.class */
    public class RunnableC1262f implements Runnable {

        /* renamed from: b */
        final /* synthetic */ FloatingActionButton f5261b;

        /* renamed from: c */
        final /* synthetic */ boolean f5262c;

        RunnableC1262f(FloatingActionButton floatingActionButton, boolean z) {
            this.f5261b = floatingActionButton;
            this.f5262c = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (FloatingActionMenu.this.m9382s()) {
                if (this.f5261b != FloatingActionMenu.this.f5224f) {
                    this.f5261b.m9409u(this.f5262c);
                }
                Label label = (Label) this.f5261b.getTag(R$id.fab_label);
                if (label != null && label.m9361r()) {
                    label.m9362q(this.f5262c);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.github.clans.fab.FloatingActionMenu$g */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu$g.class */
    public class RunnableC1263g implements Runnable {
        RunnableC1263g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FloatingActionMenu.this.f5232k = false;
            if (FloatingActionMenu.this.f5215a0 != null) {
                FloatingActionMenu.this.f5215a0.m9379a(false);
            }
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionMenu$h */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu$h.class */
    public interface AbstractC1264h {
        /* renamed from: a */
        void m9379a(boolean z);
    }

    public FloatingActionMenu(Context context) {
        this(context, null);
    }

    public FloatingActionMenu(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FloatingActionMenu(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5216b = new AnimatorSet();
        this.f5218c = new AnimatorSet();
        this.f5222e = C1268a.m9352a(getContext(), 0.0f);
        this.f5228h = C1268a.m9352a(getContext(), 0.0f);
        this.f5230i = C1268a.m9352a(getContext(), 0.0f);
        this.f5234m = new Handler();
        this.f5237p = C1268a.m9352a(getContext(), 4.0f);
        this.f5238q = C1268a.m9352a(getContext(), 8.0f);
        this.f5239r = C1268a.m9352a(getContext(), 4.0f);
        this.f5240s = C1268a.m9352a(getContext(), 8.0f);
        this.f5243v = C1268a.m9352a(getContext(), 3.0f);
        this.f5194C = 4.0f;
        this.f5195D = 1.0f;
        this.f5196E = 3.0f;
        this.f5204M = true;
        this.f5211T = true;
        m9387n(context, attributeSet);
    }

    /* renamed from: e */
    private void m9396e(FloatingActionButton floatingActionButton) {
        String labelText = floatingActionButton.getLabelText();
        if (!TextUtils.isEmpty(labelText)) {
            Label label = new Label(this.f5225f0);
            label.setClickable(true);
            label.setFab(floatingActionButton);
            label.setShowAnimation(AnimationUtils.loadAnimation(getContext(), this.f5235n));
            label.setHideAnimation(AnimationUtils.loadAnimation(getContext(), this.f5236o));
            if (this.f5209R > 0) {
                label.setTextAppearance(getContext(), this.f5209R);
                label.setShowShadow(false);
                label.setUsingStyle(true);
            } else {
                label.m9356w(this.f5245x, this.f5246y, this.f5247z);
                label.setShowShadow(this.f5244w);
                label.setCornerRadius(this.f5243v);
                if (this.f5206O > 0) {
                    setLabelEllipsize(label);
                }
                label.setMaxLines(this.f5207P);
                label.m9354y();
                label.setTextSize(0, this.f5242u);
                label.setTextColor(this.f5241t);
                int i = this.f5240s;
                int i2 = this.f5237p;
                int i3 = i;
                int i4 = i2;
                if (this.f5244w) {
                    i3 = i + floatingActionButton.getShadowRadius() + Math.abs(floatingActionButton.getShadowXOffset());
                    i4 = i2 + floatingActionButton.getShadowRadius() + Math.abs(floatingActionButton.getShadowYOffset());
                }
                label.setPadding(i3, i4, this.f5240s, this.f5237p);
                if (this.f5207P < 0 || this.f5205N) {
                    label.setSingleLine(this.f5205N);
                }
            }
            Typeface typeface = this.f5210S;
            if (typeface != null) {
                label.setTypeface(typeface);
            }
            label.setText(labelText);
            label.setOnClickListener(floatingActionButton.getOnClickListener());
            addView(label);
            floatingActionButton.setTag(R$id.fab_label, label);
        }
    }

    /* renamed from: f */
    private int m9395f(int i) {
        double d = i;
        Double.isNaN(d);
        Double.isNaN(d);
        return (int) ((0.03d * d) + d);
    }

    /* renamed from: h */
    private void m9393h() {
        float f;
        float f2 = 135.0f;
        if (this.f5214W == 0) {
            int i = this.f5223e0;
            float f3 = i == 0 ? -135.0f : 135.0f;
            f = f3;
            if (i == 0) {
                f = f3;
                f2 = -135.0f;
            }
        } else {
            int i2 = this.f5223e0;
            float f4 = i2 == 0 ? 135.0f : -135.0f;
            f = f4;
            if (i2 == 0) {
                f = f4;
            }
            f2 = -135.0f;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f5212U, "rotation", f, 0.0f);
        this.f5216b.play(ObjectAnimator.ofFloat(this.f5212U, "rotation", 0.0f, f2));
        this.f5218c.play(ofFloat);
        this.f5216b.setInterpolator(this.f5202K);
        this.f5218c.setInterpolator(this.f5203L);
        this.f5216b.setDuration(300L);
        this.f5218c.setDuration(300L);
    }

    /* renamed from: i */
    private void m9392i() {
        for (int i = 0; i < this.f5231j; i++) {
            if (getChildAt(i) != this.f5212U) {
                FloatingActionButton floatingActionButton = (FloatingActionButton) getChildAt(i);
                if (floatingActionButton.getTag(R$id.fab_label) == null) {
                    m9396e(floatingActionButton);
                    FloatingActionButton floatingActionButton2 = this.f5224f;
                    if (floatingActionButton == floatingActionButton2) {
                        floatingActionButton2.setOnClickListener(new View$OnClickListenerC1259c());
                    }
                }
            }
        }
    }

    /* renamed from: j */
    private void m9391j() {
        FloatingActionButton floatingActionButton = new FloatingActionButton(getContext());
        this.f5224f = floatingActionButton;
        boolean z = this.f5192A;
        floatingActionButton.f5145c = z;
        if (z) {
            floatingActionButton.f5147e = C1268a.m9352a(getContext(), this.f5194C);
            this.f5224f.f5148f = C1268a.m9352a(getContext(), this.f5195D);
            this.f5224f.f5149g = C1268a.m9352a(getContext(), this.f5196E);
        }
        this.f5224f.m9436E(this.f5197F, this.f5198G, this.f5199H);
        FloatingActionButton floatingActionButton2 = this.f5224f;
        floatingActionButton2.f5146d = this.f5193B;
        floatingActionButton2.f5144b = this.f5208Q;
        floatingActionButton2.m9432I();
        this.f5224f.setLabelText(this.f5227g0);
        ImageView imageView = new ImageView(getContext());
        this.f5212U = imageView;
        imageView.setImageDrawable(this.f5200I);
        addView(this.f5224f, super.generateDefaultLayoutParams());
        addView(this.f5212U);
        m9393h();
    }

    /* renamed from: n */
    private void m9387n(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FloatingActionMenu, 0, 0);
        this.f5222e = obtainStyledAttributes.getDimensionPixelSize(2, this.f5222e);
        this.f5228h = obtainStyledAttributes.getDimensionPixelSize(19, this.f5228h);
        int i = obtainStyledAttributes.getInt(26, 0);
        this.f5223e0 = i;
        this.f5235n = obtainStyledAttributes.getResourceId(27, i == 0 ? R$anim.fab_slide_in_from_right : R$anim.fab_slide_in_from_left);
        this.f5236o = obtainStyledAttributes.getResourceId(18, this.f5223e0 == 0 ? R$anim.fab_slide_out_to_right : R$anim.fab_slide_out_to_left);
        this.f5237p = obtainStyledAttributes.getDimensionPixelSize(25, this.f5237p);
        this.f5238q = obtainStyledAttributes.getDimensionPixelSize(24, this.f5238q);
        this.f5239r = obtainStyledAttributes.getDimensionPixelSize(22, this.f5239r);
        this.f5240s = obtainStyledAttributes.getDimensionPixelSize(23, this.f5240s);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(31);
        this.f5241t = colorStateList;
        if (colorStateList == null) {
            this.f5241t = ColorStateList.valueOf(-1);
        }
        this.f5242u = obtainStyledAttributes.getDimension(32, getResources().getDimension(R$dimen.labels_text_size));
        this.f5243v = obtainStyledAttributes.getDimensionPixelSize(15, this.f5243v);
        this.f5244w = obtainStyledAttributes.getBoolean(28, true);
        this.f5245x = obtainStyledAttributes.getColor(12, -13421773);
        this.f5246y = obtainStyledAttributes.getColor(13, -12303292);
        this.f5247z = obtainStyledAttributes.getColor(14, 1728053247);
        this.f5192A = obtainStyledAttributes.getBoolean(38, true);
        this.f5193B = obtainStyledAttributes.getColor(34, 1711276032);
        this.f5194C = obtainStyledAttributes.getDimension(35, this.f5194C);
        this.f5195D = obtainStyledAttributes.getDimension(36, this.f5195D);
        this.f5196E = obtainStyledAttributes.getDimension(37, this.f5196E);
        this.f5197F = obtainStyledAttributes.getColor(4, -2473162);
        this.f5198G = obtainStyledAttributes.getColor(5, -1617853);
        this.f5199H = obtainStyledAttributes.getColor(6, -1711276033);
        this.f5201J = obtainStyledAttributes.getInt(0, 50);
        Drawable drawable = obtainStyledAttributes.getDrawable(11);
        this.f5200I = drawable;
        if (drawable == null) {
            this.f5200I = getResources().getDrawable(R$drawable.fab_add);
        }
        this.f5205N = obtainStyledAttributes.getBoolean(29, false);
        this.f5206O = obtainStyledAttributes.getInt(17, 0);
        this.f5207P = obtainStyledAttributes.getInt(20, -1);
        this.f5208Q = obtainStyledAttributes.getInt(10, 0);
        this.f5209R = obtainStyledAttributes.getResourceId(30, 0);
        String string = obtainStyledAttributes.getString(16);
        try {
            if (!TextUtils.isEmpty(string)) {
                this.f5210S = Typeface.createFromAsset(getContext().getAssets(), string);
            }
            this.f5214W = obtainStyledAttributes.getInt(33, 0);
            this.f5221d0 = obtainStyledAttributes.getColor(1, 0);
            if (obtainStyledAttributes.hasValue(8)) {
                this.f5229h0 = true;
                this.f5227g0 = obtainStyledAttributes.getString(8);
            }
            if (obtainStyledAttributes.hasValue(21)) {
                m9384q(obtainStyledAttributes.getDimensionPixelSize(21, 0));
            }
            this.f5202K = new OvershootInterpolator();
            this.f5203L = new AnticipateInterpolator();
            this.f5225f0 = new ContextThemeWrapper(getContext(), this.f5209R);
            m9386o();
            m9391j();
            m9385p(obtainStyledAttributes);
            obtainStyledAttributes.recycle();
        } catch (RuntimeException e) {
            throw new IllegalArgumentException("Unable to load specified custom font: " + string, e);
        }
    }

    /* renamed from: o */
    private void m9386o() {
        int alpha = Color.alpha(this.f5221d0);
        int red = Color.red(this.f5221d0);
        int green = Color.green(this.f5221d0);
        int blue = Color.blue(this.f5221d0);
        ValueAnimator ofInt = ValueAnimator.ofInt(0, alpha);
        this.f5217b0 = ofInt;
        ofInt.setDuration(300L);
        this.f5217b0.addUpdateListener(new C1257a(red, green, blue));
        ValueAnimator ofInt2 = ValueAnimator.ofInt(alpha, 0);
        this.f5219c0 = ofInt2;
        ofInt2.setDuration(300L);
        this.f5219c0.addUpdateListener(new C1258b(red, green, blue));
    }

    /* renamed from: p */
    private void m9385p(TypedArray typedArray) {
        int resourceId = typedArray.getResourceId(9, R$anim.fab_scale_up);
        setMenuButtonShowAnimation(AnimationUtils.loadAnimation(getContext(), resourceId));
        AnimationUtils.loadAnimation(getContext(), resourceId);
        int resourceId2 = typedArray.getResourceId(7, R$anim.fab_scale_down);
        setMenuButtonHideAnimation(AnimationUtils.loadAnimation(getContext(), resourceId2));
        AnimationUtils.loadAnimation(getContext(), resourceId2);
    }

    /* renamed from: q */
    private void m9384q(int i) {
        this.f5237p = i;
        this.f5238q = i;
        this.f5239r = i;
        this.f5240s = i;
    }

    /* renamed from: r */
    private boolean m9383r() {
        return this.f5221d0 != 0;
    }

    private void setLabelEllipsize(Label label) {
        TextUtils.TruncateAt truncateAt;
        int i = this.f5206O;
        if (i == 1) {
            truncateAt = TextUtils.TruncateAt.START;
        } else if (i == 2) {
            truncateAt = TextUtils.TruncateAt.MIDDLE;
        } else if (i == 3) {
            truncateAt = TextUtils.TruncateAt.END;
        } else if (i == 4) {
            truncateAt = TextUtils.TruncateAt.MARQUEE;
        } else {
            return;
        }
        label.setEllipsize(truncateAt);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams;
    }

    /* renamed from: g */
    public void m9394g(boolean z) {
        if (m9382s()) {
            if (m9383r()) {
                this.f5219c0.start();
            }
            if (this.f5211T) {
                AnimatorSet animatorSet = this.f5220d;
                if (animatorSet != null) {
                    animatorSet.start();
                } else {
                    this.f5218c.start();
                    this.f5216b.cancel();
                }
            }
            this.f5233l = false;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                i = i;
                i2 = i2;
                if (childAt instanceof FloatingActionButton) {
                    i = i;
                    i2 = i2;
                    if (childAt.getVisibility() != 8) {
                        i++;
                        this.f5234m.postDelayed(new RunnableC1262f((FloatingActionButton) childAt, z), i2);
                        i2 += this.f5201J;
                    }
                }
            }
            this.f5234m.postDelayed(new RunnableC1263g(), (i + 1) * this.f5201J);
        }
    }

    public int getAnimationDelayPerItem() {
        return this.f5201J;
    }

    public AnimatorSet getIconToggleAnimatorSet() {
        return this.f5220d;
    }

    public int getMenuButtonColorNormal() {
        return this.f5197F;
    }

    public int getMenuButtonColorPressed() {
        return this.f5198G;
    }

    public int getMenuButtonColorRipple() {
        return this.f5199H;
    }

    public String getMenuButtonLabelText() {
        return this.f5227g0;
    }

    public ImageView getMenuIconView() {
        return this.f5212U;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: k */
    public ViewGroup.MarginLayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    /* renamed from: l */
    public ViewGroup.MarginLayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: m */
    public ViewGroup.MarginLayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        bringChildToFront(this.f5224f);
        bringChildToFront(this.f5212U);
        this.f5231j = getChildCount();
        m9392i();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingRight = this.f5223e0 == 0 ? ((i3 - i) - (this.f5226g / 2)) - getPaddingRight() : (this.f5226g / 2) + getPaddingLeft();
        boolean z2 = this.f5214W == 0;
        int measuredHeight = z2 ? ((i4 - i2) - this.f5224f.getMeasuredHeight()) - getPaddingBottom() : getPaddingTop();
        int measuredWidth = paddingRight - (this.f5224f.getMeasuredWidth() / 2);
        FloatingActionButton floatingActionButton = this.f5224f;
        floatingActionButton.layout(measuredWidth, measuredHeight, floatingActionButton.getMeasuredWidth() + measuredWidth, this.f5224f.getMeasuredHeight() + measuredHeight);
        int measuredWidth2 = paddingRight - (this.f5212U.getMeasuredWidth() / 2);
        int measuredHeight2 = ((this.f5224f.getMeasuredHeight() / 2) + measuredHeight) - (this.f5212U.getMeasuredHeight() / 2);
        ImageView imageView = this.f5212U;
        imageView.layout(measuredWidth2, measuredHeight2, imageView.getMeasuredWidth() + measuredWidth2, this.f5212U.getMeasuredHeight() + measuredHeight2);
        int i5 = measuredHeight;
        if (z2) {
            i5 = measuredHeight + this.f5224f.getMeasuredHeight() + this.f5222e;
        }
        for (int i6 = this.f5231j - 1; i6 >= 0; i6--) {
            View childAt = getChildAt(i6);
            if (childAt != this.f5212U) {
                FloatingActionButton floatingActionButton2 = (FloatingActionButton) childAt;
                if (floatingActionButton2.getVisibility() != 8) {
                    int measuredWidth3 = paddingRight - (floatingActionButton2.getMeasuredWidth() / 2);
                    int i7 = i5;
                    if (z2) {
                        i7 = (i5 - floatingActionButton2.getMeasuredHeight()) - this.f5222e;
                    }
                    if (floatingActionButton2 != this.f5224f) {
                        floatingActionButton2.layout(measuredWidth3, i7, floatingActionButton2.getMeasuredWidth() + measuredWidth3, floatingActionButton2.getMeasuredHeight() + i7);
                        if (!this.f5233l) {
                            floatingActionButton2.m9409u(false);
                        }
                    }
                    View view = (View) floatingActionButton2.getTag(R$id.fab_label);
                    if (view != null) {
                        int measuredWidth4 = ((this.f5229h0 ? this.f5226g : floatingActionButton2.getMeasuredWidth()) / 2) + this.f5228h;
                        int i8 = this.f5223e0;
                        int i9 = i8 == 0 ? paddingRight - measuredWidth4 : measuredWidth4 + paddingRight;
                        int measuredWidth5 = i8 == 0 ? i9 - view.getMeasuredWidth() : view.getMeasuredWidth() + i9;
                        int i10 = this.f5223e0;
                        int i11 = i10 == 0 ? measuredWidth5 : i9;
                        if (i10 != 0) {
                            i9 = measuredWidth5;
                        }
                        int measuredHeight3 = (i7 - this.f5230i) + ((floatingActionButton2.getMeasuredHeight() - view.getMeasuredHeight()) / 2);
                        view.layout(i11, measuredHeight3, i9, view.getMeasuredHeight() + measuredHeight3);
                        if (!this.f5233l) {
                            view.setVisibility(4);
                        }
                    }
                    i5 = z2 ? i7 - this.f5222e : i7 + childAt.getMeasuredHeight() + this.f5222e;
                }
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        this.f5226g = 0;
        measureChildWithMargins(this.f5212U, i, 0, i2, 0);
        for (int i3 = 0; i3 < this.f5231j; i3++) {
            View childAt = getChildAt(i3);
            if (!(childAt.getVisibility() == 8 || childAt == this.f5212U)) {
                measureChildWithMargins(childAt, i, 0, i2, 0);
                this.f5226g = Math.max(this.f5226g, childAt.getMeasuredWidth());
            }
        }
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int i7 = 1;
            if (i5 >= this.f5231j) {
                break;
            }
            View childAt2 = getChildAt(i5);
            i4 = i4;
            i6 = i6;
            if (childAt2.getVisibility() != 8) {
                if (childAt2 == this.f5212U) {
                    i4 = i4;
                    i6 = i6;
                } else {
                    int measuredWidth = childAt2.getMeasuredWidth();
                    int measuredHeight = childAt2.getMeasuredHeight();
                    Label label = (Label) childAt2.getTag(R$id.fab_label);
                    i6 = i6;
                    if (label != null) {
                        int i8 = this.f5226g;
                        int measuredWidth2 = childAt2.getMeasuredWidth();
                        if (!this.f5229h0) {
                            i7 = 2;
                        }
                        int i9 = (i8 - measuredWidth2) / i7;
                        measureChildWithMargins(label, i, childAt2.getMeasuredWidth() + label.m9365n() + this.f5228h + i9, i2, 0);
                        i6 = Math.max(i6, measuredWidth + 0 + label.getMeasuredWidth() + i9);
                    }
                    i4 += measuredHeight;
                }
            }
            i5++;
        }
        int max = Math.max(this.f5226g, i6 + this.f5228h) + getPaddingLeft() + getPaddingRight();
        int f = m9395f(i4 + (this.f5222e * (this.f5231j - 1)) + getPaddingTop() + getPaddingBottom());
        if (getLayoutParams().width == -1) {
            max = ViewGroup.getDefaultSize(getSuggestedMinimumWidth(), i);
        }
        if (getLayoutParams().height == -1) {
            f = ViewGroup.getDefaultSize(getSuggestedMinimumHeight(), i2);
        }
        setMeasuredDimension(max, f);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f5213V) {
            return super.onTouchEvent(motionEvent);
        }
        boolean z = false;
        int action = motionEvent.getAction();
        if (action == 0) {
            z = m9382s();
        } else if (action == 1) {
            m9394g(this.f5204M);
            z = true;
        }
        return z;
    }

    /* renamed from: s */
    public boolean m9382s() {
        return this.f5232k;
    }

    public void setAnimated(boolean z) {
        this.f5204M = z;
        long j = 300;
        this.f5216b.setDuration(z ? 300L : 0L);
        AnimatorSet animatorSet = this.f5218c;
        if (!z) {
            j = 0;
        }
        animatorSet.setDuration(j);
    }

    public void setAnimationDelayPerItem(int i) {
        this.f5201J = i;
    }

    public void setClosedOnTouchOutside(boolean z) {
        this.f5213V = z;
    }

    public void setIconAnimated(boolean z) {
        this.f5211T = z;
    }

    public void setIconAnimationCloseInterpolator(Interpolator interpolator) {
        this.f5218c.setInterpolator(interpolator);
    }

    public void setIconAnimationInterpolator(Interpolator interpolator) {
        this.f5216b.setInterpolator(interpolator);
        this.f5218c.setInterpolator(interpolator);
    }

    public void setIconAnimationOpenInterpolator(Interpolator interpolator) {
        this.f5216b.setInterpolator(interpolator);
    }

    public void setIconToggleAnimatorSet(AnimatorSet animatorSet) {
        this.f5220d = animatorSet;
    }

    public void setMenuButtonColorNormal(int i) {
        this.f5197F = i;
        this.f5224f.setColorNormal(i);
    }

    public void setMenuButtonColorNormalResId(int i) {
        this.f5197F = getResources().getColor(i);
        this.f5224f.setColorNormalResId(i);
    }

    public void setMenuButtonColorPressed(int i) {
        this.f5198G = i;
        this.f5224f.setColorPressed(i);
    }

    public void setMenuButtonColorPressedResId(int i) {
        this.f5198G = getResources().getColor(i);
        this.f5224f.setColorPressedResId(i);
    }

    public void setMenuButtonColorRipple(int i) {
        this.f5199H = i;
        this.f5224f.setColorRipple(i);
    }

    public void setMenuButtonColorRippleResId(int i) {
        this.f5199H = getResources().getColor(i);
        this.f5224f.setColorRippleResId(i);
    }

    public void setMenuButtonHideAnimation(Animation animation) {
        this.f5224f.setHideAnimation(animation);
    }

    public void setMenuButtonLabelText(String str) {
        this.f5224f.setLabelText(str);
    }

    public void setMenuButtonShowAnimation(Animation animation) {
        this.f5224f.setShowAnimation(animation);
    }

    public void setOnMenuButtonClickListener(View.OnClickListener onClickListener) {
        this.f5224f.setOnClickListener(onClickListener);
    }

    public void setOnMenuButtonLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f5224f.setOnLongClickListener(onLongClickListener);
    }

    public void setOnMenuToggleListener(AbstractC1264h hVar) {
        this.f5215a0 = hVar;
    }

    /* renamed from: t */
    public void m9381t(boolean z) {
        if (!m9382s()) {
            if (m9383r()) {
                this.f5217b0.start();
            }
            if (this.f5211T) {
                AnimatorSet animatorSet = this.f5220d;
                if (animatorSet == null) {
                    this.f5218c.cancel();
                    animatorSet = this.f5216b;
                }
                animatorSet.start();
            }
            this.f5233l = true;
            int i = 0;
            int i2 = 0;
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = getChildAt(childCount);
                i = i;
                i2 = i2;
                if (childAt instanceof FloatingActionButton) {
                    i = i;
                    i2 = i2;
                    if (childAt.getVisibility() != 8) {
                        i++;
                        this.f5234m.postDelayed(new RunnableC1260d((FloatingActionButton) childAt, z), i2);
                        i2 += this.f5201J;
                    }
                }
            }
            this.f5234m.postDelayed(new RunnableC1261e(), (i + 1) * this.f5201J);
        }
    }

    /* renamed from: u */
    public void m9380u(boolean z) {
        if (m9382s()) {
            m9394g(z);
        } else {
            m9381t(z);
        }
    }
}
