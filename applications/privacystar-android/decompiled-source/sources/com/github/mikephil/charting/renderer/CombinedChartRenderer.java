package com.github.mikephil.charting.renderer;

import android.graphics.Canvas;
import com.github.mikephil.charting.animation.ChartAnimator;
import com.github.mikephil.charting.charts.Chart;
import com.github.mikephil.charting.charts.CombinedChart;
import com.github.mikephil.charting.data.CombinedData;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.utils.ViewPortHandler;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/renderer/CombinedChartRenderer.class */
public class CombinedChartRenderer extends DataRenderer {
    protected WeakReference<Chart> mChart;
    protected List<DataRenderer> mRenderers = new ArrayList(5);
    protected List<Highlight> mHighlightBuffer = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.github.mikephil.charting.renderer.CombinedChartRenderer$1 */
    /* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/renderer/CombinedChartRenderer$1.class */
    public static /* synthetic */ class C12291 {

        /* renamed from: $SwitchMap$com$github$mikephil$charting$charts$CombinedChart$DrawOrder */
        static final /* synthetic */ int[] f153x2dab6d3b = new int[CombinedChart.DrawOrder.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            try {
                f153x2dab6d3b[CombinedChart.DrawOrder.BAR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f153x2dab6d3b[CombinedChart.DrawOrder.BUBBLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f153x2dab6d3b[CombinedChart.DrawOrder.LINE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f153x2dab6d3b[CombinedChart.DrawOrder.CANDLE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f153x2dab6d3b[CombinedChart.DrawOrder.SCATTER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public CombinedChartRenderer(CombinedChart combinedChart, ChartAnimator chartAnimator, ViewPortHandler viewPortHandler) {
        super(chartAnimator, viewPortHandler);
        this.mChart = new WeakReference<>(combinedChart);
        createRenderers();
    }

    public void createRenderers() {
        this.mRenderers.clear();
        CombinedChart combinedChart = (CombinedChart) this.mChart.get();
        if (combinedChart != null) {
            for (CombinedChart.DrawOrder drawOrder : combinedChart.getDrawOrder()) {
                switch (C12291.f153x2dab6d3b[drawOrder.ordinal()]) {
                    case 1:
                        if (combinedChart.getBarData() != null) {
                            this.mRenderers.add(new BarChartRenderer(combinedChart, this.mAnimator, this.mViewPortHandler));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (combinedChart.getBubbleData() != null) {
                            this.mRenderers.add(new BubbleChartRenderer(combinedChart, this.mAnimator, this.mViewPortHandler));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (combinedChart.getLineData() != null) {
                            this.mRenderers.add(new LineChartRenderer(combinedChart, this.mAnimator, this.mViewPortHandler));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (combinedChart.getCandleData() != null) {
                            this.mRenderers.add(new CandleStickChartRenderer(combinedChart, this.mAnimator, this.mViewPortHandler));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (combinedChart.getScatterData() != null) {
                            this.mRenderers.add(new ScatterChartRenderer(combinedChart, this.mAnimator, this.mViewPortHandler));
                            break;
                        } else {
                            break;
                        }
                }
            }
        }
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawData(Canvas canvas) {
        for (DataRenderer dataRenderer : this.mRenderers) {
            dataRenderer.drawData(canvas);
        }
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawExtras(Canvas canvas) {
        for (DataRenderer dataRenderer : this.mRenderers) {
            dataRenderer.drawExtras(canvas);
        }
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawHighlighted(Canvas canvas, Highlight[] highlightArr) {
        Chart chart = this.mChart.get();
        if (chart != null) {
            for (DataRenderer dataRenderer : this.mRenderers) {
                Object obj = null;
                if (dataRenderer instanceof BarChartRenderer) {
                    obj = ((BarChartRenderer) dataRenderer).mChart.getBarData();
                } else if (dataRenderer instanceof LineChartRenderer) {
                    obj = ((LineChartRenderer) dataRenderer).mChart.getLineData();
                } else if (dataRenderer instanceof CandleStickChartRenderer) {
                    obj = ((CandleStickChartRenderer) dataRenderer).mChart.getCandleData();
                } else if (dataRenderer instanceof ScatterChartRenderer) {
                    obj = ((ScatterChartRenderer) dataRenderer).mChart.getScatterData();
                } else if (dataRenderer instanceof BubbleChartRenderer) {
                    obj = ((BubbleChartRenderer) dataRenderer).mChart.getBubbleData();
                }
                int indexOf = obj == null ? -1 : ((CombinedData) chart.getData()).getAllData().indexOf(obj);
                this.mHighlightBuffer.clear();
                for (Highlight highlight : highlightArr) {
                    if (highlight.getDataIndex() == indexOf || highlight.getDataIndex() == -1) {
                        this.mHighlightBuffer.add(highlight);
                    }
                }
                dataRenderer.drawHighlighted(canvas, (Highlight[]) this.mHighlightBuffer.toArray(new Highlight[this.mHighlightBuffer.size()]));
            }
        }
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawValues(Canvas canvas) {
        for (DataRenderer dataRenderer : this.mRenderers) {
            dataRenderer.drawValues(canvas);
        }
    }

    public DataRenderer getSubRenderer(int i) {
        if (i >= this.mRenderers.size() || i < 0) {
            return null;
        }
        return this.mRenderers.get(i);
    }

    public List<DataRenderer> getSubRenderers() {
        return this.mRenderers;
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void initBuffers() {
        for (DataRenderer dataRenderer : this.mRenderers) {
            dataRenderer.initBuffers();
        }
    }

    public void setSubRenderers(List<DataRenderer> list) {
        this.mRenderers = list;
    }
}
