package androidx.appcompat.b.a;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import androidx.appcompat.a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/d.class */
public final class d extends Drawable {

    /* renamed from: b  reason: collision with root package name */
    private static final float f722b = (float) Math.toRadians(45.0d);

    /* renamed from: a  reason: collision with root package name */
    private final Paint f723a;

    /* renamed from: c  reason: collision with root package name */
    private float f724c;

    /* renamed from: d  reason: collision with root package name */
    private float f725d;
    private float e;
    private float f;
    private boolean g;
    private final int i;
    private float k;
    private float l;
    private final Path h = new Path();
    private boolean j = false;
    private int m = 2;

    public d(Context context) {
        Paint paint = new Paint();
        this.f723a = paint;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.MITER);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, a.j.DrawerArrowToggle, a.C0018a.drawerArrowStyle, a.i.Base_Widget_AppCompat_DrawerArrowToggle);
        int color = obtainStyledAttributes.getColor(a.j.DrawerArrowToggle_color, 0);
        if (color != paint.getColor()) {
            paint.setColor(color);
            invalidateSelf();
        }
        float dimension = obtainStyledAttributes.getDimension(a.j.DrawerArrowToggle_thickness, BitmapDescriptorFactory.HUE_RED);
        if (paint.getStrokeWidth() != dimension) {
            paint.setStrokeWidth(dimension);
            this.l = (float) ((dimension / 2.0f) * Math.cos(f722b));
            invalidateSelf();
        }
        boolean z = obtainStyledAttributes.getBoolean(a.j.DrawerArrowToggle_spinBars, true);
        if (this.g != z) {
            this.g = z;
            invalidateSelf();
        }
        float round = Math.round(obtainStyledAttributes.getDimension(a.j.DrawerArrowToggle_gapBetweenBars, BitmapDescriptorFactory.HUE_RED));
        if (round != this.f) {
            this.f = round;
            invalidateSelf();
        }
        this.i = obtainStyledAttributes.getDimensionPixelSize(a.j.DrawerArrowToggle_drawableSize, 0);
        this.f725d = Math.round(obtainStyledAttributes.getDimension(a.j.DrawerArrowToggle_barLength, BitmapDescriptorFactory.HUE_RED));
        this.f724c = Math.round(obtainStyledAttributes.getDimension(a.j.DrawerArrowToggle_arrowHeadLength, BitmapDescriptorFactory.HUE_RED));
        this.e = obtainStyledAttributes.getDimension(a.j.DrawerArrowToggle_arrowShaftLength, BitmapDescriptorFactory.HUE_RED);
        obtainStyledAttributes.recycle();
    }

    public final void a(float f) {
        if (this.k != f) {
            this.k = f;
            invalidateSelf();
        }
    }

    public final void a(boolean z) {
        if (this.j != z) {
            this.j = z;
            invalidateSelf();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0036, code lost:
        if (androidx.core.graphics.drawable.a.h(r6) == 0) goto L_0x0039;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        if (androidx.core.graphics.drawable.a.h(r6) == 1) goto L_0x0039;
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.b.a.d.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (i != this.f723a.getAlpha()) {
            this.f723a.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f723a.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
