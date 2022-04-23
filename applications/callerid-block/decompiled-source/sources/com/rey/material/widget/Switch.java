package com.rey.material.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.Checkable;
import com.callerid.block.R$styleable;
import com.rey.material.app.b;
import com.rey.material.app.b$b;
import com.rey.material.app.b$c;
import p092e.p107g.p108a.p109a.View$OnTouchListenerC3116f;
import p092e.p107g.p108a.p110b.C3121a;
import p092e.p107g.p108a.p110b.C3122b;
import p092e.p107g.p108a.p110b.C3124d;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Switch.class */
public class Switch extends View implements Checkable, b$c {

    /* renamed from: A */
    private int f11875A;

    /* renamed from: B */
    private int f11876B;

    /* renamed from: C */
    private Path f11877C;

    /* renamed from: D */
    private Paint f11878D;

    /* renamed from: E */
    private boolean f11879E;

    /* renamed from: F */
    private AbstractC2842b f11880F;

    /* renamed from: G */
    private final Runnable f11881G;

    /* renamed from: b */
    private View$OnClickListenerC2847a f11882b;

    /* renamed from: c */
    protected int f11883c;

    /* renamed from: d */
    protected int f11884d;

    /* renamed from: e */
    private boolean f11885e;

    /* renamed from: f */
    private Paint f11886f;

    /* renamed from: g */
    private RectF f11887g;

    /* renamed from: h */
    private RectF f11888h;

    /* renamed from: i */
    private Path f11889i;

    /* renamed from: j */
    private int f11890j;

    /* renamed from: k */
    private ColorStateList f11891k;

    /* renamed from: l */
    private Paint.Cap f11892l;

    /* renamed from: m */
    private int f11893m;

    /* renamed from: n */
    private ColorStateList f11894n;

    /* renamed from: o */
    private float f11895o;

    /* renamed from: p */
    private int f11896p;

    /* renamed from: q */
    private Interpolator f11897q;

    /* renamed from: r */
    private int f11898r;

    /* renamed from: s */
    private boolean f11899s;

    /* renamed from: t */
    private float f11900t;

    /* renamed from: u */
    private float f11901u;

    /* renamed from: v */
    private float f11902v;

    /* renamed from: w */
    private long f11903w;

    /* renamed from: x */
    private int f11904x;

    /* renamed from: y */
    private float f11905y;

    /* renamed from: z */
    private int[] f11906z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Switch$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C2840a();

        /* renamed from: b */
        boolean f11907b;

        /* renamed from: com.rey.material.widget.Switch$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Switch$SavedState$a.class */
        static final class C2840a implements Parcelable.Creator<SavedState> {
            C2840a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f11907b = ((Boolean) parcel.readValue(getClass().getClassLoader())).booleanValue();
        }

        /* synthetic */ SavedState(Parcel parcel, RunnableC2841a aVar) {
            this(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "Switch.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " checked=" + this.f11907b + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.f11907b));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.rey.material.widget.Switch$a */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Switch$a.class */
    public class RunnableC2841a implements Runnable {
        RunnableC2841a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Switch.this.m1365m();
        }
    }

    /* renamed from: com.rey.material.widget.Switch$b */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Switch$b.class */
    public interface AbstractC2842b {
        /* renamed from: a */
        void m1362a(Switch r1, boolean z);
    }

    public Switch(Context context) {
        super(context);
        this.f11884d = Integer.MIN_VALUE;
        this.f11885e = false;
        this.f11890j = -1;
        this.f11892l = Paint.Cap.ROUND;
        this.f11893m = -1;
        this.f11896p = -1;
        this.f11898r = 16;
        this.f11899s = false;
        this.f11906z = new int[2];
        this.f11875A = -1;
        this.f11876B = -1;
        this.f11879E = false;
        this.f11881G = new RunnableC2841a();
        m1369i(context, null, 0, 0);
    }

    public Switch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11884d = Integer.MIN_VALUE;
        this.f11885e = false;
        this.f11890j = -1;
        this.f11892l = Paint.Cap.ROUND;
        this.f11893m = -1;
        this.f11896p = -1;
        this.f11898r = 16;
        this.f11899s = false;
        this.f11906z = new int[2];
        this.f11875A = -1;
        this.f11876B = -1;
        this.f11879E = false;
        this.f11881G = new RunnableC2841a();
        m1369i(context, attributeSet, 0, 0);
    }

