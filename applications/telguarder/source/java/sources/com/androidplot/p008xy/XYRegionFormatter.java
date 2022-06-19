package com.androidplot.p008xy;

import android.content.Context;
import android.graphics.Paint;
import com.halfhp.fig.Fig;
import com.halfhp.fig.FigException;
/* renamed from: com.androidplot.xy.XYRegionFormatter */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/XYRegionFormatter.class */
public class XYRegionFormatter {
    private Paint paint;

    public XYRegionFormatter(int i) {
        Paint paint = new Paint();
        this.paint = paint;
        paint.setStyle(Paint.Style.FILL);
        this.paint.setAntiAlias(true);
        this.paint.setColor(i);
    }

    public XYRegionFormatter(Context context, int i) {
        Paint paint = new Paint();
        this.paint = paint;
        paint.setStyle(Paint.Style.FILL);
        this.paint.setAntiAlias(true);
        if (getClass().equals(XYRegionFormatter.class)) {
            try {
                Fig.configure(context, this, i);
            } catch (FigException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public int getColor() {
        return this.paint.getColor();
    }

    public Paint getPaint() {
        return this.paint;
    }

    public void setColor(int i) {
        this.paint.setColor(i);
    }
}
