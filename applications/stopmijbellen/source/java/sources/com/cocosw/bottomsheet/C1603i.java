package com.cocosw.bottomsheet;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
/* renamed from: com.cocosw.bottomsheet.i */
/* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/i.class */
public class C1603i extends LinearLayout {

    /* renamed from: a */
    public View f5949a;

    public C1603i(Context context) {
        super(context);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        View view = this.f5949a;
        if (view != null) {
            i2 = View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 1073741824);
        }
        super.onMeasure(i, i2);
    }
}