    public Switch(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11884d = Integer.MIN_VALUE;
        this.f11885e = false;
        this.f11890j = -1;
        this.f11892l = Paint.Cap.ROUND;
        this.f11893m = -1;
        this.f11896p = -1;
        this.f11898r = 16;
        this.f11899s = false;
        this.f11906z = new int[2];
        this.f11875A = -1;
        this.f11876B = -1;
        this.f11879E = false;
        this.f11881G = new RunnableC2841a();
        m1369i(context, attributeSet, i, 0);
    }

    /* renamed from: e */
    private void m1373e() {
        int i;
        if (this.f11875A > 0) {
            if (this.f11878D == null) {
                Paint paint = new Paint(5);
                this.f11878D = paint;
                paint.setStyle(Paint.Style.FILL);
                this.f11878D.setDither(true);
            }
            this.f11878D.setShader(new RadialGradient(0.0f, 0.0f, this.f11893m + this.f11875A, new int[]{1275068416, 1275068416, 0}, new float[]{0.0f, this.f11893m / ((i + this.f11875A) + this.f11876B), 1.0f}, Shader.TileMode.CLAMP));
            Path path = this.f11877C;
            if (path == null) {
                Path path2 = new Path();
                this.f11877C = path2;
                path2.setFillType(Path.FillType.EVEN_ODD);
            } else {
                path.reset();
            }
            float f = this.f11893m + this.f11875A;
            float f2 = -f;
            this.f11888h.set(f2, f2, f, f);
            this.f11877C.addOval(this.f11888h, Path.Direction.CW);
            float f3 = this.f11893m - 1;
            RectF rectF = this.f11888h;
            float f4 = -f3;
            int i2 = this.f11876B;
            rectF.set(f4, f4 - i2, f3, f3 - i2);
            this.f11877C.addOval(this.f11888h, Path.Direction.CW);
        }
    }

    /* renamed from: f */
    private int m1372f(boolean z) {
        this.f11906z[0] = isEnabled() ? 16842910 : -16842910;
        int[] iArr = this.f11906z;
        iArr[1] = z ? 16842912 : -16842912;
        return this.f11894n.getColorForState(iArr, 0);
    }

    /* renamed from: g */
    private int m1371g(boolean z) {
        this.f11906z[0] = isEnabled() ? 16842910 : -16842910;
        int[] iArr = this.f11906z;
        iArr[1] = z ? 16842912 : -16842912;
        return this.f11891k.getColorForState(iArr, 0);
    }

