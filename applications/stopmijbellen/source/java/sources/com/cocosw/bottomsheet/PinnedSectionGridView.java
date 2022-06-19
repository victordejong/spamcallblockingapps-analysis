package com.cocosw.bottomsheet;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.GridView;
/* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/PinnedSectionGridView.class */
class PinnedSectionGridView extends GridView {

    /* renamed from: a */
    public int f5893a;

    /* renamed from: b */
    public int f5894b;

    /* renamed from: c */
    public int f5895c;

    public PinnedSectionGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.GridView
    public int getColumnWidth() {
        return this.f5895c;
    }

    @Override // android.widget.GridView
    public int getHorizontalSpacing() {
        return this.f5894b;
    }

    @Override // android.widget.GridView
    public int getNumColumns() {
        return this.f5893a;
    }

    @Override // android.widget.GridView
    public void setColumnWidth(int i) {
        this.f5895c = i;
        super.setColumnWidth(i);
    }

    @Override // android.widget.GridView
    public void setHorizontalSpacing(int i) {
        this.f5894b = i;
        super.setHorizontalSpacing(i);
    }

    @Override // android.widget.GridView
    public void setNumColumns(int i) {
        this.f5893a = i;
        super.setNumColumns(i);
    }
}
