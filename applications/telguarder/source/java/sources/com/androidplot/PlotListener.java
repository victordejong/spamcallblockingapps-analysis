package com.androidplot;

import android.graphics.Canvas;
/* loaded from: classes-dex2jar.jar:com/androidplot/PlotListener.class */
public interface PlotListener {
    void onAfterDraw(Plot plot, Canvas canvas);

    void onBeforeDraw(Plot plot, Canvas canvas);
}
