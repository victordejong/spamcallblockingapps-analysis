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
import com.google.android.material.circularreveal.AbstractC8067c;
import p078c.p084c.p085a.p096b.p104t.C1915a;
/* renamed from: com.google.android.material.circularreveal.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/circularreveal/b.class */
public class C8065b {

    /* renamed from: a */
    public static final int f36526a;

    /* renamed from: b */
    private final AbstractC8066a f36527b;

    /* renamed from: c */
    private final View f36528c;

    /* renamed from: d */
    private final Path f36529d = new Path();

    /* renamed from: e */
    private final Paint f36530e = new Paint(7);

    /* renamed from: f */
    private final Paint f36531f;

    /* renamed from: g */
    private AbstractC8067c.C8072e f36532g;

    /* renamed from: h */
    private Drawable f36533h;

    /* renamed from: i */
    private boolean f36534i;

    /* renamed from: j */
    private boolean f36535j;

    /* renamed from: com.google.android.material.circularreveal.b$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/circularreveal/b$a.class */
    public interface AbstractC8066a {
        /* renamed from: c */
        void mo5036c(Canvas canvas);

        /* renamed from: d */
        boolean mo5035d();
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            f36526a = 2;
        } else if (i >= 18) {
            f36526a = 1;
        } else {
            f36526a = 0;
        }
    }

    public C8065b(AbstractC8066a abstractC8066a) {
        this.f36527b = abstractC8066a;
        View view = (View) abstractC8066a;
        this.f36528c = view;
        view.setWillNotDraw(false);
        Paint paint = new Paint(1);
        this.f36531f = paint;
        paint.setColor(0);
    }

    /* renamed from: d */
    private void m5059d(Canvas canvas) {
        if (m5048o()) {
            Rect bounds = this.f36533h.getBounds();
            float width = this.f36532g.f36540a - (bounds.width() / 2.0f);
            float height = this.f36532g.f36541b - (bounds.height() / 2.0f);
            canvas.translate(width, height);
            this.f36533h.draw(canvas);
            canvas.translate(-width, -height);
        }
    }

    /* renamed from: g */
    private float m5056g(AbstractC8067c.C8072e c8072e) {
        return C1915a.m28696b(c8072e.f36540a, c8072e.f36541b, 0.0f, 0.0f, this.f36528c.getWidth(), this.f36528c.getHeight());
    }

    /* renamed from: i */
    private void m5054i() {
        if (f36526a == 1) {
            this.f36529d.rewind();
            AbstractC8067c.C8072e c8072e = this.f36532g;
            if (c8072e != null) {
                this.f36529d.addCircle(c8072e.f36540a, c8072e.f36541b, c8072e.f36542c, Path.Direction.CW);
            }
        }
        this.f36528c.invalidate();
    }

    /* renamed from: n */
    private boolean m5049n() {
        AbstractC8067c.C8072e c8072e = this.f36532g;
        boolean z = c8072e == null || c8072e.m5041a();
        if (f36526a == 0) {
            boolean z2 = false;
            if (!z) {
                z2 = false;
                if (this.f36535j) {
                    z2 = true;
                }
            }
            return z2;
        }
        return !z;
    }

    /* renamed from: o */
    private boolean m5048o() {
        return (this.f36534i || this.f36533h == null || this.f36532g == null) ? false : true;
    }

    /* renamed from: p */
    private boolean m5047p() {
        return !this.f36534i && Color.alpha(this.f36531f.getColor()) != 0;
    }

    /* renamed from: a */
    public void m5062a() {
        if (f36526a == 0) {
            this.f36534i = true;
            this.f36535j = false;
            this.f36528c.buildDrawingCache();
            Bitmap drawingCache = this.f36528c.getDrawingCache();
            Bitmap bitmap = drawingCache;
            if (drawingCache == null) {
                bitmap = drawingCache;
                if (this.f36528c.getWidth() != 0) {
                    bitmap = drawingCache;
                    if (this.f36528c.getHeight() != 0) {
                        bitmap = Bitmap.createBitmap(this.f36528c.getWidth(), this.f36528c.getHeight(), Bitmap.Config.ARGB_8888);
                        this.f36528c.draw(new Canvas(bitmap));
                    }
                }
            }
            if (bitmap != null) {
                Paint paint = this.f36530e;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
            }
            this.f36534i = false;
            this.f36535j = true;
        }
    }

    /* renamed from: b */
    public void m5061b() {
        if (f36526a == 0) {
            this.f36535j = false;
            this.f36528c.destroyDrawingCache();
            this.f36530e.setShader(null);
            this.f36528c.invalidate();
        }
    }

    /* renamed from: c */
    public void m5060c(Canvas canvas) {
        if (m5049n()) {
            int i = f36526a;
            if (i == 0) {
                AbstractC8067c.C8072e c8072e = this.f36532g;
                canvas.drawCircle(c8072e.f36540a, c8072e.f36541b, c8072e.f36542c, this.f36530e);
                if (m5047p()) {
                    AbstractC8067c.C8072e c8072e2 = this.f36532g;
                    canvas.drawCircle(c8072e2.f36540a, c8072e2.f36541b, c8072e2.f36542c, this.f36531f);
                }
            } else if (i == 1) {
                int save = canvas.save();
                canvas.clipPath(this.f36529d);
                this.f36527b.mo5036c(canvas);
                if (m5047p()) {
                    canvas.drawRect(0.0f, 0.0f, this.f36528c.getWidth(), this.f36528c.getHeight(), this.f36531f);
                }
                canvas.restoreToCount(save);
            } else if (i != 2) {
                throw new IllegalStateException("Unsupported strategy " + i);
            } else {
                this.f36527b.mo5036c(canvas);
                if (m5047p()) {
                    canvas.drawRect(0.0f, 0.0f, this.f36528c.getWidth(), this.f36528c.getHeight(), this.f36531f);
                }
            }
        } else {
            this.f36527b.mo5036c(canvas);
            if (m5047p()) {
                canvas.drawRect(0.0f, 0.0f, this.f36528c.getWidth(), this.f36528c.getHeight(), this.f36531f);
            }
        }
        m5059d(canvas);
    }

    /* renamed from: e */
    public Drawable m5058e() {
        return this.f36533h;
    }

    /* renamed from: f */
    public int m5057f() {
        return this.f36531f.getColor();
    }

    /* renamed from: h */
    public AbstractC8067c.C8072e m5055h() {
        AbstractC8067c.C8072e c8072e = this.f36532g;
        if (c8072e == null) {
            return null;
        }
        AbstractC8067c.C8072e c8072e2 = new AbstractC8067c.C8072e(c8072e);
        if (c8072e2.m5041a()) {
            c8072e2.f36542c = m5056g(c8072e2);
        }
        return c8072e2;
    }

    /* renamed from: j */
    public boolean m5053j() {
        return this.f36527b.mo5035d() && !m5049n();
    }

    /* renamed from: k */
    public void m5052k(Drawable drawable) {
        this.f36533h = drawable;
        this.f36528c.invalidate();
    }

    /* renamed from: l */
    public void m5051l(int i) {
        this.f36531f.setColor(i);
        this.f36528c.invalidate();
    }

    /* renamed from: m */
    public void m5050m(AbstractC8067c.C8072e c8072e) {
        if (c8072e == null) {
            this.f36532g = null;
        } else {
            AbstractC8067c.C8072e c8072e2 = this.f36532g;
            if (c8072e2 == null) {
                this.f36532g = new AbstractC8067c.C8072e(c8072e);
            } else {
                c8072e2.m5039c(c8072e);
            }
            if (C1915a.m28695c(c8072e.f36542c, m5056g(c8072e), 1.0E-4f)) {
                this.f36532g.f36542c = Float.MAX_VALUE;
            }
        }
        m5054i();
    }
}
