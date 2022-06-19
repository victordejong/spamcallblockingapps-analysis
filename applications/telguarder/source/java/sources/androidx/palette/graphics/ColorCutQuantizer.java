package androidx.palette.graphics;

import android.graphics.Color;
import android.util.TimingLogger;
import androidx.core.graphics.ColorUtils;
import androidx.palette.graphics.Palette;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;
/* loaded from: classes-dex2jar.jar:androidx/palette/graphics/ColorCutQuantizer.class */
public final class ColorCutQuantizer {
    static final int COMPONENT_BLUE = -1;
    static final int COMPONENT_GREEN = -2;
    static final int COMPONENT_RED = -3;
    private static final String LOG_TAG = "ColorCutQuantizer";
    private static final boolean LOG_TIMINGS = false;
    private static final int QUANTIZE_WORD_MASK = 31;
    private static final int QUANTIZE_WORD_WIDTH = 5;
    private static final Comparator<Vbox> VBOX_COMPARATOR_VOLUME = new Comparator<Vbox>() { // from class: androidx.palette.graphics.ColorCutQuantizer.1
        public int compare(Vbox vbox, Vbox vbox2) {
            return vbox2.getVolume() - vbox.getVolume();
        }
    };
    final int[] mColors;
    final Palette.Filter[] mFilters;
    final int[] mHistogram;
    final List<Palette.Swatch> mQuantizedColors;
    private final float[] mTempHsl = new float[3];
    final TimingLogger mTimingLogger = null;

    /* loaded from: classes-dex2jar.jar:androidx/palette/graphics/ColorCutQuantizer$Vbox.class */
    public class Vbox {
        private int mLowerIndex;
        private int mMaxBlue;
        private int mMaxGreen;
        private int mMaxRed;
        private int mMinBlue;
        private int mMinGreen;
        private int mMinRed;
        private int mPopulation;
        private int mUpperIndex;

        Vbox(int i, int i2) {
            ColorCutQuantizer.this = r4;
            this.mLowerIndex = i;
            this.mUpperIndex = i2;
            fitBox();
        }

        final boolean canSplit() {
            boolean z = true;
            if (getColorCount() <= 1) {
                z = false;
            }
            return z;
        }

        final int findSplitPoint() {
            int longestColorDimension = getLongestColorDimension();
            int[] iArr = ColorCutQuantizer.this.mColors;
            int[] iArr2 = ColorCutQuantizer.this.mHistogram;
            ColorCutQuantizer.modifySignificantOctet(iArr, longestColorDimension, this.mLowerIndex, this.mUpperIndex);
            Arrays.sort(iArr, this.mLowerIndex, this.mUpperIndex + 1);
            ColorCutQuantizer.modifySignificantOctet(iArr, longestColorDimension, this.mLowerIndex, this.mUpperIndex);
            int i = this.mPopulation / 2;
            int i2 = this.mLowerIndex;
            int i3 = 0;
            while (true) {
                int i4 = this.mUpperIndex;
                if (i2 <= i4) {
                    i3 += iArr2[iArr[i2]];
                    if (i3 >= i) {
                        return Math.min(i4 - 1, i2);
                    }
                    i2++;
                } else {
                    return this.mLowerIndex;
                }
            }
        }

