package com.venmo.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/venmo/view/BottomArrowLocation.class */
public class BottomArrowLocation implements ArrowLocation {
    @Override // com.venmo.view.ArrowLocation
    public void configureDraw(TooltipView tooltipView, Canvas canvas) {
        tooltipView.setTooltipPath(new Path());
        RectF rectF = new RectF(canvas.getClipBounds());
        rectF.bottom -= tooltipView.getArrowHeight();
        tooltipView.getTooltipPath().addRoundRect(rectF, tooltipView.getCornerRadius(), tooltipView.getCornerRadius(), Path.Direction.CW);
        float calculateArrowMidPoint = ArrowAlignmentHelper.calculateArrowMidPoint(tooltipView, rectF);
        tooltipView.getTooltipPath().moveTo(calculateArrowMidPoint, tooltipView.getHeight());
        float arrowWidth = tooltipView.getArrowWidth() / 2;
        tooltipView.getTooltipPath().lineTo(calculateArrowMidPoint - arrowWidth, rectF.bottom);
        tooltipView.getTooltipPath().lineTo(calculateArrowMidPoint + arrowWidth, rectF.bottom);
        tooltipView.getTooltipPath().close();
        tooltipView.setPaint(new Paint(1));
        tooltipView.getTooltipPaint().setColor(tooltipView.getTooltipColor());
    }
}
