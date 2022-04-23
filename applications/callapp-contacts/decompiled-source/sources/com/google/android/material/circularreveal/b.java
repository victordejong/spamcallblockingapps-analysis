package com.google.android.material.circularreveal;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.circularreveal.c;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final int f30391a;

    /* renamed from: b  reason: collision with root package name */
    public final Paint f30392b;

    /* renamed from: c  reason: collision with root package name */
    private final a f30393c;

    /* renamed from: d  reason: collision with root package name */
    private final View f30394d;
    private final Path e = new Path();
    private final Paint f = new Paint(7);
    private c.d g;
    private Drawable h;
    private boolean i;
    private boolean j;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/b$a.class */
    public interface a {
        void a(Canvas canvas);

        boolean e();
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f30391a = 2;
        } else if (Build.VERSION.SDK_INT >= 18) {
            f30391a = 1;
        } else {
            f30391a = 0;
        }
    }

    public b(a aVar) {
        this.f30393c = aVar;
        View view = (View) aVar;
        this.f30394d = view;
        view.setWillNotDraw(false);
        Paint paint = new Paint(1);
        this.f30392b = paint;
        paint.setColor(0);
    }

    private float b(c.d dVar) {
        return com.google.android.material.g.a.a(dVar.f30399a, dVar.f30400b, this.f30394d.getWidth(), this.f30394d.getHeight());
    }

    private void b(Canvas canvas) {
        if (h()) {
            Rect bounds = this.h.getBounds();
            float width = this.g.f30399a - (bounds.width() / 2.0f);
            float height = this.g.f30400b - (bounds.height() / 2.0f);
            canvas.translate(width, height);
            this.h.draw(canvas);
            canvas.translate(-width, -height);
        }
    }

    private void e() {
        if (f30391a == 1) {
            this.e.rewind();
            c.d dVar = this.g;
            if (dVar != null) {
                this.e.addCircle(dVar.f30399a, this.g.f30400b, this.g.f30401c, Path.Direction.CW);
            }
        }
        this.f30394d.invalidate();
    }

    private boolean f() {
        c.d dVar = this.g;
        boolean z = dVar == null || dVar.a();
        return f30391a == 0 ? !z && this.j : !z;
    }

    private boolean g() {
        return !this.i && Color.alpha(this.f30392b.getColor()) != 0;
    }

    private boolean h() {
        return (this.i || this.h == null || this.g == null) ? false : true;
    }

    public final void a() {
        if (f30391a == 0) {
            this.i = true;
            this.j = false;
            this.f30394d.buildDrawingCache();
            Bitmap drawingCache = this.f30394d.getDrawingCache();
            Bitmap bitmap = drawingCache;
            if (drawingCache == null) {
                bitmap = drawingCache;
                if (this.f30394d.getWidth() != 0) {
                    bitmap = drawingCache;
                    if (this.f30394d.getHeight() != 0) {
                        bitmap = Bitmap.createBitmap(this.f30394d.getWidth(), this.f30394d.getHeight(), Bitmap.Config.ARGB_8888);
                        this.f30394d.draw(new Canvas(bitmap));
                    }
                }
            }
            if (bitmap != null) {
                Paint paint = this.f;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
            }
            this.i = false;
            this.j = true;
        }
    }

    public final void a(int i) {
        this.f30392b.setColor(i);
        this.f30394d.invalidate();
    }

    public final void a(Canvas canvas) {
        if (f()) {
            int i = f30391a;
            if (i == 0) {
                canvas.drawCircle(this.g.f30399a, this.g.f30400b, this.g.f30401c, this.f);
                if (g()) {
                    canvas.drawCircle(this.g.f30399a, this.g.f30400b, this.g.f30401c, this.f30392b);
                }
            } else if (i == 1) {
                int save = canvas.save();
                canvas.clipPath(this.e);
                this.f30393c.a(canvas);
                if (g()) {
                    canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f30394d.getWidth(), this.f30394d.getHeight(), this.f30392b);
                }
                canvas.restoreToCount(save);
            } else if (i == 2) {
                this.f30393c.a(canvas);
                if (g()) {
                    canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f30394d.getWidth(), this.f30394d.getHeight(), this.f30392b);
                }
            } else {
                throw new IllegalStateException("Unsupported strategy " + i);
            }
        } else {
            this.f30393c.a(canvas);
            if (g()) {
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f30394d.getWidth(), this.f30394d.getHeight(), this.f30392b);
            }
        }
        b(canvas);
    }

    public final void a(Drawable drawable) {
        this.h = drawable;
        this.f30394d.invalidate();
    }

    public final void a(c.d dVar) {
        if (dVar == null) {
            this.g = null;
        } else {
            c.d dVar2 = this.g;
            if (dVar2 == null) {
                this.g = new c.d(dVar);
            } else {
                dVar2.a(dVar);
            }
            if (com.google.android.material.g.a.a(dVar.f30401c, b(dVar))) {
                this.g.f30401c = Float.MAX_VALUE;
            }
        }
        e();
    }

    public final void b() {
        if (f30391a == 0) {
            this.j = false;
            this.f30394d.destroyDrawingCache();
            this.f.setShader(null);
            this.f30394d.invalidate();
        }
    }

    public final c.d c() {
        c.d dVar = this.g;
        if (dVar == null) {
            return null;
        }
        c.d dVar2 = new c.d(dVar);
        if (dVar2.a()) {
            dVar2.f30401c = b(dVar2);
        }
        return dVar2;
    }

    public final boolean d() {
        return this.f30393c.e() && !f();
    }
}
