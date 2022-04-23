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

    /* renamed from: t */
    private static final Xfermode f5265t = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);

    /* renamed from: b */
    private int f5266b;

    /* renamed from: c */
    private int f5267c;

    /* renamed from: d */
    private int f5268d;

    /* renamed from: e */
    private int f5269e;

    /* renamed from: f */
    private Drawable f5270f;

    /* renamed from: h */
    private int f5272h;

    /* renamed from: i */
    private int f5273i;

    /* renamed from: j */
    private int f5274j;

    /* renamed from: k */
    private int f5275k;

    /* renamed from: l */
    private int f5276l;

    /* renamed from: m */
    private int f5277m;

    /* renamed from: n */
    private FloatingActionButton f5278n;

    /* renamed from: o */
    private Animation f5279o;

    /* renamed from: p */
    private Animation f5280p;

    /* renamed from: q */
    private boolean f5281q;

    /* renamed from: g */
    private boolean f5271g = true;

    /* renamed from: r */
    private boolean f5282r = true;

    /* renamed from: s */
    GestureDetector f5283s = new GestureDetector(getContext(), new C1266b());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.github.clans.fab.Label$a */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/Label$a.class */
    public class C1265a extends ViewOutlineProvider {
        C1265a(Label label) {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setOval(0, 0, view.getWidth(), view.getHeight());
        }
    }

    /* renamed from: com.github.clans.fab.Label$b */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/Label$b.class */
    class C1266b extends GestureDetector.SimpleOnGestureListener {
        C1266b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            Label.this.m9360s();
            if (Label.this.f5278n != null) {
                Label.this.f5278n.m9404z();
            }
            return super.onDown(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            Label.this.m9359t();
            if (Label.this.f5278n != null) {
                Label.this.f5278n.m9440A();
            }
            return super.onSingleTapUp(motionEvent);
        }
    }

    /* renamed from: com.github.clans.fab.Label$c */
    /* loaded from: classes-dex2jar.jar:com/github/clans/fab/Label$c.class */
    private class C1267c extends Drawable {

        /* renamed from: a */
        private Paint f5285a;

        /* renamed from: b */
        private Paint f5286b;

        private C1267c() {
            this.f5285a = new Paint(1);
            this.f5286b = new Paint(1);
            m9353a();
        }

        /* synthetic */ C1267c(Label label, C1265a aVar) {
            this();
        }

        /* renamed from: a */
        private void m9353a() {
            Label.this.setLayerType(1, null);
            this.f5285a.setStyle(Paint.Style.FILL);
            this.f5285a.setColor(Label.this.f5274j);
            this.f5286b.setXfermode(Label.f5265t);
            if (!Label.this.isInEditMode()) {
                this.f5285a.setShadowLayer(Label.this.f5266b, Label.this.f5267c, Label.this.f5268d, Label.this.f5269e);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            RectF rectF = new RectF(Label.this.f5266b + Math.abs(Label.this.f5267c), Label.this.f5266b + Math.abs(Label.this.f5268d), Label.this.f5272h, Label.this.f5273i);
            canvas.drawRoundRect(rectF, Label.this.f5277m, Label.this.f5277m, this.f5285a);
            canvas.drawRoundRect(rectF, Label.this.f5277m, Label.this.f5277m, this.f5286b);
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
    private int m9368k() {
        if (this.f5273i == 0) {
            this.f5273i = getMeasuredHeight();
        }
        return getMeasuredHeight() + m9366m();
    }

    /* renamed from: l */
    private int m9367l() {
        if (this.f5272h == 0) {
            this.f5272h = getMeasuredWidth();
        }
        return getMeasuredWidth() + m9365n();
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [int[], int[][]] */
    @TargetApi(21)
    /* renamed from: o */
    private Drawable m9364o() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, m9363p(this.f5275k));
        stateListDrawable.addState(new int[0], m9363p(this.f5274j));
        if (C1268a.m9350c()) {
            RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(new int[]{new int[0]}, new int[]{this.f5276l}), stateListDrawable, null);
            setOutlineProvider(new C1265a(this));
            setClipToOutline(true);
            this.f5270f = rippleDrawable;
            return rippleDrawable;
        }
        this.f5270f = stateListDrawable;
        return stateListDrawable;
    }

    /* renamed from: p */
    private Drawable m9363p(int i) {
        int i2 = this.f5277m;
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{i2, i2, i2, i2, i2, i2, i2, i2}, null, null));
        shapeDrawable.getPaint().setColor(i);
        return shapeDrawable;
    }

    @TargetApi(21)
    private void setBackgroundCompat(Drawable drawable) {
        if (C1268a.m9351b()) {
            setBackground(drawable);
        } else {
            setBackgroundDrawable(drawable);
        }
    }

    private void setShadow(FloatingActionButton floatingActionButton) {
        this.f5269e = floatingActionButton.getShadowColor();
        this.f5266b = floatingActionButton.getShadowRadius();
        this.f5267c = floatingActionButton.getShadowXOffset();
        this.f5268d = floatingActionButton.getShadowYOffset();
        this.f5271g = floatingActionButton.m9410t();
    }

    /* renamed from: u */
    private void m9358u() {
        if (this.f5280p != null) {
            this.f5279o.cancel();
            startAnimation(this.f5280p);
        }
    }

    /* renamed from: v */
    private void m9357v() {
        if (this.f5279o != null) {
            this.f5280p.cancel();
            startAnimation(this.f5279o);
        }
    }

    /* renamed from: m */
    int m9366m() {
        return this.f5271g ? this.f5266b + Math.abs(this.f5268d) : 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public int m9365n() {
        return this.f5271g ? this.f5266b + Math.abs(this.f5267c) : 0;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(m9367l(), m9368k());
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        FloatingActionButton floatingActionButton = this.f5278n;
        if (floatingActionButton == null || floatingActionButton.getOnClickListener() == null || !this.f5278n.isEnabled()) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            m9359t();
            this.f5278n.m9440A();
        }
        this.f5283s.onTouchEvent(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m9362q(boolean z) {
        if (z) {
            m9358u();
        }
        setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public boolean m9361r() {
        return this.f5282r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(21)
    /* renamed from: s */
    public void m9360s() {
        if (this.f5281q) {
            this.f5270f = getBackground();
        }
        Drawable drawable = this.f5270f;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[]{16842919});
        } else if (C1268a.m9350c()) {
            Drawable drawable2 = this.f5270f;
            if (drawable2 instanceof RippleDrawable) {
                RippleDrawable rippleDrawable = (RippleDrawable) drawable2;
                rippleDrawable.setState(new int[]{16842910, 16842919});
                rippleDrawable.setHotspot(getMeasuredWidth() / 2, getMeasuredHeight() / 2);
                rippleDrawable.setVisible(true, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCornerRadius(int i) {
        this.f5277m = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFab(FloatingActionButton floatingActionButton) {
        this.f5278n = floatingActionButton;
        setShadow(floatingActionButton);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setHandleVisibilityChanges(boolean z) {
        this.f5282r = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setHideAnimation(Animation animation) {
        this.f5280p = animation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setShowAnimation(Animation animation) {
        this.f5279o = animation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setShowShadow(boolean z) {
        this.f5271g = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setUsingStyle(boolean z) {
        this.f5281q = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(21)
    /* renamed from: t */
    public void m9359t() {
        if (this.f5281q) {
            this.f5270f = getBackground();
        }
        Drawable drawable = this.f5270f;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[0]);
        } else if (C1268a.m9350c()) {
            Drawable drawable2 = this.f5270f;
            if (drawable2 instanceof RippleDrawable) {
                RippleDrawable rippleDrawable = (RippleDrawable) drawable2;
                rippleDrawable.setState(new int[0]);
                rippleDrawable.setHotspot(getMeasuredWidth() / 2, getMeasuredHeight() / 2);
                rippleDrawable.setVisible(true, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public void m9356w(int i, int i2, int i3) {
        this.f5274j = i;
        this.f5275k = i2;
        this.f5276l = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public void m9355x(boolean z) {
        if (z) {
            m9357v();
        }
        setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public void m9354y() {
        LayerDrawable layerDrawable;
        if (this.f5271g) {
            layerDrawable = new LayerDrawable(new Drawable[]{new C1267c(this, null), m9364o()});
            layerDrawable.setLayerInset(1, this.f5266b + Math.abs(this.f5267c), this.f5266b + Math.abs(this.f5268d), this.f5266b + Math.abs(this.f5267c), this.f5266b + Math.abs(this.f5268d));
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{m9364o()});
        }
        setBackgroundCompat(layerDrawable);
    }
}
