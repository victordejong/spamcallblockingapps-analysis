package androidx.palette.graphics;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.util.Log;
import android.util.SparseBooleanArray;
import androidx.collection.ArrayMap;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/palette/graphics/Palette.class */
public final class Palette {
    static final int DEFAULT_CALCULATE_NUMBER_COLORS = 16;
    static final Filter DEFAULT_FILTER = new Filter() { // from class: androidx.palette.graphics.Palette.1
        private static final float BLACK_MAX_LIGHTNESS = 0.05f;
        private static final float WHITE_MIN_LIGHTNESS = 0.95f;

        private boolean isBlack(float[] fArr) {
            return fArr[2] <= BLACK_MAX_LIGHTNESS;
        }

        private boolean isNearRedILine(float[] fArr) {
            boolean z = false;
            if (fArr[0] >= 10.0f) {
                z = false;
                if (fArr[0] <= 37.0f) {
                    z = false;
                    if (fArr[1] <= 0.82f) {
                        z = true;
                    }
                }
            }
            return z;
        }

        private boolean isWhite(float[] fArr) {
            return fArr[2] >= WHITE_MIN_LIGHTNESS;
        }

        @Override // androidx.palette.graphics.Palette.Filter
        public boolean isAllowed(int i, float[] fArr) {
            return !isWhite(fArr) && !isBlack(fArr) && !isNearRedILine(fArr);
        }
    };
    static final int DEFAULT_RESIZE_BITMAP_AREA = 12544;
    static final String LOG_TAG = "Palette";
    static final boolean LOG_TIMINGS = false;
    static final float MIN_CONTRAST_BODY_TEXT = 4.5f;
    static final float MIN_CONTRAST_TITLE_TEXT = 3.0f;
    private final List<Swatch> mSwatches;
    private final List<Target> mTargets;
    private final SparseBooleanArray mUsedColors = new SparseBooleanArray();
    private final Map<Target, Swatch> mSelectedSwatches = new ArrayMap();
    private final Swatch mDominantSwatch = findDominantSwatch();

    /* loaded from: classes-dex2jar.jar:androidx/palette/graphics/Palette$Builder.class */
    public static final class Builder {
        private final Bitmap mBitmap;
        private final List<Filter> mFilters;
        private int mMaxColors;
        private Rect mRegion;
        private int mResizeArea;
        private int mResizeMaxDimension;
        private final List<Swatch> mSwatches;
        private final List<Target> mTargets;

        public Builder(Bitmap bitmap) {
            ArrayList arrayList = new ArrayList();
            this.mTargets = arrayList;
            this.mMaxColors = 16;
            this.mResizeArea = Palette.DEFAULT_RESIZE_BITMAP_AREA;
            this.mResizeMaxDimension = -1;
            ArrayList arrayList2 = new ArrayList();
            this.mFilters = arrayList2;
            if (bitmap == null || bitmap.isRecycled()) {
                throw new IllegalArgumentException("Bitmap is not valid");
            }
            arrayList2.add(Palette.DEFAULT_FILTER);
            this.mBitmap = bitmap;
            this.mSwatches = null;
            arrayList.add(Target.LIGHT_VIBRANT);
            arrayList.add(Target.VIBRANT);
            arrayList.add(Target.DARK_VIBRANT);
            arrayList.add(Target.LIGHT_MUTED);
            arrayList.add(Target.MUTED);
            arrayList.add(Target.DARK_MUTED);
        }

        public Builder(List<Swatch> list) {
            this.mTargets = new ArrayList();
            this.mMaxColors = 16;
            this.mResizeArea = Palette.DEFAULT_RESIZE_BITMAP_AREA;
            this.mResizeMaxDimension = -1;
            ArrayList arrayList = new ArrayList();
            this.mFilters = arrayList;
            if (list == null || list.isEmpty()) {
                throw new IllegalArgumentException("List of Swatches is not valid");
            }
            arrayList.add(Palette.DEFAULT_FILTER);
            this.mSwatches = list;
            this.mBitmap = null;
        }

