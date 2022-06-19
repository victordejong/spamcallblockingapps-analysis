package com.androidplot.util;

import android.content.res.TypedArray;
import android.graphics.Paint;
import android.util.Log;
import com.androidplot.p007ui.Anchor;
import com.androidplot.p007ui.BoxModelable;
import com.androidplot.p007ui.HorizontalPositioning;
import com.androidplot.p007ui.Insets;
import com.androidplot.p007ui.PositionMetrics;
import com.androidplot.p007ui.Size;
import com.androidplot.p007ui.SizeMetric;
import com.androidplot.p007ui.SizeMode;
import com.androidplot.p007ui.VerticalPositioning;
import com.androidplot.p007ui.widget.Widget;
import com.androidplot.p008xy.StepMode;
import com.androidplot.p008xy.StepModel;
/* loaded from: classes-dex2jar.jar:com/androidplot/util/AttrUtils.class */
public class AttrUtils {
    private static final String TAG = "com.androidplot.util.AttrUtils";

    public static void configureBoxModelable(TypedArray typedArray, BoxModelable boxModelable, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (typedArray != null) {
            boxModelable.setMargins(typedArray.getDimension(i3, boxModelable.getMarginLeft()), typedArray.getDimension(i, boxModelable.getMarginTop()), typedArray.getDimension(i4, boxModelable.getMarginRight()), typedArray.getDimension(i2, boxModelable.getMarginBottom()));
            boxModelable.setPadding(typedArray.getDimension(i7, boxModelable.getPaddingLeft()), typedArray.getDimension(i5, boxModelable.getPaddingTop()), typedArray.getDimension(i8, boxModelable.getPaddingRight()), typedArray.getDimension(i6, boxModelable.getPaddingBottom()));
        }
    }

    public static void configureInsets(TypedArray typedArray, Insets insets, int i, int i2, int i3, int i4) {
        insets.setTop(typedArray.getDimension(i, insets.getTop()));
        insets.setBottom(typedArray.getDimension(i2, insets.getBottom()));
        insets.setLeft(typedArray.getDimension(i3, insets.getLeft()));
        insets.setRight(typedArray.getDimension(i4, insets.getRight()));
    }

    public static void configureLinePaint(TypedArray typedArray, Paint paint, int i, int i2) {
        if (typedArray != null) {
            setColor(typedArray, paint, i);
            paint.setStrokeWidth(typedArray.getDimension(i2, paint.getStrokeWidth()));
        }
    }

    public static void configurePositionMetrics(TypedArray typedArray, PositionMetrics positionMetrics, int i, int i2, int i3, int i4, int i5) {
        if (typedArray == null || positionMetrics == null) {
            return;
        }
        positionMetrics.getXPositionMetric().set(getIntFloatDimenValue(typedArray, i2, Float.valueOf(positionMetrics.getXPositionMetric().getValue())).floatValue(), getXLayoutStyle(typedArray, i, (HorizontalPositioning) positionMetrics.getXPositionMetric().getLayoutType()));
        positionMetrics.getYPositionMetric().set(getIntFloatDimenValue(typedArray, i4, Float.valueOf(positionMetrics.getYPositionMetric().getValue())).floatValue(), getYLayoutStyle(typedArray, i3, (VerticalPositioning) positionMetrics.getYPositionMetric().getLayoutType()));
        positionMetrics.setAnchor(getAnchorPosition(typedArray, i5, positionMetrics.getAnchor()));
    }

    public static void configureSize(TypedArray typedArray, Size size, int i, int i2, int i3, int i4) {
        if (typedArray != null) {
            configureSizeMetric(typedArray, size.getHeight(), i, i2);
            configureSizeMetric(typedArray, size.getWidth(), i3, i4);
        }
    }

    private static void configureSizeMetric(TypedArray typedArray, SizeMetric sizeMetric, int i, int i2) {
        sizeMetric.set(getIntFloatDimenValue(typedArray, i2, Float.valueOf(sizeMetric.getValue())).floatValue(), getSizeLayoutType(typedArray, i, sizeMetric.getLayoutType()));
    }

