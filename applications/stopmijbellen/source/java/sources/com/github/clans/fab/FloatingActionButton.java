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
import p132j2.C3173e;
import p132j2.C3177f;
import p134j4.C3260w0;
/* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton.class */
public class FloatingActionButton extends ImageButton {

    /* renamed from: W */
    public static final Xfermode f6014W = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);

    /* renamed from: A */
    public boolean f6015A;

    /* renamed from: E */
    public boolean f6019E;

    /* renamed from: F */
    public long f6020F;

    /* renamed from: I */
    public double f6023I;

    /* renamed from: L */
    public float f6026L;

    /* renamed from: M */
    public float f6027M;

    /* renamed from: N */
    public float f6028N;

    /* renamed from: O */
    public int f6029O;

    /* renamed from: P */
    public boolean f6030P;

    /* renamed from: R */
    public boolean f6031R;

    /* renamed from: S */
    public boolean f6032S;

    /* renamed from: T */
    public int f6033T;

    /* renamed from: U */
    public boolean f6034U;

    /* renamed from: a */
    public int f6036a;

    /* renamed from: b */
    public boolean f6037b;

    /* renamed from: c */
    public int f6038c;

    /* renamed from: d */
    public int f6039d;

    /* renamed from: e */
    public int f6040e;

    /* renamed from: f */
    public int f6041f;

    /* renamed from: g */
    public int f6042g;

    /* renamed from: h */
    public int f6043h;

    /* renamed from: i */
    public int f6044i;

    /* renamed from: j */
    public int f6045j;

    /* renamed from: k */
    public Drawable f6046k;

    /* renamed from: m */
    public Animation f6048m;

    /* renamed from: n */
    public Animation f6049n;

    /* renamed from: o */
    public String f6050o;

    /* renamed from: p */
    public View.OnClickListener f6051p;

    /* renamed from: q */
    public Drawable f6052q;

    /* renamed from: r */
    public boolean f6053r;

    /* renamed from: s */
    public boolean f6054s;

    /* renamed from: t */
    public boolean f6055t;

    /* renamed from: v */
    public int f6057v;

    /* renamed from: w */
    public int f6058w;

    /* renamed from: x */
    public boolean f6059x;

    /* renamed from: l */
    public int f6047l = C3177f.m2573a(getContext(), 24.0f);

    /* renamed from: u */
    public int f6056u = C3177f.m2573a(getContext(), 6.0f);

    /* renamed from: y */
    public float f6060y = -1.0f;

    /* renamed from: z */
    public float f6061z = -1.0f;

    /* renamed from: B */
    public RectF f6016B = new RectF();

    /* renamed from: C */
    public Paint f6017C = new Paint(1);

    /* renamed from: D */
    public Paint f6018D = new Paint(1);

    /* renamed from: G */
    public float f6021G = 195.0f;

    /* renamed from: H */
    public long f6022H = 0;

    /* renamed from: J */
    public boolean f6024J = true;

    /* renamed from: K */
    public int f6025K = 16;

    /* renamed from: V */
    public GestureDetector f6035V = new GestureDetector(getContext(), new C1627b());

    /* renamed from: com.github.clans.fab.FloatingActionButton$a */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$a.class */
    public class C1626a extends ViewOutlineProvider {
        public C1626a(FloatingActionButton floatingActionButton) {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setOval(0, 0, view.getWidth(), view.getHeight());
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionButton$b */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$b.class */
    public class C1627b extends GestureDetector.SimpleOnGestureListener {
        public C1627b() {
            FloatingActionButton.this = r4;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            C3173e c3173e = (C3173e) FloatingActionButton.this.getTag(2131296606);
            if (c3173e != null) {
                c3173e.m2576c();
            }
            FloatingActionButton.this.m4839j();
            return super.onDown(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            C3173e c3173e = (C3173e) FloatingActionButton.this.getTag(2131296606);
            if (c3173e != null) {
                c3173e.m2575d();
            }
            FloatingActionButton.this.m4838k();
            return super.onSingleTapUp(motionEvent);
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionButton$c */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$c.class */
    public class View$OnClickListenerC1628c implements View.OnClickListener {
        public View$OnClickListenerC1628c() {
            FloatingActionButton.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            View.OnClickListener onClickListener = floatingActionButton.f6051p;
            if (onClickListener != null) {
                onClickListener.onClick(floatingActionButton);
            }
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionButton$d */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$d.class */
    public class C1629d extends ShapeDrawable {

        /* renamed from: a */
        public int f6064a;

        /* renamed from: b */
        public int f6065b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1629d(Shape shape, C1626a c1626a) {
            super(shape);
            int i;
            FloatingActionButton.this = r5;
            if (r5.m4841h()) {
                i = Math.abs(r5.f6040e) + r5.f6039d;
            } else {
                i = 0;
            }
            this.f6064a = i;
            int i2 = 0;
            if (r5.m4841h()) {
                i2 = Math.abs(r5.f6041f) + r5.f6039d;
            }
            this.f6065b = i2;
            if (r5.f6055t) {
                int i3 = this.f6064a;
                int i4 = r5.f6056u;
                this.f6064a = i3 + i4;
                this.f6065b = i2 + i4;
            }
        }

        @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            int i = this.f6064a;
            int i2 = this.f6065b;
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            Xfermode xfermode = FloatingActionButton.f6014W;
            setBounds(i, i2, floatingActionButton.m4844e() - this.f6064a, FloatingActionButton.this.m4845d() - this.f6065b);
            super.draw(canvas);
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionButton$e */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$e.class */
    public static class C1630e extends View.BaseSavedState {
        public static final Parcelable.Creator<C1630e> CREATOR = new C1631a();

        /* renamed from: a */
        public float f6067a;

        /* renamed from: b */
        public float f6068b;

        /* renamed from: c */
        public float f6069c;

        /* renamed from: d */
        public int f6070d;

        /* renamed from: e */
        public int f6071e;

        /* renamed from: f */
        public int f6072f;

        /* renamed from: g */
        public int f6073g;

        /* renamed from: h */
        public boolean f6074h;

        /* renamed from: i */
        public boolean f6075i;

        /* renamed from: j */
        public boolean f6076j;

        /* renamed from: k */
        public boolean f6077k;

        /* renamed from: l */
        public boolean f6078l;

        /* renamed from: m */
        public boolean f6079m;

        /* renamed from: n */
        public boolean f6080n;

        /* renamed from: com.github.clans.fab.FloatingActionButton$e$a */
        /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$e$a.class */
        public static final class C1631a implements Parcelable.Creator<C1630e> {
            @Override // android.os.Parcelable.Creator
            public C1630e createFromParcel(Parcel parcel) {
                return new C1630e(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public C1630e[] newArray(int i) {
                return new C1630e[i];
            }
        }

        public C1630e(Parcel parcel, C1626a c1626a) {
            super(parcel);
            this.f6067a = parcel.readFloat();
            this.f6068b = parcel.readFloat();
            this.f6074h = parcel.readInt() != 0;
            this.f6069c = parcel.readFloat();
            this.f6070d = parcel.readInt();
            this.f6071e = parcel.readInt();
            this.f6072f = parcel.readInt();
            this.f6073g = parcel.readInt();
            this.f6075i = parcel.readInt() != 0;
            this.f6076j = parcel.readInt() != 0;
            this.f6077k = parcel.readInt() != 0;
            this.f6078l = parcel.readInt() != 0;
            this.f6079m = parcel.readInt() != 0;
            this.f6080n = parcel.readInt() != 0;
        }

        public C1630e(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f6067a);
            parcel.writeFloat(this.f6068b);
            parcel.writeInt(this.f6074h ? 1 : 0);
            parcel.writeFloat(this.f6069c);
            parcel.writeInt(this.f6070d);
            parcel.writeInt(this.f6071e);
            parcel.writeInt(this.f6072f);
            parcel.writeInt(this.f6073g);
            parcel.writeInt(this.f6075i ? 1 : 0);
            parcel.writeInt(this.f6076j ? 1 : 0);
            parcel.writeInt(this.f6077k ? 1 : 0);
            parcel.writeInt(this.f6078l ? 1 : 0);
            parcel.writeInt(this.f6079m ? 1 : 0);
            parcel.writeInt(this.f6080n ? 1 : 0);
        }
    }

    /* renamed from: com.github.clans.fab.FloatingActionButton$f */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/FloatingActionButton$f.class */
    public class C1632f extends Drawable {

        /* renamed from: a */
        public Paint f6081a = new Paint(1);

        /* renamed from: b */
        public Paint f6082b = new Paint(1);

        /* renamed from: c */
        public float f6083c;

        public C1632f(C1626a c1626a) {
            FloatingActionButton.this = r7;
            r7.setLayerType(1, null);
            this.f6081a.setStyle(Paint.Style.FILL);
            this.f6081a.setColor(r7.f6042g);
            this.f6082b.setXfermode(FloatingActionButton.f6014W);
            if (!r7.isInEditMode()) {
                this.f6081a.setShadowLayer(r7.f6039d, r7.f6040e, r7.f6041f, r7.f6038c);
            }
            float circleSize = r7.getCircleSize() / 2;
            this.f6083c = circleSize;
            if (!r7.f6055t || !r7.f6034U) {
                return;
            }
            this.f6083c = circleSize + r7.f6056u;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            Xfermode xfermode = FloatingActionButton.f6014W;
            canvas.drawCircle(floatingActionButton.m4847b(), FloatingActionButton.this.m4846c(), this.f6083c, this.f6081a);
            canvas.drawCircle(FloatingActionButton.this.m4847b(), FloatingActionButton.this.m4846c(), this.f6083c, this.f6082b);
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

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f6039d = C3177f.m2573a(getContext(), 4.0f);
        this.f6040e = C3177f.m2573a(getContext(), 1.0f);
        this.f6041f = C3177f.m2573a(getContext(), 3.0f);
        this.f6033T = 100;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3260w0.f11017K, 0, 0);
        this.f6042g = obtainStyledAttributes.getColor(9, -2473162);
        this.f6043h = obtainStyledAttributes.getColor(10, -1617853);
        this.f6044i = obtainStyledAttributes.getColor(8, -5592406);
        this.f6045j = obtainStyledAttributes.getColor(11, -1711276033);
        this.f6037b = obtainStyledAttributes.getBoolean(26, true);
        this.f6038c = obtainStyledAttributes.getColor(21, 1711276032);
        this.f6039d = obtainStyledAttributes.getDimensionPixelSize(22, this.f6039d);
        this.f6040e = obtainStyledAttributes.getDimensionPixelSize(23, this.f6040e);
        this.f6041f = obtainStyledAttributes.getDimensionPixelSize(24, this.f6041f);
        this.f6036a = obtainStyledAttributes.getInt(27, 0);
        this.f6050o = obtainStyledAttributes.getString(14);
        this.f6031R = obtainStyledAttributes.getBoolean(18, false);
        this.f6057v = obtainStyledAttributes.getColor(17, -16738680);
        this.f6058w = obtainStyledAttributes.getColor(16, 1291845632);
        this.f6033T = obtainStyledAttributes.getInt(19, this.f6033T);
        this.f6034U = obtainStyledAttributes.getBoolean(20, true);
        if (obtainStyledAttributes.hasValue(15)) {
            this.f6029O = obtainStyledAttributes.getInt(15, 0);
            this.f6032S = true;
        }
        if (obtainStyledAttributes.hasValue(12)) {
            float dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(12, 0);
            if (isInEditMode()) {
                setElevation(dimensionPixelOffset);
            } else {
                setElevationCompat(dimensionPixelOffset);
            }
        }
        this.f6048m = AnimationUtils.loadAnimation(getContext(), obtainStyledAttributes.getResourceId(25, 2130772002));
        this.f6049n = AnimationUtils.loadAnimation(getContext(), obtainStyledAttributes.getResourceId(13, 2130772001));
        obtainStyledAttributes.recycle();
        if (isInEditMode()) {
            if (this.f6031R) {
                setIndeterminate(true);
            } else if (this.f6032S) {
                m4837l();
                m4836m(this.f6029O, false);
            }
        }
        setClickable(true);
    }

    public int getCircleSize() {
        return getResources().getDimensionPixelSize(this.f6036a == 0 ? 2131165363 : 2131165362);
    }

    private int getShadowX() {
        return Math.abs(this.f6040e) + this.f6039d;
    }

    private int getShadowY() {
        return Math.abs(this.f6041f) + this.f6039d;
    }

    @TargetApi(16)
    private void setBackgroundCompat(Drawable drawable) {
        setBackground(drawable);
    }

    /* renamed from: b */
    public final float m4847b() {
        return getMeasuredWidth() / 2;
    }

    /* renamed from: c */
    public final float m4846c() {
        return getMeasuredHeight() / 2;
    }

    /* renamed from: d */
    public final int m4845d() {
        int circleSize = getCircleSize() + (m4841h() ? getShadowY() * 2 : 0);
        int i = circleSize;
        if (this.f6055t) {
            i = circleSize + (this.f6056u * 2);
        }
        return i;
    }

    /* renamed from: e */
    public final int m4844e() {
        int circleSize = getCircleSize() + (m4841h() ? getShadowX() * 2 : 0);
        int i = circleSize;
        if (this.f6055t) {
            i = circleSize + (this.f6056u * 2);
        }
        return i;
    }

    /* renamed from: f */
    public final Drawable m4843f(int i) {
        C1629d c1629d = new C1629d(new OvalShape(), null);
        c1629d.getPaint().setColor(i);
        return c1629d;
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [int[], int[][]] */
    @TargetApi(21)
    /* renamed from: g */
    public final Drawable m4842g() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842910}, m4843f(this.f6044i));
        stateListDrawable.addState(new int[]{16842919}, m4843f(this.f6043h));
        stateListDrawable.addState(new int[0], m4843f(this.f6042g));
        RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(new int[]{new int[0]}, new int[]{this.f6045j}), stateListDrawable, null);
        setOutlineProvider(new C1626a(this));
        setClipToOutline(true);
        this.f6052q = rippleDrawable;
        return rippleDrawable;
    }

    public int getButtonSize() {
        return this.f6036a;
    }

    public int getColorDisabled() {
        return this.f6044i;
    }

    public int getColorNormal() {
        return this.f6042g;
    }

    public int getColorPressed() {
        return this.f6043h;
    }

    public int getColorRipple() {
        return this.f6045j;
    }

    public Animation getHideAnimation() {
        return this.f6049n;
    }

    public Drawable getIconDrawable() {
        Drawable drawable = this.f6046k;
        return drawable != null ? drawable : new ColorDrawable(0);
    }

    public String getLabelText() {
        return this.f6050o;
    }

    public C3173e getLabelView() {
        return (C3173e) getTag(2131296606);
    }

    public int getLabelVisibility() {
        C3173e labelView = getLabelView();
        if (labelView != null) {
            return labelView.getVisibility();
        }
        return -1;
    }

    public int getMax() {
        int i;
        synchronized (this) {
            i = this.f6033T;
        }
        return i;
    }

    public View.OnClickListener getOnClickListener() {
        return this.f6051p;
    }

    public int getProgress() {
        int i;
        synchronized (this) {
            i = this.f6019E ? 0 : this.f6029O;
        }
        return i;
    }

    public int getShadowColor() {
        return this.f6038c;
    }

    public int getShadowRadius() {
        return this.f6039d;
    }

    public int getShadowXOffset() {
        return this.f6040e;
    }

    public int getShadowYOffset() {
        return this.f6041f;
    }

    public Animation getShowAnimation() {
        return this.f6048m;
    }

    /* renamed from: h */
    public boolean m4841h() {
        return !this.f6053r && this.f6037b;
    }

    /* renamed from: i */
    public void m4840i(boolean z) {
        if (!(getVisibility() == 4)) {
            if (z) {
                this.f6048m.cancel();
                startAnimation(this.f6049n);
            }
            super.setVisibility(4);
        }
    }

    @TargetApi(21)
    /* renamed from: j */
    public void m4839j() {
        Drawable drawable = this.f6052q;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[]{16842910, 16842919});
            return;
        }
        RippleDrawable rippleDrawable = (RippleDrawable) drawable;
        rippleDrawable.setState(new int[]{16842910, 16842919});
        rippleDrawable.setHotspot(m4847b(), m4846c());
        rippleDrawable.setVisible(true, true);
    }

    @TargetApi(21)
    /* renamed from: k */
    public void m4838k() {
        Drawable drawable = this.f6052q;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[]{16842910});
            return;
        }
        RippleDrawable rippleDrawable = (RippleDrawable) drawable;
        rippleDrawable.setState(new int[]{16842910});
        rippleDrawable.setHotspot(m4847b(), m4846c());
        rippleDrawable.setVisible(true, true);
    }

    /* renamed from: l */
    public final void m4837l() {
        if (!this.f6015A) {
            if (this.f6060y == -1.0f) {
                this.f6060y = getX();
            }
            if (this.f6061z == -1.0f) {
                this.f6061z = getY();
            }
            this.f6015A = true;
        }
    }

    /* renamed from: m */
    public void m4836m(int i, boolean z) {
        int i2;
        synchronized (this) {
            if (this.f6019E) {
                return;
            }
            this.f6029O = i;
            this.f6030P = z;
            if (!this.f6015A) {
                this.f6032S = true;
                return;
            }
            this.f6055t = true;
            this.f6059x = true;
            m4835n();
            m4837l();
            m4833p();
            if (i < 0) {
                i2 = 0;
            } else {
                int i3 = this.f6033T;
                i2 = i;
                if (i > i3) {
                    i2 = i3;
                }
            }
            float f = i2;
            if (f == this.f6028N) {
                return;
            }
            int i4 = this.f6033T;
            this.f6028N = i4 > 0 ? (f / i4) * 360.0f : 0.0f;
            this.f6020F = SystemClock.uptimeMillis();
            if (!z) {
                this.f6027M = this.f6028N;
            }
            invalidate();
        }
    }

    /* renamed from: n */
    public final void m4835n() {
        int i = 0;
        int shadowX = m4841h() ? getShadowX() : 0;
        if (m4841h()) {
            i = getShadowY();
        }
        int i2 = this.f6056u;
        this.f6016B = new RectF((i2 / 2) + shadowX, (i2 / 2) + i, (m4844e() - shadowX) - (this.f6056u / 2), (m4845d() - i) - (this.f6056u / 2));
    }

    /* renamed from: o */
    public void m4834o(boolean z) {
        if (getVisibility() == 4) {
            if (z) {
                this.f6049n.cancel();
                startAnimation(this.f6048m);
            }
            super.setVisibility(0);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        float f;
        float f2;
        super.onDraw(canvas);
        if (this.f6055t) {
            if (this.f6034U) {
                canvas.drawArc(this.f6016B, 360.0f, 360.0f, false, this.f6017C);
            }
            boolean z = false;
            if (this.f6019E) {
                long uptimeMillis = SystemClock.uptimeMillis() - this.f6020F;
                float f3 = (((float) uptimeMillis) * this.f6021G) / 1000.0f;
                long j = this.f6022H;
                if (j >= 200) {
                    double d = this.f6023I + uptimeMillis;
                    this.f6023I = d;
                    if (d > 500.0d) {
                        this.f6023I = d - 500.0d;
                        this.f6022H = 0L;
                        this.f6024J = !this.f6024J;
                    }
                    float cos = (((float) Math.cos(((this.f6023I / 500.0d) + 1.0d) * 3.141592653589793d)) / 2.0f) + 0.5f;
                    float f4 = 270 - this.f6025K;
                    if (this.f6024J) {
                        this.f6026L = cos * f4;
                    } else {
                        float f5 = (1.0f - cos) * f4;
                        this.f6027M = (this.f6026L - f5) + this.f6027M;
                        this.f6026L = f5;
                    }
                } else {
                    this.f6022H = j + uptimeMillis;
                }
                float f6 = this.f6027M + f3;
                this.f6027M = f6;
                if (f6 > 360.0f) {
                    this.f6027M = f6 - 360.0f;
                }
                this.f6020F = SystemClock.uptimeMillis();
                float f7 = this.f6027M;
                float f8 = this.f6025K;
                float f9 = this.f6026L;
                if (isInEditMode()) {
                    f = 0.0f;
                    f2 = 135.0f;
                } else {
                    f = f7 - 90.0f;
                    f2 = f8 + f9;
                }
                canvas.drawArc(this.f6016B, f, f2, false, this.f6018D);
                z = true;
            } else {
                if (this.f6027M != this.f6028N) {
                    float uptimeMillis2 = (((float) (SystemClock.uptimeMillis() - this.f6020F)) / 1000.0f) * this.f6021G;
                    float f10 = this.f6027M;
                    float f11 = this.f6028N;
                    if (f10 > f11) {
                        this.f6027M = Math.max(f10 - uptimeMillis2, f11);
                    } else {
                        this.f6027M = Math.min(f10 + uptimeMillis2, f11);
                    }
                    this.f6020F = SystemClock.uptimeMillis();
                    z = true;
                }
                canvas.drawArc(this.f6016B, -90.0f, this.f6027M, false, this.f6018D);
            }
            if (!z) {
                return;
            }
            invalidate();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(m4844e(), m4845d());
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1630e)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1630e c1630e = (C1630e) parcelable;
        super.onRestoreInstanceState(c1630e.getSuperState());
        this.f6027M = c1630e.f6067a;
        this.f6028N = c1630e.f6068b;
        this.f6021G = c1630e.f6069c;
        this.f6056u = c1630e.f6071e;
        this.f6057v = c1630e.f6072f;
        this.f6058w = c1630e.f6073g;
        this.f6031R = c1630e.f6077k;
        this.f6032S = c1630e.f6078l;
        this.f6029O = c1630e.f6070d;
        this.f6030P = c1630e.f6079m;
        this.f6034U = c1630e.f6080n;
        this.f6020F = SystemClock.uptimeMillis();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C1630e c1630e = new C1630e(super.onSaveInstanceState());
        c1630e.f6067a = this.f6027M;
        c1630e.f6068b = this.f6028N;
        c1630e.f6069c = this.f6021G;
        c1630e.f6071e = this.f6056u;
        c1630e.f6072f = this.f6057v;
        c1630e.f6073g = this.f6058w;
        boolean z = this.f6019E;
        c1630e.f6077k = z;
        c1630e.f6078l = this.f6055t && this.f6029O > 0 && !z;
        c1630e.f6070d = this.f6029O;
        c1630e.f6079m = this.f6030P;
        c1630e.f6080n = this.f6034U;
        return c1630e;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        float f;
        float f2;
        m4837l();
        if (this.f6031R) {
            setIndeterminate(true);
            this.f6031R = false;
        } else if (this.f6032S) {
            m4836m(this.f6029O, this.f6030P);
            this.f6032S = false;
        } else if (this.f6059x) {
            if (this.f6055t) {
                float x = this.f6060y > getX() ? getX() + this.f6056u : getX() - this.f6056u;
                if (this.f6061z > getY()) {
                    f = x;
                    f2 = getY() + this.f6056u;
                } else {
                    f = x;
                    f2 = getY() - this.f6056u;
                }
            } else {
                f = this.f6060y;
                f2 = this.f6061z;
            }
            setX(f);
            setY(f2);
            this.f6059x = false;
        }
        super.onSizeChanged(i, i2, i3, i4);
        m4835n();
        this.f6017C.setColor(this.f6058w);
        this.f6017C.setStyle(Paint.Style.STROKE);
        this.f6017C.setStrokeWidth(this.f6056u);
        this.f6018D.setColor(this.f6057v);
        this.f6018D.setStyle(Paint.Style.STROKE);
        this.f6018D.setStrokeWidth(this.f6056u);
        m4833p();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f6051p != null && isEnabled()) {
            C3173e c3173e = (C3173e) getTag(2131296606);
            if (c3173e == null) {
                return super.onTouchEvent(motionEvent);
            }
            int action = motionEvent.getAction();
            if (action == 1) {
                c3173e.m2575d();
                m4838k();
            } else if (action == 3) {
                c3173e.m2575d();
                m4838k();
            }
            this.f6035V.onTouchEvent(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    /* renamed from: p */
    public void m4833p() {
        int i = 0;
        LayerDrawable layerDrawable = m4841h() ? new LayerDrawable(new Drawable[]{new C1632f(null), m4842g(), getIconDrawable()}) : new LayerDrawable(new Drawable[]{m4842g(), getIconDrawable()});
        int i2 = -1;
        if (getIconDrawable() != null) {
            i2 = Math.max(getIconDrawable().getIntrinsicWidth(), getIconDrawable().getIntrinsicHeight());
        }
        int circleSize = getCircleSize();
        if (i2 <= 0) {
            i2 = this.f6047l;
        }
        int i3 = (circleSize - i2) / 2;
        int abs = m4841h() ? Math.abs(this.f6040e) + this.f6039d : 0;
        if (m4841h()) {
            i = this.f6039d + Math.abs(this.f6041f);
        }
        int i4 = i;
        int i5 = abs;
        if (this.f6055t) {
            int i6 = this.f6056u;
            i5 = abs + i6;
            i4 = i + i6;
        }
        int i7 = i5 + i3;
        int i8 = i4 + i3;
        layerDrawable.setLayerInset(m4841h() ? 2 : 1, i7, i8, i7, i8);
        setBackgroundCompat(layerDrawable);
    }

    public void setButtonSize(int i) {
        if (i == 0 || i == 1) {
            if (this.f6036a == i) {
                return;
            }
            this.f6036a = i;
            m4833p();
            return;
        }
        throw new IllegalArgumentException("Use @FabSize constants only!");
    }

    public void setColorDisabled(int i) {
        if (i != this.f6044i) {
            this.f6044i = i;
            m4833p();
        }
    }

    public void setColorDisabledResId(int i) {
        setColorDisabled(getResources().getColor(i));
    }

    public void setColorNormal(int i) {
        if (this.f6042g != i) {
            this.f6042g = i;
            m4833p();
        }
    }

    public void setColorNormalResId(int i) {
        setColorNormal(getResources().getColor(i));
    }

    public void setColorPressed(int i) {
        if (i != this.f6043h) {
            this.f6043h = i;
            m4833p();
        }
    }

    public void setColorPressedResId(int i) {
        setColorPressed(getResources().getColor(i));
    }

    public void setColorRipple(int i) {
        if (i != this.f6045j) {
            this.f6045j = i;
            m4833p();
        }
    }

    public void setColorRippleResId(int i) {
        setColorRipple(getResources().getColor(i));
    }

    @Override // android.view.View
    public void setElevation(float f) {
        if (f > 0.0f) {
            super.setElevation(f);
            if (!isInEditMode()) {
                this.f6053r = true;
                this.f6037b = false;
            }
            m4833p();
        }
    }

    @TargetApi(21)
    public void setElevationCompat(float f) {
        this.f6038c = 637534208;
        float f2 = f / 2.0f;
        this.f6039d = Math.round(f2);
        this.f6040e = 0;
        if (this.f6036a == 0) {
            f2 = f;
        }
        this.f6041f = Math.round(f2);
        super.setElevation(f);
        this.f6054s = true;
        this.f6037b = false;
        m4833p();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            setLayoutParams(layoutParams);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        C3173e c3173e = (C3173e) getTag(2131296606);
        if (c3173e != null) {
            c3173e.setEnabled(z);
        }
    }

    public void setHideAnimation(Animation animation) {
        this.f6049n = animation;
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (this.f6046k != drawable) {
            this.f6046k = drawable;
            m4833p();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        Drawable drawable = getResources().getDrawable(i);
        if (this.f6046k != drawable) {
            this.f6046k = drawable;
            m4833p();
        }
    }

    public void setIndeterminate(boolean z) {
        synchronized (this) {
            if (!z) {
                this.f6027M = 0.0f;
            }
            this.f6055t = z;
            this.f6059x = true;
            this.f6019E = z;
            this.f6020F = SystemClock.uptimeMillis();
            m4835n();
            m4833p();
        }
    }

    public void setLabelText(String str) {
        this.f6050o = str;
        C3173e labelView = getLabelView();
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

    public void setLabelVisibility(int i) {
        C3173e labelView = getLabelView();
        if (labelView != null) {
            labelView.setVisibility(i);
            labelView.setHandleVisibilityChanges(i == 0);
        }
    }

    @Override // android.view.View
    @TargetApi(21)
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if ((layoutParams instanceof ViewGroup.MarginLayoutParams) && this.f6054s) {
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
            this.f6033T = i;
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        this.f6051p = onClickListener;
        View view = (View) getTag(2131296606);
        if (view != null) {
            view.setOnClickListener(new View$OnClickListenerC1628c());
        }
    }

    public void setShadowColor(int i) {
        if (this.f6038c != i) {
            this.f6038c = i;
            m4833p();
        }
    }

    public void setShadowColorResource(int i) {
        int color = getResources().getColor(i);
        if (this.f6038c != color) {
            this.f6038c = color;
            m4833p();
        }
    }

    public void setShadowRadius(float f) {
        this.f6039d = C3177f.m2573a(getContext(), f);
        requestLayout();
        m4833p();
    }

    public void setShadowRadius(int i) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i);
        if (this.f6039d != dimensionPixelSize) {
            this.f6039d = dimensionPixelSize;
            requestLayout();
            m4833p();
        }
    }

    public void setShadowXOffset(float f) {
        this.f6040e = C3177f.m2573a(getContext(), f);
        requestLayout();
        m4833p();
    }

    public void setShadowXOffset(int i) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i);
        if (this.f6040e != dimensionPixelSize) {
            this.f6040e = dimensionPixelSize;
            requestLayout();
            m4833p();
        }
    }

    public void setShadowYOffset(float f) {
        this.f6041f = C3177f.m2573a(getContext(), f);
        requestLayout();
        m4833p();
    }

    public void setShadowYOffset(int i) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(i);
        if (this.f6041f != dimensionPixelSize) {
            this.f6041f = dimensionPixelSize;
            requestLayout();
            m4833p();
        }
    }

    public void setShowAnimation(Animation animation) {
        this.f6048m = animation;
    }

    public void setShowProgressBackground(boolean z) {
        synchronized (this) {
            this.f6034U = z;
        }
    }

    public void setShowShadow(boolean z) {
        if (this.f6037b != z) {
            this.f6037b = z;
            m4833p();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        C3173e c3173e = (C3173e) getTag(2131296606);
        if (c3173e != null) {
            c3173e.setVisibility(i);
        }
    }
}
