package p132j2;

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
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.animation.Animation;
import android.widget.TextView;
import com.github.clans.fab.FloatingActionButton;
/* renamed from: j2.e */
/* loaded from: classes-dex2jar.jar:j2/e.class */
public class C3173e extends TextView {

    /* renamed from: s */
    public static final Xfermode f10683s = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);

    /* renamed from: a */
    public int f10684a;

    /* renamed from: b */
    public int f10685b;

    /* renamed from: c */
    public int f10686c;

    /* renamed from: d */
    public int f10687d;

    /* renamed from: e */
    public Drawable f10688e;

    /* renamed from: g */
    public int f10690g;

    /* renamed from: h */
    public int f10691h;

    /* renamed from: i */
    public int f10692i;

    /* renamed from: j */
    public int f10693j;

    /* renamed from: k */
    public int f10694k;

    /* renamed from: l */
    public int f10695l;

    /* renamed from: m */
    public FloatingActionButton f10696m;

    /* renamed from: n */
    public Animation f10697n;

    /* renamed from: o */
    public Animation f10698o;

    /* renamed from: p */
    public boolean f10699p;

    /* renamed from: f */
    public boolean f10689f = true;

    /* renamed from: q */
    public boolean f10700q = true;

    /* renamed from: r */
    public GestureDetector f10701r = new GestureDetector(getContext(), new C3175b());

    /* renamed from: j2.e$a */
    /* loaded from: classes-dex2jar.jar:j2/e$a.class */
    public class C3174a extends ViewOutlineProvider {
        public C3174a(C3173e c3173e) {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setOval(0, 0, view.getWidth(), view.getHeight());
        }
    }

    /* renamed from: j2.e$b */
    /* loaded from: classes-dex2jar.jar:j2/e$b.class */
    public class C3175b extends GestureDetector.SimpleOnGestureListener {
        public C3175b() {
            C3173e.this = r4;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            C3173e.this.m2576c();
            FloatingActionButton floatingActionButton = C3173e.this.f10696m;
            if (floatingActionButton != null) {
                floatingActionButton.m4839j();
            }
            return super.onDown(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            C3173e.this.m2575d();
            FloatingActionButton floatingActionButton = C3173e.this.f10696m;
            if (floatingActionButton != null) {
                floatingActionButton.m4838k();
            }
            return super.onSingleTapUp(motionEvent);
        }
    }

    /* renamed from: j2.e$c */
    /* loaded from: classes-dex2jar.jar:j2/e$c.class */
    public class C3176c extends Drawable {

        /* renamed from: a */
        public Paint f10703a = new Paint(1);

        /* renamed from: b */
        public Paint f10704b = new Paint(1);

        public C3176c(C3174a c3174a) {
            C3173e.this = r7;
            r7.setLayerType(1, null);
            this.f10703a.setStyle(Paint.Style.FILL);
            this.f10703a.setColor(r7.f10692i);
            this.f10704b.setXfermode(C3173e.f10683s);
            if (!r7.isInEditMode()) {
                this.f10703a.setShadowLayer(r7.f10684a, r7.f10685b, r7.f10686c, r7.f10687d);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            C3173e c3173e = C3173e.this;
            float abs = Math.abs(c3173e.f10685b) + c3173e.f10684a;
            C3173e c3173e2 = C3173e.this;
            float abs2 = Math.abs(c3173e2.f10686c) + c3173e2.f10684a;
            C3173e c3173e3 = C3173e.this;
            RectF rectF = new RectF(abs, abs2, c3173e3.f10690g, c3173e3.f10691h);
            float f = C3173e.this.f10695l;
            canvas.drawRoundRect(rectF, f, f, this.f10703a);
            float f2 = C3173e.this.f10695l;
            canvas.drawRoundRect(rectF, f2, f2, this.f10704b);
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

    public C3173e(Context context) {
        super(context);
    }

    @TargetApi(21)
    private void setBackgroundCompat(Drawable drawable) {
        setBackground(drawable);
    }

    private void setShadow(FloatingActionButton floatingActionButton) {
        this.f10687d = floatingActionButton.getShadowColor();
        this.f10684a = floatingActionButton.getShadowRadius();
        this.f10685b = floatingActionButton.getShadowXOffset();
        this.f10686c = floatingActionButton.getShadowYOffset();
        this.f10689f = floatingActionButton.m4841h();
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [int[], int[][]] */
    @TargetApi(21)
    /* renamed from: a */
    public final Drawable m2578a() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, m2577b(this.f10693j));
        stateListDrawable.addState(new int[0], m2577b(this.f10692i));
        RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(new int[]{new int[0]}, new int[]{this.f10694k}), stateListDrawable, null);
        setOutlineProvider(new C3174a(this));
        setClipToOutline(true);
        this.f10688e = rippleDrawable;
        return rippleDrawable;
    }

    /* renamed from: b */
    public final Drawable m2577b(int i) {
        int i2 = this.f10695l;
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{i2, i2, i2, i2, i2, i2, i2, i2}, null, null));
        shapeDrawable.getPaint().setColor(i);
        return shapeDrawable;
    }

    @TargetApi(21)
    /* renamed from: c */
    public void m2576c() {
        if (this.f10699p) {
            this.f10688e = getBackground();
        }
        Drawable drawable = this.f10688e;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[]{16842919});
        } else if (!(drawable instanceof RippleDrawable)) {
        } else {
            RippleDrawable rippleDrawable = (RippleDrawable) drawable;
            rippleDrawable.setState(new int[]{16842910, 16842919});
            rippleDrawable.setHotspot(getMeasuredWidth() / 2, getMeasuredHeight() / 2);
            rippleDrawable.setVisible(true, true);
        }
    }

    @TargetApi(21)
    /* renamed from: d */
    public void m2575d() {
        if (this.f10699p) {
            this.f10688e = getBackground();
        }
        Drawable drawable = this.f10688e;
        if (drawable instanceof StateListDrawable) {
            ((StateListDrawable) drawable).setState(new int[0]);
        } else if (!(drawable instanceof RippleDrawable)) {
        } else {
            RippleDrawable rippleDrawable = (RippleDrawable) drawable;
            rippleDrawable.setState(new int[0]);
            rippleDrawable.setHotspot(getMeasuredWidth() / 2, getMeasuredHeight() / 2);
            rippleDrawable.setVisible(true, true);
        }
    }

    /* renamed from: e */
    public void m2574e() {
        LayerDrawable layerDrawable;
        if (this.f10689f) {
            layerDrawable = new LayerDrawable(new Drawable[]{new C3176c(null), m2578a()});
            int i = this.f10684a;
            int abs = Math.abs(this.f10685b);
            int i2 = this.f10684a;
            layerDrawable.setLayerInset(1, abs + i, Math.abs(this.f10686c) + i2, Math.abs(this.f10685b) + this.f10684a, Math.abs(this.f10686c) + this.f10684a);
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{m2578a()});
        }
        setBackgroundCompat(layerDrawable);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        super.onMeasure(i, i2);
        if (this.f10690g == 0) {
            this.f10690g = getMeasuredWidth();
        }
        int measuredWidth = getMeasuredWidth();
        int i4 = 0;
        if (this.f10689f) {
            i3 = Math.abs(this.f10685b) + this.f10684a;
        } else {
            i3 = 0;
        }
        if (this.f10691h == 0) {
            this.f10691h = getMeasuredHeight();
        }
        int measuredHeight = getMeasuredHeight();
        if (this.f10689f) {
            i4 = this.f10684a + Math.abs(this.f10686c);
        }
        setMeasuredDimension(measuredWidth + i3, measuredHeight + i4);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        FloatingActionButton floatingActionButton = this.f10696m;
        if (floatingActionButton == null || floatingActionButton.getOnClickListener() == null || !this.f10696m.isEnabled()) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 1) {
            m2575d();
            this.f10696m.m4838k();
        } else if (action == 3) {
            m2575d();
            this.f10696m.m4838k();
        }
        this.f10701r.onTouchEvent(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    public void setCornerRadius(int i) {
        this.f10695l = i;
    }

    public void setFab(FloatingActionButton floatingActionButton) {
        this.f10696m = floatingActionButton;
        setShadow(floatingActionButton);
    }

    public void setHandleVisibilityChanges(boolean z) {
        this.f10700q = z;
    }

    public void setHideAnimation(Animation animation) {
        this.f10698o = animation;
    }

    public void setShowAnimation(Animation animation) {
        this.f10697n = animation;
    }

    public void setShowShadow(boolean z) {
        this.f10689f = z;
    }

    public void setUsingStyle(boolean z) {
        this.f10699p = z;
    }
}
