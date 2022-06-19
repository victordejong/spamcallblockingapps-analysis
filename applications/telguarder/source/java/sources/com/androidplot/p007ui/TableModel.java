package com.androidplot.p007ui;

import android.graphics.RectF;
import java.util.Iterator;
/* renamed from: com.androidplot.ui.TableModel */
/* loaded from: classes-dex2jar.jar:com/androidplot/ui/TableModel.class */
public abstract class TableModel {
    private TableOrder order;

    /* renamed from: com.androidplot.ui.TableModel$Axis */
    /* loaded from: classes-dex2jar.jar:com/androidplot/ui/TableModel$Axis.class */
    public enum Axis {
        ROW,
        COLUMN
    }

    /* renamed from: com.androidplot.ui.TableModel$CellSizingMethod */
    /* loaded from: classes-dex2jar.jar:com/androidplot/ui/TableModel$CellSizingMethod.class */
    public enum CellSizingMethod {
        FIXED,
        FILL
    }

    public TableModel(TableOrder tableOrder) {
        setOrder(tableOrder);
    }

    public abstract Iterator<RectF> getIterator(RectF rectF, int i);

    public TableOrder getOrder() {
        return this.order;
    }

    public void setOrder(TableOrder tableOrder) {
        this.order = tableOrder;
    }
}
