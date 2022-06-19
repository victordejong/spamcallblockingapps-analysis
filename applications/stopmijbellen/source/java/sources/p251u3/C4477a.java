package p251u3;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import p029c4.C0827i;
import p029c4.C0830j;
import p087f0.C2694a;
/* renamed from: u3.a */
/* loaded from: classes-dex2jar.jar:u3/a.class */
public class C4477a extends Drawable {

    /* renamed from: b */
    public final Paint f13866b;

    /* renamed from: h */
    public float f13872h;

    /* renamed from: i */
    public int f13873i;

    /* renamed from: j */
    public int f13874j;

    /* renamed from: k */
    public int f13875k;

    /* renamed from: l */
    public int f13876l;

    /* renamed from: m */
    public int f13877m;

    /* renamed from: o */
    public C0827i f13879o;

    /* renamed from: p */
    public ColorStateList f13880p;

    /* renamed from: a */
    public final C0830j f13865a = C0830j.C0831a.f3094a;

    /* renamed from: c */
    public final Path f13867c = new Path();

    /* renamed from: d */
    public final Rect f13868d = new Rect();

    /* renamed from: e */
    public final RectF f13869e = new RectF();

    /* renamed from: f */
    public final RectF f13870f = new RectF();

    /* renamed from: g */
    public final C4479b f13871g = new C4479b(null);

    /* renamed from: n */
    public boolean f13878n = true;

    /* renamed from: u3.a$b */
    /* loaded from: classes-dex2jar.jar:u3/a$b.class */
    public class C4479b extends Drawable.ConstantState {
        public C4479b(C4478a c4478a) {
            C4477a.this = r4;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return C4477a.this;
        }
    }

    public C4477a(C0827i c0827i) {
        this.f13879o = c0827i;
        Paint paint = new Paint(1);
        this.f13866b = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    /* renamed from: a */
    public RectF m881a() {
        this.f13870f.set(getBounds());
        return this.f13870f;
    }

    /* renamed from: b */
    public void m880b(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f13877m = colorStateList.getColorForState(getState(), this.f13877m);
        }
        this.f13880p = colorStateList;
        this.f13878n = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f13878n) {
            Paint paint = this.f13866b;
            Rect rect = this.f13868d;
            copyBounds(rect);
            float height = this.f13872h / rect.height();
            paint.setShader(new LinearGradient(0.0f, rect.top, 0.0f, rect.bottom, new int[]{C2694a.m3257b(this.f13873i, this.f13877m), C2694a.m3257b(this.f13874j, this.f13877m), C2694a.m3257b(C2694a.m3254e(this.f13874j, 0), this.f13877m), C2694a.m3257b(C2694a.m3254e(this.f13876l, 0), this.f13877m), C2694a.m3257b(this.f13876l, this.f13877m), C2694a.m3257b(this.f13875k, this.f13877m)}, new float[]{0.0f, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP));
            this.f13878n = false;
        }
        float strokeWidth = this.f13866b.getStrokeWidth() / 2.0f;
        copyBounds(this.f13868d);
        this.f13869e.set(this.f13868d);
        float min = Math.min(this.f13879o.f3062e.mo7306a(m881a()), this.f13869e.width() / 2.0f);
        if (this.f13879o.m7301e(m881a())) {
            this.f13869e.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(this.f13869e, min, min, this.f13866b);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f13871g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f13872h > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(Outline outline) {
        if (this.f13879o.m7301e(m881a())) {
            outline.setRoundRect(getBounds(), this.f13879o.f3062e.mo7306a(m881a()));
            return;
        }
        copyBounds(this.f13868d);
        this.f13869e.set(this.f13868d);
        this.f13865a.m7293a(this.f13879o, 1.0f, this.f13869e, this.f13867c);
        if (!this.f13867c.isConvex()) {
            return;
        }
        outline.setConvexPath(this.f13867c);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        if (this.f13879o.m7301e(m881a())) {
            int round = Math.round(this.f13872h);
            rect.set(round, round, round, round);
            return true;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f13880p;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f13878n = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f13880p;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.f13877m)) != this.f13877m) {
            this.f13878n = true;
            this.f13877m = colorForState;
        }
        if (this.f13878n) {
            invalidateSelf();
        }
        return this.f13878n;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f13866b.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f13866b.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