        final void fitBox() {
            int[] iArr = ColorCutQuantizer.this.mColors;
            int[] iArr2 = ColorCutQuantizer.this.mHistogram;
            int i = this.mLowerIndex;
            int i2 = Integer.MAX_VALUE;
            int i3 = Integer.MAX_VALUE;
            int i4 = Integer.MAX_VALUE;
            int i5 = Integer.MIN_VALUE;
            int i6 = Integer.MIN_VALUE;
            int i7 = Integer.MIN_VALUE;
            int i8 = 0;
            while (true) {
                int i9 = i8;
                if (i > this.mUpperIndex) {
                    this.mMinRed = i2;
                    this.mMaxRed = i5;
                    this.mMinGreen = i3;
                    this.mMaxGreen = i6;
                    this.mMinBlue = i4;
                    this.mMaxBlue = i7;
                    this.mPopulation = i9;
                    return;
                }
                int i10 = iArr[i];
                int i11 = i9 + iArr2[i10];
                int quantizedRed = ColorCutQuantizer.quantizedRed(i10);
                int quantizedGreen = ColorCutQuantizer.quantizedGreen(i10);
                int quantizedBlue = ColorCutQuantizer.quantizedBlue(i10);
                int i12 = i5;
                if (quantizedRed > i5) {
                    i12 = quantizedRed;
                }
                int i13 = i2;
                if (quantizedRed < i2) {
                    i13 = quantizedRed;
                }
                int i14 = i6;
                if (quantizedGreen > i6) {
                    i14 = quantizedGreen;
                }
                int i15 = i3;
                if (quantizedGreen < i3) {
                    i15 = quantizedGreen;
                }
                int i16 = i7;
                if (quantizedBlue > i7) {
                    i16 = quantizedBlue;
                }
                int i17 = i4;
                if (quantizedBlue < i4) {
                    i17 = quantizedBlue;
                }
                i++;
                i2 = i13;
                i3 = i15;
                i4 = i17;
                i5 = i12;
                i6 = i14;
                i7 = i16;
                i8 = i11;
            }
        }

        final Palette.Swatch getAverageColor() {
            int[] iArr = ColorCutQuantizer.this.mColors;
            int[] iArr2 = ColorCutQuantizer.this.mHistogram;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = this.mLowerIndex; i5 <= this.mUpperIndex; i5++) {
                int i6 = iArr[i5];
                int i7 = iArr2[i6];
                i2 += i7;
                i += ColorCutQuantizer.quantizedRed(i6) * i7;
                i3 += ColorCutQuantizer.quantizedGreen(i6) * i7;
                i4 += i7 * ColorCutQuantizer.quantizedBlue(i6);
            }
            float f = i2;
            return new Palette.Swatch(ColorCutQuantizer.approximateToRgb888(Math.round(i / f), Math.round(i3 / f), Math.round(i4 / f)), i2);
        }

        final int getColorCount() {
            return (this.mUpperIndex + 1) - this.mLowerIndex;
        }

        final int getLongestColorDimension() {
            int i = this.mMaxRed - this.mMinRed;
            int i2 = this.mMaxGreen - this.mMinGreen;
            int i3 = this.mMaxBlue - this.mMinBlue;
            if (i < i2 || i < i3) {
                return (i2 < i || i2 < i3) ? -1 : -2;
            }
            return -3;
        }

        final int getVolume() {
            return ((this.mMaxRed - this.mMinRed) + 1) * ((this.mMaxGreen - this.mMinGreen) + 1) * ((this.mMaxBlue - this.mMinBlue) + 1);
        }