    /* renamed from: h */
    private void m1370h(float f, float f2, float f3) {
        float f4;
        float f5;
        float f6 = this.f11890j / 2.0f;
        this.f11889i.reset();
        if (this.f11892l != Paint.Cap.ROUND) {
            float f7 = f - f3;
            float f8 = f + f3;
            this.f11888h.set(f7 + 1.0f, (f2 - f3) + 1.0f, f8 - 1.0f, (f2 + f3) - 1.0f);
            float asin = (float) ((Math.asin(f6 / (f3 - 1.0f)) / 3.141592653589793d) * 180.0d);
            float f9 = this.f11887g.left;
            if (f7 > f9) {
                this.f11889i.moveTo(f9, f2 - f6);
                this.f11889i.arcTo(this.f11888h, 180.0f + asin, (-asin) * 2.0f);
                this.f11889i.lineTo(this.f11887g.left, f2 + f6);
                this.f11889i.close();
            }
            float f10 = this.f11887g.right;
            if (f8 < f10) {
                this.f11889i.moveTo(f10, f2 - f6);
                this.f11889i.arcTo(this.f11888h, -asin, asin * 2.0f);
                this.f11889i.lineTo(this.f11887g.right, f2 + f6);
            } else {
                return;
            }
        } else {
            float asin2 = (float) ((Math.asin(f6 / (f3 - 1.0f)) / 3.141592653589793d) * 180.0d);
            float f11 = f - f3;
            if (f11 > this.f11887g.left) {
                float acos = (float) ((Math.acos(Math.max(0.0f, (((f4 + f6) - f) + f3) / f6)) / 3.141592653589793d) * 180.0d);
                RectF rectF = this.f11888h;
                float f12 = this.f11887g.left;
                rectF.set(f12, f2 - f6, this.f11890j + f12, f2 + f6);
                this.f11889i.arcTo(this.f11888h, 180.0f - acos, acos * 2.0f);
                this.f11888h.set(f11 + 1.0f, (f2 - f3) + 1.0f, (f + f3) - 1.0f, (f2 + f3) - 1.0f);
                this.f11889i.arcTo(this.f11888h, 180.0f + asin2, (-asin2) * 2.0f);
                this.f11889i.close();
            }
            float f13 = f + f3;
            if (f13 < this.f11887g.right) {
                float acos2 = (float) Math.acos(Math.max(0.0f, ((f13 - f5) + f6) / f6));
                Path path = this.f11889i;
                double d = this.f11887g.right - f6;
                double d2 = acos2;
                double cos = Math.cos(d2);
                double d3 = f6;
                Double.isNaN(d3);
                Double.isNaN(d);
                float f14 = (float) (d + (cos * d3));
                double d4 = f2;
                double sin = Math.sin(d2);
                Double.isNaN(d3);
                Double.isNaN(d4);
                path.moveTo(f14, (float) (d4 + (sin * d3)));
                Double.isNaN(d2);
                float f15 = (float) ((d2 / 3.141592653589793d) * 180.0d);
                RectF rectF2 = this.f11888h;
                float f16 = this.f11887g.right;
                rectF2.set(f16 - this.f11890j, f2 - f6, f16, f6 + f2);
                this.f11889i.arcTo(this.f11888h, f15, (-f15) * 2.0f);
                this.f11888h.set(f11 + 1.0f, (f2 - f3) + 1.0f, f13 - 1.0f, (f2 + f3) - 1.0f);
                this.f11889i.arcTo(this.f11888h, -asin2, asin2 * 2.0f);
            } else {
                return;
            }
        }
        this.f11889i.close();
    }

    /* renamed from: i */
    private void m1369i(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f11886f = new Paint(1);
        this.f11887g = new RectF();
        this.f11888h = new RectF();
        this.f11889i = new Path();
        this.f11902v = ViewConfiguration.get(context).getScaledMinimumFlingVelocity();
        m1374c(context, attributeSet, i, i2);
        this.f11883c = b.f(context, attributeSet, i, i2);
    }

    /* renamed from: j */
    private void m1368j() {
        this.f11903w = SystemClock.uptimeMillis();
        float f = this.f11895o;
        this.f11905y = f;
        float f2 = this.f11896p;
        float f3 = f;
        if (this.f11899s) {
            f3 = 1.0f - f;
        }
        this.f11904x = (int) (f2 * f3);
    }

    /* renamed from: k */
    private void m1367k() {
        if (getHandler() != null) {
            m1368j();
            this.f11885e = true;
            getHandler().postAtTime(this.f11881G, SystemClock.uptimeMillis() + 16);
        } else {
            this.f11895o = this.f11899s ? 1.0f : 0.0f;
        }
        invalidate();
    }

