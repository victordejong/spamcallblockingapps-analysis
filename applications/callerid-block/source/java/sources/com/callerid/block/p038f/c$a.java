package com.callerid.block.p038f;

import android.view.View;
import com.callerid.block.util.C1186k;
/* renamed from: com.callerid.block.f.c$a */
/* loaded from: classes-dex2jar.jar:com/callerid/block/f/c$a.class */
final class c$a implements View.OnClickListener {
    c$a() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        c.b().m1329f();
        c.Z(c.c());
        if (!"123456789".equals(c.w())) {
            C1186k.m9816c().m9812g("click_closeButton");
        }
    }
}