        private int[] getPixelsFromBitmap(Bitmap bitmap) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int[] iArr = new int[width * height];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            Rect rect = this.mRegion;
            if (rect == null) {
                return iArr;
            }
            int width2 = rect.width();
            int height2 = this.mRegion.height();
            int[] iArr2 = new int[width2 * height2];
            for (int i = 0; i < height2; i++) {
                System.arraycopy(iArr, ((this.mRegion.top + i) * width) + this.mRegion.left, iArr2, i * width2, width2);
            }
            return iArr2;
        }

        /* JADX WARN: Type inference failed for: r0v21, types: [double] */
        /* JADX WARN: Type inference failed for: r0v32, types: [double] */
        private Bitmap scaleBitmapDown(Bitmap bitmap) {
            char c;
            if (this.mResizeArea > 0) {
                int width = bitmap.getWidth() * bitmap.getHeight();
                int i = this.mResizeArea;
                c = 0;
                if (width > i) {
                    c = Math.sqrt(i / width);
                }
            } else {
                c = 0;
                if (this.mResizeMaxDimension > 0) {
                    int max = Math.max(bitmap.getWidth(), bitmap.getHeight());
                    int i2 = this.mResizeMaxDimension;
                    c = 0;
                    if (max > i2) {
                        c = i2 / max;
                    }
                }
            }
            return c <= 0.0d ? bitmap : Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * c), (int) Math.ceil(bitmap.getHeight() * c), false);
        }

        public Builder addFilter(Filter filter) {
            if (filter != null) {
                this.mFilters.add(filter);
            }
            return this;
        }

        public Builder addTarget(Target target) {
            if (!this.mTargets.contains(target)) {
                this.mTargets.add(target);
            }
            return this;
        }

        public Builder clearFilters() {
            this.mFilters.clear();
            return this;
        }

        public Builder clearRegion() {
            this.mRegion = null;
            return this;
        }

        public Builder clearTargets() {
            List<Target> list = this.mTargets;
            if (list != null) {
                list.clear();
            }
            return this;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [androidx.palette.graphics.Palette$Builder$1] */
        public AsyncTask<Bitmap, Void, Palette> generate(final PaletteAsyncListener paletteAsyncListener) {
            if (paletteAsyncListener != null) {
                return new AsyncTask<Bitmap, Void, Palette>() { // from class: androidx.palette.graphics.Palette.Builder.1
                    public Palette doInBackground(Bitmap... bitmapArr) {
                        try {
                            return Builder.this.generate();
                        } catch (Exception e) {
                            Log.e(Palette.LOG_TAG, "Exception thrown during async generate", e);
                            return null;
                        }
                    }

                    public void onPostExecute(Palette palette) {
                        paletteAsyncListener.onGenerated(palette);
                    }
                }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.mBitmap);
            }
            throw new IllegalArgumentException("listener can not be null");
        }

        public Palette generate() {
            List<Swatch> list;
            Filter[] filterArr;
            Bitmap bitmap = this.mBitmap;
            if (bitmap != null) {
                Bitmap scaleBitmapDown = scaleBitmapDown(bitmap);
                Rect rect = this.mRegion;
                if (scaleBitmapDown != this.mBitmap && rect != null) {
                    double width = scaleBitmapDown.getWidth() / this.mBitmap.getWidth();
                    rect.left = (int) Math.floor(rect.left * width);
                    rect.top = (int) Math.floor(rect.top * width);
                    rect.right = Math.min((int) Math.ceil(rect.right * width), scaleBitmapDown.getWidth());
                    rect.bottom = Math.min((int) Math.ceil(rect.bottom * width), scaleBitmapDown.getHeight());
                }
                int[] pixelsFromBitmap = getPixelsFromBitmap(scaleBitmapDown);
                int i = this.mMaxColors;
                if (this.mFilters.isEmpty()) {
                    filterArr = null;
                } else {
                    List<Filter> list2 = this.mFilters;
                    filterArr = (Filter[]) list2.toArray(new Filter[list2.size()]);
                }
                ColorCutQuantizer colorCutQuantizer = new ColorCutQuantizer(pixelsFromBitmap, i, filterArr);
                if (scaleBitmapDown != this.mBitmap) {
                    scaleBitmapDown.recycle();
                }
                list = colorCutQuantizer.getQuantizedColors();
            } else {
                list = this.mSwatches;
                if (list == null) {
                    throw new AssertionError();
                }
            }
            Palette palette = new Palette(list, this.mTargets);
            palette.generate();
            return palette;
        }

        public Builder maximumColorCount(int i) {
            this.mMaxColors = i;
            return this;
        }

        public Builder resizeBitmapArea(int i) {
            this.mResizeArea = i;
            this.mResizeMaxDimension = -1;
            return this;
        }

        @Deprecated
        public Builder resizeBitmapSize(int i) {
            this.mResizeMaxDimension = i;
            this.mResizeArea = -1;
            return this;
        }

        public Builder setRegion(int i, int i2, int i3, int i4) {
            if (this.mBitmap != null) {
                if (this.mRegion == null) {
                    this.mRegion = new Rect();
                }
                this.mRegion.set(0, 0, this.mBitmap.getWidth(), this.mBitmap.getHeight());
                if (!this.mRegion.intersect(i, i2, i3, i4)) {
                    throw new IllegalArgumentException("The given region must intersect with the Bitmap's dimensions.");
                }
            }
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/palette/graphics/Palette$Filter.class */
    public interface Filter {
        boolean isAllowed(int i, float[] fArr);
    }

    /* loaded from: classes-dex2jar.jar:androidx/palette/graphics/Palette$PaletteAsyncListener.class */
    public interface PaletteAsyncListener {
        void onGenerated(Palette palette);
    }

    /* loaded from: classes-dex2jar.jar:androidx/palette/graphics/Palette$Swatch.class */
    public static final class Swatch {
        private final int mBlue;
        private int mBodyTextColor;
        private boolean mGeneratedTextColors;
        private final int mGreen;
        private float[] mHsl;
        private final int mPopulation;
        private final int mRed;
        private final int mRgb;
        private int mTitleTextColor;

        public Swatch(int i, int i2) {
            this.mRed = Color.red(i);
            this.mGreen = Color.green(i);
            this.mBlue = Color.blue(i);
            this.mRgb = i;
            this.mPopulation = i2;
        }

        Swatch(int i, int i2, int i3, int i4) {
            this.mRed = i;
            this.mGreen = i2;
            this.mBlue = i3;
            this.mRgb = Color.rgb(i, i2, i3);
            this.mPopulation = i4;
        }

        Swatch(float[] fArr, int i) {
            this(ColorUtils.HSLToColor(fArr), i);
            this.mHsl = fArr;
        }

        private void ensureTextColorsGenerated() {
            if (!this.mGeneratedTextColors) {
                int calculateMinimumAlpha = ColorUtils.calculateMinimumAlpha(-1, this.mRgb, Palette.MIN_CONTRAST_BODY_TEXT);
                int calculateMinimumAlpha2 = ColorUtils.calculateMinimumAlpha(-1, this.mRgb, Palette.MIN_CONTRAST_TITLE_TEXT);
                if (calculateMinimumAlpha != -1 && calculateMinimumAlpha2 != -1) {
                    this.mBodyTextColor = ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha);
                    this.mTitleTextColor = ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha2);
                    this.mGeneratedTextColors = true;
                    return;
                }
                int calculateMinimumAlpha3 = ColorUtils.calculateMinimumAlpha(ViewCompat.MEASURED_STATE_MASK, this.mRgb, Palette.MIN_CONTRAST_BODY_TEXT);
                int calculateMinimumAlpha4 = ColorUtils.calculateMinimumAlpha(ViewCompat.MEASURED_STATE_MASK, this.mRgb, Palette.MIN_CONTRAST_TITLE_TEXT);
                if (calculateMinimumAlpha3 == -1 || calculateMinimumAlpha4 == -1) {
                    this.mBodyTextColor = calculateMinimumAlpha != -1 ? ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha) : ColorUtils.setAlphaComponent(ViewCompat.MEASURED_STATE_MASK, calculateMinimumAlpha3);
                    this.mTitleTextColor = calculateMinimumAlpha2 != -1 ? ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha2) : ColorUtils.setAlphaComponent(ViewCompat.MEASURED_STATE_MASK, calculateMinimumAlpha4);
                    this.mGeneratedTextColors = true;
                    return;
                }
                this.mBodyTextColor = ColorUtils.setAlphaComponent(ViewCompat.MEASURED_STATE_MASK, calculateMinimumAlpha3);
                this.mTitleTextColor = ColorUtils.setAlphaComponent(ViewCompat.MEASURED_STATE_MASK, calculateMinimumAlpha4);
                this.mGeneratedTextColors = true;
            }
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Swatch swatch = (Swatch) obj;
            if (this.mPopulation != swatch.mPopulation || this.mRgb != swatch.mRgb) {
                z = false;
            }
            return z;
        }

        public int getBodyTextColor() {
            ensureTextColorsGenerated();
            return this.mBodyTextColor;
        }

        public float[] getHsl() {
            if (this.mHsl == null) {
                this.mHsl = new float[3];
            }
            ColorUtils.RGBToHSL(this.mRed, this.mGreen, this.mBlue, this.mHsl);
            return this.mHsl;
        }

        public int getPopulation() {
            return this.mPopulation;
        }

        public int getRgb() {
            return this.mRgb;
        }

        public int getTitleTextColor() {
            ensureTextColorsGenerated();
            return this.mTitleTextColor;
        }

        public int hashCode() {
            return (this.mRgb * 31) + this.mPopulation;
        }

        public String toString() {
            return getClass().getSimpleName() + " [RGB: #" + Integer.toHexString(getRgb()) + "] [HSL: " + Arrays.toString(getHsl()) + "] [Population: " + this.mPopulation + "] [Title Text: #" + Integer.toHexString(getTitleTextColor()) + "] [Body Text: #" + Integer.toHexString(getBodyTextColor()) + ']';
        }
    }

    Palette(List<Swatch> list, List<Target> list2) {
        this.mSwatches = list;
        this.mTargets = list2;
    }

    private Swatch findDominantSwatch() {
        int size = this.mSwatches.size();
        int i = Integer.MIN_VALUE;
        Swatch swatch = null;
        int i2 = 0;
        while (i2 < size) {
            Swatch swatch2 = this.mSwatches.get(i2);
            int i3 = i;
            if (swatch2.getPopulation() > i) {
                i3 = swatch2.getPopulation();
                swatch = swatch2;
            }
            i2++;
            i = i3;
        }
        return swatch;
    }

    public static Builder from(Bitmap bitmap) {
        return new Builder(bitmap);
    }

    public static Palette from(List<Swatch> list) {
        return new Builder(list).generate();
    }

    @Deprecated
    public static Palette generate(Bitmap bitmap) {
        return from(bitmap).generate();
    }

    @Deprecated
    public static Palette generate(Bitmap bitmap, int i) {
        return from(bitmap).maximumColorCount(i).generate();
    }

    @Deprecated
    public static AsyncTask<Bitmap, Void, Palette> generateAsync(Bitmap bitmap, int i, PaletteAsyncListener paletteAsyncListener) {
        return from(bitmap).maximumColorCount(i).generate(paletteAsyncListener);
    }

    @Deprecated
    public static AsyncTask<Bitmap, Void, Palette> generateAsync(Bitmap bitmap, PaletteAsyncListener paletteAsyncListener) {
        return from(bitmap).generate(paletteAsyncListener);
    }

    private float generateScore(Swatch swatch, Target target) {
        float[] hsl = swatch.getHsl();
        Swatch swatch2 = this.mDominantSwatch;
        int population = swatch2 != null ? swatch2.getPopulation() : 1;
        float f = 0.0f;
        float saturationWeight = target.getSaturationWeight() > 0.0f ? target.getSaturationWeight() * (1.0f - Math.abs(hsl[1] - target.getTargetSaturation())) : 0.0f;
        float lightnessWeight = target.getLightnessWeight() > 0.0f ? target.getLightnessWeight() * (1.0f - Math.abs(hsl[2] - target.getTargetLightness())) : 0.0f;
        if (target.getPopulationWeight() > 0.0f) {
            f = target.getPopulationWeight() * (swatch.getPopulation() / population);
        }
        return saturationWeight + lightnessWeight + f;
    }

    private Swatch generateScoredTarget(Target target) {
        Swatch maxScoredSwatchForTarget = getMaxScoredSwatchForTarget(target);
        if (maxScoredSwatchForTarget != null && target.isExclusive()) {
            this.mUsedColors.append(maxScoredSwatchForTarget.getRgb(), true);
        }
        return maxScoredSwatchForTarget;
    }

    private Swatch getMaxScoredSwatchForTarget(Target target) {
        int size = this.mSwatches.size();
        float f = 0.0f;
        Swatch swatch = null;
        int i = 0;
        while (i < size) {
            Swatch swatch2 = this.mSwatches.get(i);
            float f2 = f;
            Swatch swatch3 = swatch;
            if (shouldBeScoredForTarget(swatch2, target)) {
                float generateScore = generateScore(swatch2, target);
                if (swatch != null) {
                    f2 = f;
                    swatch3 = swatch;
                    if (generateScore <= f) {
                    }
                }
                swatch3 = swatch2;
                f2 = generateScore;
            }
            i++;
            f = f2;
            swatch = swatch3;
        }
        return swatch;
    }

    private boolean shouldBeScoredForTarget(Swatch swatch, Target target) {
        float[] hsl = swatch.getHsl();
        boolean z = true;
        if (hsl[1] < target.getMinimumSaturation() || hsl[1] > target.getMaximumSaturation() || hsl[2] < target.getMinimumLightness() || hsl[2] > target.getMaximumLightness() || this.mUsedColors.get(swatch.getRgb())) {
            z = false;
        }
        return z;
    }

    void generate() {
        int size = this.mTargets.size();
        for (int i = 0; i < size; i++) {
            Target target = this.mTargets.get(i);
            target.normalizeWeights();
            this.mSelectedSwatches.put(target, generateScoredTarget(target));
        }
        this.mUsedColors.clear();
    }

    public int getColorForTarget(Target target, int i) {
        Swatch swatchForTarget = getSwatchForTarget(target);
        if (swatchForTarget != null) {
            i = swatchForTarget.getRgb();
        }
        return i;
    }

    public int getDarkMutedColor(int i) {
        return getColorForTarget(Target.DARK_MUTED, i);
    }

    public Swatch getDarkMutedSwatch() {
        return getSwatchForTarget(Target.DARK_MUTED);
    }

    public int getDarkVibrantColor(int i) {
        return getColorForTarget(Target.DARK_VIBRANT, i);
    }

    public Swatch getDarkVibrantSwatch() {
        return getSwatchForTarget(Target.DARK_VIBRANT);
    }

    public int getDominantColor(int i) {
        Swatch swatch = this.mDominantSwatch;
        if (swatch != null) {
            i = swatch.getRgb();
        }
        return i;
    }

    public Swatch getDominantSwatch() {
        return this.mDominantSwatch;
    }

    public int getLightMutedColor(int i) {
        return getColorForTarget(Target.LIGHT_MUTED, i);
    }

    public Swatch getLightMutedSwatch() {
        return getSwatchForTarget(Target.LIGHT_MUTED);
    }

    public int getLightVibrantColor(int i) {
        return getColorForTarget(Target.LIGHT_VIBRANT, i);
    }

    public Swatch getLightVibrantSwatch() {
        return getSwatchForTarget(Target.LIGHT_VIBRANT);
    }

    public int getMutedColor(int i) {
        return getColorForTarget(Target.MUTED, i);
    }

    public Swatch getMutedSwatch() {
        return getSwatchForTarget(Target.MUTED);
    }

    public Swatch getSwatchForTarget(Target target) {
        return this.mSelectedSwatches.get(target);
    }

    public List<Swatch> getSwatches() {
        return Collections.unmodifiableList(this.mSwatches);
    }

    public List<Target> getTargets() {
        return Collections.unmodifiableList(this.mTargets);
    }

    public int getVibrantColor(int i) {
        return getColorForTarget(Target.VIBRANT, i);
    }

    public Swatch getVibrantSwatch() {
        return getSwatchForTarget(Target.VIBRANT);
    }
}
