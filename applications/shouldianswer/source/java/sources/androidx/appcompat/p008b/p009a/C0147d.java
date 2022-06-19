package androidx.appcompat.p008b.p009a;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import androidx.appcompat.C0051a;
import com.google.android.flexbox.FlexItem;
/* renamed from: androidx.appcompat.b.a.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/d.class */
public class C0147d extends Drawable {

    /* renamed from: b */
    private static final float f507b = (float) Math.toRadians(45.0d);

    /* renamed from: c */
    private float f509c;

    /* renamed from: d */
    private float f510d;

    /* renamed from: e */
    private float f511e;

    /* renamed from: f */
    private float f512f;

    /* renamed from: g */
    private boolean f513g;

    /* renamed from: i */
    private final int f515i;

    /* renamed from: k */
    private float f517k;

    /* renamed from: l */
    private float f518l;

    /* renamed from: a */
    private final Paint f508a = new Paint();

    /* renamed from: h */
    private final Path f514h = new Path();

    /* renamed from: j */
    private boolean f516j = false;

    /* renamed from: m */
    private int f519m = 2;

    public C0147d(Context context) {
        this.f508a.setStyle(Paint.Style.STROKE);
        this.f508a.setStrokeJoin(Paint.Join.MITER);
        this.f508a.setStrokeCap(Paint.Cap.BUTT);
        this.f508a.setAntiAlias(true);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, C0051a.C0061j.DrawerArrowToggle, C0051a.C0052a.drawerArrowStyle, C0051a.C0060i.Base_Widget_AppCompat_DrawerArrowToggle);
        m7679a(obtainStyledAttributes.getColor(C0051a.C0061j.DrawerArrowToggle_color, 0));
        m7681a(obtainStyledAttributes.getDimension(C0051a.C0061j.DrawerArrowToggle_thickness, FlexItem.FLEX_GROW_DEFAULT));
        m7678a(obtainStyledAttributes.getBoolean(C0051a.C0061j.DrawerArrowToggle_spinBars, true));
        m7677b(Math.round(obtainStyledAttributes.getDimension(C0051a.C0061j.DrawerArrowToggle_gapBetweenBars, FlexItem.FLEX_GROW_DEFAULT)));
        this.f515i = obtainStyledAttributes.getDimensionPixelSize(C0051a.C0061j.DrawerArrowToggle_drawableSize, 0);
        this.f510d = Math.round(obtainStyledAttributes.getDimension(C0051a.C0061j.DrawerArrowToggle_barLength, FlexItem.FLEX_GROW_DEFAULT));
        this.f509c = Math.round(obtainStyledAttributes.getDimension(C0051a.C0061j.DrawerArrowToggle_arrowHeadLength, FlexItem.FLEX_GROW_DEFAULT));
        this.f511e = obtainStyledAttributes.getDimension(C0051a.C0061j.DrawerArrowToggle_arrowShaftLength, FlexItem.FLEX_GROW_DEFAULT);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private static float m7680a(float f, float f2, float f3) {
        return f + ((f2 - f) * f3);
    }

    /* renamed from: a */
    public void m7681a(float f) {
        if (this.f508a.getStrokeWidth() != f) {
            this.f508a.setStrokeWidth(f);
            this.f518l = (float) ((f / 2.0f) * Math.cos(f507b));
            invalidateSelf();
        }
    }

    /* renamed from: a */
    public void m7679a(int i) {
        if (i != this.f508a.getColor()) {
            this.f508a.setColor(i);
            invalidateSelf();
        }
    }

    /* renamed from: a */
    public void m7678a(boolean z) {
        if (this.f513g != z) {
            this.f513g = z;
            invalidateSelf();
        }
    }

    /* renamed from: b */
    public void m7677b(float f) {
        if (f != this.f512f) {
            this.f512f = f;
            invalidateSelf();
        }
    }

    /* renamed from: b */
    public void m7676b(boolean z) {
        if (this.f516j != z) {
            this.f516j = z;
            invalidateSelf();
        }
    }

    /* renamed from: c */
    public void m7675c(float f) {
        if (this.f517k != f) {
            this.f517k = f;
            invalidateSelf();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0036, code lost:
        if (androidx.core.graphics.drawable.C0575a.m6120i(r6) == 0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        if (androidx.core.graphics.drawable.C0575a.m6120i(r6) == 1) goto L12;
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.p008b.p009a.C0147d.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f515i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f515i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (i != this.f508a.getAlpha()) {
            this.f508a.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f508a.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
