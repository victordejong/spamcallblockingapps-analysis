package com.telguarder.features.postCallStatistics;

import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.androidplot.Plot;
import com.androidplot.Region;
import com.androidplot.p007ui.SeriesRenderer;
import com.androidplot.p008xy.BarFormatter;
import com.androidplot.p008xy.BarRenderer;
import com.androidplot.p008xy.BoundaryMode;
import com.androidplot.p008xy.PanZoom;
import com.androidplot.p008xy.StepMode;
import com.androidplot.p008xy.XYGraphWidget;
import com.androidplot.p008xy.XYPlot;
import com.androidplot.p008xy.XYSeries;
import com.androidplot.p008xy.ZoomEstimator;
import com.androidplot.util.PixelUtils;
import com.telguarder.C2083R;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.common.AppUtil;
import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CSStatRowViewHolder.class */
public class CSStatRowViewHolder extends CSRowViewHolder {
    private static final int BAR_WIDTH = 20;
    private static final int DOMAIN_SEPARATOR_STEP = 7;
    private static final int TOUCHSLOP = 10;
    private DurationBarFormatter incomingFormatter;
    private TextView mDailyStatHeader;
    private CSStatData mData;
    private Point movementStart;
    private DurationBarFormatter outgoingFormatter;
    private XYPlot plot;
    private boolean plotError = false;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter.class */
    public class DurationBarFormatter extends BarFormatter {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DurationBarFormatter(int i, int i2) {
            super(i, i2);
            CSStatRowViewHolder.this = r5;
        }

        @Override // com.androidplot.p008xy.BarFormatter, com.androidplot.p008xy.LineAndPointFormatter
        public SeriesRenderer doGetRendererInstance(XYPlot xYPlot) {
            return new MyBarRenderer(xYPlot);
        }

        @Override // com.androidplot.p008xy.BarFormatter, com.androidplot.p008xy.LineAndPointFormatter, com.androidplot.p007ui.Formatter
        public Class<? extends SeriesRenderer> getRendererClass() {
            return MyBarRenderer.class;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CSStatRowViewHolder$MyBarRenderer.class */
    public class MyBarRenderer extends BarRenderer<DurationBarFormatter> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyBarRenderer(XYPlot xYPlot) {
            super(xYPlot);
            CSStatRowViewHolder.this = r4;
        }

        @Override // com.androidplot.p008xy.BarRenderer
        public DurationBarFormatter getFormatter(int i, XYSeries xYSeries) {
            return (DurationBarFormatter) getFormatter(xYSeries);
        }
    }

    public CSStatRowViewHolder(View view) {
        super(view);
        this.mDailyStatHeader = (TextView) view.findViewById(C2083R.C2086id.daily_stat_header);
        initPlot(view);
    }

    private void initPlot(View view) {
        XYPlot xYPlot = (XYPlot) view.findViewById(C2083R.C2086id.plot);
        this.plot = xYPlot;
        xYPlot.setRangeLabel("");
        this.plot.setDomainLabel("");
        this.plot.setBorderStyle(Plot.BorderStyle.NONE, null, null);
        this.plot.getRegistry().setEstimator(new ZoomEstimator());
        this.plot.setDomainStep(StepMode.INCREMENT_BY_VAL, 7.0d);
        setupFormatters(view.getContext());
        setupGraph(view.getContext(), this.plot.getGraph());
        setupLineLabelStyle(view.getContext(), this.plot.getGraph().getLineLabelStyle(XYGraphWidget.Edge.BOTTOM));
        setupPanZoom();
    }

