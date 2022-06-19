package com.allinone.callerid.customview;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/MyLinearLayoutManager.class */
public class MyLinearLayoutManager extends LinearLayoutManager {
    public MyLinearLayoutManager(Context context) {
        super(context);
    }

    public MyLinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: X0 */
    public void mo27380X0(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y) {
        try {
            super.mo27380X0(c0932u, c0938y);
        } catch (IndexOutOfBoundsException e) {
            e.printStackTrace();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
