package com.github.mikephil.charting.data;

import android.util.Log;
import com.github.mikephil.charting.charts.Chart;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.datasets.IBarLineScatterCandleBubbleDataSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/data/CombinedData.class */
public class CombinedData extends BarLineScatterCandleBubbleData<IBarLineScatterCandleBubbleDataSet<? extends Entry>> {
    private BarData mBarData;
    private BubbleData mBubbleData;
    private CandleData mCandleData;
    private LineData mLineData;
    private ScatterData mScatterData;

    @Override // com.github.mikephil.charting.data.ChartData
    public void calcMinMax() {
        if (this.mDataSets == null) {
            this.mDataSets = new ArrayList();
        }
        this.mDataSets.clear();
        this.mYMax = -3.4028235E38f;
        this.mYMin = Float.MAX_VALUE;
        this.mXMax = -3.4028235E38f;
        this.mXMin = Float.MAX_VALUE;
        this.mLeftAxisMax = -3.4028235E38f;
        this.mLeftAxisMin = Float.MAX_VALUE;
        this.mRightAxisMax = -3.4028235E38f;
        this.mRightAxisMin = Float.MAX_VALUE;
        for (BarLineScatterCandleBubbleData barLineScatterCandleBubbleData : getAllData()) {
            barLineScatterCandleBubbleData.calcMinMax();
            this.mDataSets.addAll(barLineScatterCandleBubbleData.getDataSets());
            if (barLineScatterCandleBubbleData.getYMax() > this.mYMax) {
                this.mYMax = barLineScatterCandleBubbleData.getYMax();
            }
            if (barLineScatterCandleBubbleData.getYMin() < this.mYMin) {
                this.mYMin = barLineScatterCandleBubbleData.getYMin();
            }
            if (barLineScatterCandleBubbleData.getXMax() > this.mXMax) {
                this.mXMax = barLineScatterCandleBubbleData.getXMax();
            }
            if (barLineScatterCandleBubbleData.getXMin() < this.mXMin) {
                this.mXMin = barLineScatterCandleBubbleData.getXMin();
            }
            if (barLineScatterCandleBubbleData.mLeftAxisMax > this.mLeftAxisMax) {
                this.mLeftAxisMax = barLineScatterCandleBubbleData.mLeftAxisMax;
            }
            if (barLineScatterCandleBubbleData.mLeftAxisMin < this.mLeftAxisMin) {
                this.mLeftAxisMin = barLineScatterCandleBubbleData.mLeftAxisMin;
            }
            if (barLineScatterCandleBubbleData.mRightAxisMax > this.mRightAxisMax) {
                this.mRightAxisMax = barLineScatterCandleBubbleData.mRightAxisMax;
            }
            if (barLineScatterCandleBubbleData.mRightAxisMin < this.mRightAxisMin) {
                this.mRightAxisMin = barLineScatterCandleBubbleData.mRightAxisMin;
            }
        }
    }

    public List<BarLineScatterCandleBubbleData> getAllData() {
        ArrayList arrayList = new ArrayList();
        if (this.mLineData != null) {
            arrayList.add(this.mLineData);
        }
        if (this.mBarData != null) {
            arrayList.add(this.mBarData);
        }
        if (this.mScatterData != null) {
            arrayList.add(this.mScatterData);
        }
        if (this.mCandleData != null) {
            arrayList.add(this.mCandleData);
        }
        if (this.mBubbleData != null) {
            arrayList.add(this.mBubbleData);
        }
        return arrayList;
    }

    public BarData getBarData() {
        return this.mBarData;
    }

    public BubbleData getBubbleData() {
        return this.mBubbleData;
    }

    public CandleData getCandleData() {
        return this.mCandleData;
    }

    public BarLineScatterCandleBubbleData getDataByIndex(int i) {
        return getAllData().get(i);
    }

    public int getDataIndex(ChartData chartData) {
        return getAllData().indexOf(chartData);
    }

