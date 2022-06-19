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
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$dimen;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$styleable;
/* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu.class */
public class FloatingActionMenu extends ViewGroup {

    /* renamed from: A */
    private int f13705A;

    /* renamed from: B */
    private int f13706B;

    /* renamed from: C */
    private boolean f13707C;

    /* renamed from: D */
    private int f13708D;

    /* renamed from: E */
    private float f13709E;

    /* renamed from: F */
    private float f13710F;

    /* renamed from: G */
    private float f13711G;

    /* renamed from: H */
    private int f13712H;

    /* renamed from: I */
    private int f13713I;

    /* renamed from: J */
    private int f13714J;

    /* renamed from: K */
    private Drawable f13715K;

    /* renamed from: L */
    private int f13716L;

    /* renamed from: M */
    private Interpolator f13717M;

    /* renamed from: N */
    private Interpolator f13718N;

    /* renamed from: O */
    private boolean f13719O;

    /* renamed from: P */
    private boolean f13720P;

    /* renamed from: Q */
    private int f13721Q;

    /* renamed from: R */
    private int f13722R;

    /* renamed from: S */
    private int f13723S;

    /* renamed from: T */
    private int f13724T;

    /* renamed from: U */
    private Typeface f13725U;

    /* renamed from: V */
    private boolean f13726V;

    /* renamed from: W */
    private ImageView f13727W;

    /* renamed from: a0 */
    private Animation f13728a0;

    /* renamed from: b0 */
    private Animation f13729b0;

    /* renamed from: c0 */
    private Animation f13730c0;

    /* renamed from: d */
    private AnimatorSet f13731d;

    /* renamed from: d0 */
    private Animation f13732d0;

    /* renamed from: e */
    private AnimatorSet f13733e;

    /* renamed from: e0 */
    private boolean f13734e0;

    /* renamed from: f */
    private AnimatorSet f13735f;

    /* renamed from: f0 */
    private int f13736f0;

    /* renamed from: g */
    private int f13737g;

    /* renamed from: g0 */
    private AbstractC4501h f13738g0;

    /* renamed from: h */
    private FloatingActionButton f13739h;

    /* renamed from: h0 */
    private ValueAnimator f13740h0;

    /* renamed from: i */
    private int f13741i;

    /* renamed from: i0 */
    private ValueAnimator f13742i0;

    /* renamed from: j */
    private int f13743j;

    /* renamed from: j0 */
    private int f13744j0;

    /* renamed from: k */
    private int f13745k;

    /* renamed from: k0 */
    private int f13746k0;

    /* renamed from: l */
    private int f13747l;

    /* renamed from: l0 */
    private Context f13748l0;

    /* renamed from: m */
    private boolean f13749m;

    /* renamed from: m0 */
    private String f13750m0;

    /* renamed from: n */
    private boolean f13751n;

    /* renamed from: n0 */
    private boolean f13752n0;

    /* renamed from: o */
    private Handler f13753o;

    /* renamed from: p */
    private int f13754p;

    /* renamed from: q */
    private int f13755q;

    /* renamed from: r */
    private int f13756r;

    /* renamed from: s */
    private int f13757s;

    /* renamed from: t */
    private int f13758t;

    /* renamed from: u */
    private int f13759u;

    /* renamed from: v */
    private ColorStateList f13760v;

    /* renamed from: w */
    private float f13761w;

    /* renamed from: x */
    private int f13762x;

    /* renamed from: y */
    private boolean f13763y;

    /* renamed from: z */
    private int f13764z;

    /* renamed from: com.github.clans.fab.FloatingActionMenu$a */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu$a.class */
    public class C4494a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        final /* synthetic */ int f13765a;

        /* renamed from: b */
        final /* synthetic */ int f13766b;

        /* renamed from: c */
        final /* synthetic */ int f13767c;

