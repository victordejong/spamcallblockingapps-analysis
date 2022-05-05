package p081h.p203i.p204a.p294f.p304j;

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
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import p081h.p203i.p204a.p294f.p304j.AbstractC9197c;
import p081h.p203i.p204a.p294f.p309o.C9247a;
/* renamed from: h.i.a.f.j.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/j/b.class */
public class C9195b {

    /* renamed from: j */
    public static final int f21006j;

    /* renamed from: a */
    public final AbstractC9196a f21007a;

    /* renamed from: b */
    public final View f21008b;

    /* renamed from: c */
    public final Path f21009c = new Path();

    /* renamed from: d */
    public final Paint f21010d = new Paint(7);

    /* renamed from: e */
    public final Paint f21011e = new Paint(1);
    @Nullable

    /* renamed from: f */
    public AbstractC9197c.C9202e f21012f;
    @Nullable

    /* renamed from: g */
    public Drawable f21013g;

    /* renamed from: h */
    public boolean f21014h;

    /* renamed from: i */
    public boolean f21015i;

    /* renamed from: h.i.a.f.j.b$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/j/b$a.class */
    public interface AbstractC9196a {
        /* renamed from: a */
        void mo15794a(Canvas canvas);

        /* renamed from: e */
        boolean mo15793e();
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            f21006j = 2;
        } else if (i >= 18) {
            f21006j = 1;
        } else {
            f21006j = 0;
        }
    }

    public C9195b(AbstractC9196a aVar) {
        this.f21007a = aVar;
        this.f21008b = (View) aVar;
        this.f21008b.setWillNotDraw(false);
        this.f21011e.setColor(0);
    }

    /* renamed from: a */
    public final float m15805a(AbstractC9197c.C9202e eVar) {
        return C9247a.m15631a(eVar.f21020a, eVar.f21021b, 0.0f, 0.0f, this.f21008b.getWidth(), this.f21008b.getHeight());
    }

    /* renamed from: a */
    public void m15809a() {
        if (f21006j == 0) {
            this.f21014h = true;
            this.f21015i = false;
            this.f21008b.buildDrawingCache();
            Bitmap drawingCache = this.f21008b.getDrawingCache();
            Bitmap bitmap = drawingCache;
            if (drawingCache == null) {
                bitmap = drawingCache;
                if (this.f21008b.getWidth() != 0) {
                    bitmap = drawingCache;
                    if (this.f21008b.getHeight() != 0) {
                        bitmap = Bitmap.createBitmap(this.f21008b.getWidth(), this.f21008b.getHeight(), Bitmap.Config.ARGB_8888);
                        this.f21008b.draw(new Canvas(bitmap));
                    }
                }
            }
            if (bitmap != null) {
                Paint paint = this.f21010d;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
            }
            this.f21014h = false;
            this.f21015i = true;
        }
    }

    /* renamed from: a */
    public void m15808a(@ColorInt int i) {
        this.f21011e.setColor(i);
        this.f21008b.invalidate();
    }

    /* renamed from: a */
    public void m15807a(Canvas canvas) {
        if (m15797g()) {
            int i = f21006j;
            if (i == 0) {
                AbstractC9197c.C9202e eVar = this.f21012f;
                canvas.drawCircle(eVar.f21020a, eVar.f21021b, eVar.f21022c, this.f21010d);
                if (m15795i()) {
                    AbstractC9197c.C9202e eVar2 = this.f21012f;
                    canvas.drawCircle(eVar2.f21020a, eVar2.f21021b, eVar2.f21022c, this.f21011e);
                }
            } else if (i == 1) {
                int save = canvas.save();
                canvas.clipPath(this.f21009c);
                this.f21007a.mo15794a(canvas);
                if (m15795i()) {
                    canvas.drawRect(0.0f, 0.0f, this.f21008b.getWidth(), this.f21008b.getHeight(), this.f21011e);
                }
                canvas.restoreToCount(save);
            } else if (i == 2) {
                this.f21007a.mo15794a(canvas);
                if (m15795i()) {
                    canvas.drawRect(0.0f, 0.0f, this.f21008b.getWidth(), this.f21008b.getHeight(), this.f21011e);
                }
            } else {
                throw new IllegalStateException("Unsupported strategy " + f21006j);
            }
        } else {
            this.f21007a.mo15794a(canvas);
            if (m15795i()) {
                canvas.drawRect(0.0f, 0.0f, this.f21008b.getWidth(), this.f21008b.getHeight(), this.f21011e);
            }
        }
        m15803b(canvas);
    }

    /* renamed from: a */
    public void m15806a(@Nullable Drawable drawable) {
        this.f21013g = drawable;
        this.f21008b.invalidate();
    }

    /* renamed from: b */
    public void m15804b() {
        if (f21006j == 0) {
            this.f21015i = false;
            this.f21008b.destroyDrawingCache();
            this.f21010d.setShader(null);
            this.f21008b.invalidate();
        }
    }

    /* renamed from: b */
    public final void m15803b(Canvas canvas) {
        if (m15796h()) {
            Rect bounds = this.f21013g.getBounds();
            float width = this.f21012f.f21020a - (bounds.width() / 2.0f);
            float height = this.f21012f.f21021b - (bounds.height() / 2.0f);
            canvas.translate(width, height);
            this.f21013g.draw(canvas);
            canvas.translate(-width, -height);
        }
    }

    /* renamed from: b */
    public void m15802b(@Nullable AbstractC9197c.C9202e eVar) {
        if (eVar == null) {
            this.f21012f = null;
        } else {
            AbstractC9197c.C9202e eVar2 = this.f21012f;
            if (eVar2 == null) {
                this.f21012f = new AbstractC9197c.C9202e(eVar);
            } else {
                eVar2.m15778a(eVar);
            }
            if (C9247a.m15633a(eVar.f21022c, m15805a(eVar), 1.0E-4f)) {
                this.f21012f.f21022c = Float.MAX_VALUE;
            }
        }
        m15799e();
    }

    @ColorInt
    /* renamed from: c */
    public int m15801c() {
        return this.f21011e.getColor();
    }

    @Nullable
    /* renamed from: d */
    public AbstractC9197c.C9202e m15800d() {
        AbstractC9197c.C9202e eVar = this.f21012f;
        if (eVar == null) {
            return null;
        }
        AbstractC9197c.C9202e eVar2 = new AbstractC9197c.C9202e(eVar);
        if (eVar2.m15780a()) {
            eVar2.f21022c = m15805a(eVar2);
        }
        return eVar2;
    }

    /* renamed from: e */
    public final void m15799e() {
        if (f21006j == 1) {
            this.f21009c.rewind();
            AbstractC9197c.C9202e eVar = this.f21012f;
            if (eVar != null) {
                this.f21009c.addCircle(eVar.f21020a, eVar.f21021b, eVar.f21022c, Path.Direction.CW);
            }
        }
        this.f21008b.invalidate();
    }

    /* renamed from: f */
    public boolean m15798f() {
        return this.f21007a.mo15793e() && !m15797g();
    }

    /* renamed from: g */
    public final boolean m15797g() {
        AbstractC9197c.C9202e eVar = this.f21012f;
        boolean z = eVar == null || eVar.m15780a();
        if (f21006j != 0) {
            return !z;
        }
        boolean z2 = false;
        if (!z) {
            z2 = false;
            if (this.f21015i) {
                z2 = true;
            }
        }
        return z2;
    }

    /* renamed from: h */
    public final boolean m15796h() {
        return (this.f21014h || this.f21013g == null || this.f21012f == null) ? false : true;
    }

    /* renamed from: i */
    public final boolean m15795i() {
        return !this.f21014h && Color.alpha(this.f21011e.getColor()) != 0;
    }
}
