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
import com.callerid.block.R$anim;
import com.callerid.block.R$dimen;
import com.callerid.block.R$id;
import com.callerid.block.R$styleable;
/* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton.class */
public class FloatingActionButton extends ImageButton {

    /* renamed from: W */
    private static final Xfermode f5121W = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);

    /* renamed from: A */
    private float f5122A;

    /* renamed from: B */
    private boolean f5123B;

    /* renamed from: C */
    private RectF f5124C;

    /* renamed from: D */
    private Paint f5125D;

    /* renamed from: E */
    private Paint f5126E;

    /* renamed from: F */
    private boolean f5127F;

    /* renamed from: G */
    private long f5128G;

    /* renamed from: H */
    private float f5129H;

    /* renamed from: I */
    private long f5130I;

    /* renamed from: J */
    private double f5131J;

    /* renamed from: K */
    private boolean f5132K;

    /* renamed from: L */
    private int f5133L;

    /* renamed from: M */
    private float f5134M;

    /* renamed from: N */
    private float f5135N;

    /* renamed from: O */
    private float f5136O;

    /* renamed from: P */
    private int f5137P;

    /* renamed from: Q */
    private boolean f5138Q;

    /* renamed from: R */
    private boolean f5139R;

    /* renamed from: S */
    private boolean f5140S;

    /* renamed from: T */
    private int f5141T;

    /* renamed from: U */
    private boolean f5142U;

    /* renamed from: V */
    GestureDetector f5143V;

    /* renamed from: b */
    int f5144b;

    /* renamed from: c */
    boolean f5145c;

    /* renamed from: d */
    int f5146d;

    /* renamed from: e */
    int f5147e;

    /* renamed from: f */
    int f5148f;

    /* renamed from: g */
    int f5149g;

    /* renamed from: h */
    private int f5150h;

    /* renamed from: i */
    private int f5151i;

    /* renamed from: j */
    private int f5152j;

    /* renamed from: k */
    private int f5153k;

    /* renamed from: l */
    private Drawable f5154l;

    /* renamed from: m */
    private int f5155m;

    /* renamed from: n */
    private Animation f5156n;

    /* renamed from: o */
    private Animation f5157o;

    /* renamed from: p */
    private String f5158p;

    /* renamed from: q */
    private View.OnClickListener f5159q;

    /* renamed from: r */
    private Drawable f5160r;

    /* renamed from: s */
    private boolean f5161s;

    /* renamed from: t */
    private boolean f5162t;

    /* renamed from: u */
    private boolean f5163u;

    /* renamed from: v */
    private int f5164v;

    /* renamed from: w */
    private int f5165w;

    /* renamed from: x */
    private int f5166x;

    /* renamed from: y */
    private boolean f5167y;

    /* renamed from: z */
    private float f5168z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$ProgressSavedState.class */
    public static class ProgressSavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<ProgressSavedState> CREATOR = new C1251a();

        /* renamed from: b */
        float f5169b;

        /* renamed from: c */
        float f5170c;

        /* renamed from: d */
        float f5171d;

        /* renamed from: e */
        int f5172e;

        /* renamed from: f */
        int f5173f;

        /* renamed from: g */
        int f5174g;

        /* renamed from: h */
        int f5175h;

        /* renamed from: i */
        boolean f5176i;

        /* renamed from: j */
        boolean f5177j;

        /* renamed from: k */
        boolean f5178k;

        /* renamed from: l */
        boolean f5179l;

        /* renamed from: m */
        boolean f5180m;

        /* renamed from: n */
        boolean f5181n;

        /* renamed from: o */
        boolean f5182o;

        /* renamed from: com.github.clans.fab.FloatingActionButton$ProgressSavedState$a */
        /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$ProgressSavedState$a.class */
        static final class C1251a implements Parcelable.Creator<ProgressSavedState> {
            C1251a() {
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
            this.f5169b = parcel.readFloat();
            this.f5170c = parcel.readFloat();
            boolean z = true;
            this.f5176i = parcel.readInt() != 0;
            this.f5171d = parcel.readFloat();
            this.f5172e = parcel.readInt();
            this.f5173f = parcel.readInt();
            this.f5174g = parcel.readInt();
            this.f5175h = parcel.readInt();
            this.f5177j = parcel.readInt() != 0;
            this.f5178k = parcel.readInt() != 0;
            this.f5179l = parcel.readInt() != 0;
            this.f5180m = parcel.readInt() != 0;
            this.f5181n = parcel.readInt() != 0;
            if (parcel.readInt() == 0) {
                z = false;
            }
            this.f5182o = z;
        }

        /* synthetic */ ProgressSavedState(Parcel parcel, C1252a aVar) {
            this(parcel);
        }

        ProgressSavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f5169b);
            parcel.writeFloat(this.f5170c);
            parcel.writeInt(this.f5176i ? 1 : 0);
            parcel.writeFloat(this.f5171d);
            parcel.writeInt(this.f5172e);
            parcel.writeInt(this.f5173f);
            parcel.writeInt(this.f5174g);
            parcel.writeInt(this.f5175h);
            parcel.writeInt(this.f5177j ? 1 : 0);
            parcel.writeInt(this.f5178k ? 1 : 0);
            parcel.writeInt(this.f5179l ? 1 : 0);
            parcel.writeInt(this.f5180m ? 1 : 0);
            parcel.writeInt(this.f5181n ? 1 : 0);
            parcel.writeInt(this.f5182o ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.github.clans.fab.FloatingActionButton$a */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$a.class */
    public class C1252a extends ViewOutlineProvider {
        C1252a(FloatingActionButton floatingActionButton) {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setOval(0, 0, view.getWidth(), view.getHeight());
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionButton$b */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$b.class */
    class C1253b extends GestureDetector.SimpleOnGestureListener {
        C1253b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            Label label = (Label) FloatingActionButton.this.getTag(R$id.fab_label);
            if (label != null) {
                label.m9360s();
            }
            FloatingActionButton.this.m9404z();
            return super.onDown(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            Label label = (Label) FloatingActionButton.this.getTag(R$id.fab_label);
            if (label != null) {
                label.m9359t();
            }
            FloatingActionButton.this.m9440A();
            return super.onSingleTapUp(motionEvent);
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionButton$c */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$c.class */
    class View$OnClickListenerC1254c implements View.OnClickListener {
        View$OnClickListenerC1254c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (FloatingActionButton.this.f5159q != null) {
                FloatingActionButton.this.f5159q.onClick(FloatingActionButton.this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.github.clans.fab.FloatingActionButton$d */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$d.class */
    public class C1255d extends ShapeDrawable {

        /* renamed from: a */
        private int f5185a;

        /* renamed from: b */
        private int f5186b;

        private C1255d(Shape shape) {
            super(shape);
            int i = 0;
            this.f5185a = FloatingActionButton.this.m9410t() ? FloatingActionButton.this.f5147e + Math.abs(FloatingActionButton.this.f5148f) : 0;
            this.f5186b = FloatingActionButton.this.m9410t() ? Math.abs(FloatingActionButton.this.f5149g) + FloatingActionButton.this.f5147e : i;
            if (FloatingActionButton.this.f5163u) {
                this.f5185a += FloatingActionButton.this.f5164v;
                this.f5186b += FloatingActionButton.this.f5164v;
            }
        }

        /* synthetic */ C1255d(FloatingActionButton floatingActionButton, Shape shape, C1252a aVar) {
            this(shape);
        }

        @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            setBounds(this.f5185a, this.f5186b, FloatingActionButton.this.m9415o() - this.f5185a, FloatingActionButton.this.m9416n() - this.f5186b);
            super.draw(canvas);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.github.clans.fab.FloatingActionButton$e */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$e.class */
    public class C1256e extends Drawable {

        /* renamed from: a */
        private Paint f5188a;

        /* renamed from: b */
        private Paint f5189b;

        /* renamed from: c */
        private float f5190c;

        private C1256e() {
            this.f5188a = new Paint(1);
            this.f5189b = new Paint(1);
            m9401a();
        }

        /* synthetic */ C1256e(FloatingActionButton floatingActionButton, C1252a aVar) {
            this();
        }

        /* renamed from: a */
        private void m9401a() {
            FloatingActionButton floatingActionButton;
            FloatingActionButton.this.setLayerType(1, null);
            this.f5188a.setStyle(Paint.Style.FILL);
            this.f5188a.setColor(FloatingActionButton.this.f5150h);
            this.f5189b.setXfermode(FloatingActionButton.f5121W);
            if (!FloatingActionButton.this.isInEditMode()) {
                this.f5188a.setShadowLayer(floatingActionButton.f5147e, floatingActionButton.f5148f, floatingActionButton.f5149g, FloatingActionButton.this.f5146d);
            }
            this.f5190c = FloatingActionButton.this.getCircleSize() / 2;
            if (FloatingActionButton.this.f5163u && FloatingActionButton.this.f5142U) {
                this.f5190c += FloatingActionButton.this.f5164v;
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.drawCircle(FloatingActionButton.this.m9418l(), FloatingActionButton.this.m9417m(), this.f5190c, this.f5188a);
            canvas.drawCircle(FloatingActionButton.this.m9418l(), FloatingActionButton.this.m9417m(), this.f5190c, this.f5189b);
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
        this.f5147e = C1268a.m9352a(getContext(), 4.0f);
        this.f5148f = C1268a.m9352a(getContext(), 1.0f);
        this.f5149g = C1268a.m9352a(getContext(), 3.0f);
        this.f5155m = C1268a.m9352a(getContext(), 24.0f);
        this.f5164v = C1268a.m9352a(getContext(), 6.0f);
        this.f5168z = -1.0f;
        this.f5122A = -1.0f;
        this.f5124C = new RectF();
        this.f5125D = new Paint(1);
        this.f5126E = new Paint(1);
        this.f5129H = 195.0f;
        this.f5130I = 0L;
        this.f5132K = true;
        this.f5133L = 16;
        this.f5141T = 100;
        this.f5143V = new GestureDetector(getContext(), new C1253b());
        m9408v(context, attributeSet, i);
    }

    /* renamed from: D */
    private void m9437D() {
        if (!this.f5123B) {
            if (this.f5168z == -1.0f) {
                this.f5168z = getX();
            }
            if (this.f5122A == -1.0f) {
                this.f5122A = getY();
            }
            this.f5123B = true;
        }
    }

    /* renamed from: F */
    private void m9435F() {
        this.f5125D.setColor(this.f5166x);
        this.f5125D.setStyle(Paint.Style.STROKE);
        this.f5125D.setStrokeWidth(this.f5164v);
        this.f5126E.setColor(this.f5165w);
        this.f5126E.setStyle(Paint.Style.STROKE);
        this.f5126E.setStrokeWidth(this.f5164v);
    }

    /* renamed from: G */
    private void m9434G() {
        int i = 0;
        int shadowX = m9410t() ? getShadowX() : 0;
        if (m9410t()) {
            i = getShadowY();
        }
        int i2 = this.f5164v;
        this.f5124C = new RectF((i2 / 2) + shadowX, (i2 / 2) + i, (m9415o() - shadowX) - (this.f5164v / 2), (m9416n() - i) - (this.f5164v / 2));
    }

    /* renamed from: J */
    private void m9431J() {
        float f;
        float f2;
        if (this.f5163u) {
            float x = this.f5168z > getX() ? getX() + this.f5164v : getX() - this.f5164v;
            if (this.f5122A > getY()) {
                f2 = getY() + this.f5164v;
                f = x;
            } else {
                f2 = getY() - this.f5164v;
                f = x;
            }
        } else {
            f = this.f5168z;
            f2 = this.f5122A;
        }
        setX(f);
        setY(f2);
    }

    /* renamed from: K */
    private void m9430K(long j) {
        long j2 = this.f5130I;
        if (j2 >= 200) {
            double d = this.f5131J;
            double d2 = j;
            Double.isNaN(d2);
            double d3 = d + d2;
            this.f5131J = d3;
            if (d3 > 500.0d) {
                this.f5131J = d3 - 500.0d;
                this.f5130I = 0L;
                this.f5132K = !this.f5132K;
            }
            float cos = (((float) Math.cos(((this.f5131J / 500.0d) + 1.0d) * 3.141592653589793d)) / 2.0f) + 0.5f;
            float f = 270 - this.f5133L;
            if (this.f5132K) {
                this.f5134M = cos * f;
                return;
            }
            float f2 = f * (1.0f - cos);
            this.f5135N += this.f5134M - f2;
            this.f5134M = f2;
            return;
        }
        this.f5130I = j2 + j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCircleSize() {
        return getResources().getDimensionPixelSize(this.f5144b == 0 ? R$dimen.fab_size_normal : R$dimen.fab_size_mini);
    }

    private int getShadowX() {
        return this.f5147e + Math.abs(this.f5148f);
    }

    private int getShadowY() {
        return this.f5147e + Math.abs(this.f5149g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public float m9418l() {
        return getMeasuredWidth() / 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public float m9417m() {
        return getMeasuredHeight() / 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public int m9416n() {
        int circleSize = getCircleSize() + m9414p();
        int i = circleSize;
        if (this.f5163u) {
            i = circleSize + (this.f5164v * 2);
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public int m9415o() {
        int circleSize = getCircleSize() + m9413q();
        int i = circleSize;
        if (this.f5163u) {
            i = circleSize + (this.f5164v * 2);
        }
        return i;
    }

    /* renamed from: r */
    private Drawable m9412r(int i) {
        C1255d dVar = new C1255d(this, new OvalShape(), null);
        dVar.getPaint().setColor(i);
        return dVar;
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [int[], int[][]] */
    @TargetApi(21)
    /* renamed from: s */
    private Drawable m9411s() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842910}, m9412r(this.f5152j));
        stateListDrawable.addState(new int[]{16842919}, m9412r(this.f5151i));
        stateListDrawable.addState(new int[0], m9412r(this.f5150h));
        if (C1268a.m9350c()) {
            RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(new int[]{new int[0]}, new int[]{this.f5153k}), stateListDrawable, null);
            setOutlineProvider(new C1252a(this));
            setClipToOutline(true);
            this.f5160r = rippleDrawable;
            return rippleDrawable;
        }
        this.f5160r = stateListDrawable;
        return stateListDrawable;
    }

    @TargetApi(16)
    private void setBackgroundCompat(Drawable drawable) {
        if (C1268a.m9351b()) {
            setBackground(drawable);
        } else {
            setBackgroundDrawable(drawable);
        }
    }

    /* renamed from: v */
    private void m9408v(Context context, AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FloatingActionButtonNew, i, 0);
        this.f5150h = obtainStyledAttributes.getColor(1, -2473162);
        this.f5151i = obtainStyledAttributes.getColor(2, -1617853);
        this.f5152j = obtainStyledAttributes.getColor(0, -5592406);
        this.f5153k = obtainStyledAttributes.getColor(3, -1711276033);
        this.f5145c = obtainStyledAttributes.getBoolean(18, true);
        this.f5146d = obtainStyledAttributes.getColor(13, 1711276032);
        this.f5147e = obtainStyledAttributes.getDimensionPixelSize(14, this.f5147e);
        this.f5148f = obtainStyledAttributes.getDimensionPixelSize(15, this.f5148f);
        this.f5149g = obtainStyledAttributes.getDimensionPixelSize(16, this.f5149g);
        this.f5144b = obtainStyledAttributes.getInt(19, 0);
        this.f5158p = obtainStyledAttributes.getString(6);
        this.f5139R = obtainStyledAttributes.getBoolean(10, false);
        this.f5165w = obtainStyledAttributes.getColor(9, -16738680);
        this.f5166x = obtainStyledAttributes.getColor(8, 1291845632);
        this.f5141T = obtainStyledAttributes.getInt(11, this.f5141T);
        this.f5142U = obtainStyledAttributes.getBoolean(12, true);
        if (obtainStyledAttributes.hasValue(7)) {
            this.f5137P = obtainStyledAttributes.getInt(7, 0);
            this.f5140S = true;
        }
        if (obtainStyledAttributes.hasValue(4)) {
            float dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(4, 0);
            if (isInEditMode()) {
                setElevation(dimensionPixelOffset);
            } else {
                setElevationCompat(dimensionPixelOffset);
            }
        }
        m9406x(obtainStyledAttributes);
        m9407w(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        if (isInEditMode()) {
            if (this.f5139R) {
                setIndeterminate(true);
            } else if (this.f5140S) {
                m9437D();
                setProgress(this.f5137P, false);
            }
        }
        setClickable(true);
    }

    /* renamed from: w */
    private void m9407w(TypedArray typedArray) {
        this.f5157o = AnimationUtils.loadAnimation(getContext(), typedArray.getResourceId(5, R$anim.fab_scale_down));
    }

    /* renamed from: x */
    private void m9406x(TypedArray typedArray) {
        this.f5156n = AnimationUtils.loadAnimation(getContext(), typedArray.getResourceId(17, R$anim.fab_scale_up));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(21)
    /* renamed from: A */
    public void m9440A() {
        Drawable drawable = this.f5160r;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[]{16842910});
        } else if (C1268a.m9350c()) {
            RippleDrawable rippleDrawable = (RippleDrawable) this.f5160r;
            rippleDrawable.setState(new int[]{16842910});
            rippleDrawable.setHotspot(m9418l(), m9417m());
            rippleDrawable.setVisible(true, true);
        }
    }

    /* renamed from: B */
    void m9439B() {
        this.f5156n.cancel();
        startAnimation(this.f5157o);
    }

    /* renamed from: C */
    void m9438C() {
        this.f5157o.cancel();
        startAnimation(this.f5156n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: E */
    public void m9436E(int i, int i2, int i3) {
        this.f5150h = i;
        this.f5151i = i2;
        this.f5153k = i3;
    }

    /* renamed from: H */
    public void m9433H(boolean z) {
        if (m9405y()) {
            if (z) {
                m9438C();
            }
            super.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: I */
    public void m9432I() {
        int i = 0;
        LayerDrawable layerDrawable = m9410t() ? new LayerDrawable(new Drawable[]{new C1256e(this, null), m9411s(), getIconDrawable()}) : new LayerDrawable(new Drawable[]{m9411s(), getIconDrawable()});
        int i2 = -1;
        if (getIconDrawable() != null) {
            i2 = Math.max(getIconDrawable().getIntrinsicWidth(), getIconDrawable().getIntrinsicHeight());
        }
        int circleSize = getCircleSize();
        if (i2 <= 0) {
            i2 = this.f5155m;
        }
        int i3 = (circleSize - i2) / 2;
        int abs = m9410t() ? this.f5147e + Math.abs(this.f5148f) : 0;
        if (m9410t()) {
            i = this.f5147e + Math.abs(this.f5149g);
        }
        int i4 = i;
        int i5 = abs;
        if (this.f5163u) {
            int i6 = this.f5164v;
            i5 = abs + i6;
            i4 = i + i6;
        }
        int i7 = i5 + i3;
        int i8 = i4 + i3;
        layerDrawable.setLayerInset(m9410t() ? 2 : 1, i7, i8, i7, i8);
        setBackgroundCompat(layerDrawable);
    }

    public int getButtonSize() {
        return this.f5144b;
    }

    public int getColorDisabled() {
        return this.f5152j;
    }

    public int getColorNormal() {
        return this.f5150h;
    }

    public int getColorPressed() {
        return this.f5151i;
    }

    public int getColorRipple() {
        return this.f5153k;
    }

    Animation getHideAnimation() {
        return this.f5157o;
    }

    protected Drawable getIconDrawable() {
        Drawable drawable = this.f5154l;
        return drawable != null ? drawable : new ColorDrawable(0);
    }

    public String getLabelText() {
        return this.f5158p;
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
            i = this.f5141T;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View.OnClickListener getOnClickListener() {
        return this.f5159q;
    }

    public int getProgress() {
        int i;
        synchronized (this) {
            i = this.f5127F ? 0 : this.f5137P;
        }
        return i;
    }

    public int getShadowColor() {
        return this.f5146d;
    }

    public int getShadowRadius() {
        return this.f5147e;
    }

    public int getShadowXOffset() {
        return this.f5148f;
    }

    public int getShadowYOffset() {
        return this.f5149g;
    }

    Animation getShowAnimation() {
        return this.f5156n;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        super.onDraw(canvas);
        if (this.f5163u) {
            if (this.f5142U) {
                canvas.drawArc(this.f5124C, 360.0f, 360.0f, false, this.f5125D);
            }
            r11 = false;
            boolean z = true;
            if (this.f5127F) {
                long uptimeMillis = SystemClock.uptimeMillis() - this.f5128G;
                float f3 = (((float) uptimeMillis) * this.f5129H) / 1000.0f;
                m9430K(uptimeMillis);
                float f4 = this.f5135N + f3;
                this.f5135N = f4;
                if (f4 > 360.0f) {
                    this.f5135N = f4 - 360.0f;
                }
                this.f5128G = SystemClock.uptimeMillis();
                float f5 = this.f5135N;
                float f6 = this.f5133L;
                float f7 = this.f5134M;
                if (isInEditMode()) {
                    f2 = 0.0f;
                    f = 135.0f;
                } else {
                    f2 = f5 - 90.0f;
                    f = f6 + f7;
                }
                canvas.drawArc(this.f5124C, f2, f, false, this.f5126E);
            } else {
                if (this.f5135N != this.f5136O) {
                    float uptimeMillis2 = (((float) (SystemClock.uptimeMillis() - this.f5128G)) / 1000.0f) * this.f5129H;
                    float f8 = this.f5135N;
                    float f9 = this.f5136O;
                    this.f5135N = f8 > f9 ? Math.max(f8 - uptimeMillis2, f9) : Math.min(f8 + uptimeMillis2, f9);
                    this.f5128G = SystemClock.uptimeMillis();
                    z = true;
                }
                canvas.drawArc(this.f5124C, -90.0f, this.f5135N, false, this.f5126E);
            }
            if (z) {
                invalidate();
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(m9415o(), m9416n());
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ProgressSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ProgressSavedState progressSavedState = (ProgressSavedState) parcelable;
        super.onRestoreInstanceState(progressSavedState.getSuperState());
        this.f5135N = progressSavedState.f5169b;
        this.f5136O = progressSavedState.f5170c;
        this.f5129H = progressSavedState.f5171d;
        this.f5164v = progressSavedState.f5173f;
        this.f5165w = progressSavedState.f5174g;
        this.f5166x = progressSavedState.f5175h;
        this.f5139R = progressSavedState.f5179l;
        this.f5140S = progressSavedState.f5180m;
        this.f5137P = progressSavedState.f5172e;
        this.f5138Q = progressSavedState.f5181n;
        this.f5142U = progressSavedState.f5182o;
        this.f5128G = SystemClock.uptimeMillis();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        ProgressSavedState progressSavedState = new ProgressSavedState(super.onSaveInstanceState());
        progressSavedState.f5169b = this.f5135N;
        progressSavedState.f5170c = this.f5136O;
        progressSavedState.f5171d = this.f5129H;
        progressSavedState.f5173f = this.f5164v;
        progressSavedState.f5174g = this.f5165w;
        progressSavedState.f5175h = this.f5166x;
        boolean z = this.f5127F;
        progressSavedState.f5179l = z;
        progressSavedState.f5180m = this.f5163u && this.f5137P > 0 && !z;
        progressSavedState.f5172e = this.f5137P;
        progressSavedState.f5181n = this.f5138Q;
        progressSavedState.f5182o = this.f5142U;
        return progressSavedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        m9437D();
        if (this.f5139R) {
            setIndeterminate(true);
            this.f5139R = false;
        } else if (this.f5140S) {
            setProgress(this.f5137P, this.f5138Q);
            this.f5140S = false;
        } else if (this.f5167y) {
            m9431J();
            this.f5167y = false;
        }
        super.onSizeChanged(i, i2, i3, i4);
        m9434G();
        m9435F();
        m9432I();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0036, code lost:
        if (r0 != null) goto L_0x0040;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003d, code lost:
        if (r0 != null) goto L_0x0040;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0040, code lost:
        r0.m9359t();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0044, code lost:
        m9440A();
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r4) {
        /*
            r3 = this;
            r0 = r3
            android.view.View$OnClickListener r0 = r0.f5159q
            if (r0 == 0) goto L_0x0051
            r0 = r3
            boolean r0 = r0.isEnabled()
            if (r0 == 0) goto L_0x0051
            r0 = r3
            r1 = 2131296545(0x7f090121, float:1.821101E38)
            java.lang.Object r0 = r0.getTag(r1)
            com.github.clans.fab.Label r0 = (com.github.clans.fab.Label) r0
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0023
            r0 = r3
            r1 = r4
            boolean r0 = super.onTouchEvent(r1)
            return r0
        L_0x0023:
            r0 = r4
            int r0 = r0.getAction()
            r6 = r0
            r0 = r6
            r1 = 1
            if (r0 == r1) goto L_0x003c
            r0 = r6
            r1 = 3
            if (r0 == r1) goto L_0x0035
            goto L_0x0048
        L_0x0035:
            r0 = r5
            if (r0 == 0) goto L_0x0044
            goto L_0x0040
        L_0x003c:
            r0 = r5
            if (r0 == 0) goto L_0x0044
        L_0x0040:
            r0 = r5
            r0.m9359t()
        L_0x0044:
            r0 = r3
            r0.m9440A()
        L_0x0048:
            r0 = r3
            android.view.GestureDetector r0 = r0.f5143V
            r1 = r4
            boolean r0 = r0.onTouchEvent(r1)
        L_0x0051:
            r0 = r3
            r1 = r4
            boolean r0 = super.onTouchEvent(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.clans.fab.FloatingActionButton.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    int m9414p() {
        return m9410t() ? getShadowY() * 2 : 0;
    }

    /* renamed from: q */
    int m9413q() {
        return m9410t() ? getShadowX() * 2 : 0;
    }

    public void setButtonSize(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("Use @FabSize constants only!");
        } else if (this.f5144b != i) {
            this.f5144b = i;
            m9432I();
        }
    }

    public void setColorDisabled(int i) {
        if (i != this.f5152j) {
            this.f5152j = i;
            m9432I();
        }
    }

    public void setColorDisabledResId(int i) {
        setColorDisabled(getResources().getColor(i));
    }

    public void setColorNormal(int i) {
        if (this.f5150h != i) {
            this.f5150h = i;
            m9432I();
        }
    }

    public void setColorNormalResId(int i) {
        setColorNormal(getResources().getColor(i));
    }

    public void setColorPressed(int i) {
        if (i != this.f5151i) {
            this.f5151i = i;
            m9432I();
        }
    }

    public void setColorPressedResId(int i) {
        setColorPressed(getResources().getColor(i));
    }

    public void setColorRipple(int i) {
        if (i != this.f5153k) {
            this.f5153k = i;
            m9432I();
        }
    }

    public void setColorRippleResId(int i) {
        setColorRipple(getResources().getColor(i));
    }

    @Override // android.view.View
    public void setElevation(float f) {
        if (C1268a.m9350c() && f > 0.0f) {
            super.setElevation(f);
            if (!isInEditMode()) {
                this.f5161s = true;
                this.f5145c = false;
            }
            m9432I();
        }
    }

    @TargetApi(21)
    public void setElevationCompat(float f) {
        this.f5146d = 637534208;
        float f2 = f / 2.0f;
        this.f5147e = Math.round(f2);
        this.f5148f = 0;
        if (this.f5144b == 0) {
            f2 = f;
        }
        this.f5149g = Math.round(f2);
        if (C1268a.m9350c()) {
            super.setElevation(f);
            this.f5162t = true;
            this.f5145c = false;
            m9432I();
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null) {
                setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        this.f5145c = true;
        m9432I();
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
        this.f5157o = animation;
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (this.f5154l != drawable) {
            this.f5154l = drawable;
            m9432I();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        Drawable drawable = getResources().getDrawable(i);
        if (this.f5154l != drawable) {
            this.f5154l = drawable;
            m9432I();
        }
    }

    public void setIndeterminate(boolean z) {
        synchronized (this) {
            if (!z) {
                this.f5135N = 0.0f;
            }
            this.f5163u = z;
            this.f5167y = true;
            this.f5127F = z;
            this.f5128G = SystemClock.uptimeMillis();
            m9434G();
            m9432I();
        }
    }

    public void setLabelColors(int i, int i2, int i3) {
        Label labelView = getLabelView();
        int paddingLeft = labelView.getPaddingLeft();
        int paddingTop = labelView.getPaddingTop();
        int paddingRight = labelView.getPaddingRight();
        int paddingBottom = labelView.getPaddingBottom();
        labelView.m9356w(i, i2, i3);
        labelView.m9354y();
        labelView.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }

    public void setLabelText(String str) {
        this.f5158p = str;
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
        if ((layoutParams instanceof ViewGroup.MarginLayoutParams) && this.f5162t) {
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
            this.f5141T = i;
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        this.f5159q = onClickListener;
        View view = (View) getTag(R$id.fab_label);
        if (view != null) {
            view.setOnClickListener(new View$OnClickListenerC1254c());
        }
    }

    public void setProgress(int i, boolean z) {
        int i2;
        synchronized (this) {
            if (!this.f5127F) {
                this.f5137P = i;
                this.f5138Q = z;
                if (!this.f5123B) {
                    this.f5140S = true;
                    return;
                }
                this.f5163u = true;
                this.f5167y = true;
                m9434G();
                m9437D();
                m9432I();
                if (i < 0) {
                    i2 = 0;
                } else {
                    int i3 = this.f5141T;
                    i2 = i;
                    if (i > i3) {
                        i2 = i3;
                    }
                }
                float f = i2;
                if (f != this.f5136O) {
                    int i4 = this.f5141T;
                    this.f5136O = i4 > 0 ? (f / i4) * 360.0f : 0.0f;
                    this.f5128G = SystemClock.uptimeMillis();
                    if (!z) {
                        this.f5135N = this.f5136O;
                    }
                    invalidate();
                }
            }
        }
    }

    public void setShadowColor(int i) {
        if (this.f5146d != i) {
            this.f5146d = i;
            m9432I();
        }
    }

    public void setShadowColorResource(int i) {
        int color = getResources().getColor(i);
        if (this.f5146d != color) {
            this.f5146d = color;
            m9432I();
        }
    }

    public void setShadowRadius(float f) {
        this.f5147e = C1268a.m9352a(getContext(), f);
        requestLayout();
        m9432I();
    }

    public void setShadowRadius(int i) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i);
        if (this.f5147e != dimensionPixelSize) {
            this.f5147e = dimensionPixelSize;
            requestLayout();
            m9432I();
        }
    }

    public void setShadowXOffset(float f) {
        this.f5148f = C1268a.m9352a(getContext(), f);
        requestLayout();
        m9432I();
    }

    public void setShadowXOffset(int i) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i);
        if (this.f5148f != dimensionPixelSize) {
            this.f5148f = dimensionPixelSize;
            requestLayout();
            m9432I();
        }
    }

    public void setShadowYOffset(float f) {
        this.f5149g = C1268a.m9352a(getContext(), f);
        requestLayout();
        m9432I();
    }

    public void setShadowYOffset(int i) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i);
        if (this.f5149g != dimensionPixelSize) {
            this.f5149g = dimensionPixelSize;
            requestLayout();
            m9432I();
        }
    }

    public void setShowAnimation(Animation animation) {
        this.f5156n = animation;
    }

    public void setShowProgressBackground(boolean z) {
        synchronized (this) {
            this.f5142U = z;
        }
    }

    public void setShowShadow(boolean z) {
        if (this.f5145c != z) {
            this.f5145c = z;
            m9432I();
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
    public boolean m9410t() {
        return !this.f5161s && this.f5145c;
    }

    /* renamed from: u */
    public void m9409u(boolean z) {
        if (!m9405y()) {
            if (z) {
                m9439B();
            }
            super.setVisibility(4);
        }
    }

    /* renamed from: y */
    public boolean m9405y() {
        return getVisibility() == 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(21)
    /* renamed from: z */
    public void m9404z() {
        Drawable drawable = this.f5160r;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[]{16842910, 16842919});
        } else if (C1268a.m9350c()) {
            RippleDrawable rippleDrawable = (RippleDrawable) this.f5160r;
            rippleDrawable.setState(new int[]{16842910, 16842919});
            rippleDrawable.setHotspot(m9418l(), m9417m());
            rippleDrawable.setVisible(true, true);
        }
    }
}
