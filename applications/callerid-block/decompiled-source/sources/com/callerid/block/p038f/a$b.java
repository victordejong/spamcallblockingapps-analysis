package com.callerid.block.p038f;

import android.view.View;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.C1183i0;
/* renamed from: com.callerid.block.f.a$b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/f/a$b.class */
final class a$b implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ CallLogBean f4312b;

    a$b(CallLogBean callLogBean) {
        this.f4312b = callLogBean;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a.n(a.b());
        try {
            C1183i0.m9834a(a.b(), this.f4312b.m10045o());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