        final Vbox splitBox() {
            if (canSplit()) {
                int findSplitPoint = findSplitPoint();
                Vbox vbox = new Vbox(findSplitPoint + 1, this.mUpperIndex);
                this.mUpperIndex = findSplitPoint;
                fitBox();
                return vbox;
            }
            throw new IllegalStateException("Can not split a box with only 1 color");
        }
    }

    public ColorCutQuantizer(int[] iArr, int i, Palette.Filter[] filterArr) {
        int i2;
        this.mFilters = filterArr;
        int[] iArr2 = new int[32768];
        this.mHistogram = iArr2;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            int quantizeFromRgb888 = quantizeFromRgb888(iArr[i3]);
            iArr[i3] = quantizeFromRgb888;
            iArr2[quantizeFromRgb888] = iArr2[quantizeFromRgb888] + 1;
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i2 = i5;
            if (i4 >= 32768) {
                break;
            }
            if (iArr2[i4] > 0 && shouldIgnoreColor(i4)) {
                iArr2[i4] = 0;
            }
            int i6 = i2;
            if (iArr2[i4] > 0) {
                i6 = i2 + 1;
            }
            i4++;
            i5 = i6;
        }
        int[] iArr3 = new int[i2];
        this.mColors = iArr3;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = i8;
            if (i7 >= 32768) {
                break;
            }
            int i10 = i9;
            if (iArr2[i7] > 0) {
                iArr3[i9] = i7;
                i10 = i9 + 1;
            }
            i7++;
            i8 = i10;
        }
        if (i2 > i) {
            this.mQuantizedColors = quantizePixels(i);
            return;
        }
        this.mQuantizedColors = new ArrayList();
        for (int i11 = 0; i11 < i2; i11++) {
            int i12 = iArr3[i11];
            this.mQuantizedColors.add(new Palette.Swatch(approximateToRgb888(i12), iArr2[i12]));
        }
    }

    private static int approximateToRgb888(int i) {
        return approximateToRgb888(quantizedRed(i), quantizedGreen(i), quantizedBlue(i));
    }

    static int approximateToRgb888(int i, int i2, int i3) {
        return Color.rgb(modifyWordWidth(i, 5, 8), modifyWordWidth(i2, 5, 8), modifyWordWidth(i3, 5, 8));
    }

    private List<Palette.Swatch> generateAverageColors(Collection<Vbox> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (Vbox vbox : collection) {
            Palette.Swatch averageColor = vbox.getAverageColor();
            if (!shouldIgnoreColor(averageColor)) {
                arrayList.add(averageColor);
            }
        }
        return arrayList;
    }

    static void modifySignificantOctet(int[] iArr, int i, int i2, int i3) {
        if (i == -2) {
            for (int i4 = i2; i4 <= i3; i4++) {
                int i5 = iArr[i4];
                iArr[i4] = quantizedBlue(i5) | (quantizedGreen(i5) << 10) | (quantizedRed(i5) << 5);
            }
        } else if (i == -1) {
            while (i2 <= i3) {
                int i6 = iArr[i2];
                iArr[i2] = quantizedRed(i6) | (quantizedBlue(i6) << 10) | (quantizedGreen(i6) << 5);
                i2++;
            }
        }
    }

    private static int modifyWordWidth(int i, int i2, int i3) {
        return (i3 > i2 ? i << (i3 - i2) : i >> (i2 - i3)) & ((1 << i3) - 1);
    }

    private static int quantizeFromRgb888(int i) {
        return modifyWordWidth(Color.blue(i), 8, 5) | (modifyWordWidth(Color.red(i), 8, 5) << 10) | (modifyWordWidth(Color.green(i), 8, 5) << 5);
    }

    private List<Palette.Swatch> quantizePixels(int i) {
        PriorityQueue<Vbox> priorityQueue = new PriorityQueue<>(i, VBOX_COMPARATOR_VOLUME);
        priorityQueue.offer(new Vbox(0, this.mColors.length - 1));
        splitBoxes(priorityQueue, i);
        return generateAverageColors(priorityQueue);
    }

    static int quantizedBlue(int i) {
        return i & 31;
    }

    static int quantizedGreen(int i) {
        return (i >> 5) & 31;
    }

    static int quantizedRed(int i) {
        return (i >> 10) & 31;
    }

    private boolean shouldIgnoreColor(int i) {
        int approximateToRgb888 = approximateToRgb888(i);
        ColorUtils.colorToHSL(approximateToRgb888, this.mTempHsl);
        return shouldIgnoreColor(approximateToRgb888, this.mTempHsl);
    }

    private boolean shouldIgnoreColor(int i, float[] fArr) {
        Palette.Filter[] filterArr = this.mFilters;
        if (filterArr == null || filterArr.length <= 0) {
            return false;
        }
        int length = filterArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (!this.mFilters[i2].isAllowed(i, fArr)) {
                return true;
            }
        }
        return false;
    }

    private boolean shouldIgnoreColor(Palette.Swatch swatch) {
        return shouldIgnoreColor(swatch.getRgb(), swatch.getHsl());
    }

    private void splitBoxes(PriorityQueue<Vbox> priorityQueue, int i) {
        Vbox poll;
        while (priorityQueue.size() < i && (poll = priorityQueue.poll()) != null && poll.canSplit()) {
            priorityQueue.offer(poll.splitBox());
            priorityQueue.offer(poll);
        }
    }

    public List<Palette.Swatch> getQuantizedColors() {
        return this.mQuantizedColors;
    }
}