    public IBarLineScatterCandleBubbleDataSet<? extends Entry> getDataSetByHighlight(Highlight highlight) {
        if (highlight.getDataIndex() >= getAllData().size()) {
            return null;
        }
        BarLineScatterCandleBubbleData dataByIndex = getDataByIndex(highlight.getDataIndex());
        if (highlight.getDataSetIndex() >= dataByIndex.getDataSetCount()) {
            return null;
        }
        return (IBarLineScatterCandleBubbleDataSet) dataByIndex.getDataSets().get(highlight.getDataSetIndex());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0048  */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.github.mikephil.charting.interfaces.datasets.IDataSet] */
    @Override // com.github.mikephil.charting.data.ChartData
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.github.mikephil.charting.data.Entry getEntryForHighlight(com.github.mikephil.charting.highlight.Highlight r4) {
        /*
            r3 = this;
            r0 = r4
            int r0 = r0.getDataIndex()
            r1 = r3
            java.util.List r1 = r1.getAllData()
            int r1 = r1.size()
            if (r0 < r1) goto L_0x0012
            r0 = 0
            return r0
        L_0x0012:
            r0 = r3
            r1 = r4
            int r1 = r1.getDataIndex()
            com.github.mikephil.charting.data.BarLineScatterCandleBubbleData r0 = r0.getDataByIndex(r1)
            r5 = r0
            r0 = r4
            int r0 = r0.getDataSetIndex()
            r1 = r5
            int r1 = r1.getDataSetCount()
            if (r0 < r1) goto L_0x0028
            r0 = 0
            return r0
        L_0x0028:
            r0 = r5
            r1 = r4
            int r1 = r1.getDataSetIndex()
            com.github.mikephil.charting.interfaces.datasets.IDataSet r0 = r0.getDataSetByIndex(r1)
            r1 = r4
            float r1 = r1.getX()
            java.util.List r0 = r0.getEntriesForXValue(r1)
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        L_0x003f:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x006a
            r0 = r5
            java.lang.Object r0 = r0.next()
            com.github.mikephil.charting.data.Entry r0 = (com.github.mikephil.charting.data.Entry) r0
            r6 = r0
            r0 = r6
            float r0 = r0.getY()
            r1 = r4
            float r1 = r1.getY()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0068
            r0 = r4
            float r0 = r0.getY()
            boolean r0 = java.lang.Float.isNaN(r0)
            if (r0 == 0) goto L_0x003f
        L_0x0068:
            r0 = r6
            return r0
        L_0x006a:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.data.CombinedData.getEntryForHighlight(com.github.mikephil.charting.highlight.Highlight):com.github.mikephil.charting.data.Entry");
    }

    public LineData getLineData() {
        return this.mLineData;
    }

    public ScatterData getScatterData() {
        return this.mScatterData;
    }

    @Override // com.github.mikephil.charting.data.ChartData
    public void notifyDataChanged() {
        if (this.mLineData != null) {
            this.mLineData.notifyDataChanged();
        }
        if (this.mBarData != null) {
            this.mBarData.notifyDataChanged();
        }
        if (this.mCandleData != null) {
            this.mCandleData.notifyDataChanged();
        }
        if (this.mScatterData != null) {
            this.mScatterData.notifyDataChanged();
        }
        if (this.mBubbleData != null) {
            this.mBubbleData.notifyDataChanged();
        }
        calcMinMax();
    }

    @Override // com.github.mikephil.charting.data.ChartData
    @Deprecated
    public boolean removeDataSet(int i) {
        Log.e(Chart.LOG_TAG, "removeDataSet(int index) not supported for CombinedData");
        return false;
    }

    public boolean removeDataSet(IBarLineScatterCandleBubbleDataSet<? extends Entry> iBarLineScatterCandleBubbleDataSet) {
        Iterator<BarLineScatterCandleBubbleData> it = getAllData().iterator();
        boolean z = false;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            boolean removeDataSet = it.next().removeDataSet((BarLineScatterCandleBubbleData) iBarLineScatterCandleBubbleDataSet);
            z = removeDataSet;
            if (removeDataSet) {
                z = removeDataSet;
                break;
            }
        }
        return z;
    }

    @Override // com.github.mikephil.charting.data.ChartData
    @Deprecated
    public boolean removeEntry(float f, int i) {
        Log.e(Chart.LOG_TAG, "removeEntry(...) not supported for CombinedData");
        return false;
    }

    @Override // com.github.mikephil.charting.data.ChartData
    @Deprecated
    public boolean removeEntry(Entry entry, int i) {
        Log.e(Chart.LOG_TAG, "removeEntry(...) not supported for CombinedData");
        return false;
    }

    public void setData(BarData barData) {
        this.mBarData = barData;
        notifyDataChanged();
    }

    public void setData(BubbleData bubbleData) {
        this.mBubbleData = bubbleData;
        notifyDataChanged();
    }

    public void setData(CandleData candleData) {
        this.mCandleData = candleData;
        notifyDataChanged();
    }

    public void setData(LineData lineData) {
        this.mLineData = lineData;
        notifyDataChanged();
    }

    public void setData(ScatterData scatterData) {
        this.mScatterData = scatterData;
        notifyDataChanged();
    }
}
