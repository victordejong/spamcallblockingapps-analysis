package com.scand.realmbrowser;

import android.view.View;
import com.scand.realmbrowser.view.DragOverlayView;
import com.scand.realmbrowser.view.RowView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/ColumnWidthMediator.class */
public class ColumnWidthMediator implements RowView.OnColumnWidthChangeListener, DragOverlayView.OnDragFinished {

    /* renamed from: a */
    private int f12430a;

    /* renamed from: b */
    private int f12431b;

    /* renamed from: c */
    private DragOverlayView f12432c;

    /* renamed from: d */
    private ColumnWidthProvider f12433d;

    /* renamed from: e */
    private List<RowView> f12434e = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/ColumnWidthMediator$ColumnWidthProvider.class */
    interface ColumnWidthProvider {
        /* renamed from: d0 */
        int mo7777d0(int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColumnWidthMediator(DragOverlayView dragOverlayView, ColumnWidthProvider columnWidthProvider) {
        this.f12432c = dragOverlayView;
        dragOverlayView.setOnDragFinishedListener(this);
        this.f12433d = columnWidthProvider;
    }

    @Override // com.scand.realmbrowser.view.RowView.OnColumnWidthChangeListener
    /* renamed from: a */
    public void mo7677a(int i, int i2, int i3, int i4) {
        this.f12431b = i2;
        this.f12430a = i4;
        this.f12432c.setMinLeft(i);
        this.f12432c.setShadowPosition(i3);
        this.f12432c.startDrag(null, new View.DragShadowBuilder(), null, 0);
    }

    @Override // com.scand.realmbrowser.view.DragOverlayView.OnDragFinished
    /* renamed from: b */
    public void mo7687b(int i) {
        int i2 = this.f12431b;
        for (RowView rowView : this.f12434e) {
            rowView.setColumnWidth(i - i2, this.f12430a);
        }
    }

    /* renamed from: c */
    public void m7834c(RowView rowView) {
        this.f12434e.add(rowView);
    }

    /* renamed from: d */
    public int m7833d(int i) {
        return this.f12433d.mo7777d0(i);
    }
}
