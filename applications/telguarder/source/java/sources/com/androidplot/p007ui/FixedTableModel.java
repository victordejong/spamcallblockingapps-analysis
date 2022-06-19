package com.androidplot.p007ui;

import android.graphics.RectF;
import java.util.Iterator;
/* renamed from: com.androidplot.ui.FixedTableModel */
/* loaded from: classes-dex2jar.jar:com/androidplot/ui/FixedTableModel.class */
public class FixedTableModel extends TableModel {
    private float cellHeight;
    private float cellWidth;

    /* renamed from: com.androidplot.ui.FixedTableModel$1 */
    /* loaded from: classes-dex2jar.jar:com/androidplot/ui/FixedTableModel$1.class */
    public static /* synthetic */ class C07681 {
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$ui$TableOrder;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
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
        }
    }

    /* renamed from: com.androidplot.ui.FixedTableModel$FixedTableModelIterator */
    /* loaded from: classes-dex2jar.jar:com/androidplot/ui/FixedTableModel$FixedTableModelIterator.class */
    private class FixedTableModelIterator implements Iterator<RectF> {
        private int lastElement;
        private RectF lastRect;
        private FixedTableModel model;
        private int numElements;
        private RectF tableRect;

        protected FixedTableModelIterator(FixedTableModel fixedTableModel, RectF rectF, int i) {
            FixedTableModel.this = r10;
            this.model = fixedTableModel;
            this.tableRect = rectF;
            this.numElements = i;
            this.lastRect = new RectF(rectF.left, rectF.top, rectF.left + fixedTableModel.getCellWidth(), rectF.top + fixedTableModel.getCellHeight());
        }

        private boolean isColumnFinished() {
            return this.lastRect.bottom + this.model.getCellHeight() > this.tableRect.height();
        }

        private boolean isRowFinished() {
            return this.lastRect.right + this.model.getCellWidth() > this.tableRect.width();
        }

        private void moveDown() {
            RectF rectF = this.lastRect;
            rectF.offsetTo(rectF.left, this.lastRect.bottom);
        }

        private void moveDownAndBack() {
            this.lastRect.offsetTo(this.tableRect.left, this.lastRect.bottom);
        }

        private void moveOver() {
            RectF rectF = this.lastRect;
            rectF.offsetTo(rectF.right, this.lastRect.top);
        }

        private void moveOverAndUp() {
            RectF rectF = this.lastRect;
            rectF.offsetTo(rectF.right, this.tableRect.top);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.lastElement < this.numElements && (!isColumnFinished() || !isRowFinished());
        }

        @Override // java.util.Iterator
        public RectF next() {
            try {
                int i = this.lastElement;
                if (i == 0) {
                    RectF rectF = this.lastRect;
                    this.lastElement = i + 1;
                    return rectF;
                } else if (i >= this.numElements) {
                    throw new IndexOutOfBoundsException();
                } else {
                    int i2 = C07681.$SwitchMap$com$androidplot$ui$TableOrder[this.model.getOrder().ordinal()];
                    if (i2 != 1) {
                        if (i2 != 2) {
                            throw new UnsupportedOperationException();
                        }
                        if (isRowFinished()) {
                            moveDownAndBack();
                        } else {
                            moveOver();
                        }
                    } else if (isColumnFinished()) {
                        moveOverAndUp();
                    } else {
                        moveDown();
                    }
                    return this.lastRect;
                }
            } finally {
                this.lastElement++;
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public FixedTableModel(float f, float f2, TableOrder tableOrder) {
        super(tableOrder);
        setCellWidth(f);
        setCellHeight(f2);
    }

    public float getCellHeight() {
        return this.cellHeight;
    }

    public float getCellWidth() {
        return this.cellWidth;
    }

    @Override // com.androidplot.p007ui.TableModel
    public Iterator<RectF> getIterator(RectF rectF, int i) {
        return new FixedTableModelIterator(this, rectF, i);
    }

    public void setCellHeight(float f) {
        this.cellHeight = f;
    }

    public void setCellWidth(float f) {
        this.cellWidth = f;
    }
}
