package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.PerspectiveTransform;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.qrcode.decoder.Version;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/qrcode/detector/Detector.class */
public class Detector {
    private final BitMatrix image;
    private ResultPointCallback resultPointCallback;

    public Detector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    private float calculateModuleSizeOneWay(ResultPoint resultPoint, ResultPoint resultPoint2) {
        float sizeOfBlackWhiteBlackRunBothWays = sizeOfBlackWhiteBlackRunBothWays((int) resultPoint.getX(), (int) resultPoint.getY(), (int) resultPoint2.getX(), (int) resultPoint2.getY());
        float sizeOfBlackWhiteBlackRunBothWays2 = sizeOfBlackWhiteBlackRunBothWays((int) resultPoint2.getX(), (int) resultPoint2.getY(), (int) resultPoint.getX(), (int) resultPoint.getY());
        return Float.isNaN(sizeOfBlackWhiteBlackRunBothWays) ? sizeOfBlackWhiteBlackRunBothWays2 / 7.0f : Float.isNaN(sizeOfBlackWhiteBlackRunBothWays2) ? sizeOfBlackWhiteBlackRunBothWays / 7.0f : (sizeOfBlackWhiteBlackRunBothWays + sizeOfBlackWhiteBlackRunBothWays2) / 14.0f;
    }

