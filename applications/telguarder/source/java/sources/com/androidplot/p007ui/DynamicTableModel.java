package com.androidplot.p007ui;

import android.graphics.RectF;
import com.androidplot.p007ui.TableModel;
import java.util.Iterator;
/* renamed from: com.androidplot.ui.DynamicTableModel */
/* loaded from: classes-dex2jar.jar:com/androidplot/ui/DynamicTableModel.class */
public class DynamicTableModel extends TableModel {
    private int numColumns;
    private int numRows;

    /* renamed from: com.androidplot.ui.DynamicTableModel$1 */
    /* loaded from: classes-dex2jar.jar:com/androidplot/ui/DynamicTableModel$1.class */
    public static /* synthetic */ class C07671 {
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$ui$TableModel$Axis;
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$ui$TableOrder;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003f -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0043 -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0047 -> B:18:0x0033). Please submit an issue!!! */
        static {
            int[] iArr = new int[TableOrder.values().length];
            $SwitchMap$com$androidplot$ui$TableOrder = iArr;
            try {
                iArr[TableOrder.ROW_MAJOR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$androidplot$ui$TableOrder[TableOrder.COLUMN_MAJOR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            int[] iArr2 = new int[TableModel.Axis.values().length];
            $SwitchMap$com$androidplot$ui$TableModel$Axis = iArr2;
            try {
                iArr2[TableModel.Axis.ROW.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$androidplot$ui$TableModel$Axis[TableModel.Axis.COLUMN.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.androidplot.ui.DynamicTableModel$TableModelIterator */
    /* loaded from: classes-dex2jar.jar:com/androidplot/ui/DynamicTableModel$TableModelIterator.class */
    public class TableModelIterator implements Iterator<RectF> {
        private int calculatedColumns;
        private int calculatedNumElements;
        private int calculatedRows;
        private DynamicTableModel dynamicTableModel;
        private RectF lastElementRect;
        private TableOrder order;
        private RectF tableRect;
        private int totalElements;
        private boolean isOk = true;
        int lastColumn = 0;
        int lastRow = 0;
        int lastElement = 0;

        public TableModelIterator(DynamicTableModel dynamicTableModel, RectF rectF, int i) {
            DynamicTableModel.this = r6;
            this.dynamicTableModel = dynamicTableModel;
            this.tableRect = rectF;
            this.totalElements = i;
            this.order = dynamicTableModel.getOrder();
            if (dynamicTableModel.getNumColumns() == 0 && dynamicTableModel.getNumRows() >= 1) {
                int numRows = dynamicTableModel.getNumRows();
                this.calculatedRows = numRows;
                this.calculatedColumns = Float.valueOf((i / numRows) + 0.5f).intValue();
            } else if (dynamicTableModel.getNumRows() == 0 && dynamicTableModel.getNumColumns() >= 1) {
                int numColumns = dynamicTableModel.getNumColumns();
                this.calculatedColumns = numColumns;
                this.calculatedRows = Float.valueOf((i / numColumns) + 0.5f).intValue();
            } else if (dynamicTableModel.getNumColumns() == 0 && dynamicTableModel.getNumRows() == 0) {
                this.calculatedRows = 1;
                this.calculatedColumns = i;
            } else {
                this.calculatedRows = dynamicTableModel.getNumRows();
                this.calculatedColumns = dynamicTableModel.getNumColumns();
            }
            this.calculatedNumElements = this.calculatedRows * this.calculatedColumns;
            this.lastElementRect = dynamicTableModel.getCellRect(rectF, i);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.isOk && this.lastElement < this.calculatedNumElements;
        }

        @Override // java.util.Iterator
        public RectF next() {
            if (!hasNext()) {
                this.isOk = false;
                throw new IndexOutOfBoundsException();
            }
            int i = this.lastElement;
            if (i == 0) {
                this.lastElement = i + 1;
                return this.lastElementRect;
            }
            RectF rectF = new RectF(this.lastElementRect);
            int i2 = C07671.$SwitchMap$com$androidplot$ui$TableOrder[this.order.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    this.isOk = false;
                    throw new IllegalArgumentException();
                } else if (this.dynamicTableModel.getNumRows() <= 0 || this.lastRow < this.dynamicTableModel.getNumRows() - 1) {
                    rectF.offsetTo(this.lastElementRect.left, this.lastElementRect.bottom);
                    this.lastRow++;
                } else {
                    rectF.offsetTo(this.lastElementRect.right, this.tableRect.top);
                    this.lastRow = 0;
                    this.lastColumn++;
                }
            } else if (this.dynamicTableModel.getNumColumns() <= 0 || this.lastColumn < this.dynamicTableModel.getNumColumns() - 1) {
                rectF.offsetTo(this.lastElementRect.right, this.lastElementRect.top);
                this.lastColumn++;
            } else {
                rectF.offsetTo(this.tableRect.left, this.lastElementRect.bottom);
                this.lastColumn = 0;
                this.lastRow++;
            }
            this.lastElement++;
            this.lastElementRect = rectF;
            return rectF;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public DynamicTableModel(int i, int i2) {
        this(i, i2, TableOrder.ROW_MAJOR);
    }

    public DynamicTableModel(int i, int i2, TableOrder tableOrder) {
        super(tableOrder);
        this.numColumns = i;
        this.numRows = i2;
    }

    private float calculateCellSize(RectF rectF, TableModel.Axis axis, int i) {
        float f;
        int i2;
        int i3 = C07671.$SwitchMap$com$androidplot$ui$TableModel$Axis[axis.ordinal()];
        if (i3 == 1) {
            i2 = this.numRows;
            f = rectF.height();
        } else if (i3 != 2) {
            i2 = 0;
            f = 0.0f;
        } else {
            i2 = this.numColumns;
            f = rectF.width();
        }
        return f / (i2 != 0 ? i2 : i);
    }

    public RectF getCellRect(RectF rectF, int i) {
        RectF rectF2 = new RectF();
        rectF2.left = rectF.left;
        rectF2.top = rectF.top;
        rectF2.bottom = rectF.top + calculateCellSize(rectF, TableModel.Axis.ROW, i);
        rectF2.right = rectF.left + calculateCellSize(rectF, TableModel.Axis.COLUMN, i);
        return rectF2;
    }

    @Override // com.androidplot.p007ui.TableModel
    public TableModelIterator getIterator(RectF rectF, int i) {
        return new TableModelIterator(this, rectF, i);
    }

    public int getNumColumns() {
        return this.numColumns;
    }

    public int getNumRows() {
        return this.numRows;
    }

    public void setNumColumns(int i) {
        this.numColumns = i;
    }

    public void setNumRows(int i) {
        this.numRows = i;
    }
}
