package com.airbnb.lottie.utils;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.FloatRange;
import com.airbnb.lottie.animation.content.KeyPathElementContent;
import com.airbnb.lottie.model.CubicCurveData;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.ShapeData;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/utils/MiscUtils.class */
public class MiscUtils {

    /* renamed from: a */
    private static PointF f6399a = new PointF();

    /* renamed from: a */
    public static PointF m15710a(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    /* renamed from: b */
    public static double m15709b(double d, double d2, double d3) {
        return Math.max(d2, Math.min(d3, d));
    }

    /* renamed from: c */
    public static float m15708c(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f3, f));
    }

    /* renamed from: d */
    public static int m15707d(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }

    /* renamed from: e */
    public static boolean m15706e(float f, float f2, float f3) {
        return f >= f2 && f <= f3;
    }

    /* renamed from: f */
    private static int m15705f(int i, int i2) {
        int i3 = i / i2;
        int i4 = i3;
        if (!((i ^ i2) >= 0)) {
            i4 = i3;
            if (i % i2 != 0) {
                i4 = i3 - 1;
            }
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static int m15704g(float f, float f2) {
        return m15703h((int) f, (int) f2);
    }

    /* renamed from: h */
    private static int m15703h(int i, int i2) {
        return i - (i2 * m15705f(i, i2));
    }

    /* renamed from: i */
    public static void m15702i(ShapeData shapeData, Path path) {
        path.reset();
        PointF b = shapeData.m16002b();
        path.moveTo(b.x, b.y);
        f6399a.set(b.x, b.y);
        for (int i = 0; i < shapeData.m16003a().size(); i++) {
            CubicCurveData cubicCurveData = shapeData.m16003a().get(i);
            PointF a = cubicCurveData.m16101a();
            PointF b2 = cubicCurveData.m16100b();
            PointF c = cubicCurveData.m16099c();
            if (!a.equals(f6399a) || !b2.equals(c)) {
                path.cubicTo(a.x, a.y, b2.x, b2.y, c.x, c.y);
            } else {
                path.lineTo(c.x, c.y);
            }
            f6399a.set(c.x, c.y);
        }
        if (shapeData.m16000d()) {
            path.close();
        }
    }

    /* renamed from: j */
    public static double m15701j(double d, double d2, @FloatRange(from = 0.0d, to = 1.0d) double d3) {
        return d + (d3 * (d2 - d));
    }

    /* renamed from: k */
    public static float m15700k(float f, float f2, @FloatRange(from = 0.0d, to = 1.0d) float f3) {
        return f + (f3 * (f2 - f));
    }

    /* renamed from: l */
    public static int m15699l(int i, int i2, @FloatRange(from = 0.0d, to = 1.0d) float f) {
        return (int) (i + (f * (i2 - i)));
    }

    /* renamed from: m */
    public static void m15698m(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2, KeyPathElementContent keyPathElementContent) {
        if (keyPath.m16087c(keyPathElementContent.getName(), i)) {
            list.add(keyPath2.m16089a(keyPathElementContent.getName()).m16081i(keyPathElementContent));
        }
    }
}
