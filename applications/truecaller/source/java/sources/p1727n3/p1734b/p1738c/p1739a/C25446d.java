package p1727n3.p1734b.p1738c.p1739a;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import androidx.appcompat.C0032R;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.b.c.a.d */
/* loaded from: classes-dex2jar.jar:n3/b/c/a/d.class */
public class C25446d extends Drawable {

    /* renamed from: m */
    public static final float f71078m = (float) Math.toRadians(45.0d);

    /* renamed from: a */
    public final Paint f71079a;

    /* renamed from: b */
    public float f71080b;

    /* renamed from: c */
    public float f71081c;

    /* renamed from: d */
    public float f71082d;

    /* renamed from: e */
    public float f71083e;

    /* renamed from: f */
    public boolean f71084f;

    /* renamed from: h */
    public final int f71086h;

    /* renamed from: j */
    public float f71088j;

    /* renamed from: k */
    public float f71089k;

    /* renamed from: g */
    public final Path f71085g = new Path();

    /* renamed from: i */
    public boolean f71087i = false;

    /* renamed from: l */
    public int f71090l = 2;

    public C25446d(Context context) {
        Paint paint = new Paint();
        this.f71079a = paint;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.MITER);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, C0032R.styleable.DrawerArrowToggle, C0032R.attr.drawerArrowStyle, C0032R.style.Base_Widget_AppCompat_DrawerArrowToggle);
        int color = obtainStyledAttributes.getColor(C0032R.styleable.DrawerArrowToggle_color, 0);
        if (color != paint.getColor()) {
            paint.setColor(color);
            invalidateSelf();
        }
        float dimension = obtainStyledAttributes.getDimension(C0032R.styleable.DrawerArrowToggle_thickness, 0.0f);
        if (paint.getStrokeWidth() != dimension) {
            paint.setStrokeWidth(dimension);
            this.f71089k = (float) (Math.cos(f71078m) * (dimension / 2.0f));
            invalidateSelf();
        }
        boolean z = obtainStyledAttributes.getBoolean(C0032R.styleable.DrawerArrowToggle_spinBars, true);
        if (this.f71084f != z) {
            this.f71084f = z;
            invalidateSelf();
        }
        float round = Math.round(obtainStyledAttributes.getDimension(C0032R.styleable.DrawerArrowToggle_gapBetweenBars, 0.0f));
        if (round != this.f71083e) {
            this.f71083e = round;
            invalidateSelf();
        }
        this.f71086h = obtainStyledAttributes.getDimensionPixelSize(C0032R.styleable.DrawerArrowToggle_drawableSize, 0);
        this.f71081c = Math.round(obtainStyledAttributes.getDimension(C0032R.styleable.DrawerArrowToggle_barLength, 0.0f));
        this.f71080b = Math.round(obtainStyledAttributes.getDimension(C0032R.styleable.DrawerArrowToggle_arrowHeadLength, 0.0f));
        this.f71082d = obtainStyledAttributes.getDimension(C0032R.styleable.DrawerArrowToggle_arrowShaftLength, 0.0f);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public static float m3527a(float f, float f2, float f3) {
        return C22128a.m8646a(f2, f, f3, f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0036, code lost:
        if (getLayoutDirection() == 0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        if (getLayoutDirection() == 1) goto L12;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r6) {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1738c.p1739a.C25446d.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f71086h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f71086h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (i != this.f71079a.getAlpha()) {
            this.f71079a.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f71079a.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
