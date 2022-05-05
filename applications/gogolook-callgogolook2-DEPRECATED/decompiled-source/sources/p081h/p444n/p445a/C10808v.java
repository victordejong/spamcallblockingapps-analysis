package p081h.p444n.p445a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.widget.ImageView;
import p081h.p444n.p445a.C10798u;
/* renamed from: h.n.a.v */
/* loaded from: classes2-dex2jar.jar:h/n/a/v.class */
public final class C10808v extends BitmapDrawable {

    /* renamed from: h */
    public static final Paint f24692h = new Paint();

    /* renamed from: a */
    public final boolean f24693a;

    /* renamed from: b */
    public final float f24694b;

    /* renamed from: c */
    public final C10798u.EnumC10804e f24695c;

    /* renamed from: d */
    public Drawable f24696d;

    /* renamed from: e */
    public long f24697e;

    /* renamed from: f */
    public boolean f24698f;

    /* renamed from: g */
    public int f24699g = 255;

    public C10808v(Context context, Bitmap bitmap, Drawable drawable, C10798u.EnumC10804e eVar, boolean z, boolean z2) {
        super(context.getResources(), bitmap);
        this.f24693a = z2;
        this.f24694b = context.getResources().getDisplayMetrics().density;
        this.f24695c = eVar;
        if (eVar != C10798u.EnumC10804e.MEMORY && !z) {
            this.f24696d = drawable;
            this.f24698f = true;
            this.f24697e = SystemClock.uptimeMillis();
        }
    }

    /* renamed from: a */
    public static Path m10596a(int i, int i2, int i3) {
        Path path = new Path();
        float f = i;
        float f2 = i2;
        path.moveTo(f, f2);
        path.lineTo(i + i3, f2);
        path.lineTo(f, i2 + i3);
        return path;
    }

    /* renamed from: a */
    public static void m10594a(ImageView imageView, Context context, Bitmap bitmap, C10798u.EnumC10804e eVar, boolean z, boolean z2) {
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        imageView.setImageDrawable(new C10808v(context, bitmap, drawable, eVar, z, z2));
    }

    /* renamed from: a */
    public static void m10593a(ImageView imageView, Drawable drawable) {
        imageView.setImageDrawable(drawable);
        if (imageView.getDrawable() instanceof Animatable) {
            ((Animatable) imageView.getDrawable()).start();
        }
    }

    /* renamed from: a */
    public final void m10595a(Canvas canvas) {
        f24692h.setColor(-1);
        canvas.drawPath(m10596a(0, 0, (int) (this.f24694b * 16.0f)), f24692h);
        f24692h.setColor(this.f24695c.f24686a);
        canvas.drawPath(m10596a(0, 0, (int) (this.f24694b * 15.0f)), f24692h);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!this.f24698f) {
            super.draw(canvas);
        } else {
            float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.f24697e)) / 200.0f;
            if (uptimeMillis >= 1.0f) {
                this.f24698f = false;
                this.f24696d = null;
                super.draw(canvas);
            } else {
                Drawable drawable = this.f24696d;
                if (drawable != null) {
                    drawable.draw(canvas);
                }
                super.setAlpha((int) (this.f24699g * uptimeMillis));
                super.draw(canvas);
                super.setAlpha(this.f24699g);
            }
        }
        if (this.f24693a) {
            m10595a(canvas);
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f24696d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f24699g = i;
        Drawable drawable = this.f24696d;
        if (drawable != null) {
            drawable.setAlpha(i);
        }
        super.setAlpha(i);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f24696d;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        super.setColorFilter(colorFilter);
    }
}
