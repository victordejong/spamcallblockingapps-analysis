package androidx.appcompat.graphics.drawable;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/graphics/drawable/DrawerArrowDrawable.class */
public class DrawerArrowDrawable extends Drawable {

    /* renamed from: m */
    private static final float f424m = (float) Math.toRadians(45.0d);

    /* renamed from: b */
    private float f426b;

    /* renamed from: c */
    private float f427c;

    /* renamed from: d */
    private float f428d;

    /* renamed from: e */
    private float f429e;

    /* renamed from: f */
    private boolean f430f;

    /* renamed from: h */
    private final int f432h;

    /* renamed from: j */
    private float f434j;

    /* renamed from: k */
    private float f435k;

    /* renamed from: a */
    private final Paint f425a = new Paint();

    /* renamed from: g */
    private final Path f431g = new Path();

    /* renamed from: i */
    private boolean f433i = false;

    /* renamed from: l */
    private int f436l = 2;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/graphics/drawable/DrawerArrowDrawable$ArrowDirection.class */
    public @interface ArrowDirection {
    }

    public DrawerArrowDrawable(Context context) {
        this.f425a.setStyle(Paint.Style.STROKE);
        this.f425a.setStrokeJoin(Paint.Join.MITER);
        this.f425a.setStrokeCap(Paint.Cap.BUTT);
        this.f425a.setAntiAlias(true);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, C0042R.styleable.DrawerArrowToggle, C0042R.attr.drawerArrowStyle, C0042R.style.Base_Widget_AppCompat_DrawerArrowToggle);
        m22005c(obtainStyledAttributes.getColor(C0042R.styleable.DrawerArrowToggle_color, 0));
        m22006b(obtainStyledAttributes.getDimension(C0042R.styleable.DrawerArrowToggle_thickness, 0.0f));
        m22002f(obtainStyledAttributes.getBoolean(C0042R.styleable.DrawerArrowToggle_spinBars, true));
        m22004d(Math.round(obtainStyledAttributes.getDimension(C0042R.styleable.DrawerArrowToggle_gapBetweenBars, 0.0f)));
        this.f432h = obtainStyledAttributes.getDimensionPixelSize(C0042R.styleable.DrawerArrowToggle_drawableSize, 0);
        this.f427c = Math.round(obtainStyledAttributes.getDimension(C0042R.styleable.DrawerArrowToggle_barLength, 0.0f));
        this.f426b = Math.round(obtainStyledAttributes.getDimension(C0042R.styleable.DrawerArrowToggle_arrowHeadLength, 0.0f));
        this.f428d = obtainStyledAttributes.getDimension(C0042R.styleable.DrawerArrowToggle_arrowShaftLength, 0.0f);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private static float m22007a(float f, float f2, float f3) {
        return f + ((f2 - f) * f3);
    }

    /* renamed from: b */
    public void m22006b(float f) {
        if (this.f425a.getStrokeWidth() != f) {
            this.f425a.setStrokeWidth(f);
            this.f435k = (float) ((f / 2.0f) * Math.cos(f424m));
            invalidateSelf();
        }
    }

    /* renamed from: c */
    public void m22005c(@ColorInt int i) {
        if (i != this.f425a.getColor()) {
            this.f425a.setColor(i);
            invalidateSelf();
        }
    }

    /* renamed from: d */
    public void m22004d(float f) {
        if (f != this.f429e) {
            this.f429e = f;
            invalidateSelf();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0036, code lost:
        if (androidx.core.graphics.drawable.DrawableCompat.m19507f(r6) == 0) goto L_0x0039;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        if (androidx.core.graphics.drawable.DrawableCompat.m19507f(r6) == 1) goto L_0x0039;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r7) {
        /*
            Method dump skipped, instructions count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.DrawerArrowDrawable.draw(android.graphics.Canvas):void");
    }

    /* renamed from: e */
    public void m22003e(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (this.f434j != f) {
            this.f434j = f;
            invalidateSelf();
        }
    }

    /* renamed from: f */
    public void m22002f(boolean z) {
        if (this.f430f != z) {
            this.f430f = z;
            invalidateSelf();
        }
    }

    /* renamed from: g */
    public void m22001g(boolean z) {
        if (this.f433i != z) {
            this.f433i = z;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f432h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f432h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (i != this.f425a.getAlpha()) {
            this.f425a.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f425a.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
