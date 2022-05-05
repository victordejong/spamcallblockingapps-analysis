package com.github.mikephil.charting.components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.github.mikephil.charting.charts.Chart;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.utils.FSize;
import com.github.mikephil.charting.utils.MPPointF;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/components/MarkerImage.class */
public class MarkerImage implements IMarker {
    private Context mContext;
    private Drawable mDrawable;
    private WeakReference<Chart> mWeakChart;
    private MPPointF mOffset = new MPPointF();
    private MPPointF mOffset2 = new MPPointF();
    private FSize mSize = new FSize();
    private Rect mDrawableBoundsCache = new Rect();

    public MarkerImage(Context context, int i) {
        this.mContext = context;
        if (Build.VERSION.SDK_INT >= 21) {
            this.mDrawable = this.mContext.getResources().getDrawable(i, null);
        } else {
            this.mDrawable = this.mContext.getResources().getDrawable(i);
        }
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public void draw(Canvas canvas, float f, float f2) {
        if (this.mDrawable != null) {
            MPPointF offsetForDrawingAtPoint = getOffsetForDrawingAtPoint(f, f2);
            float f3 = this.mSize.width;
            float f4 = this.mSize.height;
            float f5 = f3;
            if (f3 == 0.0f) {
                f5 = f3;
                if (this.mDrawable != null) {
                    f5 = this.mDrawable.getIntrinsicWidth();
                }
            }
            float f6 = f4;
            if (f4 == 0.0f) {
                f6 = f4;
                if (this.mDrawable != null) {
                    f6 = this.mDrawable.getIntrinsicHeight();
                }
            }
            this.mDrawable.copyBounds(this.mDrawableBoundsCache);
            this.mDrawable.setBounds(this.mDrawableBoundsCache.left, this.mDrawableBoundsCache.top, this.mDrawableBoundsCache.left + ((int) f5), this.mDrawableBoundsCache.top + ((int) f6));
            int save = canvas.save();
            canvas.translate(f + offsetForDrawingAtPoint.f160x, f2 + offsetForDrawingAtPoint.f161y);
            this.mDrawable.draw(canvas);
            canvas.restoreToCount(save);
            this.mDrawable.setBounds(this.mDrawableBoundsCache);
        }
    }

    public Chart getChartView() {
        return this.mWeakChart == null ? null : this.mWeakChart.get();
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public MPPointF getOffset() {
        return this.mOffset;
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public MPPointF getOffsetForDrawingAtPoint(float f, float f2) {
        MPPointF offset = getOffset();
        this.mOffset2.f160x = offset.f160x;
        this.mOffset2.f161y = offset.f161y;
        Chart chartView = getChartView();
        float f3 = this.mSize.width;
        float f4 = this.mSize.height;
        float f5 = f3;
        if (f3 == 0.0f) {
            f5 = f3;
            if (this.mDrawable != null) {
                f5 = this.mDrawable.getIntrinsicWidth();
            }
        }
        float f6 = f4;
        if (f4 == 0.0f) {
            f6 = f4;
            if (this.mDrawable != null) {
                f6 = this.mDrawable.getIntrinsicHeight();
            }
        }
        if (this.mOffset2.f160x + f < 0.0f) {
            this.mOffset2.f160x = -f;
        } else if (chartView != null && f + f5 + this.mOffset2.f160x > chartView.getWidth()) {
            this.mOffset2.f160x = (chartView.getWidth() - f) - f5;
        }
        if (this.mOffset2.f161y + f2 < 0.0f) {
            this.mOffset2.f161y = -f2;
        } else if (chartView != null && f2 + f6 + this.mOffset2.f161y > chartView.getHeight()) {
            this.mOffset2.f161y = (chartView.getHeight() - f2) - f6;
        }
        return this.mOffset2;
    }

    public FSize getSize() {
        return this.mSize;
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public void refreshContent(Entry entry, Highlight highlight) {
    }

    public void setChartView(Chart chart) {
        this.mWeakChart = new WeakReference<>(chart);
    }

    public void setOffset(float f, float f2) {
        this.mOffset.f160x = f;
        this.mOffset.f161y = f2;
    }

    public void setOffset(MPPointF mPPointF) {
        this.mOffset = mPPointF;
        if (this.mOffset == null) {
            this.mOffset = new MPPointF();
        }
    }

    public void setSize(FSize fSize) {
        this.mSize = fSize;
        if (this.mSize == null) {
            this.mSize = new FSize();
        }
    }
}
