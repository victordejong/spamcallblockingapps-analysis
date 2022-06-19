package com.callapp.contacts.util.glide;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.load.resource.bitmap.AbstractC3865f;
import java.security.MessageDigest;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/RoundedCornersTransformation.class */
public class RoundedCornersTransformation extends AbstractC3865f {

    /* renamed from: b */
    private int f28263b;

    /* renamed from: c */
    private int f28264c;

    /* renamed from: d */
    private int f28265d;

    /* renamed from: e */
    private CornerType f28266e;

    /* renamed from: com.callapp.contacts.util.glide.RoundedCornersTransformation$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/RoundedCornersTransformation$1.class */
    static /* synthetic */ class C79901 {

        /* renamed from: a */
        static final /* synthetic */ int[] f28267a;

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
            int[] iArr = new int[CornerType.values().length];
            f28267a = iArr;
            try {
                iArr[CornerType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f28267a[CornerType.TOP_LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f28267a[CornerType.TOP_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f28267a[CornerType.BOTTOM_LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f28267a[CornerType.BOTTOM_RIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f28267a[CornerType.TOP.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f28267a[CornerType.BOTTOM.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f28267a[CornerType.LEFT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f28267a[CornerType.RIGHT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f28267a[CornerType.OTHER_TOP_LEFT.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f28267a[CornerType.OTHER_TOP_RIGHT.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f28267a[CornerType.OTHER_BOTTOM_LEFT.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f28267a[CornerType.OTHER_BOTTOM_RIGHT.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f28267a[CornerType.DIAGONAL_FROM_TOP_LEFT.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f28267a[CornerType.DIAGONAL_FROM_TOP_RIGHT.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType.class */
    public enum CornerType {
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

    public RoundedCornersTransformation(int i, int i2) {
        this(i, i2, CornerType.ALL);
    }

    public RoundedCornersTransformation(int i, int i2, CornerType cornerType) {
        this.f28263b = i;
        this.f28264c = i * 2;
        this.f28265d = i2;
        this.f28266e = cornerType;
    }

    @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3865f
    /* renamed from: a */
    public final Bitmap mo27006a(AbstractC3712e abstractC3712e, Bitmap bitmap, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap mo37460a = abstractC3712e.mo37460a(width, height, Bitmap.Config.ARGB_8888);
        mo37460a.setHasAlpha(true);
        Canvas canvas = new Canvas(mo37460a);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
        float f = width;
        float f2 = height;
        int i23 = this.f28265d;
        float f3 = f - i23;
        float f4 = f2 - i23;
        switch (C79901.f28267a[this.f28266e.ordinal()]) {
            case 1:
                int i24 = this.f28265d;
                RectF rectF = new RectF(i24, i24, f3, f4);
                int i25 = this.f28263b;
                canvas.drawRoundRect(rectF, i25, i25, paint);
                break;
            case 2:
                int i26 = this.f28265d;
                float f5 = i26;
                float f6 = i26;
                int i27 = this.f28264c;
                RectF rectF2 = new RectF(f5, f6, i26 + i27, i26 + i27);
                int i28 = this.f28263b;
                canvas.drawRoundRect(rectF2, i28, i28, paint);
                float f7 = this.f28265d;
                int i29 = this.f28263b;
                canvas.drawRect(new RectF(f7, i3 + i29, i3 + i29, f4), paint);
                canvas.drawRect(new RectF(this.f28263b + i4, this.f28265d, f3, f4), paint);
                break;
            case 3:
                float f8 = this.f28264c;
                RectF rectF3 = new RectF(f3 - f8, this.f28265d, f3, i6 + i5);
                int i30 = this.f28263b;
                canvas.drawRoundRect(rectF3, i30, i30, paint);
                int i31 = this.f28265d;
                canvas.drawRect(new RectF(i31, i31, f3 - this.f28263b, f4), paint);
                canvas.drawRect(new RectF(f3 - this.f28263b, this.f28265d + i7, f3, f4), paint);
                break;
            case 4:
                RectF rectF4 = new RectF(this.f28265d, f4 - this.f28264c, i8 + i9, f4);
                int i32 = this.f28263b;
                canvas.drawRoundRect(rectF4, i32, i32, paint);
                int i33 = this.f28265d;
                canvas.drawRect(new RectF(i33, i33, i33 + this.f28264c, f4 - this.f28263b), paint);
                canvas.drawRect(new RectF(this.f28263b + i10, this.f28265d, f3, f4), paint);
                break;
            case 5:
                int i34 = this.f28264c;
                RectF rectF5 = new RectF(f3 - i34, f4 - i34, f3, f4);
                int i35 = this.f28263b;
                canvas.drawRoundRect(rectF5, i35, i35, paint);
                int i36 = this.f28265d;
                canvas.drawRect(new RectF(i36, i36, f3 - this.f28263b, f4), paint);
                int i37 = this.f28263b;
                canvas.drawRect(new RectF(f3 - i37, this.f28265d, f3, f4 - i37), paint);
                break;
            case 6:
                int i38 = this.f28265d;
                RectF rectF6 = new RectF(i38, i38, f3, i38 + this.f28264c);
                int i39 = this.f28263b;
                canvas.drawRoundRect(rectF6, i39, i39, paint);
                canvas.drawRect(new RectF(this.f28265d, i11 + this.f28263b, f3, f4), paint);
                break;
            case 7:
                RectF rectF7 = new RectF(this.f28265d, f4 - this.f28264c, f3, f4);
                int i40 = this.f28263b;
                canvas.drawRoundRect(rectF7, i40, i40, paint);
                int i41 = this.f28265d;
                canvas.drawRect(new RectF(i41, i41, f3, f4 - this.f28263b), paint);
                break;
            case 8:
                int i42 = this.f28265d;
                RectF rectF8 = new RectF(i42, i42, i42 + this.f28264c, f4);
                int i43 = this.f28263b;
                canvas.drawRoundRect(rectF8, i43, i43, paint);
                canvas.drawRect(new RectF(this.f28263b + i12, this.f28265d, f3, f4), paint);
                break;
            case 9:
                RectF rectF9 = new RectF(f3 - this.f28264c, this.f28265d, f3, f4);
                int i44 = this.f28263b;
                canvas.drawRoundRect(rectF9, i44, i44, paint);
                int i45 = this.f28265d;
                canvas.drawRect(new RectF(i45, i45, f3 - this.f28263b, f4), paint);
                break;
            case 10:
                RectF rectF10 = new RectF(this.f28265d, f4 - this.f28264c, f3, f4);
                int i46 = this.f28263b;
                canvas.drawRoundRect(rectF10, i46, i46, paint);
                RectF rectF11 = new RectF(f3 - this.f28264c, this.f28265d, f3, f4);
                int i47 = this.f28263b;
                canvas.drawRoundRect(rectF11, i47, i47, paint);
                int i48 = this.f28265d;
                float f9 = i48;
                float f10 = i48;
                int i49 = this.f28263b;
                canvas.drawRect(new RectF(f9, f10, f3 - i49, f4 - i49), paint);
                break;
            case 11:
                int i50 = this.f28265d;
                RectF rectF12 = new RectF(i50, i50, i50 + this.f28264c, f4);
                int i51 = this.f28263b;
                canvas.drawRoundRect(rectF12, i51, i51, paint);
                RectF rectF13 = new RectF(this.f28265d, f4 - this.f28264c, f3, f4);
                int i52 = this.f28263b;
                canvas.drawRoundRect(rectF13, i52, i52, paint);
                canvas.drawRect(new RectF(i13 + i14, this.f28265d, f3, f4 - this.f28263b), paint);
                break;
            case 12:
                int i53 = this.f28265d;
                RectF rectF14 = new RectF(i53, i53, f3, i53 + this.f28264c);
                int i54 = this.f28263b;
                canvas.drawRoundRect(rectF14, i54, i54, paint);
                RectF rectF15 = new RectF(f3 - this.f28264c, this.f28265d, f3, f4);
                int i55 = this.f28263b;
                canvas.drawRoundRect(rectF15, i55, i55, paint);
                canvas.drawRect(new RectF(this.f28265d, i15 + i16, f3 - this.f28263b, f4), paint);
                break;
            case 13:
                int i56 = this.f28265d;
                RectF rectF16 = new RectF(i56, i56, f3, i56 + this.f28264c);
                int i57 = this.f28263b;
                canvas.drawRoundRect(rectF16, i57, i57, paint);
                int i58 = this.f28265d;
                RectF rectF17 = new RectF(i58, i58, i58 + this.f28264c, f4);
                int i59 = this.f28263b;
                canvas.drawRoundRect(rectF17, i59, i59, paint);
                int i60 = this.f28265d;
                int i61 = this.f28263b;
                canvas.drawRect(new RectF(i60 + i61, i60 + i61, f3, f4), paint);
                break;
            case 14:
                int i62 = this.f28265d;
                float f11 = i62;
                float f12 = i62;
                int i63 = this.f28264c;
                RectF rectF18 = new RectF(f11, f12, i62 + i63, i62 + i63);
                int i64 = this.f28263b;
                canvas.drawRoundRect(rectF18, i64, i64, paint);
                int i65 = this.f28264c;
                RectF rectF19 = new RectF(f3 - i65, f4 - i65, f3, f4);
                int i66 = this.f28263b;
                canvas.drawRoundRect(rectF19, i66, i66, paint);
                canvas.drawRect(new RectF(this.f28265d, i17 + this.f28263b, f3 - this.f28264c, f4), paint);
                canvas.drawRect(new RectF(this.f28264c + i18, this.f28265d, f3, f4 - this.f28263b), paint);
                break;
            case 15:
                float f13 = this.f28264c;
                RectF rectF20 = new RectF(f3 - f13, this.f28265d, f3, i20 + i19);
                int i67 = this.f28263b;
                canvas.drawRoundRect(rectF20, i67, i67, paint);
                RectF rectF21 = new RectF(this.f28265d, f4 - this.f28264c, i21 + i22, f4);
                int i68 = this.f28263b;
                canvas.drawRoundRect(rectF21, i68, i68, paint);
                int i69 = this.f28265d;
                float f14 = i69;
                float f15 = i69;
                int i70 = this.f28263b;
                canvas.drawRect(new RectF(f14, f15, f3 - i70, f4 - i70), paint);
                int i71 = this.f28265d;
                int i72 = this.f28263b;
                canvas.drawRect(new RectF(i71 + i72, i71 + i72, f3, f4), paint);
                break;
            default:
                int i73 = this.f28265d;
                RectF rectF22 = new RectF(i73, i73, f3, f4);
                int i74 = this.f28263b;
                canvas.drawRoundRect(rectF22, i74, i74, paint);
                break;
        }
        return mo37460a;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public boolean equals(Object obj) {
        if (obj instanceof RoundedCornersTransformation) {
            RoundedCornersTransformation roundedCornersTransformation = (RoundedCornersTransformation) obj;
            return roundedCornersTransformation.f28263b == this.f28263b && roundedCornersTransformation.f28264c == this.f28264c && roundedCornersTransformation.f28265d == this.f28265d && roundedCornersTransformation.f28266e == this.f28266e;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public int hashCode() {
        return (-70958912) + (this.f28263b * 10000) + (this.f28264c * 1000) + (this.f28265d * 100) + (this.f28266e.ordinal() * 10);
    }

    public String toString() {
        return "RoundedTransformation(radius=" + this.f28263b + ", margin=" + this.f28265d + ", diameter=" + this.f28264c + ", cornerType=" + this.f28266e.name() + ")";
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(("com.callapp.contacts.RoundedCornersTransformation.1" + this.f28263b + this.f28264c + this.f28265d + this.f28266e).getBytes(f14176a));
    }
}
