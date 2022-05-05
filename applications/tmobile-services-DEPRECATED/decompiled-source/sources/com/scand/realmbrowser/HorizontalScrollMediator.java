package com.scand.realmbrowser;

import com.scand.realmbrowser.view.RowView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/HorizontalScrollMediator.class */
public class HorizontalScrollMediator implements RowView.OnScrollChangedListener {

    /* renamed from: a */
    private List<RowView> f12520a = new ArrayList();

    /* renamed from: b */
    private int f12521b;

    /* renamed from: c */
    private int f12522c;

    @Override // com.scand.realmbrowser.view.RowView.OnScrollChangedListener
    /* renamed from: a */
    public void mo7676a(int i, int i2, int i3, int i4) {
        if (this.f12521b != i) {
            this.f12521b = i;
            this.f12522c = i2;
            for (RowView rowView : this.f12520a) {
                rowView.scrollTo(i, i2);
            }
        }
    }

    /* renamed from: b */
    public void m7738b(RowView rowView) {
        rowView.setOnScrollChangedListener(this);
        this.f12520a.add(rowView);
    }

    /* renamed from: c */
    public int m7737c() {
        return this.f12521b;
    }

    /* renamed from: d */
    public int m7736d() {
        return this.f12522c;
    }
}
