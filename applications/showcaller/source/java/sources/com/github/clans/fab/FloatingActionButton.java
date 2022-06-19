package com.github.clans.fab;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.Xfermode;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.graphics.drawable.shapes.Shape;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageButton;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$styleable;
/* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton.class */
public class FloatingActionButton extends ImageButton {

    /* renamed from: d */
    private static final Xfermode f13633d = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);

    /* renamed from: A */
    private int f13634A;

    /* renamed from: B */
    private boolean f13635B;

    /* renamed from: C */
    private float f13636C;

    /* renamed from: D */
    private float f13637D;

    /* renamed from: E */
    private boolean f13638E;

    /* renamed from: F */
    private RectF f13639F;

    /* renamed from: G */
    private Paint f13640G;

    /* renamed from: H */
    private Paint f13641H;

    /* renamed from: I */
    private boolean f13642I;

    /* renamed from: J */
    private long f13643J;

    /* renamed from: K */
    private float f13644K;

    /* renamed from: L */
    private long f13645L;

    /* renamed from: M */
    private double f13646M;

    /* renamed from: N */
    private boolean f13647N;

    /* renamed from: O */
    private int f13648O;

    /* renamed from: P */
    private float f13649P;

    /* renamed from: Q */
    private float f13650Q;

    /* renamed from: R */
    private float f13651R;

    /* renamed from: S */
    private int f13652S;

    /* renamed from: T */
    private boolean f13653T;

    /* renamed from: U */
    private boolean f13654U;

    /* renamed from: V */
    private boolean f13655V;

    /* renamed from: W */
    private int f13656W;

    /* renamed from: a0 */
    private boolean f13657a0;

    /* renamed from: b0 */
    GestureDetector f13658b0;

    /* renamed from: e */
    int f13659e;

    /* renamed from: f */
    boolean f13660f;

    /* renamed from: g */
    int f13661g;

    /* renamed from: h */
    int f13662h;

    /* renamed from: i */
    int f13663i;

    /* renamed from: j */
    int f13664j;

    /* renamed from: k */
    private int f13665k;

    /* renamed from: l */
    private int f13666l;

    /* renamed from: m */
    private int f13667m;

    /* renamed from: n */
    private int f13668n;

    /* renamed from: o */
    private Drawable f13669o;

    /* renamed from: p */
    private int f13670p;

    /* renamed from: q */
    private Animation f13671q;

    /* renamed from: r */
    private Animation f13672r;

    /* renamed from: s */
    private String f13673s;

    /* renamed from: t */
    private View.OnClickListener f13674t;

    /* renamed from: u */
    private Drawable f13675u;

    /* renamed from: v */
    private boolean f13676v;

    /* renamed from: w */
    private boolean f13677w;

    /* renamed from: x */
    private boolean f13678x;

    /* renamed from: y */
    private int f13679y;

    /* renamed from: z */
    private int f13680z;

    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$ProgressSavedState.class */
    public static class ProgressSavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<ProgressSavedState> CREATOR = new C4488a();

        /* renamed from: d */
        float f13681d;

        /* renamed from: e */
        float f13682e;

        /* renamed from: f */
        float f13683f;

        /* renamed from: g */
        int f13684g;

        /* renamed from: h */
        int f13685h;

        /* renamed from: i */
        int f13686i;

        /* renamed from: j */
        int f13687j;

        /* renamed from: k */
        boolean f13688k;

        /* renamed from: l */
        boolean f13689l;

        /* renamed from: m */
        boolean f13690m;

        /* renamed from: n */
        boolean f13691n;

        /* renamed from: o */
        boolean f13692o;

        /* renamed from: p */
        boolean f13693p;

        /* renamed from: q */
        boolean f13694q;

        /* renamed from: com.github.clans.fab.FloatingActionButton$ProgressSavedState$a */
        /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$ProgressSavedState$a.class */
        class C4488a implements Parcelable.Creator<ProgressSavedState> {
            C4488a() {
            }

            /* renamed from: a */
            public ProgressSavedState createFromParcel(Parcel parcel) {
                return new ProgressSavedState(parcel, null);
            }

            /* renamed from: b */
            public ProgressSavedState[] newArray(int i) {
                return new ProgressSavedState[i];
            }
        }

        private ProgressSavedState(Parcel parcel) {
            super(parcel);
            this.f13681d = parcel.readFloat();
            this.f13682e = parcel.readFloat();
            this.f13688k = parcel.readInt() != 0;
            this.f13683f = parcel.readFloat();
            this.f13684g = parcel.readInt();
            this.f13685h = parcel.readInt();
            this.f13686i = parcel.readInt();
            this.f13687j = parcel.readInt();
            this.f13689l = parcel.readInt() != 0;
            this.f13690m = parcel.readInt() != 0;
            this.f13691n = parcel.readInt() != 0;
            this.f13692o = parcel.readInt() != 0;
            this.f13693p = parcel.readInt() != 0;
            this.f13694q = parcel.readInt() != 0;
        }

        /* synthetic */ ProgressSavedState(Parcel parcel, C4489a c4489a) {
            this(parcel);
        }

        ProgressSavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f13681d);
            parcel.writeFloat(this.f13682e);
            parcel.writeInt(this.f13688k ? 1 : 0);
            parcel.writeFloat(this.f13683f);
            parcel.writeInt(this.f13684g);
            parcel.writeInt(this.f13685h);
            parcel.writeInt(this.f13686i);
            parcel.writeInt(this.f13687j);
            parcel.writeInt(this.f13689l ? 1 : 0);
            parcel.writeInt(this.f13690m ? 1 : 0);
            parcel.writeInt(this.f13691n ? 1 : 0);
            parcel.writeInt(this.f13692o ? 1 : 0);
            parcel.writeInt(this.f13693p ? 1 : 0);
            parcel.writeInt(this.f13694q ? 1 : 0);
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionButton$a */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$a.class */
    public class C4489a extends ViewOutlineProvider {
        C4489a() {
            FloatingActionButton.this = r4;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setOval(0, 0, view.getWidth(), view.getHeight());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.github.clans.fab.FloatingActionButton$b */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$b.class */
    public class C4490b extends GestureDetector.SimpleOnGestureListener {
        C4490b() {
            FloatingActionButton.this = r4;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            Label label = (Label) FloatingActionButton.this.getTag(R$id.fab_label);
            if (label != null) {
                label.m22300s();
            }
            FloatingActionButton.this.m22344z();
            return super.onDown(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            Label label = (Label) FloatingActionButton.this.getTag(R$id.fab_label);
            if (label != null) {
                label.m22299t();
            }
            FloatingActionButton.this.m22380A();
            return super.onSingleTapUp(motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.github.clans.fab.FloatingActionButton$c */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$c.class */
    public class View$OnClickListenerC4491c implements View.OnClickListener {
        View$OnClickListenerC4491c() {
            FloatingActionButton.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (FloatingActionButton.this.f13674t != null) {
                FloatingActionButton.this.f13674t.onClick(FloatingActionButton.this);
            }
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionButton$d */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$d.class */
    public class C4492d extends ShapeDrawable {

        /* renamed from: a */
        private int f13698a;

        /* renamed from: b */
        private int f13699b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private C4492d(Shape shape) {
            super(shape);
            FloatingActionButton.this = r5;
            this.f13698a = r5.m22350t() ? r5.f13662h + Math.abs(r5.f13663i) : 0;
            this.f13699b = r5.m22350t() ? Math.abs(r5.f13664j) + r5.f13662h : 0;
            if (r5.f13678x) {
                this.f13698a += r5.f13679y;
                this.f13699b += r5.f13679y;
            }
        }

        /* synthetic */ C4492d(FloatingActionButton floatingActionButton, Shape shape, C4489a c4489a) {
            this(shape);
        }

        @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            setBounds(this.f13698a, this.f13699b, FloatingActionButton.this.m22355o() - this.f13698a, FloatingActionButton.this.m22356n() - this.f13699b);
            super.draw(canvas);
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionButton$e */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$e.class */
    public class C4493e extends Drawable {

        /* renamed from: a */
        private Paint f13701a;

        /* renamed from: b */
        private Paint f13702b;

        /* renamed from: c */
        private float f13703c;

        private C4493e() {
            FloatingActionButton.this = r6;
            this.f13701a = new Paint(1);
            this.f13702b = new Paint(1);
            m22341a();
        }

        /* synthetic */ C4493e(FloatingActionButton floatingActionButton, C4489a c4489a) {
            this();
        }

        /* renamed from: a */
        private void m22341a() {
            FloatingActionButton floatingActionButton;
            FloatingActionButton.this.setLayerType(1, null);
            this.f13701a.setStyle(Paint.Style.FILL);
            this.f13701a.setColor(FloatingActionButton.this.f13665k);
            this.f13702b.setXfermode(FloatingActionButton.f13633d);
            if (!FloatingActionButton.this.isInEditMode()) {
                this.f13701a.setShadowLayer(floatingActionButton.f13662h, floatingActionButton.f13663i, floatingActionButton.f13664j, FloatingActionButton.this.f13661g);
            }
            this.f13703c = FloatingActionButton.this.getCircleSize() / 2;
            if (!FloatingActionButton.this.f13678x || !FloatingActionButton.this.f13657a0) {
                return;
            }
            this.f13703c += FloatingActionButton.this.f13679y;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.drawCircle(FloatingActionButton.this.m22358l(), FloatingActionButton.this.m22357m(), this.f13703c, this.f13701a);
            canvas.drawCircle(FloatingActionButton.this.m22358l(), FloatingActionButton.this.m22357m(), this.f13703c, this.f13702b);
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f13662h = C4505a.m22292a(getContext(), 4.0f);
        this.f13663i = C4505a.m22292a(getContext(), 1.0f);
        this.f13664j = C4505a.m22292a(getContext(), 3.0f);
        this.f13670p = C4505a.m22292a(getContext(), 24.0f);
        this.f13679y = C4505a.m22292a(getContext(), 6.0f);
        this.f13636C = -1.0f;
        this.f13637D = -1.0f;
        this.f13639F = new RectF();
        this.f13640G = new Paint(1);
        this.f13641H = new Paint(1);
        this.f13644K = 195.0f;
        this.f13645L = 0L;
        this.f13647N = true;
        this.f13648O = 16;
        this.f13656W = 100;
        this.f13658b0 = new GestureDetector(getContext(), new C4490b());
        m22348v(context, attributeSet, i);
    }

    /* renamed from: D */
    private void m22377D() {
        if (!this.f13638E) {
            if (this.f13636C == -1.0f) {
                this.f13636C = getX();
            }
            if (this.f13637D == -1.0f) {
                this.f13637D = getY();
            }
            this.f13638E = true;
        }
    }

    /* renamed from: F */
    private void m22375F() {
        this.f13640G.setColor(this.f13634A);
        this.f13640G.setStyle(Paint.Style.STROKE);
        this.f13640G.setStrokeWidth(this.f13679y);
        this.f13641H.setColor(this.f13680z);
        this.f13641H.setStyle(Paint.Style.STROKE);
        this.f13641H.setStrokeWidth(this.f13679y);
    }

    /* renamed from: G */
    private void m22374G() {
        int i = 0;
        int shadowX = m22350t() ? getShadowX() : 0;
        if (m22350t()) {
            i = getShadowY();
        }
        int i2 = this.f13679y;
        this.f13639F = new RectF((i2 / 2) + shadowX, (i2 / 2) + i, (m22355o() - shadowX) - (this.f13679y / 2), (m22356n() - i) - (this.f13679y / 2));
    }

    /* renamed from: J */
    private void m22371J() {
        float f;
        float f2;
        if (this.f13678x) {
            float x = this.f13636C > getX() ? getX() + this.f13679y : getX() - this.f13679y;
            if (this.f13637D > getY()) {
                f = x;
                f2 = getY() + this.f13679y;
            } else {
                f = x;
                f2 = getY() - this.f13679y;
            }
        } else {
            f = this.f13636C;
            f2 = this.f13637D;
        }
        setX(f);
        setY(f2);
    }

    /* renamed from: K */
    private void m22370K(long j) {
        long j2 = this.f13645L;
        if (j2 < 200) {
            this.f13645L = j2 + j;
            return;
        }
        double d = this.f13646M + j;
        this.f13646M = d;
        if (d > 500.0d) {
            this.f13646M = d - 500.0d;
            this.f13645L = 0L;
            this.f13647N = !this.f13647N;
        }
        float cos = (((float) Math.cos(((this.f13646M / 500.0d) + 1.0d) * 3.141592653589793d)) / 2.0f) + 0.5f;
        float f = 270 - this.f13648O;
        if (this.f13647N) {
            this.f13649P = cos * f;
            return;
        }
        float f2 = f * (1.0f - cos);
        this.f13650Q += this.f13649P - f2;
        this.f13649P = f2;
    }

    public int getCircleSize() {
        return getResources().getDimensionPixelSize(this.f13659e == 0 ? 2131165351 : 2131165350);
    }

    private int getShadowX() {
        return this.f13662h + Math.abs(this.f13663i);
    }

    private int getShadowY() {
        return this.f13662h + Math.abs(this.f13664j);
    }

    /* renamed from: l */
    public float m22358l() {
        return getMeasuredWidth() / 2;
    }

    /* renamed from: m */
    public float m22357m() {
        return getMeasuredHeight() / 2;
    }

    /* renamed from: n */
    public int m22356n() {
        int circleSize = getCircleSize() + m22354p();
        int i = circleSize;
        if (this.f13678x) {
            i = circleSize + (this.f13679y * 2);
        }
        return i;
    }

    /* renamed from: o */
    public int m22355o() {
        int circleSize = getCircleSize() + m22353q();
        int i = circleSize;
        if (this.f13678x) {
            i = circleSize + (this.f13679y * 2);
        }
        return i;
    }

    /* renamed from: r */
    private Drawable m22352r(int i) {
        C4492d c4492d = new C4492d(this, new OvalShape(), null);
        c4492d.getPaint().setColor(i);
        return c4492d;
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [int[], int[][]] */
    @TargetApi(21)
    /* renamed from: s */
    private Drawable m22351s() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842910}, m22352r(this.f13667m));
        stateListDrawable.addState(new int[]{16842919}, m22352r(this.f13666l));
        stateListDrawable.addState(new int[0], m22352r(this.f13665k));
        if (!C4505a.m22290c()) {
            this.f13675u = stateListDrawable;
            return stateListDrawable;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(new int[]{new int[0]}, new int[]{this.f13668n}), stateListDrawable, null);
        setOutlineProvider(new C4489a());
        setClipToOutline(true);
        this.f13675u = rippleDrawable;
        return rippleDrawable;
    }

    @TargetApi(16)
    private void setBackgroundCompat(Drawable drawable) {
        if (C4505a.m22291b()) {
            setBackground(drawable);
        } else {
            setBackgroundDrawable(drawable);
        }
    }

    /* renamed from: v */
    private void m22348v(Context context, AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FloatingActionButtonNew, i, 0);
        this.f13665k = obtainStyledAttributes.getColor(1, -2473162);
        this.f13666l = obtainStyledAttributes.getColor(2, -1617853);
        this.f13667m = obtainStyledAttributes.getColor(0, -5592406);
        this.f13668n = obtainStyledAttributes.getColor(3, -1711276033);
        this.f13660f = obtainStyledAttributes.getBoolean(18, true);
        this.f13661g = obtainStyledAttributes.getColor(13, 1711276032);
        this.f13662h = obtainStyledAttributes.getDimensionPixelSize(14, this.f13662h);
        this.f13663i = obtainStyledAttributes.getDimensionPixelSize(15, this.f13663i);
        this.f13664j = obtainStyledAttributes.getDimensionPixelSize(16, this.f13664j);
        this.f13659e = obtainStyledAttributes.getInt(19, 0);
        this.f13673s = obtainStyledAttributes.getString(6);
        this.f13654U = obtainStyledAttributes.getBoolean(10, false);
        this.f13680z = obtainStyledAttributes.getColor(9, -16738680);
        this.f13634A = obtainStyledAttributes.getColor(8, 1291845632);
        this.f13656W = obtainStyledAttributes.getInt(11, this.f13656W);
        this.f13657a0 = obtainStyledAttributes.getBoolean(12, true);
        if (obtainStyledAttributes.hasValue(7)) {
            this.f13652S = obtainStyledAttributes.getInt(7, 0);
            this.f13655V = true;
        }
        if (obtainStyledAttributes.hasValue(4)) {
            float dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(4, 0);
            if (isInEditMode()) {
                setElevation(dimensionPixelOffset);
            } else {
                setElevationCompat(dimensionPixelOffset);
            }
        }
        m22346x(obtainStyledAttributes);
        m22347w(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        if (isInEditMode()) {
            if (this.f13654U) {
                setIndeterminate(true);
            } else if (this.f13655V) {
                m22377D();
                setProgress(this.f13652S, false);
            }
        }
        setClickable(true);
    }

    /* renamed from: w */
    private void m22347w(TypedArray typedArray) {
        this.f13672r = AnimationUtils.loadAnimation(getContext(), typedArray.getResourceId(5, R$anim.fab_scale_down));
    }

    /* renamed from: x */
    private void m22346x(TypedArray typedArray) {
        this.f13671q = AnimationUtils.loadAnimation(getContext(), typedArray.getResourceId(17, R$anim.fab_scale_up));
    }

    @TargetApi(21)
    /* renamed from: A */
    public void m22380A() {
        Drawable drawable = this.f13675u;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[]{16842910});
        } else if (!C4505a.m22290c()) {
        } else {
            RippleDrawable rippleDrawable = (RippleDrawable) this.f13675u;
            rippleDrawable.setState(new int[]{16842910});
            rippleDrawable.setHotspot(m22358l(), m22357m());
            rippleDrawable.setVisible(true, true);
        }
    }

    /* renamed from: B */
    void m22379B() {
        this.f13671q.cancel();
        startAnimation(this.f13672r);
    }

    /* renamed from: C */
    void m22378C() {
        this.f13672r.cancel();
        startAnimation(this.f13671q);
    }

    /* renamed from: E */
    public void m22376E(int i, int i2, int i3) {
        this.f13665k = i;
        this.f13666l = i2;
        this.f13668n = i3;
    }

    /* renamed from: H */
    public void m22373H(boolean z) {
        if (m22345y()) {
            if (z) {
                m22378C();
            }
            super.setVisibility(0);
        }
    }

    /* renamed from: I */
    public void m22372I() {
        int i = 0;
        LayerDrawable layerDrawable = m22350t() ? new LayerDrawable(new Drawable[]{new C4493e(this, null), m22351s(), getIconDrawable()}) : new LayerDrawable(new Drawable[]{m22351s(), getIconDrawable()});
        int i2 = -1;
        if (getIconDrawable() != null) {
            i2 = Math.max(getIconDrawable().getIntrinsicWidth(), getIconDrawable().getIntrinsicHeight());
        }
        int circleSize = getCircleSize();
        if (i2 <= 0) {
            i2 = this.f13670p;
        }
        int i3 = (circleSize - i2) / 2;
        int abs = m22350t() ? this.f13662h + Math.abs(this.f13663i) : 0;
        if (m22350t()) {
            i = this.f13662h + Math.abs(this.f13664j);
        }
        int i4 = i;
        int i5 = abs;
        if (this.f13678x) {
            int i6 = this.f13679y;
            i5 = abs + i6;
            i4 = i + i6;
        }
        int i7 = i5 + i3;
        int i8 = i4 + i3;
        layerDrawable.setLayerInset(m22350t() ? 2 : 1, i7, i8, i7, i8);
        setBackgroundCompat(layerDrawable);
    }

    public int getButtonSize() {
        return this.f13659e;
    }

    public int getColorDisabled() {
        return this.f13667m;
    }

    public int getColorNormal() {
        return this.f13665k;
    }

    public int getColorPressed() {
        return this.f13666l;
    }

    public int getColorRipple() {
        return this.f13668n;
    }

    Animation getHideAnimation() {
        return this.f13672r;
    }

    protected Drawable getIconDrawable() {
        Drawable drawable = this.f13669o;
        return drawable != null ? drawable : new ColorDrawable(0);
    }

    public String getLabelText() {
        return this.f13673s;
    }

    Label getLabelView() {
        return (Label) getTag(R$id.fab_label);
    }

    public int getLabelVisibility() {
        Label labelView = getLabelView();
        if (labelView != null) {
            return labelView.getVisibility();
        }
        return -1;
    }

    public int getMax() {
        int i;
        synchronized (this) {
            i = this.f13656W;
        }
        return i;
    }

    public View.OnClickListener getOnClickListener() {
        return this.f13674t;
    }

    public int getProgress() {
        int i;
        synchronized (this) {
            i = this.f13642I ? 0 : this.f13652S;
        }
        return i;
    }

    public int getShadowColor() {
        return this.f13661g;
    }

    public int getShadowRadius() {
        return this.f13662h;
    }

    public int getShadowXOffset() {
        return this.f13663i;
    }

    public int getShadowYOffset() {
        return this.f13664j;
    }

    Animation getShowAnimation() {
        return this.f13671q;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        super.onDraw(canvas);
        if (this.f13678x) {
            if (this.f13657a0) {
                canvas.drawArc(this.f13639F, 360.0f, 360.0f, false, this.f13640G);
            }
            boolean z = false;
            if (this.f13642I) {
                long uptimeMillis = SystemClock.uptimeMillis() - this.f13643J;
                float f3 = (((float) uptimeMillis) * this.f13644K) / 1000.0f;
                m22370K(uptimeMillis);
                float f4 = this.f13650Q + f3;
                this.f13650Q = f4;
                if (f4 > 360.0f) {
                    this.f13650Q = f4 - 360.0f;
                }
                this.f13643J = SystemClock.uptimeMillis();
                float f5 = this.f13650Q;
                float f6 = this.f13648O;
                float f7 = this.f13649P;
                if (isInEditMode()) {
                    f = 0.0f;
                    f2 = 135.0f;
                } else {
                    f = f5 - 90.0f;
                    f2 = f6 + f7;
                }
                canvas.drawArc(this.f13639F, f, f2, false, this.f13641H);
                z = true;
            } else {
                if (this.f13650Q != this.f13651R) {
                    float uptimeMillis2 = (((float) (SystemClock.uptimeMillis() - this.f13643J)) / 1000.0f) * this.f13644K;
                    float f8 = this.f13650Q;
                    float f9 = this.f13651R;
                    if (f8 > f9) {
                        this.f13650Q = Math.max(f8 - uptimeMillis2, f9);
                    } else {
                        this.f13650Q = Math.min(f8 + uptimeMillis2, f9);
                    }
                    this.f13643J = SystemClock.uptimeMillis();
                    z = true;
                }
                canvas.drawArc(this.f13639F, -90.0f, this.f13650Q, false, this.f13641H);
            }
            if (!z) {
                return;
            }
            invalidate();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(m22355o(), m22356n());
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ProgressSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ProgressSavedState progressSavedState = (ProgressSavedState) parcelable;
        super.onRestoreInstanceState(progressSavedState.getSuperState());
        this.f13650Q = progressSavedState.f13681d;
        this.f13651R = progressSavedState.f13682e;
        this.f13644K = progressSavedState.f13683f;
        this.f13679y = progressSavedState.f13685h;
        this.f13680z = progressSavedState.f13686i;
        this.f13634A = progressSavedState.f13687j;
        this.f13654U = progressSavedState.f13691n;
        this.f13655V = progressSavedState.f13692o;
        this.f13652S = progressSavedState.f13684g;
        this.f13653T = progressSavedState.f13693p;
        this.f13657a0 = progressSavedState.f13694q;
        this.f13643J = SystemClock.uptimeMillis();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        ProgressSavedState progressSavedState = new ProgressSavedState(super.onSaveInstanceState());
        progressSavedState.f13681d = this.f13650Q;
        progressSavedState.f13682e = this.f13651R;
        progressSavedState.f13683f = this.f13644K;
        progressSavedState.f13685h = this.f13679y;
        progressSavedState.f13686i = this.f13680z;
        progressSavedState.f13687j = this.f13634A;
        boolean z = this.f13642I;
        progressSavedState.f13691n = z;
        progressSavedState.f13692o = this.f13678x && this.f13652S > 0 && !z;
        progressSavedState.f13684g = this.f13652S;
        progressSavedState.f13693p = this.f13653T;
        progressSavedState.f13694q = this.f13657a0;
        return progressSavedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        m22377D();
        if (this.f13654U) {
            setIndeterminate(true);
            this.f13654U = false;
        } else if (this.f13655V) {
            setProgress(this.f13652S, this.f13653T);
            this.f13655V = false;
        } else if (this.f13635B) {
            m22371J();
            this.f13635B = false;
        }
        super.onSizeChanged(i, i2, i3, i4);
        m22374G();
        m22375F();
        m22372I();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f13674t != null && isEnabled()) {
            Label label = (Label) getTag(R$id.fab_label);
            if (label == null) {
                return super.onTouchEvent(motionEvent);
            }
            int action = motionEvent.getAction();
            if (action == 1) {
                label.m22299t();
                m22380A();
            } else if (action == 3) {
                label.m22299t();
                m22380A();
            }
            this.f13658b0.onTouchEvent(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    /* renamed from: p */
    int m22354p() {
        return m22350t() ? getShadowY() * 2 : 0;
    }

    /* renamed from: q */
    int m22353q() {
        return m22350t() ? getShadowX() * 2 : 0;
    }

    public void setButtonSize(int i) {
        if (i == 0 || i == 1) {
            if (this.f13659e == i) {
                return;
            }
            this.f13659e = i;
            m22372I();
            return;
        }
        throw new IllegalArgumentException("Use @FabSize constants only!");
    }

    public void setColorDisabled(int i) {
        if (i != this.f13667m) {
            this.f13667m = i;
            m22372I();
        }
    }

    public void setColorDisabledResId(int i) {
        setColorDisabled(getResources().getColor(i));
    }

    public void setColorNormal(int i) {
        if (this.f13665k != i) {
            this.f13665k = i;
            m22372I();
        }
    }

    public void setColorNormalResId(int i) {
        setColorNormal(getResources().getColor(i));
    }

    public void setColorPressed(int i) {
        if (i != this.f13666l) {
            this.f13666l = i;
            m22372I();
        }
    }

    public void setColorPressedResId(int i) {
        setColorPressed(getResources().getColor(i));
    }

    public void setColorRipple(int i) {
        if (i != this.f13668n) {
            this.f13668n = i;
            m22372I();
        }
    }

    public void setColorRippleResId(int i) {
        setColorRipple(getResources().getColor(i));
    }

    @Override // android.view.View
    public void setElevation(float f) {
        if (!C4505a.m22290c() || f <= 0.0f) {
            return;
        }
        super.setElevation(f);
        if (!isInEditMode()) {
            this.f13676v = true;
            this.f13660f = false;
        }
        m22372I();
    }

    @TargetApi(21)
    public void setElevationCompat(float f) {
        this.f13661g = 637534208;
        float f2 = f / 2.0f;
        this.f13662h = Math.round(f2);
        this.f13663i = 0;
        if (this.f13659e == 0) {
            f2 = f;
        }
        this.f13664j = Math.round(f2);
        if (!C4505a.m22290c()) {
            this.f13660f = true;
            m22372I();
            return;
        }
        super.setElevation(f);
        this.f13677w = true;
        this.f13660f = false;
        m22372I();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        Label label = (Label) getTag(R$id.fab_label);
        if (label != null) {
            label.setEnabled(z);
        }
    }

    public void setHideAnimation(Animation animation) {
        this.f13672r = animation;
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (this.f13669o != drawable) {
            this.f13669o = drawable;
            m22372I();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        Drawable drawable = getResources().getDrawable(i);
        if (this.f13669o != drawable) {
            this.f13669o = drawable;
            m22372I();
        }
    }

    public void setIndeterminate(boolean z) {
        synchronized (this) {
            if (!z) {
                this.f13650Q = 0.0f;
            }
            this.f13678x = z;
            this.f13635B = true;
            this.f13642I = z;
            this.f13643J = SystemClock.uptimeMillis();
            m22374G();
            m22372I();
        }
    }

    public void setLabelColors(int i, int i2, int i3) {
        Label labelView = getLabelView();
        int paddingLeft = labelView.getPaddingLeft();
        int paddingTop = labelView.getPaddingTop();
        int paddingRight = labelView.getPaddingRight();
        int paddingBottom = labelView.getPaddingBottom();
        labelView.m22296w(i, i2, i3);
        labelView.m22294y();
        labelView.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }

    public void setLabelText(String str) {
        this.f13673s = str;
        Label labelView = getLabelView();
        if (labelView != null) {
            labelView.setText(str);
        }
    }

    public void setLabelTextColor(int i) {
        getLabelView().setTextColor(i);
    }

    public void setLabelTextColor(ColorStateList colorStateList) {
        getLabelView().setTextColor(colorStateList);
    }

    public void setLabelTextType(Typeface typeface) {
        getLabelView().setTypeface(typeface);
    }

    public void setLabelVisibility(int i) {
        Label labelView = getLabelView();
        if (labelView != null) {
            labelView.setVisibility(i);
            labelView.setHandleVisibilityChanges(i == 0);
        }
    }

    @Override // android.view.View
    @TargetApi(21)
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if ((layoutParams instanceof ViewGroup.MarginLayoutParams) && this.f13677w) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.leftMargin += getShadowX();
            marginLayoutParams.topMargin += getShadowY();
            marginLayoutParams.rightMargin += getShadowX();
            marginLayoutParams.bottomMargin += getShadowY();
        }
        super.setLayoutParams(layoutParams);
    }

    public void setMax(int i) {
        synchronized (this) {
            this.f13656W = i;
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        this.f13674t = onClickListener;
        View view = (View) getTag(R$id.fab_label);
        if (view != null) {
            view.setOnClickListener(new View$OnClickListenerC4491c());
        }
    }

    public void setProgress(int i, boolean z) {
        int i2;
        synchronized (this) {
            if (this.f13642I) {
                return;
            }
            this.f13652S = i;
            this.f13653T = z;
            if (!this.f13638E) {
                this.f13655V = true;
                return;
            }
            this.f13678x = true;
            this.f13635B = true;
            m22374G();
            m22377D();
            m22372I();
            if (i < 0) {
                i2 = 0;
            } else {
                int i3 = this.f13656W;
                i2 = i;
                if (i > i3) {
                    i2 = i3;
                }
            }
            float f = i2;
            if (f == this.f13651R) {
                return;
            }
            int i4 = this.f13656W;
            this.f13651R = i4 > 0 ? (f / i4) * 360.0f : 0.0f;
            this.f13643J = SystemClock.uptimeMillis();
            if (!z) {
                this.f13650Q = this.f13651R;
            }
            invalidate();
        }
    }

    public void setShadowColor(int i) {
        if (this.f13661g != i) {
            this.f13661g = i;
            m22372I();
        }
    }

    public void setShadowColorResource(int i) {
        int color = getResources().getColor(i);
        if (this.f13661g != color) {
            this.f13661g = color;
            m22372I();
        }
    }

    public void setShadowRadius(float f) {
        this.f13662h = C4505a.m22292a(getContext(), f);
        requestLayout();
        m22372I();
    }

    public void setShadowRadius(int i) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i);
        if (this.f13662h != dimensionPixelSize) {
            this.f13662h = dimensionPixelSize;
            requestLayout();
            m22372I();
        }
    }

    public void setShadowXOffset(float f) {
        this.f13663i = C4505a.m22292a(getContext(), f);
        requestLayout();
        m22372I();
    }

    public void setShadowXOffset(int i) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i);
        if (this.f13663i != dimensionPixelSize) {
            this.f13663i = dimensionPixelSize;
            requestLayout();
            m22372I();
        }
    }

    public void setShadowYOffset(float f) {
        this.f13664j = C4505a.m22292a(getContext(), f);
        requestLayout();
        m22372I();
    }

    public void setShadowYOffset(int i) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i);
        if (this.f13664j != dimensionPixelSize) {
            this.f13664j = dimensionPixelSize;
            requestLayout();
            m22372I();
        }
    }

    public void setShowAnimation(Animation animation) {
        this.f13671q = animation;
    }

    public void setShowProgressBackground(boolean z) {
        synchronized (this) {
            this.f13657a0 = z;
        }
    }

    public void setShowShadow(boolean z) {
        if (this.f13660f != z) {
            this.f13660f = z;
            m22372I();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        Label label = (Label) getTag(R$id.fab_label);
        if (label != null) {
            label.setVisibility(i);
        }
    }

    /* renamed from: t */
    public boolean m22350t() {
        return !this.f13676v && this.f13660f;
    }

    /* renamed from: u */
    public void m22349u(boolean z) {
        if (!m22345y()) {
            if (z) {
                m22379B();
            }
            super.setVisibility(4);
        }
    }

    /* renamed from: y */
    public boolean m22345y() {
        return getVisibility() == 4;
    }

    @TargetApi(21)
    /* renamed from: z */
    public void m22344z() {
        Drawable drawable = this.f13675u;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[]{16842910, 16842919});
        } else if (!C4505a.m22290c()) {
        } else {
            RippleDrawable rippleDrawable = (RippleDrawable) this.f13675u;
            rippleDrawable.setState(new int[]{16842910, 16842919});
            rippleDrawable.setHotspot(m22358l(), m22357m());
            rippleDrawable.setVisible(true, true);
        }
    }
}
