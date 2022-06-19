package com.allinone.callerid.customview;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.GridLayoutManager;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/MyGridLayoutManager.class */
public class MyGridLayoutManager extends GridLayoutManager {

    /* renamed from: R */
    private boolean f8597R = true;

    public MyGridLayoutManager(Context context, int i) {
        super(context, i);
    }

    public MyGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    /* renamed from: f3 */
    public void m27382f3(boolean z) {
        this.f8597R = z;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: l */
    public boolean mo27381l() {
        return this.f8597R && super.mo27381l();
    }
}
