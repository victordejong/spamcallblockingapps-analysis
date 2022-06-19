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
import com.google.android.material.circularreveal.AbstractC14490c;
import com.google.android.material.p370g.C14594a;
/* renamed from: com.google.android.material.circularreveal.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/b.class */
public final class C14488b {

    /* renamed from: a */
    public static final int f52914a;

    /* renamed from: b */
    public final Paint f52915b;

    /* renamed from: c */
    private final AbstractC14489a f52916c;

    /* renamed from: d */
    private final View f52917d;

    /* renamed from: e */
    private final Path f52918e = new Path();

    /* renamed from: f */
    private final Paint f52919f = new Paint(7);

    /* renamed from: g */
    private AbstractC14490c.C14495d f52920g;

    /* renamed from: h */
    private Drawable f52921h;

    /* renamed from: i */
    private boolean f52922i;

    /* renamed from: j */
    private boolean f52923j;

    /* renamed from: com.google.android.material.circularreveal.b$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/b$a.class */
    public interface AbstractC14489a {
        /* renamed from: a */
        void mo10869a(Canvas canvas);

        /* renamed from: e */
        boolean mo10865e();
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f52914a = 2;
        } else if (Build.VERSION.SDK_INT >= 18) {
            f52914a = 1;
        } else {
            f52914a = 0;
        }
    }

    public C14488b(AbstractC14489a abstractC14489a) {
        this.f52916c = abstractC14489a;
        View view = (View) abstractC14489a;
        this.f52917d = view;
        view.setWillNotDraw(false);
        Paint paint = new Paint(1);
        this.f52915b = paint;
        paint.setColor(0);
    }

    /* renamed from: b */
    private float m10880b(AbstractC14490c.C14495d c14495d) {
        return C14594a.m10662a(c14495d.f52928a, c14495d.f52929b, this.f52917d.getWidth(), this.f52917d.getHeight());
    }

    /* renamed from: b */
    private void m10881b(Canvas canvas) {
        if (m10874h()) {
            Rect bounds = this.f52921h.getBounds();
            float width = this.f52920g.f52928a - (bounds.width() / 2.0f);
            float height = this.f52920g.f52929b - (bounds.height() / 2.0f);
            canvas.translate(width, height);
            this.f52921h.draw(canvas);
            canvas.translate(-width, -height);
        }
    }

    /* renamed from: e */
    private void m10877e() {
        if (f52914a == 1) {
            this.f52918e.rewind();
            AbstractC14490c.C14495d c14495d = this.f52920g;
            if (c14495d != null) {
                this.f52918e.addCircle(c14495d.f52928a, this.f52920g.f52929b, this.f52920g.f52930c, Path.Direction.CW);
            }
        }
        this.f52917d.invalidate();
    }

    /* renamed from: f */
    private boolean m10876f() {
        AbstractC14490c.C14495d c14495d = this.f52920g;
        boolean z = c14495d == null || c14495d.m10873a();
        return f52914a == 0 ? !z && this.f52923j : !z;
    }

    /* renamed from: g */
    private boolean m10875g() {
        return !this.f52922i && Color.alpha(this.f52915b.getColor()) != 0;
    }

    /* renamed from: h */
    private boolean m10874h() {
        return (this.f52922i || this.f52921h == null || this.f52920g == null) ? false : true;
    }

    /* renamed from: a */
    public final void m10887a() {
        if (f52914a == 0) {
            this.f52922i = true;
            this.f52923j = false;
            this.f52917d.buildDrawingCache();
            Bitmap drawingCache = this.f52917d.getDrawingCache();
            Bitmap bitmap = drawingCache;
            if (drawingCache == null) {
                bitmap = drawingCache;
                if (this.f52917d.getWidth() != 0) {
                    bitmap = drawingCache;
                    if (this.f52917d.getHeight() != 0) {
                        bitmap = Bitmap.createBitmap(this.f52917d.getWidth(), this.f52917d.getHeight(), Bitmap.Config.ARGB_8888);
                        this.f52917d.draw(new Canvas(bitmap));
                    }
                }
            }
            if (bitmap != null) {
                Paint paint = this.f52919f;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
            }
            this.f52922i = false;
            this.f52923j = true;
        }
    }

    /* renamed from: a */
    public final void m10886a(int i) {
        this.f52915b.setColor(i);
        this.f52917d.invalidate();
    }

    /* renamed from: a */
    public final void m10885a(Canvas canvas) {
        if (m10876f()) {
            int i = f52914a;
            if (i == 0) {
                canvas.drawCircle(this.f52920g.f52928a, this.f52920g.f52929b, this.f52920g.f52930c, this.f52919f);
                if (m10875g()) {
                    canvas.drawCircle(this.f52920g.f52928a, this.f52920g.f52929b, this.f52920g.f52930c, this.f52915b);
                }
            } else if (i == 1) {
                int save = canvas.save();
                canvas.clipPath(this.f52918e);
                this.f52916c.mo10869a(canvas);
                if (m10875g()) {
                    canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f52917d.getWidth(), this.f52917d.getHeight(), this.f52915b);
                }
                canvas.restoreToCount(save);
            } else if (i != 2) {
                throw new IllegalStateException("Unsupported strategy " + i);
            } else {
                this.f52916c.mo10869a(canvas);
                if (m10875g()) {
                    canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f52917d.getWidth(), this.f52917d.getHeight(), this.f52915b);
                }
            }
        } else {
            this.f52916c.mo10869a(canvas);
            if (m10875g()) {
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f52917d.getWidth(), this.f52917d.getHeight(), this.f52915b);
            }
        }
        m10881b(canvas);
    }

    /* renamed from: a */
    public final void m10884a(Drawable drawable) {
        this.f52921h = drawable;
        this.f52917d.invalidate();
    }

    /* renamed from: a */
    public final void m10883a(AbstractC14490c.C14495d c14495d) {
        if (c14495d == null) {
            this.f52920g = null;
        } else {
            AbstractC14490c.C14495d c14495d2 = this.f52920g;
            if (c14495d2 == null) {
                this.f52920g = new AbstractC14490c.C14495d(c14495d);
            } else {
                c14495d2.m10871a(c14495d);
            }
            if (C14594a.m10664a(c14495d.f52930c, m10880b(c14495d))) {
                this.f52920g.f52930c = Float.MAX_VALUE;
            }
        }
        m10877e();
    }

    /* renamed from: b */
    public final void m10882b() {
        if (f52914a == 0) {
            this.f52923j = false;
            this.f52917d.destroyDrawingCache();
            this.f52919f.setShader(null);
            this.f52917d.invalidate();
        }
    }

    /* renamed from: c */
    public final AbstractC14490c.C14495d m10879c() {
        AbstractC14490c.C14495d c14495d = this.f52920g;
        if (c14495d == null) {
            return null;
        }
        AbstractC14490c.C14495d c14495d2 = new AbstractC14490c.C14495d(c14495d);
        if (c14495d2.m10873a()) {
            c14495d2.f52930c = m10880b(c14495d2);
        }
        return c14495d2;
    }

    /* renamed from: d */
    public final boolean m10878d() {
        return this.f52916c.mo10865e() && !m10876f();
    }
}
