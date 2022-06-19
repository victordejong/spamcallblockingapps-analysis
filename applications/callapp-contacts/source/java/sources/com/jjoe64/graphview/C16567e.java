package com.jjoe64.graphview;

import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.TypedValue;
import com.jjoe64.graphview.p455a.AbstractC16559h;
import java.util.ArrayList;
/* renamed from: com.jjoe64.graphview.e */
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/e.class */
public final class C16567e {

    /* renamed from: a */
    public boolean f58296a = false;

    /* renamed from: b */
    private C16570b f58297b;

    /* renamed from: c */
    private final GraphView f58298c;

    /* renamed from: d */
    private Paint f58299d;

    /* renamed from: e */
    private int f58300e;

    /* renamed from: com.jjoe64.graphview.e$1 */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/e$1.class */
    public static final /* synthetic */ class C165681 {

        /* renamed from: a */
        static final /* synthetic */ int[] f58301a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x001e -> B:11:0x0013). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC16569a.m6993a().length];
            f58301a = iArr;
            try {
                iArr[EnumC16569a.f58302a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f58301a[EnumC16569a.f58303b - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.jjoe64.graphview.e$a */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/e$a.class */
    public static final class EnumC16569a extends Enum<EnumC16569a> {

        /* renamed from: a */
        public static final int f58302a = 1;

        /* renamed from: b */
        public static final int f58303b = 2;

        /* renamed from: c */
        public static final int f58304c = 3;

        /* renamed from: d */
        private static final /* synthetic */ int[] f58305d = {1, 2, 3};

        private EnumC16569a(String str, int i) {
            super(str, i);
        }

        /* renamed from: a */
        public static int[] m6993a() {
            return (int[]) f58305d.clone();
        }
    }

    /* renamed from: com.jjoe64.graphview.e$b */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/e$b.class */
    public final class C16570b {

        /* renamed from: a */
        float f58306a;

        /* renamed from: b */
        int f58307b;

        /* renamed from: c */
        int f58308c;

        /* renamed from: d */
        int f58309d;

        /* renamed from: e */
        int f58310e;

        /* renamed from: f */
        int f58311f;

        /* renamed from: g */
        int f58312g;

        /* renamed from: h */
        int f58313h;

        /* renamed from: i */
        Point f58314i;

        private C16570b() {
            C16567e.this = r4;
        }

        /* synthetic */ C16570b(C16567e c16567e, C165681 c165681) {
            this();
        }
    }

    public C16567e(GraphView graphView) {
        int i;
        this.f58298c = graphView;
        Paint paint = new Paint();
        this.f58299d = paint;
        paint.setTextAlign(Paint.Align.LEFT);
        C16570b c16570b = new C16570b(this, null);
        this.f58297b = c16570b;
        this.f58300e = 0;
        c16570b.f58313h = EnumC16569a.f58303b;
        this.f58297b.f58306a = graphView.f58150b.m7022a();
        C16570b c16570b2 = this.f58297b;
        c16570b2.f58307b = (int) (c16570b2.f58306a / 5.0f);
        C16570b c16570b3 = this.f58297b;
        c16570b3.f58308c = (int) (c16570b3.f58306a / 2.0f);
        this.f58297b.f58309d = 0;
        this.f58297b.f58310e = Color.argb(180, 100, 100, 100);
        C16570b c16570b4 = this.f58297b;
        c16570b4.f58312g = (int) (c16570b4.f58306a / 5.0f);
        TypedValue typedValue = new TypedValue();
        graphView.getContext().getTheme().resolveAttribute(16842818, typedValue, true);
        try {
            TypedArray obtainStyledAttributes = graphView.getContext().obtainStyledAttributes(typedValue.data, new int[]{16842806});
            i = obtainStyledAttributes.getColor(0, -16777216);
            obtainStyledAttributes.recycle();
        } catch (Exception e) {
            i = -16777216;
        }
        this.f58297b.f58311f = i;
        this.f58300e = 0;
    }

    /* renamed from: a */
    public final void m6994a(Canvas canvas) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        if (!this.f58296a) {
            return;
        }
        this.f58299d.setTextSize(this.f58297b.f58306a);
        int i = (int) (this.f58297b.f58306a * 0.8d);
        ArrayList<AbstractC16559h> arrayList = new ArrayList();
        arrayList.addAll(this.f58298c.f58149a);
        if (this.f58298c.f58152d != null) {
            arrayList.addAll(this.f58298c.m7055f().m6989a());
        }
        int i2 = this.f58297b.f58309d;
        int i3 = i2;
        if (i2 == 0) {
            int i4 = this.f58300e;
            i3 = i4;
            if (i4 == 0) {
                Rect rect = new Rect();
                int i5 = i4;
                for (AbstractC16559h abstractC16559h : arrayList) {
                    if (abstractC16559h.mo7025f() != null) {
                        this.f58299d.getTextBounds(abstractC16559h.mo7025f(), 0, abstractC16559h.mo7025f().length(), rect);
                        i5 = Math.max(i5, rect.width());
                    }
                }
                int i6 = i5;
                if (i5 == 0) {
                    i6 = 1;
                }
                i3 = i6 + (this.f58297b.f58308c * 2) + i + this.f58297b.f58307b;
                this.f58300e = i3;
            }
        }
        float size = ((this.f58297b.f58306a + this.f58297b.f58307b) * arrayList.size()) - this.f58297b.f58307b;
        if (this.f58297b.f58314i != null) {
            f2 = this.f58298c.m7063a() + this.f58297b.f58312g + this.f58297b.f58314i.x;
            f = this.f58298c.m7059b() + this.f58297b.f58312g + this.f58297b.f58314i.y;
        } else {
            float m7063a = ((this.f58298c.m7063a() + this.f58298c.m7057d()) - i3) - this.f58297b.f58312g;
            int i7 = C165681.f58301a[this.f58297b.f58313h - 1];
            if (i7 != 1) {
                if (i7 != 2) {
                    f4 = ((this.f58298c.m7059b() + this.f58298c.m7058c()) - this.f58297b.f58312g) - size;
                    f5 = this.f58297b.f58308c * 2;
                } else {
                    f4 = this.f58298c.getHeight() / 2;
                    f5 = size / 2.0f;
                }
                f3 = f4 - f5;
            } else {
                f3 = this.f58298c.m7059b() + this.f58297b.f58312g;
            }
            f = f3;
            f2 = m7063a;
        }
        float f6 = this.f58297b.f58308c * 2;
        this.f58299d.setColor(this.f58297b.f58310e);
        canvas.drawRoundRect(new RectF(f2, f, i3 + f2, size + f + f6), 8.0f, 8.0f, this.f58299d);
        int i8 = 0;
        for (AbstractC16559h abstractC16559h2 : arrayList) {
            this.f58299d.setColor(abstractC16559h2.mo7024g());
            float f7 = i8;
            float f8 = i;
            canvas.drawRect(new RectF(this.f58297b.f58308c + f2, this.f58297b.f58308c + f + ((this.f58297b.f58306a + this.f58297b.f58307b) * f7), this.f58297b.f58308c + f2 + f8, this.f58297b.f58308c + f + ((this.f58297b.f58306a + this.f58297b.f58307b) * f7) + f8), this.f58299d);
            if (abstractC16559h2.mo7025f() != null) {
                this.f58299d.setColor(this.f58297b.f58311f);
                canvas.drawText(abstractC16559h2.mo7025f(), this.f58297b.f58308c + f2 + f8 + this.f58297b.f58307b, this.f58297b.f58308c + f + this.f58297b.f58306a + (f7 * (this.f58297b.f58306a + this.f58297b.f58307b)), this.f58299d);
            }
            i8++;
        }
    }
}
