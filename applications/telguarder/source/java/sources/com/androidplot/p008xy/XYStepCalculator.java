package com.androidplot.p008xy;

import android.graphics.RectF;
import com.androidplot.Region;
/* renamed from: com.androidplot.xy.XYStepCalculator */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/XYStepCalculator.class */
public class XYStepCalculator {

    /* renamed from: com.androidplot.xy.XYStepCalculator$1 */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/XYStepCalculator$1.class */
    public static /* synthetic */ class C07871 {
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$xy$Axis;
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$xy$StepMode;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0055 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:22:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:10:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:24:0x0049). Please submit an issue!!! */
        static {
            int[] iArr = new int[StepMode.values().length];
            $SwitchMap$com$androidplot$xy$StepMode = iArr;
            try {
                iArr[StepMode.INCREMENT_BY_VAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$androidplot$xy$StepMode[StepMode.INCREMENT_BY_FIT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$androidplot$xy$StepMode[StepMode.INCREMENT_BY_PIXELS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$androidplot$xy$StepMode[StepMode.SUBDIVIDE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[Axis.values().length];
            $SwitchMap$com$androidplot$xy$Axis = iArr2;
            try {
                iArr2[Axis.DOMAIN.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$androidplot$xy$Axis[Axis.RANGE.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [double] */
    /* JADX WARN: Type inference failed for: r0v23, types: [double] */
    /* JADX WARN: Type inference failed for: r0v26, types: [double] */
    /* JADX WARN: Type inference failed for: r0v33, types: [double] */
    /* JADX WARN: Type inference failed for: r0v38, types: [double] */
    /* JADX WARN: Type inference failed for: r0v8, types: [double] */
    public static Step getStep(StepMode stepMode, double d, Region region, Region region2) {
        boolean z;
        char c;
        boolean z2;
        char c2;
        boolean z3;
        boolean z4;
        int i = C07871.$SwitchMap$com$androidplot$xy$StepMode[stepMode.ordinal()];
        if (i != 1 && i != 2) {
            if (i == 3) {
                c = d;
                ?? doubleValue = region.ratio(region2).doubleValue() * d;
                z2 = region2.length().doubleValue() / d;
                z = doubleValue;
            } else if (i != 4) {
                z2 = false;
                c = 0;
                z = false;
            } else {
                char doubleValue2 = region2.length().doubleValue() / (d - 1.0d);
                z3 = region.ratio(region2).doubleValue() * doubleValue2;
                z4 = d;
                c2 = doubleValue2;
            }
            char c3 = z2 ? 1 : 0;
            boolean z5 = z2 ? 1 : 0;
            boolean z6 = z2 ? 1 : 0;
            return new Step(c3, c, z ? 1.0d : 0.0d);
        }
        char doubleValue3 = d / region.ratio(region2).doubleValue();
        z3 = d;
        z4 = region2.length().doubleValue() / doubleValue3;
        c2 = doubleValue3;
        char c4 = c2;
        z = z3;
        c = c4;
        z2 = z4;
        char c32 = z2 ? 1 : 0;
        boolean z52 = z2 ? 1 : 0;
        boolean z62 = z2 ? 1 : 0;
        return new Step(c32, c, z ? 1.0d : 0.0d);
    }

    public static Step getStep(XYPlot xYPlot, Axis axis, RectF rectF) {
        int i = C07871.$SwitchMap$com$androidplot$xy$Axis[axis.ordinal()];
        return i != 1 ? i != 2 ? null : getStep(xYPlot.getRangeStepMode(), xYPlot.getRangeStepValue(), xYPlot.getBounds().getyRegion(), new Region(Float.valueOf(rectF.top), Float.valueOf(rectF.bottom))) : getStep(xYPlot.getDomainStepMode(), xYPlot.getDomainStepValue(), xYPlot.getBounds().getxRegion(), new Region(Float.valueOf(rectF.left), Float.valueOf(rectF.right)));
    }
}
