package com.squareup.picasso;

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
import com.squareup.picasso.Picasso;
/* renamed from: com.squareup.picasso.t */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/t.class */
final class C0200t extends BitmapDrawable {

    /* renamed from: h */
    private static final Paint f387h = new Paint();

    /* renamed from: a */
    private final boolean f388a;

    /* renamed from: b */
    private final float f389b;

    /* renamed from: c */
    private final Picasso.EnumC0166e f390c;

    /* renamed from: d */
    Drawable f391d;

    /* renamed from: e */
    long f392e;

    /* renamed from: f */
    boolean f393f;

    /* renamed from: g */
    int f394g = 255;

    C0200t(Context context, Bitmap bitmap, Drawable drawable, Picasso.EnumC0166e eVar, boolean z, boolean z2) {
        super(context.getResources(), bitmap);
        this.f388a = z2;
        this.f389b = context.getResources().getDisplayMetrics().density;
        this.f390c = eVar;
        if (eVar != Picasso.EnumC0166e.MEMORY && !z) {
            this.f391d = drawable;
            this.f393f = true;
            this.f392e = SystemClock.uptimeMillis();
        }
    }

    /* renamed from: a */
    private void m736a(Canvas canvas) {
        Paint paint = f387h;
        paint.setColor(-1);
        canvas.drawPath(m735b(0, 0, (int) (this.f389b * 16.0f)), paint);
        paint.setColor(this.f390c.debugColor);
        canvas.drawPath(m735b(0, 0, (int) (this.f389b * 15.0f)), paint);
    }

    /* renamed from: b */
    private static Path m735b(int i, int i2, int i3) {
        Path path = new Path();
        float f = i;
        float f2 = i2;
        path.moveTo(f, f2);
        path.lineTo(i + i3, f2);
        path.lineTo(f, i2 + i3);
        return path;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static void m734c(ImageView imageView, Context context, Bitmap bitmap, Picasso.EnumC0166e eVar, boolean z, boolean z2) {
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        imageView.setImageDrawable(new C0200t(context, bitmap, drawable, eVar, z, z2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static void m733d(ImageView imageView, Drawable drawable) {
        imageView.setImageDrawable(drawable);
        if (imageView.getDrawable() instanceof Animatable) {
            ((Animatable) imageView.getDrawable()).start();
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!this.f393f) {
            super.draw(canvas);
        } else {
            float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.f392e)) / 200.0f;
            if (uptimeMillis >= 1.0f) {
                this.f393f = false;
                this.f391d = null;
                super.draw(canvas);
            } else {
                Drawable drawable = this.f391d;
                if (drawable != null) {
                    drawable.draw(canvas);
                }
                super.setAlpha((int) (this.f394g * uptimeMillis));
                super.draw(canvas);
                super.setAlpha(this.f394g);
            }
        }
        if (this.f388a) {
            m736a(canvas);
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f391d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f394g = i;
        Drawable drawable = this.f391d;
        if (drawable != null) {
            drawable.setAlpha(i);
        }
        super.setAlpha(i);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f391d;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        super.setColorFilter(colorFilter);
    }
}
