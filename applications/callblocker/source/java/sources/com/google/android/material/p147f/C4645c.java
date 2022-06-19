package com.google.android.material.p147f;

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
import com.google.android.material.p147f.AbstractC4647d;
import com.google.android.material.p154l.C4713a;
/* renamed from: com.google.android.material.f.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/f/c.class */
public class C4645c {

    /* renamed from: a */
    public static final int f20153a;

    /* renamed from: b */
    private final AbstractC4646a f20154b;

    /* renamed from: c */
    private final View f20155c;

    /* renamed from: d */
    private final Path f20156d;

    /* renamed from: e */
    private final Paint f20157e;

    /* renamed from: f */
    private final Paint f20158f;

    /* renamed from: g */
    private AbstractC4647d.C4652d f20159g;

    /* renamed from: h */
    private Drawable f20160h;

    /* renamed from: i */
    private boolean f20161i;

    /* renamed from: j */
    private boolean f20162j;

    /* renamed from: com.google.android.material.f.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/f/c$a.class */
    public interface AbstractC4646a {
        /* renamed from: a */
        void mo3073a(Canvas canvas);

        /* renamed from: c */
        boolean mo3072c();
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f20153a = 2;
        } else if (Build.VERSION.SDK_INT >= 18) {
            f20153a = 1;
        } else {
            f20153a = 0;
        }
    }

    /* renamed from: b */
    private float m3082b(AbstractC4647d.C4652d c4652d) {
        return C4713a.m2794a(c4652d.f20167a, c4652d.f20168b, 0.0f, 0.0f, this.f20155c.getWidth(), this.f20155c.getHeight());
    }

    /* renamed from: b */
    private void m3083b(Canvas canvas) {
        if (m3074j()) {
            Rect bounds = this.f20160h.getBounds();
            float width = this.f20159g.f20167a - (bounds.width() / 2.0f);
            float height = this.f20159g.f20168b - (bounds.height() / 2.0f);
            canvas.translate(width, height);
            this.f20160h.draw(canvas);
            canvas.translate(-width, -height);
        }
    }

    /* renamed from: g */
    private void m3077g() {
        if (f20153a == 1) {
            this.f20156d.rewind();
            if (this.f20159g != null) {
                this.f20156d.addCircle(this.f20159g.f20167a, this.f20159g.f20168b, this.f20159g.f20169c, Path.Direction.CW);
            }
        }
        this.f20155c.invalidate();
    }

    /* renamed from: h */
    private boolean m3076h() {
        boolean z = true;
        boolean z2 = this.f20159g == null || this.f20159g.m3064a();
        if (f20153a == 0) {
            if (z2 || !this.f20162j) {
                z = false;
            }
        } else if (z2) {
            z = false;
        }
        return z;
    }

    /* renamed from: i */
    private boolean m3075i() {
        return !this.f20161i && Color.alpha(this.f20158f.getColor()) != 0;
    }

    /* renamed from: j */
    private boolean m3074j() {
        return (this.f20161i || this.f20160h == null || this.f20159g == null) ? false : true;
    }

    /* renamed from: a */
    public void m3089a() {
        if (f20153a == 0) {
            this.f20161i = true;
            this.f20162j = false;
            this.f20155c.buildDrawingCache();
            Bitmap drawingCache = this.f20155c.getDrawingCache();
            Bitmap bitmap = drawingCache;
            if (drawingCache == null) {
                bitmap = drawingCache;
                if (this.f20155c.getWidth() != 0) {
                    bitmap = drawingCache;
                    if (this.f20155c.getHeight() != 0) {
                        bitmap = Bitmap.createBitmap(this.f20155c.getWidth(), this.f20155c.getHeight(), Bitmap.Config.ARGB_8888);
                        this.f20155c.draw(new Canvas(bitmap));
                    }
                }
            }
            if (bitmap != null) {
                this.f20157e.setShader(new BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
            }
            this.f20161i = false;
            this.f20162j = true;
        }
    }

    /* renamed from: a */
    public void m3088a(int i) {
        this.f20158f.setColor(i);
        this.f20155c.invalidate();
    }

    /* renamed from: a */
    public void m3087a(Canvas canvas) {
        if (m3076h()) {
            switch (f20153a) {
                case 0:
                    canvas.drawCircle(this.f20159g.f20167a, this.f20159g.f20168b, this.f20159g.f20169c, this.f20157e);
                    if (m3075i()) {
                        canvas.drawCircle(this.f20159g.f20167a, this.f20159g.f20168b, this.f20159g.f20169c, this.f20158f);
                        break;
                    }
                    break;
                case 1:
                    int save = canvas.save();
                    canvas.clipPath(this.f20156d);
                    this.f20154b.mo3073a(canvas);
                    if (m3075i()) {
                        canvas.drawRect(0.0f, 0.0f, this.f20155c.getWidth(), this.f20155c.getHeight(), this.f20158f);
                    }
                    canvas.restoreToCount(save);
                    break;
                case 2:
                    this.f20154b.mo3073a(canvas);
                    if (m3075i()) {
                        canvas.drawRect(0.0f, 0.0f, this.f20155c.getWidth(), this.f20155c.getHeight(), this.f20158f);
                        break;
                    }
                    break;
                default:
                    throw new IllegalStateException("Unsupported strategy " + f20153a);
            }
        } else {
            this.f20154b.mo3073a(canvas);
            if (m3075i()) {
                canvas.drawRect(0.0f, 0.0f, this.f20155c.getWidth(), this.f20155c.getHeight(), this.f20158f);
            }
        }
        m3083b(canvas);
    }

    /* renamed from: a */
    public void m3086a(Drawable drawable) {
        this.f20160h = drawable;
        this.f20155c.invalidate();
    }

    /* renamed from: a */
    public void m3085a(AbstractC4647d.C4652d c4652d) {
        if (c4652d == null) {
            this.f20159g = null;
        } else {
            if (this.f20159g == null) {
                this.f20159g = new AbstractC4647d.C4652d(c4652d);
            } else {
                this.f20159g.m3062a(c4652d);
            }
            if (C4713a.m2793b(c4652d.f20169c, m3082b(c4652d), 1.0E-4f)) {
                this.f20159g.f20169c = Float.MAX_VALUE;
            }
        }
        m3077g();
    }

    /* renamed from: b */
    public void m3084b() {
        if (f20153a == 0) {
            this.f20162j = false;
            this.f20155c.destroyDrawingCache();
            this.f20157e.setShader(null);
            this.f20155c.invalidate();
        }
    }

    /* renamed from: c */
    public AbstractC4647d.C4652d m3081c() {
        AbstractC4647d.C4652d c4652d;
        if (this.f20159g == null) {
            c4652d = null;
        } else {
            AbstractC4647d.C4652d c4652d2 = new AbstractC4647d.C4652d(this.f20159g);
            c4652d = c4652d2;
            if (c4652d2.m3064a()) {
                c4652d2.f20169c = m3082b(c4652d2);
                c4652d = c4652d2;
            }
        }
        return c4652d;
    }

    /* renamed from: d */
    public int m3080d() {
        return this.f20158f.getColor();
    }

    /* renamed from: e */
    public Drawable m3079e() {
        return this.f20160h;
    }

    /* renamed from: f */
    public boolean m3078f() {
        return this.f20154b.mo3072c() && !m3076h();
    }
}
