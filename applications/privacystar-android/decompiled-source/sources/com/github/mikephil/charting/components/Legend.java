package com.github.mikephil.charting.components;

import android.graphics.DashPathEffect;
import android.graphics.Paint;
import com.github.mikephil.charting.utils.ColorTemplate;
import com.github.mikephil.charting.utils.FSize;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/components/Legend.class */
public class Legend extends ComponentBase {
    private List<Boolean> mCalculatedLabelBreakPoints;
    private List<FSize> mCalculatedLabelSizes;
    private List<FSize> mCalculatedLineSizes;
    private LegendDirection mDirection;
    private boolean mDrawInside;
    private LegendEntry[] mEntries;
    private LegendEntry[] mExtraEntries;
    private DashPathEffect mFormLineDashEffect;
    private float mFormLineWidth;
    private float mFormSize;
    private float mFormToTextSpace;
    private LegendHorizontalAlignment mHorizontalAlignment;
    private boolean mIsLegendCustom;
    private float mMaxSizePercent;
    public float mNeededHeight;
    public float mNeededWidth;
    private LegendOrientation mOrientation;
    private LegendForm mShape;
    private float mStackSpace;
    public float mTextHeightMax;
    public float mTextWidthMax;
    private LegendVerticalAlignment mVerticalAlignment;
    private boolean mWordWrapEnabled;
    private float mXEntrySpace;
    private float mYEntrySpace;

