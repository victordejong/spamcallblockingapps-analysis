package com.theartofdev.edmodo.cropper;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/f.class */
final class f {

    /* renamed from: c  reason: collision with root package name */
    private static final Matrix f35067c = new Matrix();

    /* renamed from: a  reason: collision with root package name */
    final a f35068a;

    /* renamed from: b  reason: collision with root package name */
    final PointF f35069b;

    /* renamed from: d  reason: collision with root package name */
    private final float f35070d;
    private final float e;
    private final float f;
    private final float g;

    /* renamed from: com.theartofdev.edmodo.cropper.f$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/f$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f35071a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[a.values().length];
            f35071a = iArr;
            try {
                iArr[a.TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f35071a[a.TOP_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f35071a[a.BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f35071a[a.BOTTOM_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f35071a[a.LEFT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f35071a[a.TOP.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f35071a[a.RIGHT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f35071a[a.BOTTOM.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f35071a[a.CENTER.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/f$a.class */
    public enum a {
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

    public f(a aVar, e eVar, float f, float f2) {
        float f3;
        float f4;
        float f5;
        PointF pointF = new PointF();
        this.f35069b = pointF;
        this.f35068a = aVar;
        this.f35070d = eVar.b();
        this.e = eVar.c();
        this.f = eVar.d();
        this.g = eVar.e();
        RectF a2 = eVar.a();
        int i = AnonymousClass1.f35071a[aVar.ordinal()];
        float f6 = BitmapDescriptorFactory.HUE_RED;
        switch (i) {
            case 1:
                f6 = a2.left - f;
                f4 = a2.top;
                f3 = f4 - f2;
                pointF.x = f6;
                pointF.y = f3;
                return;
            case 2:
                f6 = a2.right - f;
                f4 = a2.top;
                f3 = f4 - f2;
                pointF.x = f6;
                pointF.y = f3;
                return;
            case 3:
                f6 = a2.left - f;
                f4 = a2.bottom;
                f3 = f4 - f2;
                pointF.x = f6;
                pointF.y = f3;
                return;
            case 4:
                f6 = a2.right - f;
                f4 = a2.bottom;
                f3 = f4 - f2;
                pointF.x = f6;
                pointF.y = f3;
                return;
            case 5:
                f5 = a2.left;
                f6 = f5 - f;
                f3 = BitmapDescriptorFactory.HUE_RED;
                pointF.x = f6;
                pointF.y = f3;
                return;
            case 6:
                f4 = a2.top;
                f6 = 0.0f;
                f3 = f4 - f2;
                pointF.x = f6;
                pointF.y = f3;
                return;
            case 7:
                f5 = a2.right;
                f6 = f5 - f;
                f3 = BitmapDescriptorFactory.HUE_RED;
                pointF.x = f6;
                pointF.y = f3;
                return;
            case 8:
                f4 = a2.bottom;
                f6 = 0.0f;
                f3 = f4 - f2;
                pointF.x = f6;
                pointF.y = f3;
                return;
            case 9:
                f6 = a2.centerX() - f;
                f4 = a2.centerY();
                f3 = f4 - f2;
                pointF.x = f6;
                pointF.y = f3;
                return;
            default:
                f3 = BitmapDescriptorFactory.HUE_RED;
                pointF.x = f6;
                pointF.y = f3;
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float a(float f, float f2, float f3, float f4) {
        return (f3 - f) / (f4 - f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(RectF rectF, float f) {
        rectF.left = rectF.right - (rectF.height() * f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(RectF rectF, RectF rectF2, float f) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(RectF rectF, float f) {
        rectF.top = rectF.bottom - (rectF.width() / f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(RectF rectF, RectF rectF2, float f) {
        rectF.inset((rectF.width() - (rectF.height() * f)) / 2.0f, BitmapDescriptorFactory.HUE_RED);
        if (rectF.left < rectF2.left) {
            rectF.offset(rectF2.left - rectF.left, BitmapDescriptorFactory.HUE_RED);
        }
        if (rectF.right > rectF2.right) {
            rectF.offset(rectF2.right - rectF.right, BitmapDescriptorFactory.HUE_RED);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(RectF rectF, float f) {
        rectF.right = rectF.left + (rectF.height() * f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(RectF rectF, RectF rectF2, float f) {
        rectF.inset(BitmapDescriptorFactory.HUE_RED, (rectF.height() - (rectF.width() / f)) / 2.0f);
        if (rectF.top < rectF2.top) {
            rectF.offset(BitmapDescriptorFactory.HUE_RED, rectF2.top - rectF.top);
        }
        if (rectF.bottom > rectF2.bottom) {
            rectF.offset(BitmapDescriptorFactory.HUE_RED, rectF2.bottom - rectF.bottom);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(RectF rectF, float f) {
        rectF.bottom = rectF.top + (rectF.width() / f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(RectF rectF, float f, RectF rectF2, float f2, float f3, boolean z, boolean z2) {
        float f4 = f;
        if (f < BitmapDescriptorFactory.HUE_RED) {
            f4 = f / 1.05f;
            this.f35069b.x -= f4 / 1.1f;
        }
        if (f4 < rectF2.left) {
            this.f35069b.x -= (f4 - rectF2.left) / 2.0f;
        }
        float f5 = f4;
        if (f4 - rectF2.left < f2) {
            f5 = rectF2.left;
        }
        float f6 = f5;
        if (rectF.right - f5 < this.f35070d) {
            f6 = rectF.right - this.f35070d;
        }
        float f7 = f6;
        if (rectF.right - f6 > this.f) {
            f7 = rectF.right - this.f;
        }
        float f8 = f7;
        if (f7 - rectF2.left < f2) {
            f8 = rectF2.left;
        }
        float f9 = f8;
        if (f3 > BitmapDescriptorFactory.HUE_RED) {
            float f10 = (rectF.right - f8) / f3;
            float f11 = f10;
            if (f10 < this.e) {
                f8 = Math.max(rectF2.left, rectF.right - (this.e * f3));
                f11 = (rectF.right - f8) / f3;
            }
            float f12 = f11;
            if (f11 > this.g) {
                f8 = Math.max(rectF2.left, rectF.right - (this.g * f3));
                f12 = (rectF.right - f8) / f3;
            }
            if (!z || !z2) {
                float f13 = f8;
                float f14 = f12;
                if (z) {
                    f13 = f8;
                    f14 = f12;
                    if (rectF.bottom - f12 < rectF2.top) {
                        f13 = Math.max(rectF2.left, rectF.right - ((rectF.bottom - rectF2.top) * f3));
                        f14 = (rectF.right - f13) / f3;
                    }
                }
                f9 = f13;
                if (z2) {
                    f9 = f13;
                    if (rectF.top + f14 > rectF2.bottom) {
                        f9 = Math.max(f13, Math.max(rectF2.left, rectF.right - ((rectF2.bottom - rectF.top) * f3)));
                    }
                }
            } else {
                f9 = Math.max(f8, Math.max(rectF2.left, rectF.right - (rectF2.height() * f3)));
            }
        }
        rectF.left = f9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(RectF rectF, float f, RectF rectF2, int i, float f2, float f3, boolean z, boolean z2) {
        float f4 = i;
        float f5 = f;
        if (f > f4) {
            f5 = ((f - f4) / 1.05f) + f4;
            this.f35069b.x -= (f5 - f4) / 1.1f;
        }
        if (f5 > rectF2.right) {
            this.f35069b.x -= (f5 - rectF2.right) / 2.0f;
        }
        float f6 = f5;
        if (rectF2.right - f5 < f2) {
            f6 = rectF2.right;
        }
        float f7 = f6;
        if (f6 - rectF.left < this.f35070d) {
            f7 = rectF.left + this.f35070d;
        }
        float f8 = f7;
        if (f7 - rectF.left > this.f) {
            f8 = rectF.left + this.f;
        }
        float f9 = f8;
        if (rectF2.right - f8 < f2) {
            f9 = rectF2.right;
        }
        float f10 = f9;
        if (f3 > BitmapDescriptorFactory.HUE_RED) {
            float f11 = (f9 - rectF.left) / f3;
            float f12 = f11;
            if (f11 < this.e) {
                f9 = Math.min(rectF2.right, rectF.left + (this.e * f3));
                f12 = (f9 - rectF.left) / f3;
            }
            float f13 = f12;
            if (f12 > this.g) {
                f9 = Math.min(rectF2.right, rectF.left + (this.g * f3));
                f13 = (f9 - rectF.left) / f3;
            }
            if (!z || !z2) {
                float f14 = f9;
                float f15 = f13;
                if (z) {
                    f14 = f9;
                    f15 = f13;
                    if (rectF.bottom - f13 < rectF2.top) {
                        f14 = Math.min(rectF2.right, rectF.left + ((rectF.bottom - rectF2.top) * f3));
                        f15 = (f14 - rectF.left) / f3;
                    }
                }
                f10 = f14;
                if (z2) {
                    f10 = f14;
                    if (rectF.top + f15 > rectF2.bottom) {
                        f10 = Math.min(f14, Math.min(rectF2.right, rectF.left + ((rectF2.bottom - rectF.top) * f3)));
                    }
                }
            } else {
                f10 = Math.min(f9, Math.min(rectF2.right, rectF.left + (rectF2.height() * f3)));
            }
        }
        rectF.right = f10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(RectF rectF, float f, RectF rectF2, float f2, float f3, boolean z, boolean z2) {
        float f4 = f;
        if (f < BitmapDescriptorFactory.HUE_RED) {
            f4 = f / 1.05f;
            this.f35069b.y -= f4 / 1.1f;
        }
        if (f4 < rectF2.top) {
            this.f35069b.y -= (f4 - rectF2.top) / 2.0f;
        }
        float f5 = f4;
        if (f4 - rectF2.top < f2) {
            f5 = rectF2.top;
        }
        float f6 = f5;
        if (rectF.bottom - f5 < this.e) {
            f6 = rectF.bottom - this.e;
        }
        float f7 = f6;
        if (rectF.bottom - f6 > this.g) {
            f7 = rectF.bottom - this.g;
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
            if (f10 < this.f35070d) {
                f11 = Math.max(rectF2.top, rectF.bottom - (this.f35070d / f3));
                f12 = (rectF.bottom - f11) * f3;
            }
            float f13 = f12;
            if (f12 > this.f) {
                f11 = Math.max(rectF2.top, rectF.bottom - (this.f / f3));
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(RectF rectF, float f, RectF rectF2, int i, float f2, float f3, boolean z, boolean z2) {
        float f4 = i;
        float f5 = f;
        if (f > f4) {
            f5 = ((f - f4) / 1.05f) + f4;
            this.f35069b.y -= (f5 - f4) / 1.1f;
        }
        if (f5 > rectF2.bottom) {
            this.f35069b.y -= (f5 - rectF2.bottom) / 2.0f;
        }
        float f6 = f5;
        if (rectF2.bottom - f5 < f2) {
            f6 = rectF2.bottom;
        }
        float f7 = f6;
        if (f6 - rectF.top < this.e) {
            f7 = rectF.top + this.e;
        }
        float f8 = f7;
        if (f7 - rectF.top > this.g) {
            f8 = rectF.top + this.g;
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
            if (f11 < this.f35070d) {
                f12 = Math.min(rectF2.bottom, rectF.top + (this.f35070d / f3));
                f13 = (f12 - rectF.top) * f3;
            }
            float f14 = f13;
            if (f13 > this.f) {
                f12 = Math.min(rectF2.bottom, rectF.top + (this.f / f3));
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
