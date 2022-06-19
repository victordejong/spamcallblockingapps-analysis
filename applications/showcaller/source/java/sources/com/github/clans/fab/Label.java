package com.github.clans.fab;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.animation.Animation;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:com/github/clans/fab/Label.class */
public class Label extends TextView {

    /* renamed from: d */
    private static final Xfermode f13782d = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);

    /* renamed from: e */
    private int f13783e;

    /* renamed from: f */
    private int f13784f;

    /* renamed from: g */
    private int f13785g;

    /* renamed from: h */
    private int f13786h;

    /* renamed from: i */
    private Drawable f13787i;

    /* renamed from: k */
    private int f13789k;

    /* renamed from: l */
    private int f13790l;

    /* renamed from: m */
    private int f13791m;

    /* renamed from: n */
    private int f13792n;

    /* renamed from: o */
    private int f13793o;

    /* renamed from: p */
    private int f13794p;

    /* renamed from: q */
    private FloatingActionButton f13795q;

    /* renamed from: r */
    private Animation f13796r;

    /* renamed from: s */
    private Animation f13797s;

    /* renamed from: t */
    private boolean f13798t;

    /* renamed from: j */
    private boolean f13788j = true;

    /* renamed from: u */
    private boolean f13799u = true;

    /* renamed from: v */
    GestureDetector f13800v = new GestureDetector(getContext(), new C4503b());

    /* renamed from: com.github.clans.fab.Label$a */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/Label$a.class */
    public class C4502a extends ViewOutlineProvider {
        C4502a() {
            Label.this = r4;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setOval(0, 0, view.getWidth(), view.getHeight());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.github.clans.fab.Label$b */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/Label$b.class */
    public class C4503b extends GestureDetector.SimpleOnGestureListener {
        C4503b() {
            Label.this = r4;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            Label.this.m22300s();
            if (Label.this.f13795q != null) {
                Label.this.f13795q.m22344z();
            }
            return super.onDown(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            Label.this.m22299t();
            if (Label.this.f13795q != null) {
                Label.this.f13795q.m22380A();
            }
            return super.onSingleTapUp(motionEvent);
        }
    }

    /* renamed from: com.github.clans.fab.Label$c */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/Label$c.class */
    public class C4504c extends Drawable {

        /* renamed from: a */
        private Paint f13803a;

        /* renamed from: b */
        private Paint f13804b;

        private C4504c() {
            Label.this = r6;
            this.f13803a = new Paint(1);
            this.f13804b = new Paint(1);
            m22293a();
        }

        /* synthetic */ C4504c(Label label, C4502a c4502a) {
            this();
        }

        /* renamed from: a */
        private void m22293a() {
            Label.this.setLayerType(1, null);
            this.f13803a.setStyle(Paint.Style.FILL);
            this.f13803a.setColor(Label.this.f13791m);
            this.f13804b.setXfermode(Label.f13782d);
            if (!Label.this.isInEditMode()) {
                this.f13803a.setShadowLayer(Label.this.f13783e, Label.this.f13784f, Label.this.f13785g, Label.this.f13786h);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            RectF rectF = new RectF(Label.this.f13783e + Math.abs(Label.this.f13784f), Label.this.f13783e + Math.abs(Label.this.f13785g), Label.this.f13789k, Label.this.f13790l);
            canvas.drawRoundRect(rectF, Label.this.f13794p, Label.this.f13794p, this.f13803a);
            canvas.drawRoundRect(rectF, Label.this.f13794p, Label.this.f13794p, this.f13804b);
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

    public Label(Context context) {
        super(context);
    }

    public Label(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Label(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: k */
    private int m22308k() {
        if (this.f13790l == 0) {
            this.f13790l = getMeasuredHeight();
        }
        return getMeasuredHeight() + m22306m();
    }

    /* renamed from: l */
    private int m22307l() {
        if (this.f13789k == 0) {
            this.f13789k = getMeasuredWidth();
        }
        return getMeasuredWidth() + m22305n();
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [int[], int[][]] */
    @TargetApi(21)
    /* renamed from: o */
    private Drawable m22304o() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, m22303p(this.f13792n));
        stateListDrawable.addState(new int[0], m22303p(this.f13791m));
        if (!C4505a.m22290c()) {
            this.f13787i = stateListDrawable;
            return stateListDrawable;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(new int[]{new int[0]}, new int[]{this.f13793o}), stateListDrawable, null);
        setOutlineProvider(new C4502a());
        setClipToOutline(true);
        this.f13787i = rippleDrawable;
        return rippleDrawable;
    }

    /* renamed from: p */
    private Drawable m22303p(int i) {
        int i2 = this.f13794p;
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{i2, i2, i2, i2, i2, i2, i2, i2}, null, null));
        shapeDrawable.getPaint().setColor(i);
        return shapeDrawable;
    }

    @TargetApi(21)
    private void setBackgroundCompat(Drawable drawable) {
        if (C4505a.m22291b()) {
            setBackground(drawable);
        } else {
            setBackgroundDrawable(drawable);
        }
    }

    private void setShadow(FloatingActionButton floatingActionButton) {
        this.f13786h = floatingActionButton.getShadowColor();
        this.f13783e = floatingActionButton.getShadowRadius();
        this.f13784f = floatingActionButton.getShadowXOffset();
        this.f13785g = floatingActionButton.getShadowYOffset();
        this.f13788j = floatingActionButton.m22350t();
    }

    /* renamed from: u */
    private void m22298u() {
        if (this.f13797s != null) {
            this.f13796r.cancel();
            startAnimation(this.f13797s);
        }
    }

    /* renamed from: v */
    private void m22297v() {
        if (this.f13796r != null) {
            this.f13797s.cancel();
            startAnimation(this.f13796r);
        }
    }

    /* renamed from: m */
    int m22306m() {
        return this.f13788j ? this.f13783e + Math.abs(this.f13785g) : 0;
    }

    /* renamed from: n */
    public int m22305n() {
        return this.f13788j ? this.f13783e + Math.abs(this.f13784f) : 0;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(m22307l(), m22308k());
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        FloatingActionButton floatingActionButton = this.f13795q;
        if (floatingActionButton == null || floatingActionButton.getOnClickListener() == null || !this.f13795q.isEnabled()) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 1) {
            m22299t();
            this.f13795q.m22380A();
        } else if (action == 3) {
            m22299t();
            this.f13795q.m22380A();
        }
        this.f13800v.onTouchEvent(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    /* renamed from: q */
    public void m22302q(boolean z) {
        if (z) {
            m22298u();
        }
        setVisibility(4);
    }

    /* renamed from: r */
    public boolean m22301r() {
        return this.f13799u;
    }

    @TargetApi(21)
    /* renamed from: s */
    public void m22300s() {
        if (this.f13798t) {
            this.f13787i = getBackground();
        }
        Drawable drawable = this.f13787i;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[]{16842919});
        } else if (!C4505a.m22290c()) {
        } else {
            Drawable drawable2 = this.f13787i;
            if (!(drawable2 instanceof RippleDrawable)) {
                return;
            }
            RippleDrawable rippleDrawable = (RippleDrawable) drawable2;
            rippleDrawable.setState(new int[]{16842910, 16842919});
            rippleDrawable.setHotspot(getMeasuredWidth() / 2, getMeasuredHeight() / 2);
            rippleDrawable.setVisible(true, true);
        }
    }

    public void setCornerRadius(int i) {
        this.f13794p = i;
    }

    public void setFab(FloatingActionButton floatingActionButton) {
        this.f13795q = floatingActionButton;
        setShadow(floatingActionButton);
    }

    public void setHandleVisibilityChanges(boolean z) {
        this.f13799u = z;
    }

    public void setHideAnimation(Animation animation) {
        this.f13797s = animation;
    }

    public void setShowAnimation(Animation animation) {
        this.f13796r = animation;
    }

    public void setShowShadow(boolean z) {
        this.f13788j = z;
    }

    public void setUsingStyle(boolean z) {
        this.f13798t = z;
    }

    @TargetApi(21)
    /* renamed from: t */
    public void m22299t() {
        if (this.f13798t) {
            this.f13787i = getBackground();
        }
        Drawable drawable = this.f13787i;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[0]);
        } else if (!C4505a.m22290c()) {
        } else {
            Drawable drawable2 = this.f13787i;
            if (!(drawable2 instanceof RippleDrawable)) {
                return;
            }
            RippleDrawable rippleDrawable = (RippleDrawable) drawable2;
            rippleDrawable.setState(new int[0]);
            rippleDrawable.setHotspot(getMeasuredWidth() / 2, getMeasuredHeight() / 2);
            rippleDrawable.setVisible(true, true);
        }
    }

    /* renamed from: w */
    public void m22296w(int i, int i2, int i3) {
        this.f13791m = i;
        this.f13792n = i2;
        this.f13793o = i3;
    }

    /* renamed from: x */
    public void m22295x(boolean z) {
        if (z) {
            m22297v();
        }
        setVisibility(0);
    }

    /* renamed from: y */
    public void m22294y() {
        LayerDrawable layerDrawable;
        if (this.f13788j) {
            layerDrawable = new LayerDrawable(new Drawable[]{new C4504c(this, null), m22304o()});
            layerDrawable.setLayerInset(1, this.f13783e + Math.abs(this.f13784f), this.f13783e + Math.abs(this.f13785g), this.f13783e + Math.abs(this.f13784f), this.f13783e + Math.abs(this.f13785g));
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{m22304o()});
        }
        setBackgroundCompat(layerDrawable);
    }
}
