package scala.util;

import java.util.Arrays;
import java.util.Objects;
import scala.Function1;
import scala.Function2;
import scala.MatchError;
import scala.Predef$;
import scala.collection.Seq;
import scala.math.Ordering;
import scala.math.Ordering$;
import scala.math.Ordering$$anon$9;
import scala.math.Ordering$Boolean$;
import scala.math.Ordering$Byte$;
import scala.math.Ordering$Char$;
import scala.math.Ordering$Int$;
import scala.math.Ordering$Long$;
import scala.math.Ordering$Short$;
import scala.reflect.ClassTag;
import scala.reflect.ClassTag$;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Null$;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/util/Sorting$.class */
public final class Sorting$ {
    public static final Sorting$ MODULE$ = null;
    private final int mergeThreshold;
    private final int qsortThreshold;

    static {
        new Sorting$();
    }

    private Sorting$() {
        MODULE$ = this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x007d, code lost:
        if (r11.compare(scala.runtime.ScalaRunTime$.MODULE$.array_apply(r8, r10), scala.runtime.ScalaRunTime$.MODULE$.array_apply(r8, r13)) < 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00bb, code lost:
        if (r11.compare(scala.runtime.ScalaRunTime$.MODULE$.array_apply(r8, r10), scala.runtime.ScalaRunTime$.MODULE$.array_apply(r8, r13)) <= 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00c1, code lost:
        r10 = r13;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0293 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0283 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void inner$1(java.lang.Object r8, int r9, int r10, scala.math.Ordering r11) {
        /*
            Method dump skipped, instructions count: 677
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.util.Sorting$.inner$1(java.lang.Object, int, int, scala.math.Ordering):void");
    }

    private void insertionSort$mBc$sp(byte[] bArr, int i, int i2, Ordering<Object> ordering) {
        int i3 = i2 - i;
        if (i3 < 2) {
            return;
        }
        int i4 = i + 1;
        int i5 = 2;
        if (ordering.compare(BoxesRunTime.boxToByte(bArr[i]), BoxesRunTime.boxToByte(bArr[i4])) > 0) {
            byte b = bArr[i];
            bArr[i] = bArr[i4];
            bArr[i4] = b;
            i5 = 2;
        }
        while (i5 < i3) {
            int i6 = i + i5;
            byte b2 = bArr[i6];
            int i7 = i6 - 1;
            if (ordering.compare(BoxesRunTime.boxToByte(b2), BoxesRunTime.boxToByte(bArr[i7])) < 0) {
                int i8 = i;
                while (i7 - i8 > 1) {
                    int i9 = (i8 + i7) >>> 1;
                    if (ordering.compare(BoxesRunTime.boxToByte(b2), BoxesRunTime.boxToByte(bArr[i9])) < 0) {
                        i7 = i9;
                    } else {
                        i8 = i9;
                    }
                }
                int i10 = 1;
                if (ordering.compare(BoxesRunTime.boxToByte(b2), BoxesRunTime.boxToByte(bArr[i8])) < 0) {
                    i10 = 0;
                }
                int i11 = i8 + i10;
                int i12 = i6;
                while (true) {
                    int i13 = i12;
                    if (i13 <= i11) {
                        break;
                    }
                    int i14 = i13 - 1;
                    bArr[i13] = bArr[i14];
                    i12 = i14;
                }
                bArr[i11] = b2;
            }
            i5++;
        }
    }

    private void insertionSort$mCc$sp(char[] cArr, int i, int i2, Ordering<Object> ordering) {
        int i3 = i2 - i;
        if (i3 < 2) {
            return;
        }
        int i4 = i + 1;
        int i5 = 2;
        if (ordering.compare(BoxesRunTime.boxToCharacter(cArr[i]), BoxesRunTime.boxToCharacter(cArr[i4])) > 0) {
            char c = cArr[i];
            cArr[i] = cArr[i4];
            cArr[i4] = c;
            i5 = 2;
        }
        while (i5 < i3) {
            int i6 = i + i5;
            char c2 = cArr[i6];
            int i7 = i6 - 1;
            if (ordering.compare(BoxesRunTime.boxToCharacter(c2), BoxesRunTime.boxToCharacter(cArr[i7])) < 0) {
                int i8 = i;
                while (i7 - i8 > 1) {
                    int i9 = (i8 + i7) >>> 1;
                    if (ordering.compare(BoxesRunTime.boxToCharacter(c2), BoxesRunTime.boxToCharacter(cArr[i9])) < 0) {
                        i7 = i9;
                    } else {
                        i8 = i9;
                    }
                }
                int i10 = 1;
                if (ordering.compare(BoxesRunTime.boxToCharacter(c2), BoxesRunTime.boxToCharacter(cArr[i8])) < 0) {
                    i10 = 0;
                }
                int i11 = i8 + i10;
                int i12 = i6;
                while (true) {
                    int i13 = i12;
                    if (i13 <= i11) {
                        break;
                    }
                    int i14 = i13 - 1;
                    cArr[i13] = cArr[i14];
                    i12 = i14;
                }
                cArr[i11] = c2;
            }
            i5++;
        }
    }

    private void insertionSort$mDc$sp(double[] dArr, int i, int i2, Ordering<Object> ordering) {
        int i3 = i2 - i;
        if (i3 < 2) {
            return;
        }
        int i4 = i + 1;
        int i5 = 2;
        if (ordering.compare(BoxesRunTime.boxToDouble(dArr[i]), BoxesRunTime.boxToDouble(dArr[i4])) > 0) {
            double d = dArr[i];
            dArr[i] = dArr[i4];
            dArr[i4] = d;
            i5 = 2;
        }
        while (i5 < i3) {
            int i6 = i + i5;
            double d2 = dArr[i6];
            int i7 = i6 - 1;
            if (ordering.compare(BoxesRunTime.boxToDouble(d2), BoxesRunTime.boxToDouble(dArr[i7])) < 0) {
                int i8 = i;
                while (i7 - i8 > 1) {
                    int i9 = (i8 + i7) >>> 1;
                    if (ordering.compare(BoxesRunTime.boxToDouble(d2), BoxesRunTime.boxToDouble(dArr[i9])) < 0) {
                        i7 = i9;
                    } else {
                        i8 = i9;
                    }
                }
                int i10 = 1;
                if (ordering.compare(BoxesRunTime.boxToDouble(d2), BoxesRunTime.boxToDouble(dArr[i8])) < 0) {
                    i10 = 0;
                }
                int i11 = i8 + i10;
                int i12 = i6;
                while (true) {
                    int i13 = i12;
                    if (i13 <= i11) {
                        break;
                    }
                    int i14 = i13 - 1;
                    dArr[i13] = dArr[i14];
                    i12 = i14;
                }
                dArr[i11] = d2;
            }
            i5++;
        }
    }

    private void insertionSort$mFc$sp(float[] fArr, int i, int i2, Ordering<Object> ordering) {
        int i3 = i2 - i;
        if (i3 < 2) {
            return;
        }
        int i4 = i + 1;
        int i5 = 2;
        if (ordering.compare(BoxesRunTime.boxToFloat(fArr[i]), BoxesRunTime.boxToFloat(fArr[i4])) > 0) {
            float f = fArr[i];
            fArr[i] = fArr[i4];
            fArr[i4] = f;
            i5 = 2;
        }
        while (i5 < i3) {
            int i6 = i + i5;
            float f2 = fArr[i6];
            int i7 = i6 - 1;
            if (ordering.compare(BoxesRunTime.boxToFloat(f2), BoxesRunTime.boxToFloat(fArr[i7])) < 0) {
                int i8 = i;
                while (i7 - i8 > 1) {
                    int i9 = (i8 + i7) >>> 1;
                    if (ordering.compare(BoxesRunTime.boxToFloat(f2), BoxesRunTime.boxToFloat(fArr[i9])) < 0) {
                        i7 = i9;
                    } else {
                        i8 = i9;
                    }
                }
                int i10 = 1;
                if (ordering.compare(BoxesRunTime.boxToFloat(f2), BoxesRunTime.boxToFloat(fArr[i8])) < 0) {
                    i10 = 0;
                }
                int i11 = i8 + i10;
                int i12 = i6;
                while (true) {
                    int i13 = i12;
                    if (i13 <= i11) {
                        break;
                    }
                    int i14 = i13 - 1;
                    fArr[i13] = fArr[i14];
                    i12 = i14;
                }
                fArr[i11] = f2;
            }
            i5++;
        }
    }

    private void insertionSort$mIc$sp(int[] iArr, int i, int i2, Ordering<Object> ordering) {
        int i3 = i2 - i;
        if (i3 < 2) {
            return;
        }
        int i4 = i + 1;
        int i5 = 2;
        if (ordering.compare(BoxesRunTime.boxToInteger(iArr[i]), BoxesRunTime.boxToInteger(iArr[i4])) > 0) {
            int i6 = iArr[i];
            iArr[i] = iArr[i4];
            iArr[i4] = i6;
            i5 = 2;
        }
        while (i5 < i3) {
            int i7 = i + i5;
            int i8 = iArr[i7];
            int i9 = i7 - 1;
            if (ordering.compare(BoxesRunTime.boxToInteger(i8), BoxesRunTime.boxToInteger(iArr[i9])) < 0) {
                int i10 = i;
                while (i9 - i10 > 1) {
                    int i11 = (i10 + i9) >>> 1;
                    if (ordering.compare(BoxesRunTime.boxToInteger(i8), BoxesRunTime.boxToInteger(iArr[i11])) < 0) {
                        i9 = i11;
                    } else {
                        i10 = i11;
                    }
                }
                int i12 = 1;
                if (ordering.compare(BoxesRunTime.boxToInteger(i8), BoxesRunTime.boxToInteger(iArr[i10])) < 0) {
                    i12 = 0;
                }
                int i13 = i10 + i12;
                int i14 = i7;
                while (true) {
                    int i15 = i14;
                    if (i15 <= i13) {
                        break;
                    }
                    int i16 = i15 - 1;
                    iArr[i15] = iArr[i16];
                    i14 = i16;
                }
                iArr[i13] = i8;
            }
            i5++;
        }
    }

    private void insertionSort$mJc$sp(long[] jArr, int i, int i2, Ordering<Object> ordering) {
        int i3 = i2 - i;
        if (i3 < 2) {
            return;
        }
        int i4 = i + 1;
        int i5 = 2;
        if (ordering.compare(BoxesRunTime.boxToLong(jArr[i]), BoxesRunTime.boxToLong(jArr[i4])) > 0) {
            long j = jArr[i];
            jArr[i] = jArr[i4];
            jArr[i4] = j;
            i5 = 2;
        }
        while (i5 < i3) {
            int i6 = i + i5;
            long j2 = jArr[i6];
            int i7 = i6 - 1;
            if (ordering.compare(BoxesRunTime.boxToLong(j2), BoxesRunTime.boxToLong(jArr[i7])) < 0) {
                int i8 = i;
                while (i7 - i8 > 1) {
                    int i9 = (i8 + i7) >>> 1;
                    if (ordering.compare(BoxesRunTime.boxToLong(j2), BoxesRunTime.boxToLong(jArr[i9])) < 0) {
                        i7 = i9;
                    } else {
                        i8 = i9;
                    }
                }
                int i10 = 1;
                if (ordering.compare(BoxesRunTime.boxToLong(j2), BoxesRunTime.boxToLong(jArr[i8])) < 0) {
                    i10 = 0;
                }
                int i11 = i8 + i10;
                int i12 = i6;
                while (true) {
                    int i13 = i12;
                    if (i13 <= i11) {
                        break;
                    }
                    int i14 = i13 - 1;
                    jArr[i13] = jArr[i14];
                    i12 = i14;
                }
                jArr[i11] = j2;
            }
            i5++;
        }
    }

    private void insertionSort$mSc$sp(short[] sArr, int i, int i2, Ordering<Object> ordering) {
        int i3 = i2 - i;
        if (i3 < 2) {
            return;
        }
        int i4 = i + 1;
        int i5 = 2;
        if (ordering.compare(BoxesRunTime.boxToShort(sArr[i]), BoxesRunTime.boxToShort(sArr[i4])) > 0) {
            short s = sArr[i];
            sArr[i] = sArr[i4];
            sArr[i4] = s;
            i5 = 2;
        }
        while (i5 < i3) {
            int i6 = i + i5;
            short s2 = sArr[i6];
            int i7 = i6 - 1;
            if (ordering.compare(BoxesRunTime.boxToShort(s2), BoxesRunTime.boxToShort(sArr[i7])) < 0) {
                int i8 = i;
                while (i7 - i8 > 1) {
                    int i9 = (i8 + i7) >>> 1;
                    if (ordering.compare(BoxesRunTime.boxToShort(s2), BoxesRunTime.boxToShort(sArr[i9])) < 0) {
                        i7 = i9;
                    } else {
                        i8 = i9;
                    }
                }
                int i10 = 1;
                if (ordering.compare(BoxesRunTime.boxToShort(s2), BoxesRunTime.boxToShort(sArr[i8])) < 0) {
                    i10 = 0;
                }
                int i11 = i8 + i10;
                int i12 = i6;
                while (true) {
                    int i13 = i12;
                    if (i13 <= i11) {
                        break;
                    }
                    int i14 = i13 - 1;
                    sArr[i13] = sArr[i14];
                    i12 = i14;
                }
                sArr[i11] = s2;
            }
            i5++;
        }
    }

    private void insertionSort$mVc$sp(BoxedUnit[] boxedUnitArr, int i, int i2, Ordering<BoxedUnit> ordering) {
        int i3 = i2 - i;
        if (i3 < 2) {
            return;
        }
        int i4 = i + 1;
        int i5 = 2;
        if (ordering.compare(boxedUnitArr[i], boxedUnitArr[i4]) > 0) {
            BoxedUnit boxedUnit = boxedUnitArr[i];
            boxedUnitArr[i] = boxedUnitArr[i4];
            boxedUnitArr[i4] = boxedUnit;
            i5 = 2;
        }
        while (i5 < i3) {
            int i6 = i + i5;
            BoxedUnit boxedUnit2 = boxedUnitArr[i6];
            int i7 = i6 - 1;
            if (ordering.compare(boxedUnit2, boxedUnitArr[i7]) < 0) {
                int i8 = i;
                while (i7 - i8 > 1) {
                    int i9 = (i8 + i7) >>> 1;
                    if (ordering.compare(boxedUnit2, boxedUnitArr[i9]) < 0) {
                        i7 = i9;
                    } else {
                        i8 = i9;
                    }
                }
                int i10 = 1;
                if (ordering.compare(boxedUnit2, boxedUnitArr[i8]) < 0) {
                    i10 = 0;
                }
                int i11 = i8 + i10;
                int i12 = i6;
                while (true) {
                    int i13 = i12;
                    if (i13 <= i11) {
                        break;
                    }
                    int i14 = i13 - 1;
                    boxedUnitArr[i13] = boxedUnitArr[i14];
                    i12 = i14;
                }
                boxedUnitArr[i11] = boxedUnit2;
            }
            i5++;
        }
    }

    private void insertionSort$mZc$sp(boolean[] zArr, int i, int i2, Ordering<Object> ordering) {
        int i3 = i2 - i;
        if (i3 < 2) {
            return;
        }
        int i4 = i + 1;
        int i5 = 2;
        if (ordering.compare(BoxesRunTime.boxToBoolean(zArr[i]), BoxesRunTime.boxToBoolean(zArr[i4])) > 0) {
            boolean z = zArr[i];
            zArr[i] = zArr[i4];
            zArr[i4] = z;
            i5 = 2;
        }
        while (i5 < i3) {
            int i6 = i + i5;
            boolean z2 = zArr[i6];
            int i7 = i6 - 1;
            if (ordering.compare(BoxesRunTime.boxToBoolean(z2), BoxesRunTime.boxToBoolean(zArr[i7])) < 0) {
                int i8 = i;
                while (i7 - i8 > 1) {
                    int i9 = (i8 + i7) >>> 1;
                    if (ordering.compare(BoxesRunTime.boxToBoolean(z2), BoxesRunTime.boxToBoolean(zArr[i9])) < 0) {
                        i7 = i9;
                    } else {
                        i8 = i9;
                    }
                }
                int i10 = 1;
                if (ordering.compare(BoxesRunTime.boxToBoolean(z2), BoxesRunTime.boxToBoolean(zArr[i8])) < 0) {
                    i10 = 0;
                }
                int i11 = i8 + i10;
                int i12 = i6;
                while (true) {
                    int i13 = i12;
                    if (i13 <= i11) {
                        break;
                    }
                    int i14 = i13 - 1;
                    zArr[i13] = zArr[i14];
                    i12 = i14;
                }
                zArr[i11] = z2;
            }
            i5++;
        }
    }

    private void mergeSort$mVc$sp(BoxedUnit[] boxedUnitArr, int i, int i2, Ordering<BoxedUnit> ordering, BoxedUnit[] boxedUnitArr2, ClassTag<BoxedUnit> classTag) {
        if (i2 - i < 32) {
            scala$util$Sorting$$insertionSort(boxedUnitArr, i, i2, ordering);
            return;
        }
        int i3 = (i + i2) >>> 1;
        BoxedUnit[] boxedUnitArr3 = boxedUnitArr2;
        if (boxedUnitArr2 == null) {
            boxedUnitArr3 = (BoxedUnit[]) classTag.newArray(i3 - i);
        }
        scala$util$Sorting$$mergeSort(boxedUnitArr, i, i3, ordering, boxedUnitArr3, classTag);
        scala$util$Sorting$$mergeSort(boxedUnitArr, i3, i2, ordering, boxedUnitArr3, classTag);
        scala$util$Sorting$$mergeSorted(boxedUnitArr, i, i3, i2, ordering, boxedUnitArr3);
    }

    private void mergeSorted$mBc$sp(byte[] bArr, int i, int i2, int i3, Ordering<Object> ordering, byte[] bArr2) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (ordering.compare(BoxesRunTime.boxToByte(bArr[i2 - 1]), BoxesRunTime.boxToByte(bArr[i2])) > 0) {
            int i9 = i2 - i;
            int i10 = i;
            int i11 = 0;
            while (true) {
                i4 = 0;
                i5 = i10;
                i6 = i;
                if (i10 < i2) {
                    bArr2[i11] = bArr[i10];
                    i10++;
                    i11++;
                }
            }
            while (true) {
                i7 = i4;
                i8 = i6;
                if (i5 >= i3) {
                    break;
                }
                i7 = i4;
                i8 = i6;
                if (i4 >= i9) {
                    break;
                }
                if (ordering.compare(BoxesRunTime.boxToByte(bArr[i5]), BoxesRunTime.boxToByte(bArr2[i4])) < 0) {
                    bArr[i6] = bArr[i5];
                    i5++;
                } else {
                    bArr[i6] = bArr2[i4];
                    i4++;
                }
                i6++;
            }
            while (i7 < i9) {
                bArr[i8] = bArr2[i7];
                i7++;
                i8++;
            }
        }
    }

    private void mergeSorted$mCc$sp(char[] cArr, int i, int i2, int i3, Ordering<Object> ordering, char[] cArr2) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (ordering.compare(BoxesRunTime.boxToCharacter(cArr[i2 - 1]), BoxesRunTime.boxToCharacter(cArr[i2])) > 0) {
            int i9 = i2 - i;
            int i10 = i;
            int i11 = 0;
            while (true) {
                i4 = 0;
                i5 = i10;
                i6 = i;
                if (i10 < i2) {
                    cArr2[i11] = cArr[i10];
                    i10++;
                    i11++;
                }
            }
            while (true) {
                i7 = i4;
                i8 = i6;
                if (i5 >= i3) {
                    break;
                }
                i7 = i4;
                i8 = i6;
                if (i4 >= i9) {
                    break;
                }
                if (ordering.compare(BoxesRunTime.boxToCharacter(cArr[i5]), BoxesRunTime.boxToCharacter(cArr2[i4])) < 0) {
                    cArr[i6] = cArr[i5];
                    i5++;
                } else {
                    cArr[i6] = cArr2[i4];
                    i4++;
                }
                i6++;
            }
            while (i7 < i9) {
                cArr[i8] = cArr2[i7];
                i7++;
                i8++;
            }
        }
    }

    private void mergeSorted$mDc$sp(double[] dArr, int i, int i2, int i3, Ordering<Object> ordering, double[] dArr2) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (ordering.compare(BoxesRunTime.boxToDouble(dArr[i2 - 1]), BoxesRunTime.boxToDouble(dArr[i2])) > 0) {
            int i9 = i2 - i;
            int i10 = i;
            int i11 = 0;
            while (true) {
                i4 = 0;
                i5 = i10;
                i6 = i;
                if (i10 < i2) {
                    dArr2[i11] = dArr[i10];
                    i10++;
                    i11++;
                }
            }
            while (true) {
                i7 = i4;
                i8 = i6;
                if (i5 >= i3) {
                    break;
                }
                i7 = i4;
                i8 = i6;
                if (i4 >= i9) {
                    break;
                }
                if (ordering.compare(BoxesRunTime.boxToDouble(dArr[i5]), BoxesRunTime.boxToDouble(dArr2[i4])) < 0) {
                    dArr[i6] = dArr[i5];
                    i5++;
                } else {
                    dArr[i6] = dArr2[i4];
                    i4++;
                }
                i6++;
            }
            while (i7 < i9) {
                dArr[i8] = dArr2[i7];
                i7++;
                i8++;
            }
        }
    }

    private void mergeSorted$mFc$sp(float[] fArr, int i, int i2, int i3, Ordering<Object> ordering, float[] fArr2) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (ordering.compare(BoxesRunTime.boxToFloat(fArr[i2 - 1]), BoxesRunTime.boxToFloat(fArr[i2])) > 0) {
            int i9 = i2 - i;
            int i10 = i;
            int i11 = 0;
            while (true) {
                i4 = 0;
                i5 = i10;
                i6 = i;
                if (i10 < i2) {
                    fArr2[i11] = fArr[i10];
                    i10++;
                    i11++;
                }
            }
            while (true) {
                i7 = i4;
                i8 = i6;
                if (i5 >= i3) {
                    break;
                }
                i7 = i4;
                i8 = i6;
                if (i4 >= i9) {
                    break;
                }
                if (ordering.compare(BoxesRunTime.boxToFloat(fArr[i5]), BoxesRunTime.boxToFloat(fArr2[i4])) < 0) {
                    fArr[i6] = fArr[i5];
                    i5++;
                } else {
                    fArr[i6] = fArr2[i4];
                    i4++;
                }
                i6++;
            }
            while (i7 < i9) {
                fArr[i8] = fArr2[i7];
                i7++;
                i8++;
            }
        }
    }

    private void mergeSorted$mIc$sp(int[] iArr, int i, int i2, int i3, Ordering<Object> ordering, int[] iArr2) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (ordering.compare(BoxesRunTime.boxToInteger(iArr[i2 - 1]), BoxesRunTime.boxToInteger(iArr[i2])) > 0) {
            int i9 = i2 - i;
            int i10 = i;
            int i11 = 0;
            while (true) {
                i4 = 0;
                i5 = i10;
                i6 = i;
                if (i10 < i2) {
                    iArr2[i11] = iArr[i10];
                    i10++;
                    i11++;
                }
            }
            while (true) {
                i7 = i4;
                i8 = i6;
                if (i5 >= i3) {
                    break;
                }
                i7 = i4;
                i8 = i6;
                if (i4 >= i9) {
                    break;
                }
                if (ordering.compare(BoxesRunTime.boxToInteger(iArr[i5]), BoxesRunTime.boxToInteger(iArr2[i4])) < 0) {
                    iArr[i6] = iArr[i5];
                    i5++;
                } else {
                    iArr[i6] = iArr2[i4];
                    i4++;
                }
                i6++;
            }
            while (i7 < i9) {
                iArr[i8] = iArr2[i7];
                i7++;
                i8++;
            }
        }
    }

    private void mergeSorted$mJc$sp(long[] jArr, int i, int i2, int i3, Ordering<Object> ordering, long[] jArr2) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (ordering.compare(BoxesRunTime.boxToLong(jArr[i2 - 1]), BoxesRunTime.boxToLong(jArr[i2])) > 0) {
            int i9 = i2 - i;
            int i10 = i;
            int i11 = 0;
            while (true) {
                i4 = 0;
                i5 = i10;
                i6 = i;
                if (i10 < i2) {
                    jArr2[i11] = jArr[i10];
                    i10++;
                    i11++;
                }
            }
            while (true) {
                i7 = i4;
                i8 = i6;
                if (i5 >= i3) {
                    break;
                }
                i7 = i4;
                i8 = i6;
                if (i4 >= i9) {
                    break;
                }
                if (ordering.compare(BoxesRunTime.boxToLong(jArr[i5]), BoxesRunTime.boxToLong(jArr2[i4])) < 0) {
                    jArr[i6] = jArr[i5];
                    i5++;
                } else {
                    jArr[i6] = jArr2[i4];
                    i4++;
                }
                i6++;
            }
            while (i7 < i9) {
                jArr[i8] = jArr2[i7];
                i7++;
                i8++;
            }
        }
    }

    private void mergeSorted$mSc$sp(short[] sArr, int i, int i2, int i3, Ordering<Object> ordering, short[] sArr2) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (ordering.compare(BoxesRunTime.boxToShort(sArr[i2 - 1]), BoxesRunTime.boxToShort(sArr[i2])) > 0) {
            int i9 = i2 - i;
            int i10 = i;
            int i11 = 0;
            while (true) {
                i4 = 0;
                i5 = i10;
                i6 = i;
                if (i10 < i2) {
                    sArr2[i11] = sArr[i10];
                    i10++;
                    i11++;
                }
            }
            while (true) {
                i7 = i4;
                i8 = i6;
                if (i5 >= i3) {
                    break;
                }
                i7 = i4;
                i8 = i6;
                if (i4 >= i9) {
                    break;
                }
                if (ordering.compare(BoxesRunTime.boxToShort(sArr[i5]), BoxesRunTime.boxToShort(sArr2[i4])) < 0) {
                    sArr[i6] = sArr[i5];
                    i5++;
                } else {
                    sArr[i6] = sArr2[i4];
                    i4++;
                }
                i6++;
            }
            while (i7 < i9) {
                sArr[i8] = sArr2[i7];
                i7++;
                i8++;
            }
        }
    }

    private void mergeSorted$mVc$sp(BoxedUnit[] boxedUnitArr, int i, int i2, int i3, Ordering<BoxedUnit> ordering, BoxedUnit[] boxedUnitArr2) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (ordering.compare(boxedUnitArr[i2 - 1], boxedUnitArr[i2]) > 0) {
            int i9 = i2 - i;
            int i10 = i;
            int i11 = 0;
            while (true) {
                i4 = 0;
                i5 = i10;
                i6 = i;
                if (i10 < i2) {
                    boxedUnitArr2[i11] = boxedUnitArr[i10];
                    i10++;
                    i11++;
                }
            }
            while (true) {
                i7 = i4;
                i8 = i6;
                if (i5 >= i3) {
                    break;
                }
                i7 = i4;
                i8 = i6;
                if (i4 >= i9) {
                    break;
                }
                if (ordering.compare(boxedUnitArr[i5], boxedUnitArr2[i4]) < 0) {
                    boxedUnitArr[i6] = boxedUnitArr[i5];
                    i5++;
                } else {
                    boxedUnitArr[i6] = boxedUnitArr2[i4];
                    i4++;
                }
                i6++;
            }
            while (i7 < i9) {
                boxedUnitArr[i8] = boxedUnitArr2[i7];
                i7++;
                i8++;
            }
        }
    }

    private void mergeSorted$mZc$sp(boolean[] zArr, int i, int i2, int i3, Ordering<Object> ordering, boolean[] zArr2) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (ordering.compare(BoxesRunTime.boxToBoolean(zArr[i2 - 1]), BoxesRunTime.boxToBoolean(zArr[i2])) > 0) {
            int i9 = i2 - i;
            int i10 = i;
            int i11 = 0;
            while (true) {
                i4 = 0;
                i5 = i10;
                i6 = i;
                if (i10 < i2) {
                    zArr2[i11] = zArr[i10];
                    i10++;
                    i11++;
                }
            }
            while (true) {
                i7 = i4;
                i8 = i6;
                if (i5 >= i3) {
                    break;
                }
                i7 = i4;
                i8 = i6;
                if (i4 >= i9) {
                    break;
                }
                if (ordering.compare(BoxesRunTime.boxToBoolean(zArr[i5]), BoxesRunTime.boxToBoolean(zArr2[i4])) < 0) {
                    zArr[i6] = zArr[i5];
                    i5++;
                } else {
                    zArr[i6] = zArr2[i4];
                    i4++;
                }
                i6++;
            }
            while (i7 < i9) {
                zArr[i8] = zArr2[i7];
                i7++;
                i8++;
            }
        }
    }

    private final int mergeThreshold() {
        return 32;
    }

    private final int qsortThreshold() {
        return 16;
    }

    private <T> void sort(Object obj, Ordering<T> ordering) {
        if (obj instanceof Object[]) {
            if (ScalaRunTime$.MODULE$.array_length(obj) > 1) {
                Objects.requireNonNull(ordering, "Ordering");
            }
            Arrays.sort((Object[]) obj, ordering);
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        } else if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            if (ordering == Ordering$Int$.MODULE$) {
                Arrays.sort(iArr);
            } else {
                int array_length = ScalaRunTime$.MODULE$.array_length(iArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mIc$sp(iArr, 0, array_length, ordering, null, ClassTag$.MODULE$.Int());
            }
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int array_length2 = ScalaRunTime$.MODULE$.array_length(dArr);
            scala$util$Sorting$$mergeSort$default$5();
            scala$util$Sorting$$mergeSort$mDc$sp(dArr, 0, array_length2, ordering, null, ClassTag$.MODULE$.Double());
            BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            if (ordering == Ordering$Long$.MODULE$) {
                Arrays.sort(jArr);
            } else {
                int array_length3 = ScalaRunTime$.MODULE$.array_length(jArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mJc$sp(jArr, 0, array_length3, ordering, null, ClassTag$.MODULE$.Long());
            }
            BoxedUnit boxedUnit4 = BoxedUnit.UNIT;
        } else if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            int array_length4 = ScalaRunTime$.MODULE$.array_length(fArr);
            scala$util$Sorting$$mergeSort$default$5();
            scala$util$Sorting$$mergeSort$mFc$sp(fArr, 0, array_length4, ordering, null, ClassTag$.MODULE$.Float());
            BoxedUnit boxedUnit5 = BoxedUnit.UNIT;
        } else if (obj instanceof char[]) {
            char[] cArr = (char[]) obj;
            if (ordering == Ordering$Char$.MODULE$) {
                Arrays.sort(cArr);
            } else {
                int array_length5 = ScalaRunTime$.MODULE$.array_length(cArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mCc$sp(cArr, 0, array_length5, ordering, null, ClassTag$.MODULE$.Char());
            }
            BoxedUnit boxedUnit6 = BoxedUnit.UNIT;
        } else if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (ordering == Ordering$Byte$.MODULE$) {
                Arrays.sort(bArr);
            } else {
                int array_length6 = ScalaRunTime$.MODULE$.array_length(bArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mBc$sp(bArr, 0, array_length6, ordering, null, ClassTag$.MODULE$.Byte());
            }
            BoxedUnit boxedUnit7 = BoxedUnit.UNIT;
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            if (ordering == Ordering$Short$.MODULE$) {
                Arrays.sort(sArr);
            } else {
                int array_length7 = ScalaRunTime$.MODULE$.array_length(sArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mSc$sp(sArr, 0, array_length7, ordering, null, ClassTag$.MODULE$.Short());
            }
            BoxedUnit boxedUnit8 = BoxedUnit.UNIT;
        } else if (!(obj instanceof boolean[])) {
            Objects.requireNonNull(obj);
            throw new MatchError(obj);
        } else {
            boolean[] zArr = (boolean[]) obj;
            if (ordering == Ordering$Boolean$.MODULE$) {
                scala$util$Sorting$$booleanSort(zArr);
            } else {
                int array_length8 = ScalaRunTime$.MODULE$.array_length(zArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mZc$sp(zArr, 0, array_length8, ordering, null, ClassTag$.MODULE$.Boolean());
            }
            BoxedUnit boxedUnit9 = BoxedUnit.UNIT;
        }
    }

    public <K> void quickSort(Object obj, Ordering<K> ordering) {
        int array_length = ScalaRunTime$.MODULE$.array_length(obj);
        Predef$ predef$ = Predef$.MODULE$;
        inner$1(obj, 0, array_length, ordering);
    }

    public void quickSort(double[] dArr) {
        Arrays.sort(dArr);
    }

    public void quickSort(float[] fArr) {
        Arrays.sort(fArr);
    }

    public void quickSort(int[] iArr) {
        Arrays.sort(iArr);
    }

    public void scala$util$Sorting$$booleanSort(boolean[] zArr) {
        int i;
        int i2;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= zArr.length) {
                break;
            }
            int i5 = i;
            if (!zArr[i3]) {
                i5 = i + 1;
            }
            i3++;
            i4 = i5;
        }
        int i6 = 0;
        while (true) {
            if (i6 < i) {
                zArr[i6] = false;
                i6++;
            }
        }
        for (i2 = i6; i2 < zArr.length; i2++) {
            zArr[i2] = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> void scala$util$Sorting$$insertionSort(Object obj, int i, int i2, Ordering<T> ordering) {
        int i3 = i2 - i;
        if (i3 < 2) {
            return;
        }
        int i4 = i + 1;
        int i5 = 2;
        if (ordering.compare(ScalaRunTime$.MODULE$.array_apply(obj, i), ScalaRunTime$.MODULE$.array_apply(obj, i4)) > 0) {
            Object array_apply = ScalaRunTime$.MODULE$.array_apply(obj, i);
            ScalaRunTime$.MODULE$.array_update(obj, i, ScalaRunTime$.MODULE$.array_apply(obj, i4));
            ScalaRunTime$.MODULE$.array_update(obj, i4, array_apply);
            i5 = 2;
        }
        while (i5 < i3) {
            int i6 = i + i5;
            Object array_apply2 = ScalaRunTime$.MODULE$.array_apply(obj, i6);
            int i7 = i6 - 1;
            if (ordering.compare(array_apply2, ScalaRunTime$.MODULE$.array_apply(obj, i7)) < 0) {
                int i8 = i;
                while (i7 - i8 > 1) {
                    int i9 = (i8 + i7) >>> 1;
                    if (ordering.compare(array_apply2, ScalaRunTime$.MODULE$.array_apply(obj, i9)) < 0) {
                        i7 = i9;
                    } else {
                        i8 = i9;
                    }
                }
                int i10 = 1;
                if (ordering.compare(array_apply2, ScalaRunTime$.MODULE$.array_apply(obj, i8)) < 0) {
                    i10 = 0;
                }
                int i11 = i8 + i10;
                int i12 = i6;
                while (true) {
                    int i13 = i12;
                    if (i13 <= i11) {
                        break;
                    }
                    int i14 = i13 - 1;
                    ScalaRunTime$.MODULE$.array_update(obj, i13, ScalaRunTime$.MODULE$.array_apply(obj, i14));
                    i12 = i14;
                }
                ScalaRunTime$.MODULE$.array_update(obj, i11, array_apply2);
            }
            i5++;
        }
    }

    public <T> void scala$util$Sorting$$mergeSort(Object obj, int i, int i2, Ordering<T> ordering, Object obj2, ClassTag<T> classTag) {
        if (i2 - i < 32) {
            scala$util$Sorting$$insertionSort(obj, i, i2, ordering);
            return;
        }
        int i3 = (i + i2) >>> 1;
        Object obj3 = obj2;
        if (obj2 == null) {
            obj3 = classTag.newArray(i3 - i);
        }
        scala$util$Sorting$$mergeSort(obj, i, i3, ordering, obj3, classTag);
        scala$util$Sorting$$mergeSort(obj, i3, i2, ordering, obj3, classTag);
        scala$util$Sorting$$mergeSorted(obj, i, i3, i2, ordering, obj3);
    }

    public <T> Null$ scala$util$Sorting$$mergeSort$default$5() {
        return null;
    }

    public void scala$util$Sorting$$mergeSort$mBc$sp(byte[] bArr, int i, int i2, Ordering<Object> ordering, byte[] bArr2, ClassTag<Object> classTag) {
        if (i2 - i < 32) {
            scala$util$Sorting$$insertionSort(bArr, i, i2, ordering);
            return;
        }
        int i3 = (i + i2) >>> 1;
        byte[] bArr3 = bArr2;
        if (bArr2 == null) {
            bArr3 = (byte[]) classTag.newArray(i3 - i);
        }
        scala$util$Sorting$$mergeSort(bArr, i, i3, ordering, bArr3, classTag);
        scala$util$Sorting$$mergeSort(bArr, i3, i2, ordering, bArr3, classTag);
        scala$util$Sorting$$mergeSorted(bArr, i, i3, i2, ordering, bArr3);
    }

    public void scala$util$Sorting$$mergeSort$mCc$sp(char[] cArr, int i, int i2, Ordering<Object> ordering, char[] cArr2, ClassTag<Object> classTag) {
        if (i2 - i < 32) {
            scala$util$Sorting$$insertionSort(cArr, i, i2, ordering);
            return;
        }
        int i3 = (i + i2) >>> 1;
        char[] cArr3 = cArr2;
        if (cArr2 == null) {
            cArr3 = (char[]) classTag.newArray(i3 - i);
        }
        scala$util$Sorting$$mergeSort(cArr, i, i3, ordering, cArr3, classTag);
        scala$util$Sorting$$mergeSort(cArr, i3, i2, ordering, cArr3, classTag);
        scala$util$Sorting$$mergeSorted(cArr, i, i3, i2, ordering, cArr3);
    }

    public void scala$util$Sorting$$mergeSort$mDc$sp(double[] dArr, int i, int i2, Ordering<Object> ordering, double[] dArr2, ClassTag<Object> classTag) {
        if (i2 - i < 32) {
            scala$util$Sorting$$insertionSort(dArr, i, i2, ordering);
            return;
        }
        int i3 = (i + i2) >>> 1;
        double[] dArr3 = dArr2;
        if (dArr2 == null) {
            dArr3 = (double[]) classTag.newArray(i3 - i);
        }
        scala$util$Sorting$$mergeSort(dArr, i, i3, ordering, dArr3, classTag);
        scala$util$Sorting$$mergeSort(dArr, i3, i2, ordering, dArr3, classTag);
        scala$util$Sorting$$mergeSorted(dArr, i, i3, i2, ordering, dArr3);
    }

    public void scala$util$Sorting$$mergeSort$mFc$sp(float[] fArr, int i, int i2, Ordering<Object> ordering, float[] fArr2, ClassTag<Object> classTag) {
        if (i2 - i < 32) {
            scala$util$Sorting$$insertionSort(fArr, i, i2, ordering);
            return;
        }
        int i3 = (i + i2) >>> 1;
        float[] fArr3 = fArr2;
        if (fArr2 == null) {
            fArr3 = (float[]) classTag.newArray(i3 - i);
        }
        scala$util$Sorting$$mergeSort(fArr, i, i3, ordering, fArr3, classTag);
        scala$util$Sorting$$mergeSort(fArr, i3, i2, ordering, fArr3, classTag);
        scala$util$Sorting$$mergeSorted(fArr, i, i3, i2, ordering, fArr3);
    }

    public void scala$util$Sorting$$mergeSort$mIc$sp(int[] iArr, int i, int i2, Ordering<Object> ordering, int[] iArr2, ClassTag<Object> classTag) {
        if (i2 - i < 32) {
            scala$util$Sorting$$insertionSort(iArr, i, i2, ordering);
            return;
        }
        int i3 = (i + i2) >>> 1;
        int[] iArr3 = iArr2;
        if (iArr2 == null) {
            iArr3 = (int[]) classTag.newArray(i3 - i);
        }
        scala$util$Sorting$$mergeSort(iArr, i, i3, ordering, iArr3, classTag);
        scala$util$Sorting$$mergeSort(iArr, i3, i2, ordering, iArr3, classTag);
        scala$util$Sorting$$mergeSorted(iArr, i, i3, i2, ordering, iArr3);
    }

    public void scala$util$Sorting$$mergeSort$mJc$sp(long[] jArr, int i, int i2, Ordering<Object> ordering, long[] jArr2, ClassTag<Object> classTag) {
        if (i2 - i < 32) {
            scala$util$Sorting$$insertionSort(jArr, i, i2, ordering);
            return;
        }
        int i3 = (i + i2) >>> 1;
        long[] jArr3 = jArr2;
        if (jArr2 == null) {
            jArr3 = (long[]) classTag.newArray(i3 - i);
        }
        scala$util$Sorting$$mergeSort(jArr, i, i3, ordering, jArr3, classTag);
        scala$util$Sorting$$mergeSort(jArr, i3, i2, ordering, jArr3, classTag);
        scala$util$Sorting$$mergeSorted(jArr, i, i3, i2, ordering, jArr3);
    }

    public void scala$util$Sorting$$mergeSort$mSc$sp(short[] sArr, int i, int i2, Ordering<Object> ordering, short[] sArr2, ClassTag<Object> classTag) {
        if (i2 - i < 32) {
            scala$util$Sorting$$insertionSort(sArr, i, i2, ordering);
            return;
        }
        int i3 = (i + i2) >>> 1;
        short[] sArr3 = sArr2;
        if (sArr2 == null) {
            sArr3 = (short[]) classTag.newArray(i3 - i);
        }
        scala$util$Sorting$$mergeSort(sArr, i, i3, ordering, sArr3, classTag);
        scala$util$Sorting$$mergeSort(sArr, i3, i2, ordering, sArr3, classTag);
        scala$util$Sorting$$mergeSorted(sArr, i, i3, i2, ordering, sArr3);
    }

    public void scala$util$Sorting$$mergeSort$mZc$sp(boolean[] zArr, int i, int i2, Ordering<Object> ordering, boolean[] zArr2, ClassTag<Object> classTag) {
        if (i2 - i < 32) {
            scala$util$Sorting$$insertionSort(zArr, i, i2, ordering);
            return;
        }
        int i3 = (i + i2) >>> 1;
        boolean[] zArr3 = zArr2;
        if (zArr2 == null) {
            zArr3 = (boolean[]) classTag.newArray(i3 - i);
        }
        scala$util$Sorting$$mergeSort(zArr, i, i3, ordering, zArr3, classTag);
        scala$util$Sorting$$mergeSort(zArr, i3, i2, ordering, zArr3, classTag);
        scala$util$Sorting$$mergeSorted(zArr, i, i3, i2, ordering, zArr3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> void scala$util$Sorting$$mergeSorted(Object obj, int i, int i2, int i3, Ordering<T> ordering, Object obj2) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (ordering.compare(ScalaRunTime$.MODULE$.array_apply(obj, i2 - 1), ScalaRunTime$.MODULE$.array_apply(obj, i2)) > 0) {
            int i9 = i2 - i;
            int i10 = i;
            int i11 = 0;
            while (true) {
                i4 = 0;
                i5 = i10;
                i6 = i;
                if (i10 < i2) {
                    ScalaRunTime$.MODULE$.array_update(obj2, i11, ScalaRunTime$.MODULE$.array_apply(obj, i10));
                    i10++;
                    i11++;
                }
            }
            while (true) {
                i7 = i4;
                i8 = i6;
                if (i5 >= i3) {
                    break;
                }
                i7 = i4;
                i8 = i6;
                if (i4 >= i9) {
                    break;
                }
                if (ordering.compare(ScalaRunTime$.MODULE$.array_apply(obj, i5), ScalaRunTime$.MODULE$.array_apply(obj2, i4)) < 0) {
                    ScalaRunTime$.MODULE$.array_update(obj, i6, ScalaRunTime$.MODULE$.array_apply(obj, i5));
                    i5++;
                } else {
                    ScalaRunTime$.MODULE$.array_update(obj, i6, ScalaRunTime$.MODULE$.array_apply(obj2, i4));
                    i4++;
                }
                i6++;
            }
            while (i7 < i9) {
                ScalaRunTime$.MODULE$.array_update(obj, i8, ScalaRunTime$.MODULE$.array_apply(obj2, i7));
                i7++;
                i8++;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <K, M> Object stableSort(Seq<K> seq, Function1<K, M> function1, ClassTag<K> classTag, Ordering<M> ordering) {
        Object array = seq.toArray(classTag);
        Ordering<Object> mo49on = Ordering$.MODULE$.apply(ordering).mo49on(function1);
        if (array instanceof Object[]) {
            if (ScalaRunTime$.MODULE$.array_length(array) > 1) {
                Objects.requireNonNull(mo49on, "Ordering");
            }
            Arrays.sort((Object[]) array, mo49on);
        } else if (array instanceof int[]) {
            int[] iArr = (int[]) array;
            if (mo49on == Ordering$Int$.MODULE$) {
                Arrays.sort(iArr);
            } else {
                int array_length = ScalaRunTime$.MODULE$.array_length(iArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mIc$sp(iArr, 0, array_length, mo49on, null, ClassTag$.MODULE$.Int());
            }
        } else if (array instanceof double[]) {
            double[] dArr = (double[]) array;
            int array_length2 = ScalaRunTime$.MODULE$.array_length(dArr);
            scala$util$Sorting$$mergeSort$default$5();
            scala$util$Sorting$$mergeSort$mDc$sp(dArr, 0, array_length2, mo49on, null, ClassTag$.MODULE$.Double());
        } else if (array instanceof long[]) {
            long[] jArr = (long[]) array;
            if (mo49on == Ordering$Long$.MODULE$) {
                Arrays.sort(jArr);
            } else {
                int array_length3 = ScalaRunTime$.MODULE$.array_length(jArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mJc$sp(jArr, 0, array_length3, mo49on, null, ClassTag$.MODULE$.Long());
            }
        } else if (array instanceof float[]) {
            float[] fArr = (float[]) array;
            int array_length4 = ScalaRunTime$.MODULE$.array_length(fArr);
            scala$util$Sorting$$mergeSort$default$5();
            scala$util$Sorting$$mergeSort$mFc$sp(fArr, 0, array_length4, mo49on, null, ClassTag$.MODULE$.Float());
        } else if (array instanceof char[]) {
            char[] cArr = (char[]) array;
            if (mo49on == Ordering$Char$.MODULE$) {
                Arrays.sort(cArr);
            } else {
                int array_length5 = ScalaRunTime$.MODULE$.array_length(cArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mCc$sp(cArr, 0, array_length5, mo49on, null, ClassTag$.MODULE$.Char());
            }
        } else if (array instanceof byte[]) {
            byte[] bArr = (byte[]) array;
            if (mo49on == Ordering$Byte$.MODULE$) {
                Arrays.sort(bArr);
            } else {
                int array_length6 = ScalaRunTime$.MODULE$.array_length(bArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mBc$sp(bArr, 0, array_length6, mo49on, null, ClassTag$.MODULE$.Byte());
            }
        } else if (array instanceof short[]) {
            short[] sArr = (short[]) array;
            if (mo49on == Ordering$Short$.MODULE$) {
                Arrays.sort(sArr);
            } else {
                int array_length7 = ScalaRunTime$.MODULE$.array_length(sArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mSc$sp(sArr, 0, array_length7, mo49on, null, ClassTag$.MODULE$.Short());
            }
        } else if (!(array instanceof boolean[])) {
            Objects.requireNonNull(array);
            throw new MatchError(array);
        } else {
            boolean[] zArr = (boolean[]) array;
            if (mo49on == Ordering$Boolean$.MODULE$) {
                scala$util$Sorting$$booleanSort(zArr);
            } else {
                int array_length8 = ScalaRunTime$.MODULE$.array_length(zArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mZc$sp(zArr, 0, array_length8, mo49on, null, ClassTag$.MODULE$.Boolean());
            }
        }
        BoxedUnit boxedUnit = BoxedUnit.UNIT;
        return array;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <K> Object stableSort(Seq<K> seq, Function2<K, K, Object> function2, ClassTag<K> classTag) {
        Object array = seq.toArray(classTag);
        Ordering$ ordering$ = Ordering$.MODULE$;
        Ordering$$anon$9 ordering$$anon$9 = new Ordering$$anon$9(function2);
        if (array instanceof Object[]) {
            ScalaRunTime$.MODULE$.array_length(array);
            Arrays.sort((Object[]) array, ordering$$anon$9);
        } else if (array instanceof int[]) {
            int[] iArr = (int[]) array;
            if (ordering$$anon$9 == Ordering$Int$.MODULE$) {
                Arrays.sort(iArr);
            } else {
                scala$util$Sorting$$mergeSort$mIc$sp(iArr, 0, ScalaRunTime$.MODULE$.array_length(iArr), ordering$$anon$9, null, ClassTag$.MODULE$.Int());
            }
        } else if (array instanceof double[]) {
            double[] dArr = (double[]) array;
            scala$util$Sorting$$mergeSort$mDc$sp(dArr, 0, ScalaRunTime$.MODULE$.array_length(dArr), ordering$$anon$9, null, ClassTag$.MODULE$.Double());
        } else if (array instanceof long[]) {
            long[] jArr = (long[]) array;
            if (ordering$$anon$9 == Ordering$Long$.MODULE$) {
                Arrays.sort(jArr);
            } else {
                scala$util$Sorting$$mergeSort$mJc$sp(jArr, 0, ScalaRunTime$.MODULE$.array_length(jArr), ordering$$anon$9, null, ClassTag$.MODULE$.Long());
            }
        } else if (array instanceof float[]) {
            float[] fArr = (float[]) array;
            int array_length = ScalaRunTime$.MODULE$.array_length(fArr);
            scala$util$Sorting$$mergeSort$default$5();
            scala$util$Sorting$$mergeSort$mFc$sp(fArr, 0, array_length, ordering$$anon$9, null, ClassTag$.MODULE$.Float());
        } else if (array instanceof char[]) {
            char[] cArr = (char[]) array;
            if (ordering$$anon$9 == Ordering$Char$.MODULE$) {
                Arrays.sort(cArr);
            } else {
                int array_length2 = ScalaRunTime$.MODULE$.array_length(cArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mCc$sp(cArr, 0, array_length2, ordering$$anon$9, null, ClassTag$.MODULE$.Char());
            }
        } else if (array instanceof byte[]) {
            byte[] bArr = (byte[]) array;
            if (ordering$$anon$9 == Ordering$Byte$.MODULE$) {
                Arrays.sort(bArr);
            } else {
                int array_length3 = ScalaRunTime$.MODULE$.array_length(bArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mBc$sp(bArr, 0, array_length3, ordering$$anon$9, null, ClassTag$.MODULE$.Byte());
            }
        } else if (array instanceof short[]) {
            short[] sArr = (short[]) array;
            if (ordering$$anon$9 == Ordering$Short$.MODULE$) {
                Arrays.sort(sArr);
            } else {
                int array_length4 = ScalaRunTime$.MODULE$.array_length(sArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mSc$sp(sArr, 0, array_length4, ordering$$anon$9, null, ClassTag$.MODULE$.Short());
            }
        } else if (!(array instanceof boolean[])) {
            Objects.requireNonNull(array);
            throw new MatchError(array);
        } else {
            boolean[] zArr = (boolean[]) array;
            if (ordering$$anon$9 == Ordering$Boolean$.MODULE$) {
                scala$util$Sorting$$booleanSort(zArr);
            } else {
                int array_length5 = ScalaRunTime$.MODULE$.array_length(zArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mZc$sp(zArr, 0, array_length5, ordering$$anon$9, null, ClassTag$.MODULE$.Boolean());
            }
        }
        BoxedUnit boxedUnit = BoxedUnit.UNIT;
        return array;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <K> Object stableSort(Seq<K> seq, ClassTag<K> classTag, Ordering<K> ordering) {
        Object array = seq.toArray(classTag);
        Ordering<Object> apply = Ordering$.MODULE$.apply(ordering);
        if (array instanceof Object[]) {
            if (ScalaRunTime$.MODULE$.array_length(array) > 1) {
                Objects.requireNonNull(apply, "Ordering");
            }
            Arrays.sort((Object[]) array, apply);
        } else if (array instanceof int[]) {
            int[] iArr = (int[]) array;
            if (apply == Ordering$Int$.MODULE$) {
                Arrays.sort(iArr);
            } else {
                int array_length = ScalaRunTime$.MODULE$.array_length(iArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mIc$sp(iArr, 0, array_length, apply, null, ClassTag$.MODULE$.Int());
            }
        } else if (array instanceof double[]) {
            double[] dArr = (double[]) array;
            int array_length2 = ScalaRunTime$.MODULE$.array_length(dArr);
            scala$util$Sorting$$mergeSort$default$5();
            scala$util$Sorting$$mergeSort$mDc$sp(dArr, 0, array_length2, apply, null, ClassTag$.MODULE$.Double());
        } else if (array instanceof long[]) {
            long[] jArr = (long[]) array;
            if (apply == Ordering$Long$.MODULE$) {
                Arrays.sort(jArr);
            } else {
                int array_length3 = ScalaRunTime$.MODULE$.array_length(jArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mJc$sp(jArr, 0, array_length3, apply, null, ClassTag$.MODULE$.Long());
            }
        } else if (array instanceof float[]) {
            float[] fArr = (float[]) array;
            int array_length4 = ScalaRunTime$.MODULE$.array_length(fArr);
            scala$util$Sorting$$mergeSort$default$5();
            scala$util$Sorting$$mergeSort$mFc$sp(fArr, 0, array_length4, apply, null, ClassTag$.MODULE$.Float());
        } else if (array instanceof char[]) {
            char[] cArr = (char[]) array;
            if (apply == Ordering$Char$.MODULE$) {
                Arrays.sort(cArr);
            } else {
                int array_length5 = ScalaRunTime$.MODULE$.array_length(cArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mCc$sp(cArr, 0, array_length5, apply, null, ClassTag$.MODULE$.Char());
            }
        } else if (array instanceof byte[]) {
            byte[] bArr = (byte[]) array;
            if (apply == Ordering$Byte$.MODULE$) {
                Arrays.sort(bArr);
            } else {
                int array_length6 = ScalaRunTime$.MODULE$.array_length(bArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mBc$sp(bArr, 0, array_length6, apply, null, ClassTag$.MODULE$.Byte());
            }
        } else if (array instanceof short[]) {
            short[] sArr = (short[]) array;
            if (apply == Ordering$Short$.MODULE$) {
                Arrays.sort(sArr);
            } else {
                int array_length7 = ScalaRunTime$.MODULE$.array_length(sArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mSc$sp(sArr, 0, array_length7, apply, null, ClassTag$.MODULE$.Short());
            }
        } else if (!(array instanceof boolean[])) {
            Objects.requireNonNull(array);
            throw new MatchError(array);
        } else {
            boolean[] zArr = (boolean[]) array;
            if (apply == Ordering$Boolean$.MODULE$) {
                scala$util$Sorting$$booleanSort(zArr);
            } else {
                int array_length8 = ScalaRunTime$.MODULE$.array_length(zArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mZc$sp(zArr, 0, array_length8, apply, null, ClassTag$.MODULE$.Boolean());
            }
        }
        BoxedUnit boxedUnit = BoxedUnit.UNIT;
        return array;
    }

    public <K> void stableSort(Object obj, Function2<K, K, Object> function2, ClassTag<K> classTag) {
        Ordering$ ordering$ = Ordering$.MODULE$;
        Ordering$$anon$9 ordering$$anon$9 = new Ordering$$anon$9(function2);
        if (obj instanceof Object[]) {
            ScalaRunTime$.MODULE$.array_length(obj);
            Arrays.sort((Object[]) obj, ordering$$anon$9);
        } else if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            if (ordering$$anon$9 == Ordering$Int$.MODULE$) {
                Arrays.sort(iArr);
            } else {
                scala$util$Sorting$$mergeSort$mIc$sp(iArr, 0, ScalaRunTime$.MODULE$.array_length(iArr), ordering$$anon$9, null, ClassTag$.MODULE$.Int());
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            scala$util$Sorting$$mergeSort$mDc$sp(dArr, 0, ScalaRunTime$.MODULE$.array_length(dArr), ordering$$anon$9, null, ClassTag$.MODULE$.Double());
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            if (ordering$$anon$9 == Ordering$Long$.MODULE$) {
                Arrays.sort(jArr);
            } else {
                scala$util$Sorting$$mergeSort$mJc$sp(jArr, 0, ScalaRunTime$.MODULE$.array_length(jArr), ordering$$anon$9, null, ClassTag$.MODULE$.Long());
            }
        } else if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            int array_length = ScalaRunTime$.MODULE$.array_length(fArr);
            scala$util$Sorting$$mergeSort$default$5();
            scala$util$Sorting$$mergeSort$mFc$sp(fArr, 0, array_length, ordering$$anon$9, null, ClassTag$.MODULE$.Float());
        } else if (obj instanceof char[]) {
            char[] cArr = (char[]) obj;
            if (ordering$$anon$9 == Ordering$Char$.MODULE$) {
                Arrays.sort(cArr);
            } else {
                int array_length2 = ScalaRunTime$.MODULE$.array_length(cArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mCc$sp(cArr, 0, array_length2, ordering$$anon$9, null, ClassTag$.MODULE$.Char());
            }
        } else if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (ordering$$anon$9 == Ordering$Byte$.MODULE$) {
                Arrays.sort(bArr);
            } else {
                int array_length3 = ScalaRunTime$.MODULE$.array_length(bArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mBc$sp(bArr, 0, array_length3, ordering$$anon$9, null, ClassTag$.MODULE$.Byte());
            }
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            if (ordering$$anon$9 == Ordering$Short$.MODULE$) {
                Arrays.sort(sArr);
            } else {
                int array_length4 = ScalaRunTime$.MODULE$.array_length(sArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mSc$sp(sArr, 0, array_length4, ordering$$anon$9, null, ClassTag$.MODULE$.Short());
            }
        } else if (!(obj instanceof boolean[])) {
            Objects.requireNonNull(obj);
            throw new MatchError(obj);
        } else {
            boolean[] zArr = (boolean[]) obj;
            if (ordering$$anon$9 == Ordering$Boolean$.MODULE$) {
                scala$util$Sorting$$booleanSort(zArr);
            } else {
                int array_length5 = ScalaRunTime$.MODULE$.array_length(zArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mZc$sp(zArr, 0, array_length5, ordering$$anon$9, null, ClassTag$.MODULE$.Boolean());
            }
        }
        BoxedUnit boxedUnit = BoxedUnit.UNIT;
    }

    public <K> void stableSort(Object obj, ClassTag<K> classTag, Ordering<K> ordering) {
        Ordering<Object> apply = Ordering$.MODULE$.apply(ordering);
        if (obj instanceof Object[]) {
            if (ScalaRunTime$.MODULE$.array_length(obj) > 1) {
                Objects.requireNonNull(apply, "Ordering");
            }
            Arrays.sort((Object[]) obj, apply);
        } else if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            if (apply == Ordering$Int$.MODULE$) {
                Arrays.sort(iArr);
            } else {
                int array_length = ScalaRunTime$.MODULE$.array_length(iArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mIc$sp(iArr, 0, array_length, apply, null, ClassTag$.MODULE$.Int());
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int array_length2 = ScalaRunTime$.MODULE$.array_length(dArr);
            scala$util$Sorting$$mergeSort$default$5();
            scala$util$Sorting$$mergeSort$mDc$sp(dArr, 0, array_length2, apply, null, ClassTag$.MODULE$.Double());
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            if (apply == Ordering$Long$.MODULE$) {
                Arrays.sort(jArr);
            } else {
                int array_length3 = ScalaRunTime$.MODULE$.array_length(jArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mJc$sp(jArr, 0, array_length3, apply, null, ClassTag$.MODULE$.Long());
            }
        } else if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            int array_length4 = ScalaRunTime$.MODULE$.array_length(fArr);
            scala$util$Sorting$$mergeSort$default$5();
            scala$util$Sorting$$mergeSort$mFc$sp(fArr, 0, array_length4, apply, null, ClassTag$.MODULE$.Float());
        } else if (obj instanceof char[]) {
            char[] cArr = (char[]) obj;
            if (apply == Ordering$Char$.MODULE$) {
                Arrays.sort(cArr);
            } else {
                int array_length5 = ScalaRunTime$.MODULE$.array_length(cArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mCc$sp(cArr, 0, array_length5, apply, null, ClassTag$.MODULE$.Char());
            }
        } else if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (apply == Ordering$Byte$.MODULE$) {
                Arrays.sort(bArr);
            } else {
                int array_length6 = ScalaRunTime$.MODULE$.array_length(bArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mBc$sp(bArr, 0, array_length6, apply, null, ClassTag$.MODULE$.Byte());
            }
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            if (apply == Ordering$Short$.MODULE$) {
                Arrays.sort(sArr);
            } else {
                int array_length7 = ScalaRunTime$.MODULE$.array_length(sArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mSc$sp(sArr, 0, array_length7, apply, null, ClassTag$.MODULE$.Short());
            }
        } else if (!(obj instanceof boolean[])) {
            Objects.requireNonNull(obj);
            throw new MatchError(obj);
        } else {
            boolean[] zArr = (boolean[]) obj;
            if (apply == Ordering$Boolean$.MODULE$) {
                scala$util$Sorting$$booleanSort(zArr);
            } else {
                int array_length8 = ScalaRunTime$.MODULE$.array_length(zArr);
                scala$util$Sorting$$mergeSort$default$5();
                scala$util$Sorting$$mergeSort$mZc$sp(zArr, 0, array_length8, apply, null, ClassTag$.MODULE$.Boolean());
            }
        }
        BoxedUnit boxedUnit = BoxedUnit.UNIT;
    }
}
