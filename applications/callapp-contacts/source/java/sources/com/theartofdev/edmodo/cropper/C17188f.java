package com.theartofdev.edmodo.cropper;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.theartofdev.edmodo.cropper.f */
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/f.class */
final class C17188f {

    /* renamed from: c */
    private static final Matrix f60888c = new Matrix();

    /* renamed from: a */
    final EnumC17190a f60889a;

    /* renamed from: b */
    final PointF f60890b;

    /* renamed from: d */
    private final float f60891d;

    /* renamed from: e */
    private final float f60892e;

    /* renamed from: f */
    private final float f60893f;

    /* renamed from: g */
    private final float f60894g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.theartofdev.edmodo.cropper.f$1 */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/f$1.class */
    public static final /* synthetic */ class C171891 {

        /* renamed from: a */
        static final /* synthetic */ int[] f60895a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC17190a.values().length];
            f60895a = iArr;
            try {
                iArr[EnumC17190a.TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f60895a[EnumC17190a.TOP_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f60895a[EnumC17190a.BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f60895a[EnumC17190a.BOTTOM_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f60895a[EnumC17190a.LEFT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f60895a[EnumC17190a.TOP.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f60895a[EnumC17190a.RIGHT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f60895a[EnumC17190a.BOTTOM.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f60895a[EnumC17190a.CENTER.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* renamed from: com.theartofdev.edmodo.cropper.f$a */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/f$a.class */
    public enum EnumC17190a {
        TOP_LEFT,
        TOP_RIGHT,
        BOTTOM_LEFT,
        BOTTOM_RIGHT,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        CENTER
    }

    public C17188f(EnumC17190a enumC17190a, C17187e c17187e, float f, float f2) {
        float f3;
        float f4;
        float f5;
        float f6;
        PointF pointF = new PointF();
        this.f60890b = pointF;
        this.f60889a = enumC17190a;
        this.f60891d = c17187e.m5746b();
        this.f60892e = c17187e.m5744c();
        this.f60893f = c17187e.m5742d();
        this.f60894g = c17187e.m5741e();
        RectF m5750a = c17187e.m5750a();
        switch (C171891.f60895a[enumC17190a.ordinal()]) {
            case 1:
                f4 = m5750a.left - f;
                f5 = m5750a.top;
                f3 = f5 - f2;
                pointF.x = f4;
                pointF.y = f3;
                return;
            case 2:
                f4 = m5750a.right - f;
                f5 = m5750a.top;
                f3 = f5 - f2;
                pointF.x = f4;
                pointF.y = f3;
                return;
            case 3:
                f4 = m5750a.left - f;
                f5 = m5750a.bottom;
                f3 = f5 - f2;
                pointF.x = f4;
                pointF.y = f3;
                return;
            case 4:
                f4 = m5750a.right - f;
                f5 = m5750a.bottom;
                f3 = f5 - f2;
                pointF.x = f4;
                pointF.y = f3;
                return;
            case 5:
                f6 = m5750a.left;
                f4 = f6 - f;
                f3 = 0.0f;
                pointF.x = f4;
                pointF.y = f3;
                return;
            case 6:
                f4 = 0.0f;
                f5 = m5750a.top;
                f3 = f5 - f2;
                pointF.x = f4;
                pointF.y = f3;
                return;
            case 7:
                f6 = m5750a.right;
                f4 = f6 - f;
                f3 = 0.0f;
                pointF.x = f4;
                pointF.y = f3;
                return;
            case 8:
                f4 = 0.0f;
                f5 = m5750a.bottom;
                f3 = f5 - f2;
                pointF.x = f4;
                pointF.y = f3;
                return;
            case 9:
                f4 = m5750a.centerX() - f;
                f5 = m5750a.centerY();
                f3 = f5 - f2;
                pointF.x = f4;
                pointF.y = f3;
                return;
            default:
                f4 = 0.0f;
                f3 = 0.0f;
                pointF.x = f4;
                pointF.y = f3;
                return;
        }
    }

    /* renamed from: a */
    public static float m5738a(float f, float f2, float f3, float f4) {
        return (f3 - f) / (f4 - f2);
    }

    /* renamed from: a */
    public static void m5737a(RectF rectF, float f) {
        rectF.left = rectF.right - (rectF.height() * f);
    }

    /* renamed from: a */
    public static void m5734a(RectF rectF, RectF rectF2, float f) {
        if (rectF.left < rectF2.left + f) {
            rectF.offset(rectF2.left - rectF.left, BitmapDescriptorFactory.HUE_RED);
        }
        if (rectF.top < rectF2.top + f) {
            rectF.offset(BitmapDescriptorFactory.HUE_RED, rectF2.top - rectF.top);
        }
        if (rectF.right > rectF2.right - f) {
            rectF.offset(rectF2.right - rectF.right, BitmapDescriptorFactory.HUE_RED);
        }
        if (rectF.bottom > rectF2.bottom - f) {
            rectF.offset(BitmapDescriptorFactory.HUE_RED, rectF2.bottom - rectF.bottom);
        }
    }

    /* renamed from: b */
    public static void m5733b(RectF rectF, float f) {
        rectF.top = rectF.bottom - (rectF.width() / f);
    }

    /* renamed from: b */
    public static void m5730b(RectF rectF, RectF rectF2, float f) {
        rectF.inset((rectF.width() - (rectF.height() * f)) / 2.0f, BitmapDescriptorFactory.HUE_RED);
        if (rectF.left < rectF2.left) {
            rectF.offset(rectF2.left - rectF.left, BitmapDescriptorFactory.HUE_RED);
        }
        if (rectF.right > rectF2.right) {
            rectF.offset(rectF2.right - rectF.right, BitmapDescriptorFactory.HUE_RED);
        }
    }

    /* renamed from: c */
    public static void m5729c(RectF rectF, float f) {
        rectF.right = rectF.left + (rectF.height() * f);
    }

    /* renamed from: c */
    public static void m5728c(RectF rectF, RectF rectF2, float f) {
        rectF.inset(BitmapDescriptorFactory.HUE_RED, (rectF.height() - (rectF.width() / f)) / 2.0f);
        if (rectF.top < rectF2.top) {
            rectF.offset(BitmapDescriptorFactory.HUE_RED, rectF2.top - rectF.top);
        }
        if (rectF.bottom > rectF2.bottom) {
            rectF.offset(BitmapDescriptorFactory.HUE_RED, rectF2.bottom - rectF.bottom);
        }
    }

    /* renamed from: d */
    public static void m5727d(RectF rectF, float f) {
        rectF.bottom = rectF.top + (rectF.width() / f);
    }

    /* renamed from: a */
    public final void m5736a(RectF rectF, float f, RectF rectF2, float f2, float f3, boolean z, boolean z2) {
        float f4 = f;
        if (f < BitmapDescriptorFactory.HUE_RED) {
            f4 = f / 1.05f;
            this.f60890b.x -= f4 / 1.1f;
        }
        if (f4 < rectF2.left) {
            this.f60890b.x -= (f4 - rectF2.left) / 2.0f;
        }
        float f5 = f4;
        if (f4 - rectF2.left < f2) {
            f5 = rectF2.left;
        }
        float f6 = f5;
        if (rectF.right - f5 < this.f60891d) {
            f6 = rectF.right - this.f60891d;
        }
        float f7 = f6;
        if (rectF.right - f6 > this.f60893f) {
            f7 = rectF.right - this.f60893f;
        }
        float f8 = f7;
        if (f7 - rectF2.left < f2) {
            f8 = rectF2.left;
        }
        float f9 = f8;
        if (f3 > BitmapDescriptorFactory.HUE_RED) {
            float f10 = (rectF.right - f8) / f3;
            float f11 = f10;
            if (f10 < this.f60892e) {
                f8 = Math.max(rectF2.left, rectF.right - (this.f60892e * f3));
                f11 = (rectF.right - f8) / f3;
            }
            float f12 = f8;
            float f13 = f11;
            if (f11 > this.f60894g) {
                f12 = Math.max(rectF2.left, rectF.right - (this.f60894g * f3));
                f13 = (rectF.right - f12) / f3;
            }
            if (!z || !z2) {
                float f14 = f12;
                float f15 = f13;
                if (z) {
                    f14 = f12;
                    f15 = f13;
                    if (rectF.bottom - f13 < rectF2.top) {
                        f14 = Math.max(rectF2.left, rectF.right - ((rectF.bottom - rectF2.top) * f3));
                        f15 = (rectF.right - f14) / f3;
                    }
                }
                f9 = f14;
                if (z2) {
                    f9 = f14;
                    if (rectF.top + f15 > rectF2.bottom) {
                        f9 = Math.max(f14, Math.max(rectF2.left, rectF.right - ((rectF2.bottom - rectF.top) * f3)));
                    }
                }
            } else {
                f9 = Math.max(f12, Math.max(rectF2.left, rectF.right - (rectF2.height() * f3)));
            }
        }
        rectF.left = f9;
    }

    /* renamed from: a */
    public final void m5735a(RectF rectF, float f, RectF rectF2, int i, float f2, float f3, boolean z, boolean z2) {
        float f4 = i;
        float f5 = f;
        if (f > f4) {
            f5 = ((f - f4) / 1.05f) + f4;
            this.f60890b.x -= (f5 - f4) / 1.1f;
        }
        if (f5 > rectF2.right) {
            this.f60890b.x -= (f5 - rectF2.right) / 2.0f;
        }
        float f6 = f5;
        if (rectF2.right - f5 < f2) {
            f6 = rectF2.right;
        }
        float f7 = f6;
        if (f6 - rectF.left < this.f60891d) {
            f7 = rectF.left + this.f60891d;
        }
        float f8 = f7;
        if (f7 - rectF.left > this.f60893f) {
            f8 = rectF.left + this.f60893f;
        }
        float f9 = f8;
        if (rectF2.right - f8 < f2) {
            f9 = rectF2.right;
        }
        float f10 = f9;
        if (f3 > BitmapDescriptorFactory.HUE_RED) {
            float f11 = (f9 - rectF.left) / f3;
            float f12 = f11;
            if (f11 < this.f60892e) {
                f9 = Math.min(rectF2.right, rectF.left + (this.f60892e * f3));
                f12 = (f9 - rectF.left) / f3;
            }
            float f13 = f9;
            float f14 = f12;
            if (f12 > this.f60894g) {
                f13 = Math.min(rectF2.right, rectF.left + (this.f60894g * f3));
                f14 = (f13 - rectF.left) / f3;
            }
            if (!z || !z2) {
                float f15 = f13;
                float f16 = f14;
                if (z) {
                    f15 = f13;
                    f16 = f14;
                    if (rectF.bottom - f14 < rectF2.top) {
                        f15 = Math.min(rectF2.right, rectF.left + ((rectF.bottom - rectF2.top) * f3));
                        f16 = (f15 - rectF.left) / f3;
                    }
                }
                f10 = f15;
                if (z2) {
                    f10 = f15;
                    if (rectF.top + f16 > rectF2.bottom) {
                        f10 = Math.min(f15, Math.min(rectF2.right, rectF.left + ((rectF2.bottom - rectF.top) * f3)));
                    }
                }
            } else {
                f10 = Math.min(f13, Math.min(rectF2.right, rectF.left + (rectF2.height() * f3)));
            }
        }
        rectF.right = f10;
    }

    /* renamed from: b */
    public final void m5732b(RectF rectF, float f, RectF rectF2, float f2, float f3, boolean z, boolean z2) {
        float f4 = f;
        if (f < BitmapDescriptorFactory.HUE_RED) {
            f4 = f / 1.05f;
            this.f60890b.y -= f4 / 1.1f;
        }
        if (f4 < rectF2.top) {
            this.f60890b.y -= (f4 - rectF2.top) / 2.0f;
        }
        float f5 = f4;
        if (f4 - rectF2.top < f2) {
            f5 = rectF2.top;
        }
        float f6 = f5;
        if (rectF.bottom - f5 < this.f60892e) {
            f6 = rectF.bottom - this.f60892e;
        }
        float f7 = f6;
        if (rectF.bottom - f6 > this.f60894g) {
            f7 = rectF.bottom - this.f60894g;
        }
        float f8 = f7;
        if (f7 - rectF2.top < f2) {
            f8 = rectF2.top;
        }
        float f9 = f8;
        if (f3 > BitmapDescriptorFactory.HUE_RED) {
            float f10 = (rectF.bottom - f8) * f3;
            float f11 = f8;
            float f12 = f10;
            if (f10 < this.f60891d) {
                f11 = Math.max(rectF2.top, rectF.bottom - (this.f60891d / f3));
                f12 = (rectF.bottom - f11) * f3;
            }
            float f13 = f12;
            if (f12 > this.f60893f) {
                f11 = Math.max(rectF2.top, rectF.bottom - (this.f60893f / f3));
                f13 = (rectF.bottom - f11) * f3;
            }
            if (!z || !z2) {
                float f14 = f11;
                float f15 = f13;
                if (z) {
                    f14 = f11;
                    f15 = f13;
                    if (rectF.right - f13 < rectF2.left) {
                        f14 = Math.max(rectF2.top, rectF.bottom - ((rectF.right - rectF2.left) / f3));
                        f15 = (rectF.bottom - f14) * f3;
                    }
                }
                f9 = f14;
                if (z2) {
                    f9 = f14;
                    if (rectF.left + f15 > rectF2.right) {
                        f9 = Math.max(f14, Math.max(rectF2.top, rectF.bottom - ((rectF2.right - rectF.left) / f3)));
                    }
                }
            } else {
                f9 = Math.max(f11, Math.max(rectF2.top, rectF.bottom - (rectF2.width() / f3)));
            }
        }
        rectF.top = f9;
    }

    /* renamed from: b */
    public final void m5731b(RectF rectF, float f, RectF rectF2, int i, float f2, float f3, boolean z, boolean z2) {
        float f4 = i;
        float f5 = f;
        if (f > f4) {
            f5 = ((f - f4) / 1.05f) + f4;
            this.f60890b.y -= (f5 - f4) / 1.1f;
        }
        if (f5 > rectF2.bottom) {
            this.f60890b.y -= (f5 - rectF2.bottom) / 2.0f;
        }
        float f6 = f5;
        if (rectF2.bottom - f5 < f2) {
            f6 = rectF2.bottom;
        }
        float f7 = f6;
        if (f6 - rectF.top < this.f60892e) {
            f7 = rectF.top + this.f60892e;
        }
        float f8 = f7;
        if (f7 - rectF.top > this.f60894g) {
            f8 = rectF.top + this.f60894g;
        }
        float f9 = f8;
        if (rectF2.bottom - f8 < f2) {
            f9 = rectF2.bottom;
        }
        float f10 = f9;
        if (f3 > BitmapDescriptorFactory.HUE_RED) {
            float f11 = (f9 - rectF.top) * f3;
            float f12 = f9;
            float f13 = f11;
            if (f11 < this.f60891d) {
                f12 = Math.min(rectF2.bottom, rectF.top + (this.f60891d / f3));
                f13 = (f12 - rectF.top) * f3;
            }
            float f14 = f13;
            if (f13 > this.f60893f) {
                f12 = Math.min(rectF2.bottom, rectF.top + (this.f60893f / f3));
                f14 = (f12 - rectF.top) * f3;
            }
            if (!z || !z2) {
                float f15 = f12;
                float f16 = f14;
                if (z) {
                    f15 = f12;
                    f16 = f14;
                    if (rectF.right - f14 < rectF2.left) {
                        f15 = Math.min(rectF2.bottom, rectF.top + ((rectF.right - rectF2.left) / f3));
                        f16 = (f15 - rectF.top) * f3;
                    }
                }
                f10 = f15;
                if (z2) {
                    f10 = f15;
                    if (rectF.left + f16 > rectF2.right) {
                        f10 = Math.min(f15, Math.min(rectF2.bottom, rectF.top + ((rectF2.right - rectF.left) / f3)));
                    }
                }
            } else {
                f10 = Math.min(f12, Math.min(rectF2.bottom, rectF.top + (rectF2.width() / f3)));
            }
        }
        rectF.bottom = f10;
    }
}
