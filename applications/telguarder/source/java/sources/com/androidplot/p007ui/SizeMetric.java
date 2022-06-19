package com.androidplot.p007ui;
/* renamed from: com.androidplot.ui.SizeMetric */
/* loaded from: classes-dex2jar.jar:com/androidplot/ui/SizeMetric.class */
public class SizeMetric extends LayoutMetric<SizeMode> {

    /* renamed from: com.androidplot.ui.SizeMetric$1 */
    /* loaded from: classes-dex2jar.jar:com/androidplot/ui/SizeMetric$1.class */
    public static /* synthetic */ class C07711 {
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$ui$SizeMode;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[SizeMode.values().length];
            $SwitchMap$com$androidplot$ui$SizeMode = iArr;
            try {
                iArr[SizeMode.RELATIVE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$androidplot$ui$SizeMode[SizeMode.ABSOLUTE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$androidplot$ui$SizeMode[SizeMode.FILL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public SizeMetric(float f, SizeMode sizeMode) {
        super(f, sizeMode);
    }

    @Override // com.androidplot.p007ui.LayoutMetric
    public float getPixelValue(float f) {
        int i = C07711.$SwitchMap$com$androidplot$ui$SizeMode[getLayoutType().ordinal()];
        if (i != 1) {
            if (i == 2) {
                return getValue();
            }
            if (i == 3) {
                return f - getValue();
            }
            throw new IllegalArgumentException("Unsupported LayoutType: " + getLayoutType());
        }
        return getValue() * f;
    }

    @Override // com.androidplot.p007ui.LayoutMetric
    public /* bridge */ /* synthetic */ float getValue() {
        return super.getValue();
    }

    public void setLayoutType(SizeMode sizeMode) {
        super.setLayoutType((SizeMetric) sizeMode);
    }

    @Override // com.androidplot.p007ui.LayoutMetric
    public /* bridge */ /* synthetic */ void setValue(float f) {
        super.setValue(f);
    }

    public void validatePair(float f, SizeMode sizeMode) {
        if (C07711.$SwitchMap$com$androidplot$ui$SizeMode[sizeMode.ordinal()] != 1) {
            return;
        }
        if (f >= 0.0f && f <= 1.0f) {
            return;
        }
        throw new IllegalArgumentException("SizeMetric Relative and Hybrid layout values must be within the range of 0 to 1.");
    }
}