    /* renamed from: com.github.mikephil.charting.components.Legend$1 */
    /* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/components/Legend$1.class */
    static /* synthetic */ class C12261 {

        /* renamed from: $SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation */
        static final /* synthetic */ int[] f139x9c9dbef = new int[LegendOrientation.values().length];

        /* renamed from: $SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition */
        static final /* synthetic */ int[] f140x7d277f6a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00c0 -> B:73:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00c4 -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c8 -> B:51:0x0033). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00cc -> B:63:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d0 -> B:59:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d4 -> B:69:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d8 -> B:65:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00dc -> B:75:0x006b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e0 -> B:71:0x0077). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e4 -> B:53:0x0083). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00e8 -> B:49:0x008f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00ec -> B:61:0x009b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f0 -> B:57:0x00a7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f4 -> B:67:0x00b3). Please submit an issue!!! */
        static {
            try {
                f139x9c9dbef[LegendOrientation.VERTICAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f139x9c9dbef[LegendOrientation.HORIZONTAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            f140x7d277f6a = new int[LegendPosition.values().length];
            try {
                f140x7d277f6a[LegendPosition.LEFT_OF_CHART.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f140x7d277f6a[LegendPosition.LEFT_OF_CHART_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f140x7d277f6a[LegendPosition.LEFT_OF_CHART_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f140x7d277f6a[LegendPosition.RIGHT_OF_CHART.ordinal()] = 4;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f140x7d277f6a[LegendPosition.RIGHT_OF_CHART_INSIDE.ordinal()] = 5;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f140x7d277f6a[LegendPosition.RIGHT_OF_CHART_CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f140x7d277f6a[LegendPosition.ABOVE_CHART_LEFT.ordinal()] = 7;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f140x7d277f6a[LegendPosition.ABOVE_CHART_CENTER.ordinal()] = 8;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f140x7d277f6a[LegendPosition.ABOVE_CHART_RIGHT.ordinal()] = 9;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f140x7d277f6a[LegendPosition.BELOW_CHART_LEFT.ordinal()] = 10;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f140x7d277f6a[LegendPosition.BELOW_CHART_CENTER.ordinal()] = 11;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f140x7d277f6a[LegendPosition.BELOW_CHART_RIGHT.ordinal()] = 12;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f140x7d277f6a[LegendPosition.PIECHART_CENTER.ordinal()] = 13;
            } catch (NoSuchFieldError e15) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/components/Legend$LegendDirection.class */
    public enum LegendDirection {
        LEFT_TO_RIGHT,
        RIGHT_TO_LEFT
    }

    /* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/components/Legend$LegendForm.class */
    public enum LegendForm {
        NONE,
        EMPTY,
        DEFAULT,
        SQUARE,
        CIRCLE,
        LINE
    }

    /* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/components/Legend$LegendHorizontalAlignment.class */
    public enum LegendHorizontalAlignment {
        LEFT,
        CENTER,
        RIGHT
    }

    /* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/components/Legend$LegendOrientation.class */
    public enum LegendOrientation {
        HORIZONTAL,
        VERTICAL
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/components/Legend$LegendPosition.class */
    public enum LegendPosition {
        RIGHT_OF_CHART,
        RIGHT_OF_CHART_CENTER,
        RIGHT_OF_CHART_INSIDE,
        LEFT_OF_CHART,
        LEFT_OF_CHART_CENTER,
        LEFT_OF_CHART_INSIDE,
        BELOW_CHART_LEFT,
        BELOW_CHART_RIGHT,
        BELOW_CHART_CENTER,
        ABOVE_CHART_LEFT,
        ABOVE_CHART_RIGHT,
        ABOVE_CHART_CENTER,
        PIECHART_CENTER
    }

    /* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/components/Legend$LegendVerticalAlignment.class */
    public enum LegendVerticalAlignment {
        TOP,
        CENTER,
        BOTTOM
    }

    public Legend() {
        this.mEntries = new LegendEntry[0];
        this.mIsLegendCustom = false;
        this.mHorizontalAlignment = LegendHorizontalAlignment.LEFT;
        this.mVerticalAlignment = LegendVerticalAlignment.BOTTOM;
        this.mOrientation = LegendOrientation.HORIZONTAL;
        this.mDrawInside = false;
        this.mDirection = LegendDirection.LEFT_TO_RIGHT;
        this.mShape = LegendForm.SQUARE;
        this.mFormSize = 8.0f;
        this.mFormLineWidth = 3.0f;
        this.mFormLineDashEffect = null;
        this.mXEntrySpace = 6.0f;
        this.mYEntrySpace = 0.0f;
        this.mFormToTextSpace = 5.0f;
        this.mStackSpace = 3.0f;
        this.mMaxSizePercent = 0.95f;
        this.mNeededWidth = 0.0f;
        this.mNeededHeight = 0.0f;
        this.mTextHeightMax = 0.0f;
        this.mTextWidthMax = 0.0f;
        this.mWordWrapEnabled = false;
        this.mCalculatedLabelSizes = new ArrayList(16);
        this.mCalculatedLabelBreakPoints = new ArrayList(16);
        this.mCalculatedLineSizes = new ArrayList(16);
        this.mTextSize = Utils.convertDpToPixel(10.0f);
        this.mXOffset = Utils.convertDpToPixel(5.0f);
        this.mYOffset = Utils.convertDpToPixel(3.0f);
    }

    @Deprecated
    public Legend(List<Integer> list, List<String> list2) {
        this(Utils.convertIntegers(list), Utils.convertStrings(list2));
    }

    @Deprecated
    public Legend(int[] iArr, String[] strArr) {
        this();
        if (iArr == null || strArr == null) {
            throw new IllegalArgumentException("colors array or labels array is NULL");
        } else if (iArr.length != strArr.length) {
            throw new IllegalArgumentException("colors array and labels array need to be of same size");
        } else {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < Math.min(iArr.length, strArr.length); i++) {
                LegendEntry legendEntry = new LegendEntry();
                legendEntry.formColor = iArr[i];
                legendEntry.label = strArr[i];
                if (legendEntry.formColor == 1122868) {
                    legendEntry.form = LegendForm.NONE;
                } else if (legendEntry.formColor == 1122867 || legendEntry.formColor == 0) {
                    legendEntry.form = LegendForm.EMPTY;
                }
                arrayList.add(legendEntry);
            }
            this.mEntries = (LegendEntry[]) arrayList.toArray(new LegendEntry[arrayList.size()]);
        }
    }

    public Legend(LegendEntry[] legendEntryArr) {
        this();
        if (legendEntryArr == null) {
            throw new IllegalArgumentException("entries array is NULL");
        }
        this.mEntries = legendEntryArr;
    }

    public void calculateDimensions(Paint paint, ViewPortHandler viewPortHandler) {
        float f;
        float f2;
        float f3;
        float f4;
        boolean z;
        float f5;
        float f6;
        float f7;
        float convertDpToPixel = Utils.convertDpToPixel(this.mFormSize);
        float convertDpToPixel2 = Utils.convertDpToPixel(this.mStackSpace);
        float convertDpToPixel3 = Utils.convertDpToPixel(this.mFormToTextSpace);
        float f8 = Utils.convertDpToPixel(this.mXEntrySpace);
        float convertDpToPixel4 = Utils.convertDpToPixel(this.mYEntrySpace);
        boolean z2 = this.mWordWrapEnabled;
        LegendEntry[] legendEntryArr = this.mEntries;
        int length = legendEntryArr.length;
        this.mTextWidthMax = getMaximumEntryWidth(paint);
        this.mTextHeightMax = getMaximumEntryHeight(paint);
        switch (C12261.f139x9c9dbef[this.mOrientation.ordinal()]) {
            case 1:
                float lineHeight = Utils.getLineHeight(paint);
                int i = 0;
                float f9 = 0.0f;
                float f10 = 0.0f;
                boolean z3 = false;
                float f11 = 0.0f;
                while (i < length) {
                    LegendEntry legendEntry = legendEntryArr[i];
                    boolean z4 = legendEntry.form != LegendForm.NONE;
                    float convertDpToPixel5 = Float.isNaN(legendEntry.formSize) ? convertDpToPixel : Utils.convertDpToPixel(legendEntry.formSize);
                    String str = legendEntry.label;
                    if (!z3) {
                        f11 = 0.0f;
                    }
                    float f12 = f11;
                    if (z4) {
                        float f13 = f11;
                        if (z3) {
                            f13 = f11 + convertDpToPixel2;
                        }
                        f12 = f13 + convertDpToPixel5;
                    }
                    if (str != null) {
                        if (!z4 || z3) {
                            f2 = f9;
                            f4 = f10;
                            z = z3;
                            f3 = f12;
                            if (z3) {
                                f2 = Math.max(f9, f12);
                                f4 = f10 + lineHeight + convertDpToPixel4;
                                z = false;
                                f3 = 0.0f;
                            }
                        } else {
                            f3 = f12 + convertDpToPixel3;
                            f2 = f9;
                            f4 = f10;
                            z = z3;
                        }
                        float calcTextWidth = f3 + Utils.calcTextWidth(paint, str);
                        f9 = f2;
                        f10 = f4;
                        z3 = z;
                        f = calcTextWidth;
                        if (i < length - 1) {
                            f10 = f4 + lineHeight + convertDpToPixel4;
                            f9 = f2;
                            z3 = z;
                            f = calcTextWidth;
                        }
                    } else {
                        float f14 = f12 + convertDpToPixel5;
                        f = f14;
                        if (i < length - 1) {
                            f = f14 + convertDpToPixel2;
                        }
                        z3 = true;
                    }
                    f9 = Math.max(f9, f);
                    i++;
                    f11 = f;
                }
                this.mNeededWidth = f9;
                this.mNeededHeight = f10;
                break;
            case 2:
                float lineHeight2 = Utils.getLineHeight(paint);
                float lineSpacing = Utils.getLineSpacing(paint) + convertDpToPixel4;
                float contentWidth = viewPortHandler.contentWidth();
                float f15 = this.mMaxSizePercent;
                this.mCalculatedLabelBreakPoints.clear();
                this.mCalculatedLabelSizes.clear();
                this.mCalculatedLineSizes.clear();
                int i2 = 0;
                int i3 = -1;
                float f16 = 0.0f;
                float f17 = 0.0f;
                float f18 = 0.0f;
                while (i2 < length) {
                    LegendEntry legendEntry2 = legendEntryArr[i2];
                    boolean z5 = legendEntry2.form != LegendForm.NONE;
                    float convertDpToPixel6 = Float.isNaN(legendEntry2.formSize) ? convertDpToPixel : Utils.convertDpToPixel(legendEntry2.formSize);
                    String str2 = legendEntry2.label;
                    this.mCalculatedLabelBreakPoints.add(false);
                    float f19 = i3 == -1 ? 0.0f : f17 + convertDpToPixel2;
                    if (str2 != null) {
                        this.mCalculatedLabelSizes.add(Utils.calcTextSize(paint, str2));
                        f5 = f19 + (z5 ? convertDpToPixel3 + convertDpToPixel6 : 0.0f) + this.mCalculatedLabelSizes.get(i2).width;
                    } else {
                        this.mCalculatedLabelSizes.add(FSize.getInstance(0.0f, 0.0f));
                        if (!z5) {
                            convertDpToPixel6 = 0.0f;
                        }
                        float f20 = f19 + convertDpToPixel6;
                        f5 = f20;
                        if (i3 == -1) {
                            f5 = f20;
                            i3 = i2;
                        }
                    }
                    if (str2 != null || i2 == length - 1) {
                        int i4 = (f18 > 0.0f ? 1 : (f18 == 0.0f ? 0 : -1));
                        if (i4 == 0) {
                            f8 = 0.0f;
                        }
                        if (!z2 || i4 == 0 || (contentWidth * f15) - f18 >= f8 + f5) {
                            f7 = f18 + f8 + f5;
                            f6 = f16;
                        } else {
                            this.mCalculatedLineSizes.add(FSize.getInstance(f18, lineHeight2));
                            f6 = Math.max(f16, f18);
                            this.mCalculatedLabelBreakPoints.set(i3 > -1 ? i3 : i2, true);
                            f7 = f5;
                        }
                        if (i2 == length - 1) {
                            this.mCalculatedLineSizes.add(FSize.getInstance(f7, lineHeight2));
                            f16 = Math.max(f6, f7);
                            f18 = f7;
                        } else {
                            f18 = f7;
                            f16 = f6;
                        }
                    }
                    if (str2 != null) {
                        i3 = -1;
                    }
                    i2++;
                    f17 = f5;
                }
                this.mNeededWidth = f16;
                this.mNeededHeight = (lineHeight2 * this.mCalculatedLineSizes.size()) + (lineSpacing * (this.mCalculatedLineSizes.size() == 0 ? 0 : this.mCalculatedLineSizes.size() - 1));
                break;
        }
        this.mNeededHeight += this.mYOffset;
        this.mNeededWidth += this.mXOffset;
    }

    public List<Boolean> getCalculatedLabelBreakPoints() {
        return this.mCalculatedLabelBreakPoints;
    }

    public List<FSize> getCalculatedLabelSizes() {
        return this.mCalculatedLabelSizes;
    }

    public List<FSize> getCalculatedLineSizes() {
        return this.mCalculatedLineSizes;
    }

    @Deprecated
    public int[] getColors() {
        int[] iArr = new int[this.mEntries.length];
        for (int i = 0; i < this.mEntries.length; i++) {
            iArr[i] = this.mEntries[i].form == LegendForm.NONE ? ColorTemplate.COLOR_SKIP : this.mEntries[i].form == LegendForm.EMPTY ? ColorTemplate.COLOR_NONE : this.mEntries[i].formColor;
        }
        return iArr;
    }

    public LegendDirection getDirection() {
        return this.mDirection;
    }

    public LegendEntry[] getEntries() {
        return this.mEntries;
    }

    @Deprecated
    public int[] getExtraColors() {
        int[] iArr = new int[this.mExtraEntries.length];
        for (int i = 0; i < this.mExtraEntries.length; i++) {
            iArr[i] = this.mExtraEntries[i].form == LegendForm.NONE ? ColorTemplate.COLOR_SKIP : this.mExtraEntries[i].form == LegendForm.EMPTY ? ColorTemplate.COLOR_NONE : this.mExtraEntries[i].formColor;
        }
        return iArr;
    }

    public LegendEntry[] getExtraEntries() {
        return this.mExtraEntries;
    }

    @Deprecated
    public String[] getExtraLabels() {
        String[] strArr = new String[this.mExtraEntries.length];
        for (int i = 0; i < this.mExtraEntries.length; i++) {
            strArr[i] = this.mExtraEntries[i].label;
        }
        return strArr;
    }

    public LegendForm getForm() {
        return this.mShape;
    }

    public DashPathEffect getFormLineDashEffect() {
        return this.mFormLineDashEffect;
    }

    public float getFormLineWidth() {
        return this.mFormLineWidth;
    }

    public float getFormSize() {
        return this.mFormSize;
    }

    public float getFormToTextSpace() {
        return this.mFormToTextSpace;
    }

    public LegendHorizontalAlignment getHorizontalAlignment() {
        return this.mHorizontalAlignment;
    }

    @Deprecated
    public String[] getLabels() {
        String[] strArr = new String[this.mEntries.length];
        for (int i = 0; i < this.mEntries.length; i++) {
            strArr[i] = this.mEntries[i].label;
        }
        return strArr;
    }

    public float getMaxSizePercent() {
        return this.mMaxSizePercent;
    }

    public float getMaximumEntryHeight(Paint paint) {
        float f = 0.0f;
        for (LegendEntry legendEntry : this.mEntries) {
            String str = legendEntry.label;
            if (str == null) {
                f = f;
            } else {
                float calcTextHeight = Utils.calcTextHeight(paint, str);
                f = f;
                if (calcTextHeight > f) {
                    f = calcTextHeight;
                }
            }
        }
        return f;
    }

    public float getMaximumEntryWidth(Paint paint) {
        LegendEntry[] legendEntryArr;
        float convertDpToPixel = Utils.convertDpToPixel(this.mFormToTextSpace);
        float f = 0.0f;
        float f2 = 0.0f;
        for (LegendEntry legendEntry : this.mEntries) {
            float convertDpToPixel2 = Utils.convertDpToPixel(Float.isNaN(legendEntry.formSize) ? this.mFormSize : legendEntry.formSize);
            f2 = f2;
            if (convertDpToPixel2 > f2) {
                f2 = convertDpToPixel2;
            }
            String str = legendEntry.label;
            if (str == null) {
                f = f;
            } else {
                float calcTextWidth = Utils.calcTextWidth(paint, str);
                f = f;
                if (calcTextWidth > f) {
                    f = calcTextWidth;
                }
            }
        }
        return f + f2 + convertDpToPixel;
    }

    public LegendOrientation getOrientation() {
        return this.mOrientation;
    }

    @Deprecated
    public LegendPosition getPosition() {
        if (this.mOrientation == LegendOrientation.VERTICAL && this.mHorizontalAlignment == LegendHorizontalAlignment.CENTER && this.mVerticalAlignment == LegendVerticalAlignment.CENTER) {
            return LegendPosition.PIECHART_CENTER;
        }
        if (this.mOrientation == LegendOrientation.HORIZONTAL) {
            if (this.mVerticalAlignment == LegendVerticalAlignment.TOP) {
                return this.mHorizontalAlignment == LegendHorizontalAlignment.LEFT ? LegendPosition.ABOVE_CHART_LEFT : this.mHorizontalAlignment == LegendHorizontalAlignment.RIGHT ? LegendPosition.ABOVE_CHART_RIGHT : LegendPosition.ABOVE_CHART_CENTER;
            }
            return this.mHorizontalAlignment == LegendHorizontalAlignment.LEFT ? LegendPosition.BELOW_CHART_LEFT : this.mHorizontalAlignment == LegendHorizontalAlignment.RIGHT ? LegendPosition.BELOW_CHART_RIGHT : LegendPosition.BELOW_CHART_CENTER;
        } else if (this.mHorizontalAlignment == LegendHorizontalAlignment.LEFT) {
            return (this.mVerticalAlignment != LegendVerticalAlignment.TOP || !this.mDrawInside) ? this.mVerticalAlignment == LegendVerticalAlignment.CENTER ? LegendPosition.LEFT_OF_CHART_CENTER : LegendPosition.LEFT_OF_CHART : LegendPosition.LEFT_OF_CHART_INSIDE;
        } else {
            return (this.mVerticalAlignment != LegendVerticalAlignment.TOP || !this.mDrawInside) ? this.mVerticalAlignment == LegendVerticalAlignment.CENTER ? LegendPosition.RIGHT_OF_CHART_CENTER : LegendPosition.RIGHT_OF_CHART : LegendPosition.RIGHT_OF_CHART_INSIDE;
        }
    }

    public float getStackSpace() {
        return this.mStackSpace;
    }

    public LegendVerticalAlignment getVerticalAlignment() {
        return this.mVerticalAlignment;
    }

    public float getXEntrySpace() {
        return this.mXEntrySpace;
    }

    public float getYEntrySpace() {
        return this.mYEntrySpace;
    }

    public boolean isDrawInsideEnabled() {
        return this.mDrawInside;
    }

    public boolean isLegendCustom() {
        return this.mIsLegendCustom;
    }

    public boolean isWordWrapEnabled() {
        return this.mWordWrapEnabled;
    }

    public void resetCustom() {
        this.mIsLegendCustom = false;
    }

    public void setCustom(List<LegendEntry> list) {
        this.mEntries = (LegendEntry[]) list.toArray(new LegendEntry[list.size()]);
        this.mIsLegendCustom = true;
    }

    public void setCustom(LegendEntry[] legendEntryArr) {
        this.mEntries = legendEntryArr;
        this.mIsLegendCustom = true;
    }

    public void setDirection(LegendDirection legendDirection) {
        this.mDirection = legendDirection;
    }

    public void setDrawInside(boolean z) {
        this.mDrawInside = z;
    }

    public void setEntries(List<LegendEntry> list) {
        this.mEntries = (LegendEntry[]) list.toArray(new LegendEntry[list.size()]);
    }

    public void setExtra(List<LegendEntry> list) {
        this.mExtraEntries = (LegendEntry[]) list.toArray(new LegendEntry[list.size()]);
    }

    @Deprecated
    public void setExtra(List<Integer> list, List<String> list2) {
        setExtra(Utils.convertIntegers(list), Utils.convertStrings(list2));
    }

    public void setExtra(int[] iArr, String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Math.min(iArr.length, strArr.length); i++) {
            LegendEntry legendEntry = new LegendEntry();
            legendEntry.formColor = iArr[i];
            legendEntry.label = strArr[i];
            if (legendEntry.formColor == 1122868 || legendEntry.formColor == 0) {
                legendEntry.form = LegendForm.NONE;
            } else if (legendEntry.formColor == 1122867) {
                legendEntry.form = LegendForm.EMPTY;
            }
            arrayList.add(legendEntry);
        }
        this.mExtraEntries = (LegendEntry[]) arrayList.toArray(new LegendEntry[arrayList.size()]);
    }

    public void setExtra(LegendEntry[] legendEntryArr) {
        LegendEntry[] legendEntryArr2 = legendEntryArr;
        if (legendEntryArr == null) {
            legendEntryArr2 = new LegendEntry[0];
        }
        this.mExtraEntries = legendEntryArr2;
    }

    public void setForm(LegendForm legendForm) {
        this.mShape = legendForm;
    }

    public void setFormLineDashEffect(DashPathEffect dashPathEffect) {
        this.mFormLineDashEffect = dashPathEffect;
    }

    public void setFormLineWidth(float f) {
        this.mFormLineWidth = f;
    }

    public void setFormSize(float f) {
        this.mFormSize = f;
    }

    public void setFormToTextSpace(float f) {
        this.mFormToTextSpace = f;
    }

    public void setHorizontalAlignment(LegendHorizontalAlignment legendHorizontalAlignment) {
        this.mHorizontalAlignment = legendHorizontalAlignment;
    }

    public void setMaxSizePercent(float f) {
        this.mMaxSizePercent = f;
    }

    public void setOrientation(LegendOrientation legendOrientation) {
        this.mOrientation = legendOrientation;
    }

    @Deprecated
    public void setPosition(LegendPosition legendPosition) {
        switch (C12261.f140x7d277f6a[legendPosition.ordinal()]) {
            case 1:
            case 2:
            case 3:
                this.mHorizontalAlignment = LegendHorizontalAlignment.LEFT;
                this.mVerticalAlignment = legendPosition == LegendPosition.LEFT_OF_CHART_CENTER ? LegendVerticalAlignment.CENTER : LegendVerticalAlignment.TOP;
                this.mOrientation = LegendOrientation.VERTICAL;
                break;
            case 4:
            case 5:
            case 6:
                this.mHorizontalAlignment = LegendHorizontalAlignment.RIGHT;
                this.mVerticalAlignment = legendPosition == LegendPosition.RIGHT_OF_CHART_CENTER ? LegendVerticalAlignment.CENTER : LegendVerticalAlignment.TOP;
                this.mOrientation = LegendOrientation.VERTICAL;
                break;
            case 7:
            case 8:
            case 9:
                this.mHorizontalAlignment = legendPosition == LegendPosition.ABOVE_CHART_LEFT ? LegendHorizontalAlignment.LEFT : legendPosition == LegendPosition.ABOVE_CHART_RIGHT ? LegendHorizontalAlignment.RIGHT : LegendHorizontalAlignment.CENTER;
                this.mVerticalAlignment = LegendVerticalAlignment.TOP;
                this.mOrientation = LegendOrientation.HORIZONTAL;
                break;
            case 10:
            case 11:
            case 12:
                this.mHorizontalAlignment = legendPosition == LegendPosition.BELOW_CHART_LEFT ? LegendHorizontalAlignment.LEFT : legendPosition == LegendPosition.BELOW_CHART_RIGHT ? LegendHorizontalAlignment.RIGHT : LegendHorizontalAlignment.CENTER;
                this.mVerticalAlignment = LegendVerticalAlignment.BOTTOM;
                this.mOrientation = LegendOrientation.HORIZONTAL;
                break;
            case 13:
                this.mHorizontalAlignment = LegendHorizontalAlignment.CENTER;
                this.mVerticalAlignment = LegendVerticalAlignment.CENTER;
                this.mOrientation = LegendOrientation.VERTICAL;
                break;
        }
        this.mDrawInside = legendPosition == LegendPosition.LEFT_OF_CHART_INSIDE || legendPosition == LegendPosition.RIGHT_OF_CHART_INSIDE;
    }

    public void setStackSpace(float f) {
        this.mStackSpace = f;
    }

    public void setVerticalAlignment(LegendVerticalAlignment legendVerticalAlignment) {
        this.mVerticalAlignment = legendVerticalAlignment;
    }

    public void setWordWrapEnabled(boolean z) {
        this.mWordWrapEnabled = z;
    }

    public void setXEntrySpace(float f) {
        this.mXEntrySpace = f;
    }

    public void setYEntrySpace(float f) {
        this.mYEntrySpace = f;
    }
}
