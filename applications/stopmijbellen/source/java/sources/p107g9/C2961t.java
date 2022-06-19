package p107g9;

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
import p107g9.C2953s;
/* renamed from: g9.t */
/* loaded from: classes2-dex2jar.jar:g9/t.class */
public final class C2961t extends BitmapDrawable {

    /* renamed from: h */
    public static final Paint f9944h = new Paint();

    /* renamed from: a */
    public final boolean f9945a;

    /* renamed from: b */
    public final float f9946b;

    /* renamed from: c */
    public final C2953s.EnumC2958d f9947c;

    /* renamed from: d */
    public Drawable f9948d;

    /* renamed from: e */
    public long f9949e;

    /* renamed from: f */
    public boolean f9950f;

    /* renamed from: g */
    public int f9951g = 255;

    public C2961t(Context context, Bitmap bitmap, Drawable drawable, C2953s.EnumC2958d enumC2958d, boolean z, boolean z2) {
        super(context.getResources(), bitmap);
        this.f9945a = z2;
        this.f9946b = context.getResources().getDisplayMetrics().density;
        this.f9947c = enumC2958d;
        if (enumC2958d != C2953s.EnumC2958d.MEMORY && !z) {
            this.f9948d = drawable;
            this.f9950f = true;
            this.f9949e = SystemClock.uptimeMillis();
        }
    }

    /* renamed from: a */
    public static Path m2817a(int i, int i2, int i3) {
        Path path = new Path();
        float f = i;
        float f2 = i2;
        path.moveTo(f, f2);
        path.lineTo(i + i3, f2);
        path.lineTo(f, i2 + i3);
        return path;
    }

    /* renamed from: b */
    public static void m2816b(ImageView imageView, Context context, Bitmap bitmap, C2953s.EnumC2958d enumC2958d, boolean z, boolean z2) {
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        imageView.setImageDrawable(new C2961t(context, bitmap, drawable, enumC2958d, z, z2));
    }

    /* renamed from: c */
    public static void m2815c(ImageView imageView, Drawable drawable) {
        imageView.setImageDrawable(drawable);
        if (imageView.getDrawable() instanceof Animatable) {
            ((Animatable) imageView.getDrawable()).start();
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!this.f9950f) {
            super.draw(canvas);
        } else {
            float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.f9949e)) / 200.0f;
            if (uptimeMillis >= 1.0f) {
                this.f9950f = false;
                this.f9948d = null;
                super.draw(canvas);
            } else {
                Drawable drawable = this.f9948d;
                if (drawable != null) {
                    drawable.draw(canvas);
                }
                super.setAlpha((int) (this.f9951g * uptimeMillis));
                super.draw(canvas);
                super.setAlpha(this.f9951g);
            }
        }
        if (this.f9945a) {
            Paint paint = f9944h;
            paint.setColor(-1);
            canvas.drawPath(m2817a(0, 0, (int) (this.f9946b * 16.0f)), paint);
            paint.setColor(this.f9947c.f9942a);
            canvas.drawPath(m2817a(0, 0, (int) (this.f9946b * 15.0f)), paint);
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f9948d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f9951g = i;
        Drawable drawable = this.f9948d;
        if (drawable != null) {
            drawable.setAlpha(i);
        }
        super.setAlpha(i);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f9948d;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        super.setColorFilter(colorFilter);
    }
}
