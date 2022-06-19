package com.androidplot.p007ui;

import java.lang.Enum;
/* renamed from: com.androidplot.ui.PositionMetric */
/* loaded from: classes-dex2jar.jar:com/androidplot/ui/PositionMetric.class */
public abstract class PositionMetric<LayoutType extends Enum> extends LayoutMetric<LayoutType> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.androidplot.ui.PositionMetric$1 */
    /* loaded from: classes-dex2jar.jar:com/androidplot/ui/PositionMetric$1.class */
    public static /* synthetic */ class C07701 {
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$ui$PositionMetric$LayoutMode;
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$ui$PositionMetric$Origin;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x004a -> B:19:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004e -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0052 -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0056 -> B:21:0x003e). Please submit an issue!!! */
        static {
            int[] iArr = new int[Origin.values().length];
            $SwitchMap$com$androidplot$ui$PositionMetric$Origin = iArr;
            try {
                iArr[Origin.FROM_BEGINING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$androidplot$ui$PositionMetric$Origin[Origin.FROM_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$androidplot$ui$PositionMetric$Origin[Origin.FROM_END.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[LayoutMode.values().length];
            $SwitchMap$com$androidplot$ui$PositionMetric$LayoutMode = iArr2;
            try {
                iArr2[LayoutMode.ABSOLUTE.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$androidplot$ui$PositionMetric$LayoutMode[LayoutMode.RELATIVE.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.androidplot.ui.PositionMetric$LayoutMode */
    /* loaded from: classes-dex2jar.jar:com/androidplot/ui/PositionMetric$LayoutMode.class */
    protected enum LayoutMode {
        ABSOLUTE,
        RELATIVE
    }

    /* renamed from: com.androidplot.ui.PositionMetric$Origin */
    /* loaded from: classes-dex2jar.jar:com/androidplot/ui/PositionMetric$Origin.class */
    protected enum Origin {
        FROM_BEGINING,
        FROM_CENTER,
        FROM_END
    }

    public PositionMetric(float f, LayoutType layouttype) {
        super(f, layouttype);
    }

    public static void validateValue(float f, LayoutMode layoutMode) throws IllegalArgumentException {
        int i = C07701.$SwitchMap$com$androidplot$ui$PositionMetric$LayoutMode[layoutMode.ordinal()];
        if (i != 1) {
            if (i == 2) {
                if (f >= -1.0f && f <= 1.0f) {
                    return;
                }
                throw new IllegalArgumentException("Relative layout values must be within the range of -1 to 1.");
            }
            throw new IllegalArgumentException("Unknown LayoutMode: " + layoutMode);
        }
    }

    public float getAbsolutePosition(float f, Origin origin) {
        int i = C07701.$SwitchMap$com$androidplot$ui$PositionMetric$Origin[origin.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return (f / 2.0f) + getValue();
            }
            if (i == 3) {
                return f - getValue();
            }
            throw new IllegalArgumentException("Unsupported Origin: " + origin);
        }
        return getValue();
    }

    @Override // com.androidplot.p007ui.LayoutMetric
    public /* bridge */ /* synthetic */ Enum getLayoutType() {
        return super.getLayoutType();
    }

    public float getRelativePosition(float f, Origin origin) {
        int i = C07701.$SwitchMap$com$androidplot$ui$PositionMetric$Origin[origin.ordinal()];
        if (i != 1) {
            if (i == 2) {
                float f2 = f / 2.0f;
                return f2 + (getValue() * f2);
            } else if (i == 3) {
                return f + (getValue() * f);
            } else {
                throw new IllegalArgumentException("Unsupported Origin: " + origin);
            }
        }
        return f * getValue();
    }

    @Override // com.androidplot.p007ui.LayoutMetric
    public /* bridge */ /* synthetic */ float getValue() {
        return super.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.androidplot.p007ui.LayoutMetric
    public /* bridge */ /* synthetic */ void set(float f, Enum r6) {
        super.set(f, r6);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.androidplot.p007ui.LayoutMetric
    public /* bridge */ /* synthetic */ void setLayoutType(Enum r4) {
        super.setLayoutType(r4);
    }

    @Override // com.androidplot.p007ui.LayoutMetric
    public /* bridge */ /* synthetic */ void setValue(float f) {
        super.setValue(f);
    }
}