    private void onDaySelected(Date date, int i, int i2) {
        if (CSViewAdapter.isInstantiated()) {
            int positionForDay = CSViewAdapter.getInstance().getPositionForDay(date);
            if (positionForDay > 100) {
                CSViewAdapter.getInstance().mRecyclerView.scrollToPosition(positionForDay);
            } else if (positionForDay <= 0) {
            } else {
                CSViewAdapter.getInstance().mRecyclerView.smoothScrollToPosition(positionForDay);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v82, types: [double] */
    /* JADX WARN: Type inference failed for: r0v85, types: [double] */
    private void onPlotClicked(PointF pointF) {
        int i;
        CSStatData cSStatData;
        if (!this.plot.containsPoint(pointF.x, pointF.y) || this.plot.getRegistry().getSeriesAndFormatterList().size() != 2) {
            return;
        }
        int i2 = 0;
        XYSeries series = this.plot.getRegistry().getSeriesAndFormatterList().get(0).getSeries();
        if (series == null) {
            return;
        }
        Number screenToSeriesX = this.plot.screenToSeriesX(pointF.x);
        Number screenToSeriesY = this.plot.screenToSeriesY(pointF.y);
        char c = 0;
        char c2 = 0;
        int i3 = -1;
        while (true) {
            i = i3;
            if (i2 >= series.size()) {
                break;
            }
            Number x = series.getX(i2);
            Number y = series.getY(i2);
            char c3 = c;
            char c4 = c2;
            int i4 = i;
            if (x != null) {
                c3 = c;
                c4 = c2;
                i4 = i;
                if (y != null) {
                    ?? doubleValue = Region.measure(screenToSeriesX, x).doubleValue();
                    ?? doubleValue2 = Region.measure(screenToSeriesY, y).doubleValue();
                    if (i != -1 && doubleValue >= c) {
                        c3 = c;
                        c4 = c2;
                        i4 = i;
                        if (doubleValue == c) {
                            c3 = c;
                            c4 = c2;
                            i4 = i;
                            if (doubleValue2 < c2) {
                                c3 = c;
                                c4 = c2;
                                i4 = i;
                                if (y.doubleValue() < screenToSeriesY.doubleValue()) {
                                }
                            }
                        }
                    }
                    i4 = i2;
                    c3 = doubleValue;
                    c4 = doubleValue2;
                }
            }
            i2++;
            c = c3;
            c2 = c4;
            i3 = i4;
        }
        if (i < 0 || (cSStatData = this.mData) == null || cSStatData.days == null || this.mData.days.isEmpty() || this.mData.days.size() <= i) {
            return;
        }
        onDaySelected(this.mData.days.get(i), series.getY(i).intValue(), this.plot.getRegistry().getSeriesAndFormatterList().get(1).getSeries().getY(i).intValue());
        AnalyticsManager.getInstance().sendCallStatisticsDailyCallStatAction("day_clicked");
    }

    private void setupFormatters(Context context) {
        DurationBarFormatter durationBarFormatter = new DurationBarFormatter(AppUtil.getColorResource(context, C2083R.C2084color.progress_bar_incoming_color), AppUtil.getColorResource(context, C2083R.C2084color.progress_1_background_circle_color));
        this.incomingFormatter = durationBarFormatter;
        durationBarFormatter.setMarginLeft(PixelUtils.dpToPix(1.0f));
        this.incomingFormatter.setMarginRight(PixelUtils.dpToPix(1.0f));
        this.incomingFormatter.setLegendIconEnabled(false);
        DurationBarFormatter durationBarFormatter2 = new DurationBarFormatter(AppUtil.getColorResource(context, C2083R.C2084color.progress_bar_outgoing_color), AppUtil.getColorResource(context, C2083R.C2084color.progress_1_background_circle_color));
        this.outgoingFormatter = durationBarFormatter2;
        durationBarFormatter2.setMarginLeft(PixelUtils.dpToPix(1.0f));
        this.outgoingFormatter.setMarginRight(PixelUtils.dpToPix(1.0f));
        this.outgoingFormatter.setLegendIconEnabled(false);
    }

    private void setupGraph(Context context, XYGraphWidget xYGraphWidget) {
        xYGraphWidget.getGridBackgroundPaint().setColor(0);
        xYGraphWidget.getDomainGridLinePaint().setColor(AppUtil.getColorResource(context, C2083R.C2084color.divider_call_widget));
        xYGraphWidget.getRangeGridLinePaint().setColor(0);
        xYGraphWidget.getDomainOriginLinePaint().setColor(0);
        xYGraphWidget.getRangeOriginLinePaint().setColor(0);
        xYGraphWidget.getBackgroundPaint().setColor(0);
        xYGraphWidget.setMarginTop(2.0f);
        xYGraphWidget.setMarginBottom(-10.0f);
        xYGraphWidget.setLineLabelEdges(XYGraphWidget.Edge.BOTTOM);
    }

    private void setupLineLabelStyle(Context context, XYGraphWidget.LineLabelStyle lineLabelStyle) {
        lineLabelStyle.setRotation(0.0f);
        lineLabelStyle.getPaint().setTextSize(PixelUtils.spToPix(8.0f));
        lineLabelStyle.getPaint().setColor(AppUtil.getColorResource(context, C2083R.C2084color.black));
        lineLabelStyle.setFormat(new Format() { // from class: com.telguarder.features.postCallStatistics.CSStatRowViewHolder.1
            private final SimpleDateFormat dateFormat = new SimpleDateFormat("EEE, d MMM", Locale.getDefault());

            @Override // java.text.Format
            public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
                int round = (int) Math.round(((Number) obj).doubleValue());
                if (CSStatRowViewHolder.this.mData != null && CSStatRowViewHolder.this.mData.days != null && !CSStatRowViewHolder.this.mData.days.isEmpty() && CSStatRowViewHolder.this.mData.days.size() > round) {
                    try {
                        return this.dateFormat.format(CSStatRowViewHolder.this.mData.days.get(round), stringBuffer, fieldPosition);
                    } catch (Exception e) {
                    }
                }
                return stringBuffer;
            }

            @Override // java.text.Format
            public Object parseObject(String str, ParsePosition parsePosition) {
                return null;
            }
        });
    }

    private void setupPanZoom() {
        PanZoom attach = PanZoom.attach(this.plot, PanZoom.Pan.HORIZONTAL, PanZoom.Zoom.STRETCH_HORIZONTAL, PanZoom.ZoomLimit.MIN_TICKS);
        attach.setPan(PanZoom.Pan.HORIZONTAL);
        attach.setZoom(PanZoom.Zoom.STRETCH_HORIZONTAL);
        attach.setDelegate(new View.OnTouchListener() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$CSStatRowViewHolder$eLjDCWLLcOJl1gr5Pz0pwDVojvA
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return CSStatRowViewHolder.this.lambda$setupPanZoom$0$CSStatRowViewHolder(view, motionEvent);
            }
        });
    }