    private static int computeDimension(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, float f) throws NotFoundException {
        int round = ((MathUtils.round(ResultPoint.distance(resultPoint, resultPoint2) / f) + MathUtils.round(ResultPoint.distance(resultPoint, resultPoint3) / f)) / 2) + 7;
        int i = round & 3;
        if (i == 0) {
            round++;
        } else if (i == 2) {
            round--;
        } else if (i == 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        return round;
    }

    private static PerspectiveTransform createTransform(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i) {
        float f;
        float f2;
        float f3;
        float f4 = i - 3.5f;
        if (resultPoint4 != null) {
            f3 = resultPoint4.getX();
            f2 = resultPoint4.getY();
            f = f4 - 3.0f;
        } else {
            float x = resultPoint2.getX();
            float x2 = resultPoint.getX();
            float x3 = resultPoint3.getX();
            f3 = (x - x2) + x3;
            f2 = (resultPoint2.getY() - resultPoint.getY()) + resultPoint3.getY();
            f = f4;
        }
        return PerspectiveTransform.quadrilateralToQuadrilateral(3.5f, 3.5f, f4, 3.5f, f, f, 3.5f, f4, resultPoint.getX(), resultPoint.getY(), resultPoint2.getX(), resultPoint2.getY(), f3, f2, resultPoint3.getX(), resultPoint3.getY());
    }

    private static BitMatrix sampleGrid(BitMatrix bitMatrix, PerspectiveTransform perspectiveTransform, int i) throws NotFoundException {
        return GridSampler.getInstance().sampleGrid(bitMatrix, i, i, perspectiveTransform);
    }

    private float sizeOfBlackWhiteBlackRun(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z = Math.abs(i4 - i2) > Math.abs(i3 - i);
        if (z) {
            i5 = i3;
            i7 = i2;
            i6 = i;
            i8 = i4;
        } else {
            i8 = i3;
            i5 = i4;
            i6 = i2;
            i7 = i;
        }
        int abs = Math.abs(i8 - i7);
        int abs2 = Math.abs(i5 - i6);
        int i9 = (-abs) / 2;
        int i10 = -1;
        int i11 = i7 < i8 ? 1 : -1;
        if (i6 < i5) {
            i10 = 1;
        }
        int i12 = i8 + i11;
        int i13 = i7;
        int i14 = i6;
        int i15 = 0;
        boolean z2 = z;
        while (i13 != i12) {
            int i16 = i15;
            if ((i15 == 1) == this.image.get(z2 ? i14 : i13, z2 ? i13 : i14)) {
                if (i15 == 2) {
                    return MathUtils.distance(i13, i14, i7, i6);
                }
                i16 = i15 + 1;
            }
            int i17 = i9 + abs2;
            int i18 = i17;
            int i19 = i14;
            if (i17 > 0) {
                i15 = i16;
                if (i14 == i5) {
                    break;
                }
                i19 = i14 + i10;
                i18 = i17 - abs;
            }
            i13 += i11;
            i9 = i18;
            i14 = i19;
            i15 = i16;
        }
        if (i15 == 2) {
            return MathUtils.distance(i12, i5, i7, i6);
        }
        return Float.NaN;
    }

    private float sizeOfBlackWhiteBlackRunBothWays(int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float sizeOfBlackWhiteBlackRun = sizeOfBlackWhiteBlackRun(i, i2, i3, i4);
        int i5 = i - (i3 - i);
        if (i5 < 0) {
            f = i / (i - i5);
            i5 = 0;
        } else if (i5 >= this.image.getWidth()) {
            f = ((this.image.getWidth() - 1) - i) / (i5 - i);
            i5 = this.image.getWidth() - 1;
        } else {
            f = 1.0f;
        }
        float f3 = i2;
        int i6 = (int) (f3 - ((i4 - i2) * f));
        if (i6 < 0) {
            f2 = f3 / (i2 - i6);
            i6 = 0;
        } else if (i6 >= this.image.getHeight()) {
            f2 = ((this.image.getHeight() - 1) - i2) / (i6 - i2);
            i6 = this.image.getHeight() - 1;
        } else {
            f2 = 1.0f;
        }
        return (sizeOfBlackWhiteBlackRun + sizeOfBlackWhiteBlackRun(i, i2, (int) (i + ((i5 - i) * f2)), i6)) - 1.0f;
    }

    protected final float calculateModuleSize(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        return (calculateModuleSizeOneWay(resultPoint, resultPoint2) + calculateModuleSizeOneWay(resultPoint, resultPoint3)) / 2.0f;
    }

    public DetectorResult detect() throws NotFoundException, FormatException {
        return detect(null);
    }

    public final DetectorResult detect(Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        this.resultPointCallback = resultPointCallback;
        return processFinderPatternInfo(new FinderPatternFinder(this.image, resultPointCallback).find(map));
    }

    protected final AlignmentPattern findAlignmentInRegion(float f, int i, int i2, float f2) throws NotFoundException {
        int i3 = (int) (f2 * f);
        int max = Math.max(0, i - i3);
        int min = Math.min(this.image.getWidth() - 1, i + i3) - max;
        float f3 = min;
        float f4 = 3.0f * f;
        if (f3 >= f4) {
            int max2 = Math.max(0, i2 - i3);
            int min2 = Math.min(this.image.getHeight() - 1, i2 + i3) - max2;
            if (min2 < f4) {
                throw NotFoundException.getNotFoundInstance();
            }
            return new AlignmentPatternFinder(this.image, max, max2, min, min2, f, this.resultPointCallback).find();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public final BitMatrix getImage() {
        return this.image;
    }

    protected final ResultPointCallback getResultPointCallback() {
        return this.resultPointCallback;
    }

    public final DetectorResult processFinderPatternInfo(FinderPatternInfo finderPatternInfo) throws NotFoundException, FormatException {
        FinderPattern topLeft = finderPatternInfo.getTopLeft();
        FinderPattern topRight = finderPatternInfo.getTopRight();
        FinderPattern bottomLeft = finderPatternInfo.getBottomLeft();
        float calculateModuleSize = calculateModuleSize(topLeft, topRight, bottomLeft);
        if (calculateModuleSize >= 1.0f) {
            int computeDimension = computeDimension(topLeft, topRight, bottomLeft, calculateModuleSize);
            Version provisionalVersionForDimension = Version.getProvisionalVersionForDimension(computeDimension);
            int dimensionForVersion = provisionalVersionForDimension.getDimensionForVersion();
            AlignmentPattern alignmentPattern = null;
            if (provisionalVersionForDimension.getAlignmentPatternCenters().length > 0) {
                float x = topRight.getX();
                float x2 = topLeft.getX();
                float x3 = bottomLeft.getX();
                float y = topRight.getY();
                float y2 = topLeft.getY();
                float y3 = bottomLeft.getY();
                float f = 1.0f - (3.0f / (dimensionForVersion - 7));
                int x4 = (int) (topLeft.getX() + ((((x - x2) + x3) - topLeft.getX()) * f));
                int y4 = (int) (topLeft.getY() + (f * (((y - y2) + y3) - topLeft.getY())));
                int i = 4;
                while (true) {
                    int i2 = i;
                    alignmentPattern = null;
                    if (i2 > 16) {
                        break;
                    }
                    try {
                        alignmentPattern = findAlignmentInRegion(calculateModuleSize, x4, y4, i2);
                        break;
                    } catch (NotFoundException e) {
                        i = i2 << 1;
                    }
                }
            }
            return new DetectorResult(sampleGrid(this.image, createTransform(topLeft, topRight, bottomLeft, alignmentPattern, computeDimension), computeDimension), alignmentPattern == null ? new ResultPoint[]{bottomLeft, topLeft, topRight} : new ResultPoint[]{bottomLeft, topLeft, topRight, alignmentPattern});
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
