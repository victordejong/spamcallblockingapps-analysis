package androidx.core.graphics;

import android.graphics.Color;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<double[]> f1894a = new ThreadLocal<>();

    private a() {
    }

    private static double a(int i) {
        ThreadLocal<double[]> threadLocal = f1894a;
        double[] dArr = threadLocal.get();
        double[] dArr2 = dArr;
        if (dArr == null) {
            dArr2 = new double[3];
            threadLocal.set(dArr2);
        }
        int red = Color.red(i);
        int green = Color.green(i);
        int blue = Color.blue(i);
        if (dArr2.length == 3) {
            double d2 = red / 255.0d;
            double pow = d2 < 0.04045d ? d2 / 12.92d : Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
            double d3 = green / 255.0d;
            double pow2 = d3 < 0.04045d ? d3 / 12.92d : Math.pow((d3 + 0.055d) / 1.055d, 2.4d);
            double d4 = blue / 255.0d;
            double pow3 = d4 < 0.04045d ? d4 / 12.92d : Math.pow((d4 + 0.055d) / 1.055d, 2.4d);
            dArr2[0] = ((0.4124d * pow) + (0.3576d * pow2) + (0.1805d * pow3)) * 100.0d;
            dArr2[1] = ((0.2126d * pow) + (0.7152d * pow2) + (0.0722d * pow3)) * 100.0d;
            dArr2[2] = ((pow * 0.0193d) + (pow2 * 0.1192d) + (pow3 * 0.9505d)) * 100.0d;
            return dArr2[1] / 100.0d;
        }
        throw new IllegalArgumentException("outXyz must have a length of 3.");
    }

    private static float a(float f, float f2) {
        return f < BitmapDescriptorFactory.HUE_RED ? BitmapDescriptorFactory.HUE_RED : f > f2 ? f2 : f;
    }

    public static int a(int i, int i2) {
        int alpha = Color.alpha(i2);
        int alpha2 = Color.alpha(i);
        int i3 = 255 - (((255 - alpha) * (255 - alpha2)) / 255);
        return Color.argb(i3, a(Color.red(i), alpha2, Color.red(i2), alpha, i3), a(Color.green(i), alpha2, Color.green(i2), alpha, i3), a(Color.blue(i), alpha2, Color.blue(i2), alpha, i3));
    }

    public static int a(int i, int i2, float f) {
        int i3 = 255;
        if (Color.alpha(i2) == 255) {
            double d2 = f;
            if (c(b(i, 255), i2) < d2) {
                return -1;
            }
            int i4 = 0;
            for (int i5 = 0; i5 <= 10 && i3 - i4 > 1; i5++) {
                int i6 = (i4 + i3) / 2;
                if (c(b(i, i6), i2) < d2) {
                    i4 = i6;
                } else {
                    i3 = i6;
                }
            }
            return i3;
        }
        throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i2));
    }

    private static int a(int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            return 0;
        }
        return (((i * 255) * i2) + ((i3 * i4) * (255 - i2))) / (i5 * 255);
    }

    public static int a(float[] fArr) {
        int i;
        int i2;
        int i3 = 0;
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float abs = (1.0f - Math.abs((f3 * 2.0f) - 1.0f)) * f2;
        float f4 = f3 - (0.5f * abs);
        float abs2 = (1.0f - Math.abs(((f / 60.0f) % 2.0f) - 1.0f)) * abs;
        switch (((int) f) / 60) {
            case 0:
                i3 = Math.round((abs + f4) * 255.0f);
                i = Math.round((abs2 + f4) * 255.0f);
                i2 = Math.round(f4 * 255.0f);
                break;
            case 1:
                i3 = Math.round((abs2 + f4) * 255.0f);
                i = Math.round((abs + f4) * 255.0f);
                i2 = Math.round(f4 * 255.0f);
                break;
            case 2:
                i3 = Math.round(f4 * 255.0f);
                i = Math.round((abs + f4) * 255.0f);
                i2 = Math.round((abs2 + f4) * 255.0f);
                break;
            case 3:
                i3 = Math.round(f4 * 255.0f);
                i = Math.round((abs2 + f4) * 255.0f);
                i2 = Math.round((abs + f4) * 255.0f);
                break;
            case 4:
                i3 = Math.round((abs2 + f4) * 255.0f);
                i = Math.round(f4 * 255.0f);
                i2 = Math.round((abs + f4) * 255.0f);
                break;
            case 5:
            case 6:
                i3 = Math.round((abs + f4) * 255.0f);
                i = Math.round(f4 * 255.0f);
                i2 = Math.round((abs2 + f4) * 255.0f);
                break;
            default:
                i2 = 0;
                i = 0;
                break;
        }
        return Color.rgb(b(i3), b(i), b(i2));
    }

    public static void a(int i, int i2, int i3, float[] fArr) {
        float f;
        float f2;
        float f3 = i / 255.0f;
        float f4 = i2 / 255.0f;
        float f5 = i3 / 255.0f;
        float max = Math.max(f3, Math.max(f4, f5));
        float min = Math.min(f3, Math.min(f4, f5));
        float f6 = max - min;
        float f7 = (max + min) / 2.0f;
        if (max == min) {
            f = BitmapDescriptorFactory.HUE_RED;
            f2 = BitmapDescriptorFactory.HUE_RED;
        } else {
            f = max == f3 ? ((f4 - f5) / f6) % 6.0f : max == f4 ? ((f5 - f3) / f6) + 2.0f : 4.0f + ((f3 - f4) / f6);
            f2 = f6 / (1.0f - Math.abs((2.0f * f7) - 1.0f));
        }
        float f8 = (f * 60.0f) % 360.0f;
        float f9 = f8;
        if (f8 < BitmapDescriptorFactory.HUE_RED) {
            f9 = f8 + 360.0f;
        }
        fArr[0] = a(f9, 360.0f);
        fArr[1] = a(f2, 1.0f);
        fArr[2] = a(f7, 1.0f);
    }

    public static void a(int i, float[] fArr) {
        a(Color.red(i), Color.green(i), Color.blue(i), fArr);
    }

    private static int b(int i) {
        if (i < 0) {
            return 0;
        }
        if (i > 255) {
            return 255;
        }
        return i;
    }

    public static int b(int i, int i2) {
        if (i2 >= 0 && i2 <= 255) {
            return (i & 16777215) | (i2 << 24);
        }
        throw new IllegalArgumentException("alpha must be between 0 and 255.");
    }

    private static double c(int i, int i2) {
        if (Color.alpha(i2) == 255) {
            int i3 = i;
            if (Color.alpha(i) < 255) {
                i3 = a(i, i2);
            }
            double a2 = a(i3) + 0.05d;
            double a3 = a(i2) + 0.05d;
            return Math.max(a2, a3) / Math.min(a2, a3);
        }
        throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i2));
    }
}