    private void updatePlot() {
        this.mDailyStatHeader.setVisibility(0);
        try {
            this.plot.clear();
            this.plot.addSeries((XYPlot) this.mData.incomingSeries, (XYSeries) this.incomingFormatter);
            this.plot.addSeries((XYPlot) this.mData.outgoingSeries, (XYSeries) this.outgoingFormatter);
            this.plot.getOuterLimits().setMinX(0);
            this.plot.getOuterLimits().setMaxX(Integer.valueOf(this.mData.days.size()));
            this.plot.setUserDomainOrigin(0);
            this.plot.setDomainBoundaries(Integer.valueOf(this.mData.days.size() - 29), Integer.valueOf(this.mData.days.size()), BoundaryMode.FIXED);
            MyBarRenderer myBarRenderer = (MyBarRenderer) this.plot.getRenderer(MyBarRenderer.class);
            myBarRenderer.setBarOrientation(BarRenderer.BarOrientation.OVERLAID);
            myBarRenderer.setBarGroupWidth(BarRenderer.BarGroupWidthMode.FIXED_WIDTH, 20.0f);
            this.plot.redraw();
            this.plotError = false;
        } catch (Exception e) {
            this.mDailyStatHeader.setVisibility(8);
            this.plotError = true;
        }
    }

    public void bindData(CSStatData cSStatData) {
        if (this.mData == null || this.plotError) {
            this.mData = cSStatData;
            updatePlot();
        }
    }

    public /* synthetic */ boolean lambda$setupPanZoom$0$CSStatRowViewHolder(View view, MotionEvent motionEvent) {
        Point point;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.movementStart = new Point((int) motionEvent.getX(), (int) motionEvent.getY());
            view.getParent().requestDisallowInterceptTouchEvent(true);
            return false;
        } else if (action == 1) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int abs = Math.abs(x - this.movementStart.x);
            int abs2 = Math.abs(y - this.movementStart.y);
            this.movementStart = null;
            if (Math.sqrt(Math.pow(abs, 2.0d) + Math.pow(abs2, 2.0d)) > 10.0d) {
                return false;
            }
            onPlotClicked(new PointF(x, y));
            return false;
        } else if (action != 2 || (point = this.movementStart) == null) {
            return false;
        } else {
            float abs3 = Math.abs(point.y - motionEvent.getY());
            if (abs3 <= 0.0f) {
                return false;
            }
            if (((float) Math.toDegrees(Math.atan2(abs3, Math.abs(this.movementStart.x - motionEvent.getX())))) > 50.0f) {
                view.getParent().requestDisallowInterceptTouchEvent(false);
                return true;
            }
            MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
            obtainNoHistory.offsetLocation(0.0f, this.movementStart.y - motionEvent.getY());
            view.dispatchTouchEvent(obtainNoHistory);
            AnalyticsManager.getInstance().sendCallStatisticsDailyCallStatAction("scroll_or_panzoom");
            return true;
        }
    }

    @Override // com.telguarder.features.postCallStatistics.CSRowViewHolder
    public void onAttachToWindow() {
        super.onAttachToWindow();
        AnalyticsManager.getInstance().sendCallStatisticsDailyCallStatAction("show");
    }

    @Override // com.telguarder.features.postCallStatistics.CSRowViewHolder
    public void onDetachFromWindow() {
        super.onDetachFromWindow();
    }
}