    public static void configureStep(TypedArray typedArray, StepModel stepModel, int i, int i2) {
        if (typedArray != null) {
            stepModel.setMode(StepMode.values()[typedArray.getInt(i, stepModel.getMode().ordinal())]);
            stepModel.setValue(getIntFloatDimenValue(typedArray, i2, Double.valueOf(stepModel.getValue())).doubleValue());
        }
    }

    public static void configureTextAlign(TypedArray typedArray, Paint paint, int i) {
        if (typedArray != null) {
            paint.setTextAlign(Paint.Align.values()[typedArray.getInt(i, paint.getTextAlign().ordinal())]);
        }
    }

    public static void configureTextPaint(TypedArray typedArray, Paint paint, int i, int i2) {
        configureTextPaint(typedArray, paint, i, i2, null);
    }

    public static void configureTextPaint(TypedArray typedArray, Paint paint, int i, int i2, Integer num) {
        if (typedArray != null) {
            setColor(typedArray, paint, i);
            setTextSize(typedArray, paint, i2);
            if (num == null || !typedArray.hasValue(num.intValue())) {
                return;
            }
            configureTextAlign(typedArray, paint, num.intValue());
        }
    }

    public static void configureWidget(TypedArray typedArray, Widget widget, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        if (typedArray != null) {
            configureSize(typedArray, widget.getSize(), i, i2, i3, i4);
            configurePositionMetrics(typedArray, widget.getPositionMetrics(), i5, i6, i7, i8, i9);
            widget.setVisible(typedArray.getBoolean(i10, widget.isVisible()));
        }
    }

    public static void configureWidgetRotation(TypedArray typedArray, Widget widget, int i) {
        if (typedArray != null) {
            widget.setRotation(getWidgetRotation(typedArray, i, Widget.Rotation.NONE));
        }
    }

    private static Anchor getAnchorPosition(TypedArray typedArray, int i, Anchor anchor) {
        return Anchor.values()[typedArray.getInt(i, anchor.ordinal())];
    }

    private static Number getIntFloatDimenValue(TypedArray typedArray, int i, Number number) {
        Float f = number;
        if (typedArray != null) {
            f = number;
            if (typedArray.hasValue(i)) {
                int i2 = typedArray.peekValue(i).type;
                if (i2 == 5) {
                    f = Float.valueOf(typedArray.getDimension(i, number.floatValue()));
                } else if (i2 == 16) {
                    f = Integer.valueOf(typedArray.getInt(i, number.intValue()));
                } else if (i2 != 4) {
                    throw new IllegalArgumentException("Invalid value type - must be int, float or dimension.");
                } else {
                    f = Float.valueOf(typedArray.getFloat(i, number.floatValue()));
                }
            }
        }
        return f;
    }

    private static SizeMode getSizeLayoutType(TypedArray typedArray, int i, SizeMode sizeMode) {
        return SizeMode.values()[typedArray.getInt(i, sizeMode.ordinal())];
    }

    private static Widget.Rotation getWidgetRotation(TypedArray typedArray, int i, Widget.Rotation rotation) {
        return Widget.Rotation.values()[typedArray.getInt(i, rotation.ordinal())];
    }

    private static HorizontalPositioning getXLayoutStyle(TypedArray typedArray, int i, HorizontalPositioning horizontalPositioning) {
        return HorizontalPositioning.values()[typedArray.getInt(i, horizontalPositioning.ordinal())];
    }

    private static VerticalPositioning getYLayoutStyle(TypedArray typedArray, int i, VerticalPositioning verticalPositioning) {
        return VerticalPositioning.values()[typedArray.getInt(i, verticalPositioning.ordinal())];
    }

    public static void setColor(TypedArray typedArray, Paint paint, int i) {
        if (paint != null) {
            paint.setColor(typedArray.getColor(i, paint.getColor()));
            return;
        }
        String str = TAG;
        Log.w(str, "Attempt to configure null Paint property for attrId: " + i);
    }

    public static void setTextSize(TypedArray typedArray, Paint paint, int i) {
        paint.setTextSize(typedArray.getDimension(i, paint.getTextSize()));
    }
}
