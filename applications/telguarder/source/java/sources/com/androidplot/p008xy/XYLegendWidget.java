package com.androidplot.p008xy;

import android.graphics.Canvas;
import android.graphics.RectF;
import com.androidplot.p007ui.LayoutManager;
import com.androidplot.p007ui.SeriesBundle;
import com.androidplot.p007ui.Size;
import com.androidplot.p007ui.TableModel;
import com.androidplot.p007ui.widget.LegendWidget;
import com.androidplot.p008xy.XYLegendItem;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
/* renamed from: com.androidplot.xy.XYLegendWidget */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/XYLegendWidget.class */
public class XYLegendWidget extends LegendWidget<XYLegendItem> {
    private XYPlot plot;

    /* renamed from: com.androidplot.xy.XYLegendWidget$2 */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/XYLegendWidget$2.class */
    public static /* synthetic */ class C07842 {
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$xy$XYLegendItem$Type;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[XYLegendItem.Type.values().length];
            $SwitchMap$com$androidplot$xy$XYLegendItem$Type = iArr;
            try {
                iArr[XYLegendItem.Type.REGION.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$androidplot$xy$XYLegendItem$Type[XYLegendItem.Type.SERIES.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public XYLegendWidget(LayoutManager layoutManager, XYPlot xYPlot, Size size, TableModel tableModel, Size size2) {
        super(tableModel, layoutManager, size, size2);
        this.plot = xYPlot;
        setLegendItemComparator(new Comparator<XYLegendItem>() { // from class: com.androidplot.xy.XYLegendWidget.1
            public int compare(XYLegendItem xYLegendItem, XYLegendItem xYLegendItem2) {
                return xYLegendItem.type == xYLegendItem2.type ? xYLegendItem.getTitle().compareTo(xYLegendItem2.getTitle()) : xYLegendItem.type.compareTo(xYLegendItem2.type);
            }
        });
    }

    public void drawIcon(Canvas canvas, RectF rectF, XYLegendItem xYLegendItem) {
        int i = C07842.$SwitchMap$com$androidplot$xy$XYLegendItem$Type[xYLegendItem.type.ordinal()];
        if (i == 1) {
            drawRegionLegendIcon(canvas, rectF, (XYRegionFormatter) xYLegendItem.item);
        } else if (i == 2) {
            XYSeriesFormatter xYSeriesFormatter = (XYSeriesFormatter) xYLegendItem.item;
            ((XYSeriesRenderer) this.plot.getRenderer(xYSeriesFormatter.getRendererClass())).drawSeriesLegendIcon(canvas, rectF, xYSeriesFormatter);
        } else {
            throw new UnsupportedOperationException("Unexpected item type: " + xYLegendItem.type);
        }
    }

    protected void drawRegionLegendIcon(Canvas canvas, RectF rectF, XYRegionFormatter xYRegionFormatter) {
        canvas.drawRect(rectF, xYRegionFormatter.getPaint());
    }

    @Override // com.androidplot.p007ui.widget.LegendWidget
    protected List<XYLegendItem> getLegendItems() {
        ArrayList arrayList = new ArrayList();
        for (SeriesBundle<XYSeries, XYSeriesFormatter> seriesBundle : this.plot.getRegistry().getLegendEnabledItems()) {
            arrayList.add(new XYLegendItem(XYLegendItem.Type.SERIES, seriesBundle.getFormatter(), seriesBundle.getSeries().getTitle()));
        }
        for (XYSeriesRenderer xYSeriesRenderer : this.plot.getRendererList()) {
            for (Map.Entry<XYRegionFormatter, String> entry : xYSeriesRenderer.getUniqueRegionFormatters().entrySet()) {
                arrayList.add(new XYLegendItem(XYLegendItem.Type.REGION, entry.getKey(), entry.getValue()));
            }
        }
        return arrayList;
    }
}