    /* renamed from: l */
    private void m1366l() {
        this.f11885e = false;
        this.f11895o = this.f11899s ? 1.0f : 0.0f;
        if (getHandler() != null) {
            getHandler().removeCallbacks(this.f11881G);
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public void m1365m() {
        float min = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.f11903w)) / this.f11904x);
        float interpolation = this.f11897q.getInterpolation(min);
        this.f11895o = this.f11899s ? (this.f11905y * (1.0f - interpolation)) + interpolation : this.f11905y * (1.0f - interpolation);
        if (min == 1.0f) {
            m1366l();
        }
        if (this.f11885e) {
            if (getHandler() != null) {
                getHandler().postAtTime(this.f11881G, SystemClock.uptimeMillis() + 16);
            } else {
                m1366l();
            }
        }
        invalidate();
    }

    /* renamed from: b */
    public void m1375b(int i) {
        C3124d.m75b(this, i);
        m1374c(getContext(), null, 0, i);
    }

    /* JADX WARN: Type inference failed for: r3v5, types: [int[], int[][]] */
    /* JADX WARN: Type inference failed for: r3v8, types: [int[], int[][]] */
    /* renamed from: c */
    protected void m1374c(Context context, AttributeSet attributeSet, int i, int i2) {
        int resourceId;
        getRippleManager().m1337c(this, context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Switch, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = obtainStyledAttributes.getIndex(i3);
            if (index == 9) {
                this.f11890j = obtainStyledAttributes.getDimensionPixelSize(index, 0);
            } else if (index == 8) {
                this.f11891k = obtainStyledAttributes.getColorStateList(index);
            } else if (index == 7) {
                int integer = obtainStyledAttributes.getInteger(index, 0);
                this.f11892l = integer == 0 ? Paint.Cap.BUTT : integer == 1 ? Paint.Cap.ROUND : Paint.Cap.SQUARE;
            } else if (index == 4) {
                this.f11894n = obtainStyledAttributes.getColorStateList(index);
            } else if (index == 6) {
                this.f11893m = obtainStyledAttributes.getDimensionPixelSize(index, 0);
            } else if (index == 5) {
                int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                this.f11875A = dimensionPixelSize;
                this.f11876B = dimensionPixelSize / 2;
            } else if (index == 2) {
                this.f11896p = obtainStyledAttributes.getInt(index, 0);
            } else if (index == 0) {
                this.f11898r = obtainStyledAttributes.getInt(index, 0);
            } else if (index == 1) {
                setCheckedImmediately(obtainStyledAttributes.getBoolean(index, this.f11899s));
            } else if (index == 3 && (resourceId = obtainStyledAttributes.getResourceId(3, 0)) != 0) {
                this.f11897q = AnimationUtils.loadInterpolator(context, resourceId);
            }
        }
        obtainStyledAttributes.recycle();
        if (this.f11890j < 0) {
            this.f11890j = C3122b.m81e(context, 2);
        }
        if (this.f11893m < 0) {
            this.f11893m = C3122b.m81e(context, 8);
        }
        if (this.f11875A < 0) {
            int e = C3122b.m81e(context, 2);
            this.f11875A = e;
            this.f11876B = e / 2;
        }
        if (this.f11896p < 0) {
            this.f11896p = context.getResources().getInteger(17694721);
        }
        if (this.f11897q == null) {
            this.f11897q = new DecelerateInterpolator();
        }
        if (this.f11891k == null) {
            this.f11891k = new ColorStateList(new int[]{new int[]{-16842912}, new int[]{16842912}}, new int[]{C3121a.m88a(C3122b.m82d(context, -16777216), 0.5f), C3121a.m88a(C3122b.m84b(context, -16777216), 0.5f)});
        }
        if (this.f11894n == null) {
            this.f11894n = new ColorStateList(new int[]{new int[]{-16842912}, new int[]{16842912}}, new int[]{16448250, C3122b.m84b(context, -16777216)});
        }
        this.f11886f.setStrokeCap(this.f11892l);
        m1373e();
        invalidate();
    }

    @Override // com.rey.material.app.b$c
    /* renamed from: d */
    public void mo1341d(b$b b_b) {
        int b = b.c().b(this.f11883c);
        if (this.f11884d != b) {
            this.f11884d = b;
            m1375b(b);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        float width = this.f11887g.width();
        int i = this.f11893m;
        float f = i * 2;
        float f2 = this.f11895o;
        RectF rectF = this.f11887g;
        float f3 = ((width - f) * f2) + rectF.left + i;
        float f4 = f3;
        if (this.f11879E) {
            f4 = (rectF.centerX() * 2.0f) - f3;
        }
        float centerY = this.f11887g.centerY();
        m1370h(f4, centerY, this.f11893m);
        this.f11886f.setColor(C3121a.m87b(m1371g(false), m1371g(true), this.f11895o));
        this.f11886f.setStyle(Paint.Style.FILL);
        canvas.drawPath(this.f11889i, this.f11886f);
        if (this.f11875A > 0) {
            int save = canvas.save();
            canvas.translate(f4, this.f11876B + centerY);
            canvas.drawPath(this.f11877C, this.f11878D);
            canvas.restoreToCount(save);
        }
        this.f11886f.setColor(C3121a.m87b(m1372f(false), m1372f(true), this.f11895o));
        this.f11886f.setStyle(Paint.Style.FILL);
        canvas.drawCircle(f4, centerY, this.f11893m, this.f11886f);
    }

    protected View$OnClickListenerC2847a getRippleManager() {
        if (this.f11882b == null) {
            synchronized (View$OnClickListenerC2847a.class) {
                try {
                    if (this.f11882b == null) {
                        this.f11882b = new View$OnClickListenerC2847a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f11882b;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return (this.f11893m * 2) + Math.max(this.f11875A - this.f11876B, getPaddingTop()) + Math.max(this.f11875A + this.f11876B, getPaddingBottom());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return (this.f11893m * 4) + Math.max(this.f11875A, getPaddingLeft()) + Math.max(this.f11875A, getPaddingRight());
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f11899s;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f11883c != 0 && !isInEditMode()) {
            b.c().j(this);
            mo1341d(null);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        View$OnClickListenerC2847a.m1339a(this);
        if (this.f11883c != 0) {
            b.c().m(this);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        setMeasuredDimension(mode != Integer.MIN_VALUE ? mode != 0 ? size : getSuggestedMinimumWidth() : Math.min(size, getSuggestedMinimumWidth()), mode2 != Integer.MIN_VALUE ? mode2 != 0 ? size2 : getSuggestedMinimumHeight() : Math.min(size2, getSuggestedMinimumHeight()));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setChecked(savedState.f11907b);
        requestLayout();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (this.f11879E != z) {
            this.f11879E = z;
            invalidate();
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f11907b = isChecked();
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        this.f11887g.left = Math.max(this.f11875A, getPaddingLeft());
        this.f11887g.right = i - Math.max(this.f11875A, getPaddingRight());
        int i5 = this.f11893m * 2;
        int i6 = this.f11898r & 112;
        if (i6 == 48) {
            this.f11887g.top = Math.max(this.f11875A - this.f11876B, getPaddingTop());
            RectF rectF = this.f11887g;
            rectF.bottom = rectF.top + i5;
        } else if (i6 != 80) {
            RectF rectF2 = this.f11887g;
            float f = (i2 - i5) / 2.0f;
            rectF2.top = f;
            rectF2.bottom = f + i5;
        } else {
            this.f11887g.bottom = i2 - Math.max(this.f11875A + this.f11876B, getPaddingBottom());
            RectF rectF3 = this.f11887g;
            rectF3.top = rectF3.bottom - i5;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0054, code lost:
        if (r6.f11895o > 0.5f) goto L_0x0057;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0057, code lost:
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005a, code lost:
        setChecked(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00bc, code lost:
        if (r0 > 0.0f) goto L_0x0057;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00f7, code lost:
        if (r6.f11895o > 0.5f) goto L_0x0057;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:?, code lost:
        return true;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rey.material.widget.Switch.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Drawable background = getBackground();
        if (!(background instanceof View$OnTouchListenerC3116f) || (drawable instanceof View$OnTouchListenerC3116f)) {
            super.setBackgroundDrawable(drawable);
        } else {
            ((View$OnTouchListenerC3116f) background).m125r(drawable);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f11899s != z) {
            this.f11899s = z;
            AbstractC2842b bVar = this.f11880F;
            if (bVar != null) {
                bVar.m1362a(this, z);
            }
        }
        if (this.f11895o != (this.f11899s ? 1.0f : 0.0f)) {
            m1367k();
        }
    }

    public void setCheckedImmediately(boolean z) {
        if (this.f11899s != z) {
            this.f11899s = z;
            AbstractC2842b bVar = this.f11880F;
            if (bVar != null) {
                bVar.m1362a(this, z);
            }
        }
        this.f11895o = this.f11899s ? 1.0f : 0.0f;
        invalidate();
    }

    public void setOnCheckedChangeListener(AbstractC2842b bVar) {
        this.f11880F = bVar;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        View$OnClickListenerC2847a rippleManager = getRippleManager();
        if (onClickListener == rippleManager) {
            super.setOnClickListener(onClickListener);
            return;
        }
        rippleManager.m1335f(onClickListener);
        setOnClickListener(rippleManager);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (isEnabled()) {
            setChecked(!this.f11899s);
        }
    }
}
