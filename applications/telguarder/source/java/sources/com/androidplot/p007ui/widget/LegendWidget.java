package com.androidplot.p007ui.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.core.view.ViewCompat;
import com.androidplot.p007ui.LayoutManager;
import com.androidplot.p007ui.Size;
import com.androidplot.p007ui.TableModel;
import com.androidplot.p007ui.widget.LegendItem;
import com.androidplot.util.FontUtils;
import com.androidplot.util.PixelUtils;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.androidplot.ui.widget.LegendWidget */
/* loaded from: classes-dex2jar.jar:com/androidplot/ui/widget/LegendWidget.class */
public abstract class LegendWidget<ItemT extends LegendItem> extends Widget {
    private static final float DEFAULT_TEXT_SIZE_DP = 20.0f;
    private boolean drawIconBackgroundEnabled = true;
    private boolean drawIconBorderEnabled = true;
    private Paint iconBackgroundPaint;
    private Paint iconBorderPaint;
    private Size iconSize;
    private Comparator<ItemT> legendItemComparator;
    private TableModel tableModel;
    private Paint textPaint;

    public LegendWidget(TableModel tableModel, LayoutManager layoutManager, Size size, Size size2) {
        super(layoutManager, size);
        Paint paint = new Paint();
        this.textPaint = paint;
        paint.setColor(-3355444);
        this.textPaint.setTextSize(PixelUtils.spToPix(DEFAULT_TEXT_SIZE_DP));
        this.textPaint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.iconBackgroundPaint = paint2;
        paint2.setColor(ViewCompat.MEASURED_STATE_MASK);
        Paint paint3 = new Paint();
        this.iconBorderPaint = paint3;
        paint3.setColor(0);
        this.iconBorderPaint.setStyle(Paint.Style.STROKE);
        setTableModel(tableModel);
        this.iconSize = size2;
    }

    private RectF getIconRect(RectF rectF) {
        float f = rectF.top;
        float height = rectF.height() / 2.0f;
        RectF rectF2 = this.iconSize.getRectF(rectF);
        rectF2.offsetTo(rectF.left + 1.0f, (f + height) - (rectF2.height() / 2.0f));
        return rectF2;
    }

    protected static float getRectCenterY(RectF rectF) {
        return rectF.top + (rectF.height() / 2.0f);
    }

    protected void beginDrawingCell(Canvas canvas, RectF rectF) {
        Paint paint;
        if (!this.drawIconBackgroundEnabled || (paint = this.iconBackgroundPaint) == null) {
            return;
        }
        canvas.drawRect(rectF, paint);
    }

    @Override // com.androidplot.p007ui.widget.Widget
    protected void doOnDraw(Canvas canvas, RectF rectF) {
        List<ItemT> legendItems = getLegendItems();
        Comparator<ItemT> comparator = this.legendItemComparator;
        if (comparator != null) {
            Collections.sort(legendItems, comparator);
        }
        Iterator<RectF> iterator = this.tableModel.getIterator(rectF, legendItems.size());
        for (ItemT itemt : legendItems) {
            RectF next = iterator.next();
            RectF iconRect = getIconRect(next);
            beginDrawingCell(canvas, iconRect);
            drawItem(canvas, iconRect, itemt);
            finishDrawingCell(canvas, next, iconRect, itemt);
        }
    }

    protected abstract void drawIcon(Canvas canvas, RectF rectF, ItemT itemt);

    protected void drawItem(Canvas canvas, RectF rectF, ItemT itemt) {
        drawIcon(canvas, rectF, itemt);
    }

    protected void finishDrawingCell(Canvas canvas, RectF rectF, RectF rectF2, LegendItem legendItem) {
        Paint paint;
        if (this.drawIconBorderEnabled && (paint = this.iconBorderPaint) != null) {
            canvas.drawRect(rectF2, paint);
        }
        float rectCenterY = getRectCenterY(rectF) + (FontUtils.getFontHeight(this.textPaint) / 2.0f);
        if (this.textPaint.getTextAlign().equals(Paint.Align.RIGHT)) {
            canvas.drawText(legendItem.getTitle(), rectF2.left - 2.0f, rectCenterY, this.textPaint);
        } else {
            canvas.drawText(legendItem.getTitle(), rectF2.right + 2.0f, rectCenterY, this.textPaint);
        }
    }

    public Size getIconSize() {
        return this.iconSize;
    }

    public Comparator<ItemT> getLegendItemComparator() {
        return this.legendItemComparator;
    }

    protected abstract List<ItemT> getLegendItems();

    public Paint getTextPaint() {
        return this.textPaint;
    }

    public boolean isDrawIconBackgroundEnabled() {
        return this.drawIconBackgroundEnabled;
    }

    public boolean isDrawIconBorderEnabled() {
        return this.drawIconBorderEnabled;
    }

    public void setDrawIconBackgroundEnabled(boolean z) {
        this.drawIconBackgroundEnabled = z;
    }

    public void setDrawIconBorderEnabled(boolean z) {
        this.drawIconBorderEnabled = z;
    }

    public void setIconSize(Size size) {
        this.iconSize = size;
    }

    public void setLegendItemComparator(Comparator<ItemT> comparator) {
        this.legendItemComparator = comparator;
    }

    public void setTableModel(TableModel tableModel) {
        synchronized (this) {
            this.tableModel = tableModel;
        }
    }

    public void setTextPaint(Paint paint) {
        this.textPaint = paint;
    }
}
