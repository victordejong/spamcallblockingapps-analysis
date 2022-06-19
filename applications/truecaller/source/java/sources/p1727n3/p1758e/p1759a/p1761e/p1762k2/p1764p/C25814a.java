package p1727n3.p1758e.p1759a.p1761e.p1762k2.p1764p;

import android.hardware.camera2.CameraCharacteristics;
import android.util.Range;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25785e;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25954f1;
/* renamed from: n3.e.a.e.k2.p.a */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/p/a.class */
public class C25814a implements AbstractC25954f1 {

    /* renamed from: a */
    public final Range<Integer> f72259a;

    public C25814a(C25785e c25785e) {
        Range<Integer> range;
        Range[] rangeArr = (Range[]) c25785e.m2995a(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
        Range<Integer> range2 = null;
        Range<Integer> range3 = null;
        if (rangeArr != null) {
            if (rangeArr.length != 0) {
                int length = rangeArr.length;
                int i = 0;
                while (true) {
                    range3 = range2;
                    if (i >= length) {
                        break;
                    }
                    Range range4 = rangeArr[i];
                    Range<Integer> range5 = new Range<>(Integer.valueOf(((Integer) range4.getLower()).intValue() >= 1000 ? ((Integer) range4.getLower()).intValue() / 1000 : ((Integer) range4.getLower()).intValue()), Integer.valueOf(((Integer) range4.getUpper()).intValue() >= 1000 ? ((Integer) range4.getUpper()).intValue() / 1000 : ((Integer) range4.getUpper()).intValue()));
                    if (range5.getUpper().intValue() != 30) {
                        range = range2;
                    } else {
                        if (range2 != null) {
                            range = range2;
                            if (range5.getLower().intValue() >= range2.getLower().intValue()) {
                            }
                        }
                        range = range5;
                    }
                    i++;
                    range2 = range;
                }
            } else {
                range3 = null;
            }
        }
        this.f72259a = range3;
    }
}
