package com.p059a.p060a;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.graphics.drawable.shapes.RectShape;
import android.graphics.drawable.shapes.RoundRectShape;
/* renamed from: com.a.a.a */
/* loaded from: classes-dex2jar.jar:com/a/a/a.class */
public class C1315a extends ShapeDrawable {

    /* renamed from: a */
    private final Paint f4364a;

    /* renamed from: b */
    private final Paint f4365b;

    /* renamed from: c */
    private final String f4366c;

    /* renamed from: d */
    private final int f4367d;

    /* renamed from: e */
    private final RectShape f4368e;

    /* renamed from: f */
    private final int f4369f;

    /* renamed from: g */
    private final int f4370g;

    /* renamed from: h */
    private final int f4371h;

    /* renamed from: i */
    private final float f4372i;

    /* renamed from: j */
    private final int f4373j;

    /* renamed from: com.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/a/a/a$a.class */
    public static class C1317a implements AbstractC1318b, AbstractC1319c, AbstractC1320d {

        /* renamed from: a */
        public int f4374a;

        /* renamed from: b */
        public float f4375b;

        /* renamed from: c */
        private String f4376c;

        /* renamed from: d */
        private int f4377d;

        /* renamed from: e */
        private int f4378e;

        /* renamed from: f */
        private int f4379f;

        /* renamed from: g */
        private int f4380g;

        /* renamed from: h */
        private Typeface f4381h;

        /* renamed from: i */
        private RectShape f4382i;

        /* renamed from: j */
        private int f4383j;

        /* renamed from: k */
        private boolean f4384k;

        /* renamed from: l */
        private boolean f4385l;

        private C1317a() {
            this.f4376c = "";
            this.f4377d = -7829368;
            this.f4374a = -1;
            this.f4378e = 0;
            this.f4379f = -1;
            this.f4380g = -1;
            this.f4382i = new RectShape();
            this.f4381h = Typeface.create("sans-serif-light", 0);
            this.f4383j = -1;
            this.f4384k = false;
            this.f4385l = false;
        }

        @Override // com.p059a.p060a.C1315a.AbstractC1319c
        /* renamed from: a */
        public AbstractC1319c mo17503a() {
            this.f4384k = true;
            return this;
        }

        @Override // com.p059a.p060a.C1315a.AbstractC1319c
        /* renamed from: a */
        public AbstractC1319c mo17502a(int i) {
            this.f4374a = i;
            return this;
        }

        @Override // com.p059a.p060a.C1315a.AbstractC1320d
        /* renamed from: a */
        public C1315a mo17499a(String str, int i) {
            m17511d();
            return m17513b(str, i);
        }

        @Override // com.p059a.p060a.C1315a.AbstractC1320d
        /* renamed from: b */
        public AbstractC1319c mo17498b() {
            return this;
        }

        @Override // com.p059a.p060a.C1315a.AbstractC1319c
        /* renamed from: b */
        public AbstractC1319c mo17501b(int i) {
            this.f4383j = i;
            return this;
        }

        /* renamed from: b */
        public C1315a m17513b(String str, int i) {
            this.f4377d = i;
            this.f4376c = str;
            return new C1315a(this);
        }

        @Override // com.p059a.p060a.C1315a.AbstractC1319c
        /* renamed from: c */
        public AbstractC1320d mo17500c() {
            return this;
        }

        /* renamed from: d */
        public AbstractC1318b m17511d() {
            this.f4382i = new OvalShape();
            return this;
        }
    }

    /* renamed from: com.a.a.a$b */
    /* loaded from: classes-dex2jar.jar:com/a/a/a$b.class */
    public interface AbstractC1318b {
    }

    /* renamed from: com.a.a.a$c */
    /* loaded from: classes-dex2jar.jar:com/a/a/a$c.class */
    public interface AbstractC1319c {
        /* renamed from: a */
        AbstractC1319c mo17503a();

        /* renamed from: a */
        AbstractC1319c mo17502a(int i);

        /* renamed from: b */
        AbstractC1319c mo17501b(int i);

        /* renamed from: c */
        AbstractC1320d mo17500c();
    }

    /* renamed from: com.a.a.a$d */
    /* loaded from: classes-dex2jar.jar:com/a/a/a$d.class */
    public interface AbstractC1320d {
        /* renamed from: a */
        C1315a mo17499a(String str, int i);

        /* renamed from: b */
        AbstractC1319c mo17498b();
    }

    private C1315a(C1317a c1317a) {
        super(c1317a.f4382i);
        this.f4368e = c1317a.f4382i;
        this.f4369f = c1317a.f4380g;
        this.f4370g = c1317a.f4379f;
        this.f4372i = c1317a.f4375b;
        this.f4366c = c1317a.f4385l ? c1317a.f4376c.toUpperCase() : c1317a.f4376c;
        this.f4367d = c1317a.f4377d;
        this.f4371h = c1317a.f4383j;
        this.f4364a = new Paint();
        this.f4364a.setColor(c1317a.f4374a);
        this.f4364a.setAntiAlias(true);
        this.f4364a.setFakeBoldText(c1317a.f4384k);
        this.f4364a.setStyle(Paint.Style.FILL);
        this.f4364a.setTypeface(c1317a.f4381h);
        this.f4364a.setTextAlign(Paint.Align.CENTER);
        this.f4364a.setStrokeWidth(c1317a.f4378e);
        this.f4373j = c1317a.f4378e;
        this.f4365b = new Paint();
        this.f4365b.setColor(m17517a(this.f4367d));
        this.f4365b.setStyle(Paint.Style.STROKE);
        this.f4365b.setStrokeWidth(this.f4373j);
        getPaint().setColor(this.f4367d);
    }

    /* renamed from: a */
    private int m17517a(int i) {
        return Color.rgb((int) (Color.red(i) * 0.9f), (int) (Color.green(i) * 0.9f), (int) (Color.blue(i) * 0.9f));
    }

    /* renamed from: a */
    public static AbstractC1320d m17518a() {
        return new C1317a();
    }

    /* renamed from: a */
    private void m17516a(Canvas canvas) {
        RectF rectF = new RectF(getBounds());
        rectF.inset(this.f4373j / 2, this.f4373j / 2);
        if (this.f4368e instanceof OvalShape) {
            canvas.drawOval(rectF, this.f4365b);
        } else if (this.f4368e instanceof RoundRectShape) {
            canvas.drawRoundRect(rectF, this.f4372i, this.f4372i, this.f4365b);
        } else {
            canvas.drawRect(rectF, this.f4365b);
        }
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        super.draw(canvas);
        Rect bounds = getBounds();
        if (this.f4373j > 0) {
            m17516a(canvas);
        }
        int save = canvas.save();
        canvas.translate(bounds.left, bounds.top);
        int width = this.f4370g < 0 ? bounds.width() : this.f4370g;
        int height = this.f4369f < 0 ? bounds.height() : this.f4369f;
        this.f4364a.setTextSize(this.f4371h < 0 ? Math.min(width, height) / 2 : this.f4371h);
        canvas.drawText(this.f4366c, width / 2, (height / 2) - ((this.f4364a.descent() + this.f4364a.ascent()) / 2.0f), this.f4364a);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f4369f;
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f4370g;
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f4364a.setAlpha(i);
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f4364a.setColorFilter(colorFilter);
    }
}