        C4494a(int i, int i2, int i3) {
            FloatingActionMenu.this = r4;
            this.f13765a = i;
            this.f13766b = i2;
            this.f13767c = i3;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            FloatingActionMenu.this.setBackgroundColor(Color.argb(((Integer) valueAnimator.getAnimatedValue()).intValue(), this.f13765a, this.f13766b, this.f13767c));
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionMenu$b */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu$b.class */
    public class C4495b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        final /* synthetic */ int f13769a;

        /* renamed from: b */
        final /* synthetic */ int f13770b;

        /* renamed from: c */
        final /* synthetic */ int f13771c;

        C4495b(int i, int i2, int i3) {
            FloatingActionMenu.this = r4;
            this.f13769a = i;
            this.f13770b = i2;
            this.f13771c = i3;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            FloatingActionMenu.this.setBackgroundColor(Color.argb(((Integer) valueAnimator.getAnimatedValue()).intValue(), this.f13769a, this.f13770b, this.f13771c));
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionMenu$c */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu$c.class */
    public class View$OnClickListenerC4496c implements View.OnClickListener {
        View$OnClickListenerC4496c() {
            FloatingActionMenu.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FloatingActionMenu floatingActionMenu = FloatingActionMenu.this;
            floatingActionMenu.m22320u(floatingActionMenu.f13719O);
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionMenu$d */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu$d.class */
    public class RunnableC4497d implements Runnable {

        /* renamed from: d */
        final /* synthetic */ FloatingActionButton f13774d;

        /* renamed from: e */
        final /* synthetic */ boolean f13775e;

        RunnableC4497d(FloatingActionButton floatingActionButton, boolean z) {
            FloatingActionMenu.this = r4;
            this.f13774d = floatingActionButton;
            this.f13775e = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (FloatingActionMenu.this.m22322s()) {
                return;
            }
            if (this.f13774d != FloatingActionMenu.this.f13739h) {
                this.f13774d.m22373H(this.f13775e);
            }
            Label label = (Label) this.f13774d.getTag(R$id.fab_label);
            if (label == null || !label.m22301r()) {
                return;
            }
            label.m22295x(this.f13775e);
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionMenu$e */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu$e.class */
    public class RunnableC4498e implements Runnable {
        RunnableC4498e() {
            FloatingActionMenu.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            FloatingActionMenu.this.f13749m = true;
            if (FloatingActionMenu.this.f13738g0 != null) {
                FloatingActionMenu.this.f13738g0.mo22319a(true);
            }
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionMenu$f */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu$f.class */
    public class RunnableC4499f implements Runnable {

        /* renamed from: d */
        final /* synthetic */ FloatingActionButton f13778d;

        /* renamed from: e */
        final /* synthetic */ boolean f13779e;

        RunnableC4499f(FloatingActionButton floatingActionButton, boolean z) {
            FloatingActionMenu.this = r4;
            this.f13778d = floatingActionButton;
            this.f13779e = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!FloatingActionMenu.this.m22322s()) {
                return;
            }
            if (this.f13778d != FloatingActionMenu.this.f13739h) {
                this.f13778d.m22349u(this.f13779e);
            }
            Label label = (Label) this.f13778d.getTag(R$id.fab_label);
            if (label == null || !label.m22301r()) {
                return;
            }
            label.m22302q(this.f13779e);
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionMenu$g */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu$g.class */
    public class RunnableC4500g implements Runnable {
        RunnableC4500g() {
            FloatingActionMenu.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            FloatingActionMenu.this.f13749m = false;
            if (FloatingActionMenu.this.f13738g0 != null) {
                FloatingActionMenu.this.f13738g0.mo22319a(false);
            }
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionMenu$h */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionMenu$h.class */
    public interface AbstractC4501h {
        /* renamed from: a */
        void mo22319a(boolean z);
    }

    public FloatingActionMenu(Context context) {
        this(context, null);
    }

    public FloatingActionMenu(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FloatingActionMenu(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f13731d = new AnimatorSet();
        this.f13733e = new AnimatorSet();
        this.f13737g = C4505a.m22292a(getContext(), 0.0f);
        this.f13743j = C4505a.m22292a(getContext(), 0.0f);
        this.f13745k = C4505a.m22292a(getContext(), 0.0f);
        this.f13753o = new Handler();
        this.f13756r = C4505a.m22292a(getContext(), 4.0f);
        this.f13757s = C4505a.m22292a(getContext(), 8.0f);
        this.f13758t = C4505a.m22292a(getContext(), 4.0f);
        this.f13759u = C4505a.m22292a(getContext(), 8.0f);
        this.f13762x = C4505a.m22292a(getContext(), 3.0f);
        this.f13709E = 4.0f;
        this.f13710F = 1.0f;
        this.f13711G = 3.0f;
        this.f13719O = true;
        this.f13726V = true;
        m22327n(context, attributeSet);
    }

    /* renamed from: e */
    private void m22336e(FloatingActionButton floatingActionButton) {
        String labelText = floatingActionButton.getLabelText();
        if (TextUtils.isEmpty(labelText)) {
            return;
        }
        Label label = new Label(this.f13748l0);
        label.setClickable(true);
        label.setFab(floatingActionButton);
        label.setShowAnimation(AnimationUtils.loadAnimation(getContext(), this.f13754p));
        label.setHideAnimation(AnimationUtils.loadAnimation(getContext(), this.f13755q));
        if (this.f13724T > 0) {
            label.setTextAppearance(getContext(), this.f13724T);
            label.setShowShadow(false);
            label.setUsingStyle(true);
        } else {
            label.m22296w(this.f13764z, this.f13705A, this.f13706B);
            label.setShowShadow(this.f13763y);
            label.setCornerRadius(this.f13762x);
            if (this.f13721Q > 0) {
                setLabelEllipsize(label);
            }
            label.setMaxLines(this.f13722R);
            label.m22294y();
            label.setTextSize(0, this.f13761w);
            label.setTextColor(this.f13760v);
            int i = this.f13759u;
            int i2 = this.f13756r;
            int i3 = i;
            int i4 = i2;
            if (this.f13763y) {
                i3 = i + floatingActionButton.getShadowRadius() + Math.abs(floatingActionButton.getShadowXOffset());
                i4 = i2 + floatingActionButton.getShadowRadius() + Math.abs(floatingActionButton.getShadowYOffset());
            }
            label.setPadding(i3, i4, this.f13759u, this.f13756r);
            if (this.f13722R < 0 || this.f13720P) {
                label.setSingleLine(this.f13720P);
            }
        }
        Typeface typeface = this.f13725U;
        if (typeface != null) {
            label.setTypeface(typeface);
        }
        label.setText(labelText);
        label.setOnClickListener(floatingActionButton.getOnClickListener());
        addView(label);
        floatingActionButton.setTag(R$id.fab_label, label);
    }

    /* renamed from: f */
    private int m22335f(int i) {
        double d = i;
        return (int) ((0.03d * d) + d);
    }

    /* renamed from: h */
    private void m22333h() {
        float f;
        float f2 = 135.0f;
        if (this.f13736f0 == 0) {
            int i = this.f13746k0;
            float f3 = i == 0 ? -135.0f : 135.0f;
            f = f3;
            if (i == 0) {
                f = f3;
                f2 = -135.0f;
            }
        } else {
            int i2 = this.f13746k0;
            float f4 = i2 == 0 ? 135.0f : -135.0f;
            f = f4;
            if (i2 == 0) {
                f = f4;
            }
            f2 = -135.0f;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f13727W, "rotation", f, 0.0f);
        this.f13731d.play(ObjectAnimator.ofFloat(this.f13727W, "rotation", 0.0f, f2));
        this.f13733e.play(ofFloat);
        this.f13731d.setInterpolator(this.f13717M);
        this.f13733e.setInterpolator(this.f13718N);
        this.f13731d.setDuration(300L);
        this.f13733e.setDuration(300L);
    }

    /* renamed from: i */
    private void m22332i() {
        for (int i = 0; i < this.f13747l; i++) {
            if (getChildAt(i) != this.f13727W) {
                FloatingActionButton floatingActionButton = (FloatingActionButton) getChildAt(i);
                if (floatingActionButton.getTag(R$id.fab_label) == null) {
                    m22336e(floatingActionButton);
                    FloatingActionButton floatingActionButton2 = this.f13739h;
                    if (floatingActionButton == floatingActionButton2) {
                        floatingActionButton2.setOnClickListener(new View$OnClickListenerC4496c());
                    }
                }
            }
        }
    }

    /* renamed from: j */
    private void m22331j() {
        FloatingActionButton floatingActionButton = new FloatingActionButton(getContext());
        this.f13739h = floatingActionButton;
        boolean z = this.f13707C;
        floatingActionButton.f13660f = z;
        if (z) {
            floatingActionButton.f13662h = C4505a.m22292a(getContext(), this.f13709E);
            this.f13739h.f13663i = C4505a.m22292a(getContext(), this.f13710F);
            this.f13739h.f13664j = C4505a.m22292a(getContext(), this.f13711G);
        }
        this.f13739h.m22376E(this.f13712H, this.f13713I, this.f13714J);
        FloatingActionButton floatingActionButton2 = this.f13739h;
        floatingActionButton2.f13661g = this.f13708D;
        floatingActionButton2.f13659e = this.f13723S;
        floatingActionButton2.m22372I();
        this.f13739h.setLabelText(this.f13750m0);
        ImageView imageView = new ImageView(getContext());
        this.f13727W = imageView;
        imageView.setImageDrawable(this.f13715K);
        addView(this.f13739h, super.generateDefaultLayoutParams());
        addView(this.f13727W);
        m22333h();
    }

    /* renamed from: n */
    private void m22327n(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FloatingActionMenu, 0, 0);
        this.f13737g = obtainStyledAttributes.getDimensionPixelSize(2, this.f13737g);
        this.f13743j = obtainStyledAttributes.getDimensionPixelSize(19, this.f13743j);
        int i = obtainStyledAttributes.getInt(26, 0);
        this.f13746k0 = i;
        this.f13754p = obtainStyledAttributes.getResourceId(27, i == 0 ? 2130772025 : 2130772024);
        this.f13755q = obtainStyledAttributes.getResourceId(18, this.f13746k0 == 0 ? 2130772027 : 2130772026);
        this.f13756r = obtainStyledAttributes.getDimensionPixelSize(25, this.f13756r);
        this.f13757s = obtainStyledAttributes.getDimensionPixelSize(24, this.f13757s);
        this.f13758t = obtainStyledAttributes.getDimensionPixelSize(22, this.f13758t);
        this.f13759u = obtainStyledAttributes.getDimensionPixelSize(23, this.f13759u);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(31);
        this.f13760v = colorStateList;
        if (colorStateList == null) {
            this.f13760v = ColorStateList.valueOf(-1);
        }
        this.f13761w = obtainStyledAttributes.getDimension(32, getResources().getDimension(R$dimen.labels_text_size));
        this.f13762x = obtainStyledAttributes.getDimensionPixelSize(15, this.f13762x);
        this.f13763y = obtainStyledAttributes.getBoolean(28, true);
        this.f13764z = obtainStyledAttributes.getColor(12, -13421773);
        this.f13705A = obtainStyledAttributes.getColor(13, -12303292);
        this.f13706B = obtainStyledAttributes.getColor(14, 1728053247);
        this.f13707C = obtainStyledAttributes.getBoolean(38, true);
        this.f13708D = obtainStyledAttributes.getColor(34, 1711276032);
        this.f13709E = obtainStyledAttributes.getDimension(35, this.f13709E);
        this.f13710F = obtainStyledAttributes.getDimension(36, this.f13710F);
        this.f13711G = obtainStyledAttributes.getDimension(37, this.f13711G);
        this.f13712H = obtainStyledAttributes.getColor(4, -2473162);
        this.f13713I = obtainStyledAttributes.getColor(5, -1617853);
        this.f13714J = obtainStyledAttributes.getColor(6, -1711276033);
        this.f13716L = obtainStyledAttributes.getInt(0, 50);
        Drawable drawable = obtainStyledAttributes.getDrawable(11);
        this.f13715K = drawable;
        if (drawable == null) {
            this.f13715K = getResources().getDrawable(R$drawable.fab_add);
        }
        this.f13720P = obtainStyledAttributes.getBoolean(29, false);
        this.f13721Q = obtainStyledAttributes.getInt(17, 0);
        this.f13722R = obtainStyledAttributes.getInt(20, -1);
        this.f13723S = obtainStyledAttributes.getInt(10, 0);
        this.f13724T = obtainStyledAttributes.getResourceId(30, 0);
        String string = obtainStyledAttributes.getString(16);
        try {
            if (!TextUtils.isEmpty(string)) {
                this.f13725U = Typeface.createFromAsset(getContext().getAssets(), string);
            }
            this.f13736f0 = obtainStyledAttributes.getInt(33, 0);
            this.f13744j0 = obtainStyledAttributes.getColor(1, 0);
            if (obtainStyledAttributes.hasValue(8)) {
                this.f13752n0 = true;
                this.f13750m0 = obtainStyledAttributes.getString(8);
            }
            if (obtainStyledAttributes.hasValue(21)) {
                m22324q(obtainStyledAttributes.getDimensionPixelSize(21, 0));
            }
            this.f13717M = new OvershootInterpolator();
            this.f13718N = new AnticipateInterpolator();
            this.f13748l0 = new ContextThemeWrapper(getContext(), this.f13724T);
            m22326o();
            m22331j();
            m22325p(obtainStyledAttributes);
            obtainStyledAttributes.recycle();
        } catch (RuntimeException e) {
            throw new IllegalArgumentException("Unable to load specified custom font: " + string, e);
        }
    }

    /* renamed from: o */
    private void m22326o() {
        int alpha = Color.alpha(this.f13744j0);
        int red = Color.red(this.f13744j0);
        int green = Color.green(this.f13744j0);
        int blue = Color.blue(this.f13744j0);
        ValueAnimator ofInt = ValueAnimator.ofInt(0, alpha);
        this.f13740h0 = ofInt;
        ofInt.setDuration(300L);
        this.f13740h0.addUpdateListener(new C4494a(red, green, blue));
        ValueAnimator ofInt2 = ValueAnimator.ofInt(alpha, 0);
        this.f13742i0 = ofInt2;
        ofInt2.setDuration(300L);
        this.f13742i0.addUpdateListener(new C4495b(red, green, blue));
    }

    /* renamed from: p */
    private void m22325p(TypedArray typedArray) {
        int resourceId = typedArray.getResourceId(9, R$anim.fab_scale_up);
        setMenuButtonShowAnimation(AnimationUtils.loadAnimation(getContext(), resourceId));
        this.f13730c0 = AnimationUtils.loadAnimation(getContext(), resourceId);
        int resourceId2 = typedArray.getResourceId(7, R$anim.fab_scale_down);
        setMenuButtonHideAnimation(AnimationUtils.loadAnimation(getContext(), resourceId2));
        this.f13732d0 = AnimationUtils.loadAnimation(getContext(), resourceId2);
    }

    /* renamed from: q */
    private void m22324q(int i) {
        this.f13756r = i;
        this.f13757s = i;
        this.f13758t = i;
        this.f13759u = i;
    }

    /* renamed from: r */
    private boolean m22323r() {
        return this.f13744j0 != 0;
    }

    private void setLabelEllipsize(Label label) {
        int i = this.f13721Q;
        if (i == 1) {
            label.setEllipsize(TextUtils.TruncateAt.START);
        } else if (i == 2) {
            label.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        } else if (i == 3) {
            label.setEllipsize(TextUtils.TruncateAt.END);
        } else if (i != 4) {
        } else {
            label.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams;
    }

    /* renamed from: g */
    public void m22334g(boolean z) {
        if (m22322s()) {
            if (m22323r()) {
                this.f13742i0.start();
            }
            if (this.f13726V) {
                AnimatorSet animatorSet = this.f13735f;
                if (animatorSet != null) {
                    animatorSet.start();
                } else {
                    this.f13733e.start();
                    this.f13731d.cancel();
                }
            }
            int i = 0;
            this.f13751n = false;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i >= getChildCount()) {
                    this.f13753o.postDelayed(new RunnableC4500g(), (i2 + 1) * this.f13716L);
                    return;
                }
                View childAt = getChildAt(i);
                int i5 = i2;
                int i6 = i4;
                if (childAt instanceof FloatingActionButton) {
                    i5 = i2;
                    i6 = i4;
                    if (childAt.getVisibility() != 8) {
                        i5 = i2 + 1;
                        this.f13753o.postDelayed(new RunnableC4499f((FloatingActionButton) childAt, z), i4);
                        i6 = i4 + this.f13716L;
                    }
                }
                i++;
                i2 = i5;
                i3 = i6;
            }
        }
    }

    public int getAnimationDelayPerItem() {
        return this.f13716L;
    }

    public AnimatorSet getIconToggleAnimatorSet() {
        return this.f13735f;
    }

    public int getMenuButtonColorNormal() {
        return this.f13712H;
    }

    public int getMenuButtonColorPressed() {
        return this.f13713I;
    }

    public int getMenuButtonColorRipple() {
        return this.f13714J;
    }

    public String getMenuButtonLabelText() {
        return this.f13750m0;
    }

    public ImageView getMenuIconView() {
        return this.f13727W;
    }

    /* renamed from: k */
    public ViewGroup.MarginLayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    /* renamed from: l */
    public ViewGroup.MarginLayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    /* renamed from: m */
    public ViewGroup.MarginLayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        bringChildToFront(this.f13739h);
        bringChildToFront(this.f13727W);
        this.f13747l = getChildCount();
        m22332i();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingRight = this.f13746k0 == 0 ? ((i3 - i) - (this.f13741i / 2)) - getPaddingRight() : (this.f13741i / 2) + getPaddingLeft();
        boolean z2 = this.f13736f0 == 0;
        int measuredHeight = z2 ? ((i4 - i2) - this.f13739h.getMeasuredHeight()) - getPaddingBottom() : getPaddingTop();
        int measuredWidth = paddingRight - (this.f13739h.getMeasuredWidth() / 2);
        FloatingActionButton floatingActionButton = this.f13739h;
        floatingActionButton.layout(measuredWidth, measuredHeight, floatingActionButton.getMeasuredWidth() + measuredWidth, this.f13739h.getMeasuredHeight() + measuredHeight);
        int measuredWidth2 = paddingRight - (this.f13727W.getMeasuredWidth() / 2);
        int measuredHeight2 = ((this.f13739h.getMeasuredHeight() / 2) + measuredHeight) - (this.f13727W.getMeasuredHeight() / 2);
        ImageView imageView = this.f13727W;
        imageView.layout(measuredWidth2, measuredHeight2, imageView.getMeasuredWidth() + measuredWidth2, this.f13727W.getMeasuredHeight() + measuredHeight2);
        int i5 = measuredHeight;
        if (z2) {
            i5 = measuredHeight + this.f13739h.getMeasuredHeight() + this.f13737g;
        }
        int i6 = i5;
        for (int i7 = this.f13747l - 1; i7 >= 0; i7--) {
            View childAt = getChildAt(i7);
            if (childAt != this.f13727W) {
                FloatingActionButton floatingActionButton2 = (FloatingActionButton) childAt;
                if (floatingActionButton2.getVisibility() != 8) {
                    int measuredWidth3 = paddingRight - (floatingActionButton2.getMeasuredWidth() / 2);
                    int i8 = i6;
                    if (z2) {
                        i8 = (i6 - floatingActionButton2.getMeasuredHeight()) - this.f13737g;
                    }
                    if (floatingActionButton2 != this.f13739h) {
                        floatingActionButton2.layout(measuredWidth3, i8, floatingActionButton2.getMeasuredWidth() + measuredWidth3, floatingActionButton2.getMeasuredHeight() + i8);
                        if (!this.f13751n) {
                            floatingActionButton2.m22349u(false);
                        }
                    }
                    View view = (View) floatingActionButton2.getTag(R$id.fab_label);
                    if (view != null) {
                        int measuredWidth4 = ((this.f13752n0 ? this.f13741i : floatingActionButton2.getMeasuredWidth()) / 2) + this.f13743j;
                        int i9 = this.f13746k0;
                        int i10 = i9 == 0 ? paddingRight - measuredWidth4 : measuredWidth4 + paddingRight;
                        int measuredWidth5 = i9 == 0 ? i10 - view.getMeasuredWidth() : view.getMeasuredWidth() + i10;
                        int i11 = this.f13746k0;
                        int i12 = i11 == 0 ? measuredWidth5 : i10;
                        if (i11 != 0) {
                            i10 = measuredWidth5;
                        }
                        int measuredHeight3 = (i8 - this.f13745k) + ((floatingActionButton2.getMeasuredHeight() - view.getMeasuredHeight()) / 2);
                        view.layout(i12, measuredHeight3, i10, view.getMeasuredHeight() + measuredHeight3);
                        if (!this.f13751n) {
                            view.setVisibility(4);
                        }
                    }
                    i6 = z2 ? i8 - this.f13737g : i8 + childAt.getMeasuredHeight() + this.f13737g;
                }
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        this.f13741i = 0;
        measureChildWithMargins(this.f13727W, i, 0, i2, 0);
        for (int i4 = 0; i4 < this.f13747l; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8 && childAt != this.f13727W) {
                measureChildWithMargins(childAt, i, 0, i2, 0);
                this.f13741i = Math.max(this.f13741i, childAt.getMeasuredWidth());
            }
        }
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i3 = i7;
            if (i6 >= this.f13747l) {
                break;
            }
            View childAt2 = getChildAt(i6);
            int i8 = i5;
            int i9 = i3;
            if (childAt2.getVisibility() != 8) {
                if (childAt2 == this.f13727W) {
                    i8 = i5;
                    i9 = i3;
                } else {
                    int measuredWidth = childAt2.getMeasuredWidth();
                    int measuredHeight = childAt2.getMeasuredHeight();
                    Label label = (Label) childAt2.getTag(R$id.fab_label);
                    i9 = i3;
                    if (label != null) {
                        int measuredWidth2 = (this.f13741i - childAt2.getMeasuredWidth()) / (this.f13752n0 ? 1 : 2);
                        measureChildWithMargins(label, i, childAt2.getMeasuredWidth() + label.m22305n() + this.f13743j + measuredWidth2, i2, 0);
                        i9 = Math.max(i3, measuredWidth + 0 + label.getMeasuredWidth() + measuredWidth2);
                    }
                    i8 = i5 + measuredHeight;
                }
            }
            i6++;
            i5 = i8;
            i7 = i9;
        }
        int max = Math.max(this.f13741i, i3 + this.f13743j) + getPaddingLeft() + getPaddingRight();
        int m22335f = m22335f(i5 + (this.f13737g * (this.f13747l - 1)) + getPaddingTop() + getPaddingBottom());
        if (getLayoutParams().width == -1) {
            max = ViewGroup.getDefaultSize(getSuggestedMinimumWidth(), i);
        }
        int i10 = m22335f;
        if (getLayoutParams().height == -1) {
            i10 = ViewGroup.getDefaultSize(getSuggestedMinimumHeight(), i2);
        }
        setMeasuredDimension(max, i10);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f13734e0) {
            boolean z = false;
            int action = motionEvent.getAction();
            if (action == 0) {
                z = m22322s();
            } else if (action == 1) {
                m22334g(this.f13719O);
                z = true;
            }
            return z;
        }
        return super.onTouchEvent(motionEvent);
    }

    /* renamed from: s */
    public boolean m22322s() {
        return this.f13749m;
    }

    public void setAnimated(boolean z) {
        this.f13719O = z;
        this.f13731d.setDuration((z ? 300 : null) == 1 ? 1L : 0L);
        this.f13733e.setDuration((z ? 300 : null) == 1 ? 1L : 0L);
    }

    public void setAnimationDelayPerItem(int i) {
        this.f13716L = i;
    }

    public void setClosedOnTouchOutside(boolean z) {
        this.f13734e0 = z;
    }

    public void setContentDescription(String str) {
        FloatingActionButton floatingActionButton = this.f13739h;
        if (floatingActionButton != null) {
            floatingActionButton.setContentDescription(str);
        }
    }

    public void setIconAnimated(boolean z) {
        this.f13726V = z;
    }

    public void setIconAnimationCloseInterpolator(Interpolator interpolator) {
        this.f13733e.setInterpolator(interpolator);
    }

    public void setIconAnimationInterpolator(Interpolator interpolator) {
        this.f13731d.setInterpolator(interpolator);
        this.f13733e.setInterpolator(interpolator);
    }

    public void setIconAnimationOpenInterpolator(Interpolator interpolator) {
        this.f13731d.setInterpolator(interpolator);
    }

    public void setIconToggleAnimatorSet(AnimatorSet animatorSet) {
        this.f13735f = animatorSet;
    }

    public void setMenuButtonColorNormal(int i) {
        this.f13712H = i;
        this.f13739h.setColorNormal(i);
    }

    public void setMenuButtonColorNormalResId(int i) {
        this.f13712H = getResources().getColor(i);
        this.f13739h.setColorNormalResId(i);
    }

    public void setMenuButtonColorPressed(int i) {
        this.f13713I = i;
        this.f13739h.setColorPressed(i);
    }

    public void setMenuButtonColorPressedResId(int i) {
        this.f13713I = getResources().getColor(i);
        this.f13739h.setColorPressedResId(i);
    }

    public void setMenuButtonColorRipple(int i) {
        this.f13714J = i;
        this.f13739h.setColorRipple(i);
    }

    public void setMenuButtonColorRippleResId(int i) {
        this.f13714J = getResources().getColor(i);
        this.f13739h.setColorRippleResId(i);
    }

    public void setMenuButtonHideAnimation(Animation animation) {
        this.f13729b0 = animation;
        this.f13739h.setHideAnimation(animation);
    }

    public void setMenuButtonLabelText(String str) {
        this.f13739h.setLabelText(str);
    }

    public void setMenuButtonShowAnimation(Animation animation) {
        this.f13728a0 = animation;
        this.f13739h.setShowAnimation(animation);
    }

    public void setOnMenuButtonClickListener(View.OnClickListener onClickListener) {
        this.f13739h.setOnClickListener(onClickListener);
    }

    public void setOnMenuButtonLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f13739h.setOnLongClickListener(onLongClickListener);
    }

    public void setOnMenuToggleListener(AbstractC4501h abstractC4501h) {
        this.f13738g0 = abstractC4501h;
    }

    /* renamed from: t */
    public void m22321t(boolean z) {
        if (!m22322s()) {
            if (m22323r()) {
                this.f13740h0.start();
            }
            if (this.f13726V) {
                AnimatorSet animatorSet = this.f13735f;
                if (animatorSet != null) {
                    animatorSet.start();
                } else {
                    this.f13733e.cancel();
                    this.f13731d.start();
                }
            }
            this.f13751n = true;
            int childCount = getChildCount() - 1;
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (childCount < 0) {
                    this.f13753o.postDelayed(new RunnableC4498e(), (i + 1) * this.f13716L);
                    return;
                }
                View childAt = getChildAt(childCount);
                int i4 = i;
                int i5 = i3;
                if (childAt instanceof FloatingActionButton) {
                    i4 = i;
                    i5 = i3;
                    if (childAt.getVisibility() != 8) {
                        i4 = i + 1;
                        this.f13753o.postDelayed(new RunnableC4497d((FloatingActionButton) childAt, z), i3);
                        i5 = i3 + this.f13716L;
                    }
                }
                childCount--;
                i = i4;
                i2 = i5;
            }
        }
    }

    /* renamed from: u */
    public void m22320u(boolean z) {
        if (m22322s()) {
            m22334g(z);
        } else {
            m22321t(z);
        }
    }
}
