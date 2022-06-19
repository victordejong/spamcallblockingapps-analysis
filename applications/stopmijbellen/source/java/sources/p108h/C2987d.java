package p108h;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import androidx.recyclerview.widget.C0608b;
import me.zhanghai.android.materialprogressbar.C3681R;
import p117h8.C3035k;
/* renamed from: h.d */
/* loaded from: classes-dex2jar.jar:h/d.class */
public class C2987d extends Drawable {

    /* renamed from: m */
    public static final float f10068m = (float) Math.toRadians(45.0d);

    /* renamed from: a */
    public final Paint f10069a;

    /* renamed from: b */
    public float f10070b;

    /* renamed from: c */
    public float f10071c;

    /* renamed from: d */
    public float f10072d;

    /* renamed from: e */
    public float f10073e;

    /* renamed from: f */
    public boolean f10074f;

    /* renamed from: h */
    public final int f10076h;

    /* renamed from: j */
    public float f10078j;

    /* renamed from: k */
    public float f10079k;

    /* renamed from: g */
    public final Path f10075g = new Path();

    /* renamed from: i */
    public boolean f10077i = false;

    /* renamed from: l */
    public int f10080l = 2;

    public C2987d(Context context) {
        Paint paint = new Paint();
        this.f10069a = paint;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.MITER);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, C3035k.f10227n, C3681R.attr.drawerArrowStyle, C3681R.style.Base_Widget_AppCompat_DrawerArrowToggle);
        int color = obtainStyledAttributes.getColor(3, 0);
        if (color != paint.getColor()) {
            paint.setColor(color);
            invalidateSelf();
        }
        float dimension = obtainStyledAttributes.getDimension(7, 0.0f);
        if (paint.getStrokeWidth() != dimension) {
            paint.setStrokeWidth(dimension);
            this.f10079k = (float) (Math.cos(f10068m) * (dimension / 2.0f));
            invalidateSelf();
        }
        boolean z = obtainStyledAttributes.getBoolean(6, true);
        if (this.f10074f != z) {
            this.f10074f = z;
            invalidateSelf();
        }
        float round = Math.round(obtainStyledAttributes.getDimension(5, 0.0f));
        if (round != this.f10073e) {
            this.f10073e = round;
            invalidateSelf();
        }
        this.f10076h = obtainStyledAttributes.getDimensionPixelSize(4, 0);
        this.f10071c = Math.round(obtainStyledAttributes.getDimension(2, 0.0f));
        this.f10070b = Math.round(obtainStyledAttributes.getDimension(0, 0.0f));
        this.f10072d = obtainStyledAttributes.getDimension(1, 0.0f);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public static float m2782a(float f, float f2, float f3) {
        return C0608b.m7621n(f2, f, f3, f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0036, code lost:
        if (p098g0.C2789a.m3013b(r5) == 0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        if (p098g0.C2789a.m3013b(r5) == 1) goto L12;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r6) {
        /*
            Method dump skipped, instructions count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p108h.C2987d.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f10076h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f10076h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (i != this.f10069a.getAlpha()) {
            this.f10069a.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f10069a.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
