package androidx.appcompat.p019b.p020a;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import androidx.appcompat.C0142a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.appcompat.b.a.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/d.class */
public final class C0233d extends Drawable {

    /* renamed from: b */
    private static final float f673b = (float) Math.toRadians(45.0d);

    /* renamed from: a */
    private final Paint f674a;

    /* renamed from: c */
    private float f675c;

    /* renamed from: d */
    private float f676d;

    /* renamed from: e */
    private float f677e;

    /* renamed from: f */
    private float f678f;

    /* renamed from: g */
    private boolean f679g;

    /* renamed from: i */
    private final int f681i;

    /* renamed from: k */
    private float f683k;

    /* renamed from: l */
    private float f684l;

    /* renamed from: h */
    private final Path f680h = new Path();

    /* renamed from: j */
    private boolean f682j = false;

    /* renamed from: m */
    private int f685m = 2;

    public C0233d(Context context) {
        Paint paint = new Paint();
        this.f674a = paint;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.MITER);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, C0142a.C0152j.DrawerArrowToggle, C0142a.C0143a.drawerArrowStyle, C0142a.C0151i.Base_Widget_AppCompat_DrawerArrowToggle);
        int color = obtainStyledAttributes.getColor(C0142a.C0152j.DrawerArrowToggle_color, 0);
        if (color != paint.getColor()) {
            paint.setColor(color);
            invalidateSelf();
        }
        float dimension = obtainStyledAttributes.getDimension(C0142a.C0152j.DrawerArrowToggle_thickness, BitmapDescriptorFactory.HUE_RED);
        if (paint.getStrokeWidth() != dimension) {
            paint.setStrokeWidth(dimension);
            this.f684l = (float) ((dimension / 2.0f) * Math.cos(f673b));
            invalidateSelf();
        }
        boolean z = obtainStyledAttributes.getBoolean(C0142a.C0152j.DrawerArrowToggle_spinBars, true);
        if (this.f679g != z) {
            this.f679g = z;
            invalidateSelf();
        }
        float round = Math.round(obtainStyledAttributes.getDimension(C0142a.C0152j.DrawerArrowToggle_gapBetweenBars, BitmapDescriptorFactory.HUE_RED));
        if (round != this.f678f) {
            this.f678f = round;
            invalidateSelf();
        }
        this.f681i = obtainStyledAttributes.getDimensionPixelSize(C0142a.C0152j.DrawerArrowToggle_drawableSize, 0);
        this.f676d = Math.round(obtainStyledAttributes.getDimension(C0142a.C0152j.DrawerArrowToggle_barLength, BitmapDescriptorFactory.HUE_RED));
        this.f675c = Math.round(obtainStyledAttributes.getDimension(C0142a.C0152j.DrawerArrowToggle_arrowHeadLength, BitmapDescriptorFactory.HUE_RED));
        this.f677e = obtainStyledAttributes.getDimension(C0142a.C0152j.DrawerArrowToggle_arrowShaftLength, BitmapDescriptorFactory.HUE_RED);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public final void m46182a(float f) {
        if (this.f683k != f) {
            this.f683k = f;
            invalidateSelf();
        }
    }

    /* renamed from: a */
    public final void m46181a(boolean z) {
        if (this.f682j != z) {
            this.f682j = z;
            invalidateSelf();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0036, code lost:
        if (androidx.core.graphics.drawable.C0840a.m44343h(r6) == 0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        if (androidx.core.graphics.drawable.C0840a.m44343h(r6) == 1) goto L12;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void draw(android.graphics.Canvas r7) {
        /*
            Method dump skipped, instructions count: 490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.p019b.p020a.C0233d.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f681i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f681i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (i != this.f674a.getAlpha()) {
            this.f674a.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f674a.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
