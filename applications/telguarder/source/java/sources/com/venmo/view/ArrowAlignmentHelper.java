package com.venmo.view;

import android.graphics.RectF;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/venmo/view/ArrowAlignmentHelper.class */
public final class ArrowAlignmentHelper {

    /* renamed from: com.venmo.view.ArrowAlignmentHelper$1 */
    /* loaded from: classes2-dex2jar.jar:com/venmo/view/ArrowAlignmentHelper$1.class */
    public static /* synthetic */ class C23601 {
        static final /* synthetic */ int[] $SwitchMap$com$venmo$view$ArrowAlignment;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[ArrowAlignment.values().length];
            $SwitchMap$com$venmo$view$ArrowAlignment = iArr;
            try {
                iArr[ArrowAlignment.START.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$venmo$view$ArrowAlignment[ArrowAlignment.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$venmo$view$ArrowAlignment[ArrowAlignment.END.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$venmo$view$ArrowAlignment[ArrowAlignment.ANCHORED_VIEW.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public static float calculateArrowMidPoint(TooltipView tooltipView, RectF rectF) {
        float f;
        View findViewById;
        int alignmentOffset = tooltipView.getAlignmentOffset();
        int i = C23601.$SwitchMap$com$venmo$view$ArrowAlignment[tooltipView.getArrowAlignment().ordinal()];
        if (i == 1) {
            f = alignmentOffset == 0 ? rectF.width() / 4.0f : alignmentOffset;
        } else if (i == 2) {
            f = rectF.width() / 2.0f;
            if (alignmentOffset > 0) {
                throw new IllegalArgumentException("Offsets are not support when the tooltip arrow is anchored in the middle of the view.");
            }
        } else if (i == 3) {
            f = rectF.width() - (alignmentOffset == 0 ? rectF.width() / 4.0f : alignmentOffset);
        } else if (i != 4) {
            f = 0.0f;
        } else {
            f = rectF.width() / 2.0f;
            if (tooltipView.getAnchoredViewId() != -1) {
                f += ((((View) tooltipView.getParent()).findViewById(tooltipView.getAnchoredViewId()).getX() + (findViewById.getWidth() / 2)) - tooltipView.getX()) - (tooltipView.getWidth() / 2);
            }
        }
        return f;
    }
}
