package com.androidplot.p007ui;

import com.androidplot.p007ui.PositionMetric;
/* renamed from: com.androidplot.ui.HorizontalPosition */
/* loaded from: classes-dex2jar.jar:com/androidplot/ui/HorizontalPosition.class */
public class HorizontalPosition extends PositionMetric<HorizontalPositioning> {

    /* renamed from: com.androidplot.ui.HorizontalPosition$1 */
    /* loaded from: classes-dex2jar.jar:com/androidplot/ui/HorizontalPosition$1.class */
    public static /* synthetic */ class C07691 {
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$ui$HorizontalPositioning;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[HorizontalPositioning.values().length];
            $SwitchMap$com$androidplot$ui$HorizontalPositioning = iArr;
            try {
                iArr[HorizontalPositioning.ABSOLUTE_FROM_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$androidplot$ui$HorizontalPositioning[HorizontalPositioning.ABSOLUTE_FROM_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$androidplot$ui$HorizontalPositioning[HorizontalPositioning.ABSOLUTE_FROM_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$androidplot$ui$HorizontalPositioning[HorizontalPositioning.RELATIVE_TO_LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$androidplot$ui$HorizontalPositioning[HorizontalPositioning.RELATIVE_TO_RIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$androidplot$ui$HorizontalPositioning[HorizontalPositioning.RELATIVE_TO_CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    public HorizontalPosition(float f, HorizontalPositioning horizontalPositioning) {
        super(f, horizontalPositioning);
        validatePair(f, horizontalPositioning);
    }

    @Override // com.androidplot.p007ui.LayoutMetric
    public float getPixelValue(float f) {
        switch (C07691.$SwitchMap$com$androidplot$ui$HorizontalPositioning[((HorizontalPositioning) getLayoutType()).ordinal()]) {
            case 1:
                return getAbsolutePosition(f, PositionMetric.Origin.FROM_BEGINING);
            case 2:
                return getAbsolutePosition(f, PositionMetric.Origin.FROM_END);
            case 3:
                return getAbsolutePosition(f, PositionMetric.Origin.FROM_CENTER);
            case 4:
                return getRelativePosition(f, PositionMetric.Origin.FROM_BEGINING);
            case 5:
                return getRelativePosition(f, PositionMetric.Origin.FROM_END);
            case 6:
                return getRelativePosition(f, PositionMetric.Origin.FROM_CENTER);
            default:
                throw new IllegalArgumentException("Unsupported LayoutType: " + getLayoutType());
        }
    }

    public void setLayoutType(HorizontalPositioning horizontalPositioning) {
        super.setLayoutType((Enum) horizontalPositioning);
    }

    public void validatePair(float f, HorizontalPositioning horizontalPositioning) {
        switch (C07691.$SwitchMap$com$androidplot$ui$HorizontalPositioning[horizontalPositioning.ordinal()]) {
            case 1:
            case 2:
            case 3:
                validateValue(f, PositionMetric.LayoutMode.ABSOLUTE);
                return;
            case 4:
            case 5:
            case 6:
                validateValue(f, PositionMetric.LayoutMode.RELATIVE);
                return;
            default:
                return;
        }
    }
}
