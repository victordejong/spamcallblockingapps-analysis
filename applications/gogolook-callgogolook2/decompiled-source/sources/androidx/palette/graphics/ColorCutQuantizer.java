package androidx.palette.graphics;

import android.graphics.Color;
import android.util.TimingLogger;
import androidx.annotation.Nullable;
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
    public static final int COMPONENT_BLUE = -1;
    public static final int COMPONENT_GREEN = -2;
    public static final int COMPONENT_RED = -3;
    public static final String LOG_TAG = "ColorCutQuantizer";
    public static final boolean LOG_TIMINGS = false;
    public static final int QUANTIZE_WORD_MASK = 31;
    public static final int QUANTIZE_WORD_WIDTH = 5;
    public static final Comparator<Vbox> VBOX_COMPARATOR_VOLUME = new Comparator<Vbox>() { // from class: androidx.palette.graphics.ColorCutQuantizer.1
        public int compare(Vbox vbox, Vbox vbox2) {
            return vbox2.getVolume() - vbox.getVolume();
        }
    };
    public final int[] mColors;
    public final Palette.Filter[] mFilters;
    public final int[] mHistogram;
    public final List<Palette.Swatch> mQuantizedColors;
    public final float[] mTempHsl = new float[3];
    @Nullable
    public final TimingLogger mTimingLogger = null;

    /* loaded from: classes-dex2jar.jar:androidx/palette/graphics/ColorCutQuantizer$Vbox.class */
    public class Vbox {
        public int mLowerIndex;
        public int mMaxBlue;
        public int mMaxGreen;
        public int mMaxRed;
        public int mMinBlue;
        public int mMinGreen;
        public int mMinRed;
        public int mPopulation;
        public int mUpperIndex;

        public Vbox(int i, int i2) {
            this.mLowerIndex = i;
            this.mUpperIndex = i2;
            fitBox();
        }

        public final boolean canSplit() {
            boolean z = true;
            if (getColorCount() <= 1) {
                z = false;
            }
            return z;
        }

        public final int findSplitPoint() {
            int longestColorDimension = getLongestColorDimension();
            ColorCutQuantizer colorCutQuantizer = ColorCutQuantizer.this;
            int[] iArr = colorCutQuantizer.mColors;
            int[] iArr2 = colorCutQuantizer.mHistogram;
            ColorCutQuantizer.modifySignificantOctet(iArr, longestColorDimension, this.mLowerIndex, this.mUpperIndex);
            Arrays.sort(iArr, this.mLowerIndex, this.mUpperIndex + 1);
            ColorCutQuantizer.modifySignificantOctet(iArr, longestColorDimension, this.mLowerIndex, this.mUpperIndex);
            int i = this.mPopulation / 2;
            int i2 = this.mLowerIndex;
            int i3 = 0;
            while (true) {
                int i4 = this.mUpperIndex;
                if (i2 > i4) {
                    return this.mLowerIndex;
                }
                i3 += iArr2[iArr[i2]];
                if (i3 >= i) {
                    return Math.min(i4 - 1, i2);
                }
                i2++;
            }
        }

        public final void fitBox() {
            ColorCutQuantizer colorCutQuantizer = ColorCutQuantizer.this;
            int[] iArr = colorCutQuantizer.mColors;
            int[] iArr2 = colorCutQuantizer.mHistogram;
            int i = Integer.MAX_VALUE;
            int i2 = Integer.MIN_VALUE;
            int i3 = Integer.MAX_VALUE;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MIN_VALUE;
            int i7 = 0;
            for (int i8 = this.mLowerIndex; i8 <= this.mUpperIndex; i8++) {
                int i9 = iArr[i8];
                i7 += iArr2[i9];
                int quantizedRed = ColorCutQuantizer.quantizedRed(i9);
                int quantizedGreen = ColorCutQuantizer.quantizedGreen(i9);
                int quantizedBlue = ColorCutQuantizer.quantizedBlue(i9);
                i2 = i2;
                if (quantizedRed > i2) {
                    i2 = quantizedRed;
                }
                i = i;
                if (quantizedRed < i) {
                    i = quantizedRed;
                }
                i4 = i4;
                if (quantizedGreen > i4) {
                    i4 = quantizedGreen;
                }
                i3 = i3;
                if (quantizedGreen < i3) {
                    i3 = quantizedGreen;
                }
                i6 = i6;
                if (quantizedBlue > i6) {
                    i6 = quantizedBlue;
                }
                i5 = i5;
                if (quantizedBlue < i5) {
                    i5 = quantizedBlue;
                }
            }
            this.mMinRed = i;
            this.mMaxRed = i2;
            this.mMinGreen = i3;
            this.mMaxGreen = i4;
            this.mMinBlue = i5;
            this.mMaxBlue = i6;
            this.mPopulation = i7;
        }

        public final Palette.Swatch getAverageColor() {
            ColorCutQuantizer colorCutQuantizer = ColorCutQuantizer.this;
            int[] iArr = colorCutQuantizer.mColors;
            int[] iArr2 = colorCutQuantizer.mHistogram;
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

        public final int getColorCount() {
            return (this.mUpperIndex + 1) - this.mLowerIndex;
        }

        public final int getLongestColorDimension() {
            int i = this.mMaxRed - this.mMinRed;
            int i2 = this.mMaxGreen - this.mMinGreen;
            int i3 = this.mMaxBlue - this.mMinBlue;
            if (i < i2 || i < i3) {
                return (i2 < i || i2 < i3) ? -1 : -2;
            }
            return -3;
        }

        public final int getVolume() {
            return ((this.mMaxRed - this.mMinRed) + 1) * ((this.mMaxGreen - this.mMinGreen) + 1) * ((this.mMaxBlue - this.mMinBlue) + 1);
        }

        public final Vbox splitBox() {
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
        this.mFilters = filterArr;
        int[] iArr2 = new int[32768];
        this.mHistogram = iArr2;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int quantizeFromRgb888 = quantizeFromRgb888(iArr[i2]);
            iArr[i2] = quantizeFromRgb888;
            iArr2[quantizeFromRgb888] = iArr2[quantizeFromRgb888] + 1;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < iArr2.length; i4++) {
            if (iArr2[i4] > 0 && shouldIgnoreColor(i4)) {
                iArr2[i4] = 0;
            }
            i3 = i3;
            if (iArr2[i4] > 0) {
                i3++;
            }
        }
        int[] iArr3 = new int[i3];
        this.mColors = iArr3;
        int i5 = 0;
        for (int i6 = 0; i6 < iArr2.length; i6++) {
            i5 = i5;
            if (iArr2[i6] > 0) {
                iArr3[i5] = i6;
                i5++;
            }
        }
        if (i3 <= i) {
            this.mQuantizedColors = new ArrayList();
            for (int i7 : iArr3) {
                this.mQuantizedColors.add(new Palette.Swatch(approximateToRgb888(i7), iArr2[i7]));
            }
            return;
        }
        this.mQuantizedColors = quantizePixels(i);
    }

    public static int approximateToRgb888(int i) {
        return approximateToRgb888(quantizedRed(i), quantizedGreen(i), quantizedBlue(i));
    }

    public static int approximateToRgb888(int i, int i2, int i3) {
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

    public static void modifySignificantOctet(int[] iArr, int i, int i2, int i3) {
        if (i != -3) {
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
    }

    public static int modifyWordWidth(int i, int i2, int i3) {
        return (i3 > i2 ? i << (i3 - i2) : i >> (i2 - i3)) & ((1 << i3) - 1);
    }

    public static int quantizeFromRgb888(int i) {
        return modifyWordWidth(Color.blue(i), 8, 5) | (modifyWordWidth(Color.red(i), 8, 5) << 10) | (modifyWordWidth(Color.green(i), 8, 5) << 5);
    }

    private List<Palette.Swatch> quantizePixels(int i) {
        PriorityQueue<Vbox> priorityQueue = new PriorityQueue<>(i, VBOX_COMPARATOR_VOLUME);
        priorityQueue.offer(new Vbox(0, this.mColors.length - 1));
        splitBoxes(priorityQueue, i);
        return generateAverageColors(priorityQueue);
    }

    public static int quantizedBlue(int i) {
        return i & 31;
    }

    public static int quantizedGreen(int i) {
        return (i >> 5) & 31;
    }

    public static int quantizedRed(int i) {
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
