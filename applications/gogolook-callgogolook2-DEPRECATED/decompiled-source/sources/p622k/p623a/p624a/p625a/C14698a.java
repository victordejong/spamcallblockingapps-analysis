package p622k.p623a.p624a.p625a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import p081h.p119d.p120a.C5776l;
import p081h.p119d.p120a.p124s.AbstractC5810g;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p124s.p134k.p135e.C5955c;
/* renamed from: k.a.a.a.a */
/* loaded from: classes3-dex2jar.jar:k/a/a/a/a.class */
public class C14698a implements AbstractC5810g<Bitmap> {

    /* renamed from: a */
    public AbstractC5856c f32821a;

    /* renamed from: b */
    public int f32822b;

    /* renamed from: c */
    public int f32823c;

    /* renamed from: d */
    public int f32824d;

    /* renamed from: e */
    public EnumC14700b f32825e;

    /* renamed from: k.a.a.a.a$a */
    /* loaded from: classes3-dex2jar.jar:k/a/a/a/a$a.class */
    public static /* synthetic */ class C14699a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f32826a = new int[EnumC14700b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b9 -> B:64:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00bd -> B:76:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00c1 -> B:72:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c5 -> B:54:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c9 -> B:50:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00cd -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d1 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d5 -> B:66:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d9 -> B:62:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00dd -> B:74:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e1 -> B:70:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00e5 -> B:52:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00e9 -> B:48:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00ed -> B:58:0x00ac). Please submit an issue!!! */
        static {
            try {
                f32826a[EnumC14700b.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f32826a[EnumC14700b.TOP_LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f32826a[EnumC14700b.TOP_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f32826a[EnumC14700b.BOTTOM_LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f32826a[EnumC14700b.BOTTOM_RIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f32826a[EnumC14700b.TOP.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f32826a[EnumC14700b.BOTTOM.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f32826a[EnumC14700b.LEFT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f32826a[EnumC14700b.RIGHT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f32826a[EnumC14700b.OTHER_TOP_LEFT.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f32826a[EnumC14700b.OTHER_TOP_RIGHT.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f32826a[EnumC14700b.OTHER_BOTTOM_LEFT.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f32826a[EnumC14700b.OTHER_BOTTOM_RIGHT.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f32826a[EnumC14700b.DIAGONAL_FROM_TOP_LEFT.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f32826a[EnumC14700b.DIAGONAL_FROM_TOP_RIGHT.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
        }
    }

    /* renamed from: k.a.a.a.a$b */
    /* loaded from: classes3-dex2jar.jar:k/a/a/a/a$b.class */
    public enum EnumC14700b {
        ALL,
        TOP_LEFT,
        TOP_RIGHT,
        BOTTOM_LEFT,
        BOTTOM_RIGHT,
        TOP,
        BOTTOM,
        LEFT,
        RIGHT,
        OTHER_TOP_LEFT,
        OTHER_TOP_RIGHT,
        OTHER_BOTTOM_LEFT,
        OTHER_BOTTOM_RIGHT,
        DIAGONAL_FROM_TOP_LEFT,
        DIAGONAL_FROM_TOP_RIGHT
    }

    public C14698a(Context context, int i, int i2) {
        this(context, i, i2, EnumC14700b.ALL);
    }

    public C14698a(Context context, int i, int i2, EnumC14700b bVar) {
        this(C5776l.m24484a(context).m24468e(), i, i2, bVar);
    }

    public C14698a(AbstractC5856c cVar, int i, int i2, EnumC14700b bVar) {
        this.f32821a = cVar;
        this.f32822b = i;
        this.f32823c = this.f32822b * 2;
        this.f32824d = i2;
        this.f32825e = bVar;
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5810g
    /* renamed from: a */
    public AbstractC5848l<Bitmap> mo832a(AbstractC5848l<Bitmap> lVar, int i, int i2) {
        Bitmap bitmap = lVar.get();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap a = this.f32821a.mo24221a(width, height, Bitmap.Config.ARGB_8888);
        Bitmap bitmap2 = a;
        if (a == null) {
            bitmap2 = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        }
        Canvas canvas = new Canvas(bitmap2);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
        m821l(canvas, paint, width, height);
        return C5955c.m24121a(bitmap2, this.f32821a);
    }

    /* renamed from: a */
    public final void m833a(Canvas canvas, Paint paint, float f, float f2) {
        int i;
        int i2;
        int i3;
        RectF rectF = new RectF(this.f32824d, f2 - this.f32823c, i + i2, f2);
        int i4 = this.f32822b;
        canvas.drawRoundRect(rectF, i4, i4, paint);
        int i5 = this.f32824d;
        canvas.drawRect(new RectF(i5, i5, i5 + this.f32823c, f2 - this.f32822b), paint);
        canvas.drawRect(new RectF(this.f32822b + i3, this.f32824d, f, f2), paint);
    }

    /* renamed from: b */
    public final void m831b(Canvas canvas, Paint paint, float f, float f2) {
        int i = this.f32823c;
        RectF rectF = new RectF(f - i, f2 - i, f, f2);
        int i2 = this.f32822b;
        canvas.drawRoundRect(rectF, i2, i2, paint);
        int i3 = this.f32824d;
        canvas.drawRect(new RectF(i3, i3, f - this.f32822b, f2), paint);
        int i4 = this.f32822b;
        canvas.drawRect(new RectF(f - i4, this.f32824d, f, f2 - i4), paint);
    }

    /* renamed from: c */
    public final void m830c(Canvas canvas, Paint paint, float f, float f2) {
        RectF rectF = new RectF(this.f32824d, f2 - this.f32823c, f, f2);
        int i = this.f32822b;
        canvas.drawRoundRect(rectF, i, i, paint);
        int i2 = this.f32824d;
        canvas.drawRect(new RectF(i2, i2, f, f2 - this.f32822b), paint);
    }

    /* renamed from: d */
    public final void m829d(Canvas canvas, Paint paint, float f, float f2) {
        int i;
        int i2;
        int i3 = this.f32824d;
        float f3 = i3;
        float f4 = i3;
        int i4 = this.f32823c;
        RectF rectF = new RectF(f3, f4, i3 + i4, i3 + i4);
        int i5 = this.f32822b;
        canvas.drawRoundRect(rectF, i5, i5, paint);
        int i6 = this.f32823c;
        RectF rectF2 = new RectF(f - i6, f2 - i6, f, f2);
        int i7 = this.f32822b;
        canvas.drawRoundRect(rectF2, i7, i7, paint);
        canvas.drawRect(new RectF(this.f32824d, i + this.f32822b, f - this.f32823c, f2), paint);
        canvas.drawRect(new RectF(this.f32823c + i2, this.f32824d, f, f2 - this.f32822b), paint);
    }

    /* renamed from: e */
    public final void m828e(Canvas canvas, Paint paint, float f, float f2) {
        int i;
        int i2;
        int i3;
        int i4;
        float f3 = this.f32823c;
        RectF rectF = new RectF(f - f3, this.f32824d, f, i2 + i);
        int i5 = this.f32822b;
        canvas.drawRoundRect(rectF, i5, i5, paint);
        RectF rectF2 = new RectF(this.f32824d, f2 - this.f32823c, i3 + i4, f2);
        int i6 = this.f32822b;
        canvas.drawRoundRect(rectF2, i6, i6, paint);
        int i7 = this.f32824d;
        float f4 = i7;
        float f5 = i7;
        int i8 = this.f32822b;
        canvas.drawRect(new RectF(f4, f5, f - i8, f2 - i8), paint);
        int i9 = this.f32824d;
        int i10 = this.f32822b;
        canvas.drawRect(new RectF(i9 + i10, i9 + i10, f, f2), paint);
    }

    /* renamed from: f */
    public final void m827f(Canvas canvas, Paint paint, float f, float f2) {
        int i = this.f32824d;
        RectF rectF = new RectF(i, i, i + this.f32823c, f2);
        int i2 = this.f32822b;
        canvas.drawRoundRect(rectF, i2, i2, paint);
        int i3 = this.f32824d;
        canvas.drawRect(new RectF(this.f32822b + i3, i3, f, f2), paint);
    }

    /* renamed from: g */
    public final void m826g(Canvas canvas, Paint paint, float f, float f2) {
        int i;
        int i2;
        int i3 = this.f32824d;
        RectF rectF = new RectF(i3, i3, f, i3 + this.f32823c);
        int i4 = this.f32822b;
        canvas.drawRoundRect(rectF, i4, i4, paint);
        RectF rectF2 = new RectF(f - this.f32823c, this.f32824d, f, f2);
        int i5 = this.f32822b;
        canvas.drawRoundRect(rectF2, i5, i5, paint);
        canvas.drawRect(new RectF(this.f32824d, i + i2, f - this.f32822b, f2), paint);
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5810g
    public String getId() {
        return "RoundedTransformation(radius=" + this.f32822b + ", margin=" + this.f32824d + ", diameter=" + this.f32823c + ", cornerType=" + this.f32825e.name() + ")";
    }

    /* renamed from: h */
    public final void m825h(Canvas canvas, Paint paint, float f, float f2) {
        int i = this.f32824d;
        RectF rectF = new RectF(i, i, f, i + this.f32823c);
        int i2 = this.f32822b;
        canvas.drawRoundRect(rectF, i2, i2, paint);
        int i3 = this.f32824d;
        RectF rectF2 = new RectF(i3, i3, i3 + this.f32823c, f2);
        int i4 = this.f32822b;
        canvas.drawRoundRect(rectF2, i4, i4, paint);
        int i5 = this.f32824d;
        int i6 = this.f32822b;
        canvas.drawRect(new RectF(i5 + i6, i5 + i6, f, f2), paint);
    }

    /* renamed from: i */
    public final void m824i(Canvas canvas, Paint paint, float f, float f2) {
        RectF rectF = new RectF(this.f32824d, f2 - this.f32823c, f, f2);
        int i = this.f32822b;
        canvas.drawRoundRect(rectF, i, i, paint);
        RectF rectF2 = new RectF(f - this.f32823c, this.f32824d, f, f2);
        int i2 = this.f32822b;
        canvas.drawRoundRect(rectF2, i2, i2, paint);
        int i3 = this.f32824d;
        float f3 = i3;
        float f4 = i3;
        int i4 = this.f32822b;
        canvas.drawRect(new RectF(f3, f4, f - i4, f2 - i4), paint);
    }

    /* renamed from: j */
    public final void m823j(Canvas canvas, Paint paint, float f, float f2) {
        int i = this.f32824d;
        RectF rectF = new RectF(i, i, i + this.f32823c, f2);
        int i2 = this.f32822b;
        canvas.drawRoundRect(rectF, i2, i2, paint);
        RectF rectF2 = new RectF(this.f32824d, f2 - this.f32823c, f, f2);
        int i3 = this.f32822b;
        canvas.drawRoundRect(rectF2, i3, i3, paint);
        int i4 = this.f32824d;
        int i5 = this.f32822b;
        canvas.drawRect(new RectF(i4 + i5, i4, f, f2 - i5), paint);
    }

    /* renamed from: k */
    public final void m822k(Canvas canvas, Paint paint, float f, float f2) {
        RectF rectF = new RectF(f - this.f32823c, this.f32824d, f, f2);
        int i = this.f32822b;
        canvas.drawRoundRect(rectF, i, i, paint);
        int i2 = this.f32824d;
        canvas.drawRect(new RectF(i2, i2, f - this.f32822b, f2), paint);
    }

    /* renamed from: l */
    public final void m821l(Canvas canvas, Paint paint, float f, float f2) {
        int i = this.f32824d;
        float f3 = f - i;
        float f4 = f2 - i;
        switch (C14699a.f32826a[this.f32825e.ordinal()]) {
            case 1:
                int i2 = this.f32824d;
                RectF rectF = new RectF(i2, i2, f3, f4);
                int i3 = this.f32822b;
                canvas.drawRoundRect(rectF, i3, i3, paint);
                return;
            case 2:
                m820m(canvas, paint, f3, f4);
                return;
            case 3:
                m819n(canvas, paint, f3, f4);
                return;
            case 4:
                m833a(canvas, paint, f3, f4);
                return;
            case 5:
                m831b(canvas, paint, f3, f4);
                return;
            case 6:
                m818o(canvas, paint, f3, f4);
                return;
            case 7:
                m830c(canvas, paint, f3, f4);
                return;
            case 8:
                m827f(canvas, paint, f3, f4);
                return;
            case 9:
                m822k(canvas, paint, f3, f4);
                return;
            case 10:
                m824i(canvas, paint, f3, f4);
                return;
            case 11:
                m823j(canvas, paint, f3, f4);
                return;
            case 12:
                m826g(canvas, paint, f3, f4);
                return;
            case 13:
                m825h(canvas, paint, f3, f4);
                return;
            case 14:
                m829d(canvas, paint, f3, f4);
                return;
            case 15:
                m828e(canvas, paint, f3, f4);
                return;
            default:
                int i4 = this.f32824d;
                RectF rectF2 = new RectF(i4, i4, f3, f4);
                int i5 = this.f32822b;
                canvas.drawRoundRect(rectF2, i5, i5, paint);
                return;
        }
    }

    /* renamed from: m */
    public final void m820m(Canvas canvas, Paint paint, float f, float f2) {
        int i;
        int i2;
        int i3 = this.f32824d;
        float f3 = i3;
        float f4 = i3;
        int i4 = this.f32823c;
        RectF rectF = new RectF(f3, f4, i3 + i4, i3 + i4);
        int i5 = this.f32822b;
        canvas.drawRoundRect(rectF, i5, i5, paint);
        float f5 = this.f32824d;
        int i6 = this.f32822b;
        canvas.drawRect(new RectF(f5, i + i6, i + i6, f2), paint);
        canvas.drawRect(new RectF(this.f32822b + i2, this.f32824d, f, f2), paint);
    }

    /* renamed from: n */
    public final void m819n(Canvas canvas, Paint paint, float f, float f2) {
        int i;
        int i2;
        int i3;
        float f3 = this.f32823c;
        RectF rectF = new RectF(f - f3, this.f32824d, f, i2 + i);
        int i4 = this.f32822b;
        canvas.drawRoundRect(rectF, i4, i4, paint);
        int i5 = this.f32824d;
        canvas.drawRect(new RectF(i5, i5, f - this.f32822b, f2), paint);
        canvas.drawRect(new RectF(f - this.f32822b, this.f32824d + i3, f, f2), paint);
    }

    /* renamed from: o */
    public final void m818o(Canvas canvas, Paint paint, float f, float f2) {
        int i = this.f32824d;
        RectF rectF = new RectF(i, i, f, i + this.f32823c);
        int i2 = this.f32822b;
        canvas.drawRoundRect(rectF, i2, i2, paint);
        int i3 = this.f32824d;
        canvas.drawRect(new RectF(i3, i3 + this.f32822b, f, f2), paint);
    }
}
