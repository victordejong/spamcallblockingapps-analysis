package com.callerid.block.p038f;

import com.callerid.block.R$drawable;
import com.callerid.block.R$string;
/* renamed from: com.callerid.block.f.c$b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/f/c$b.class */
final class c$b implements Runnable {
    c$b() {
    }

    @Override // java.lang.Runnable
    public void run() {
        c.J().setVisibility(0);
        c.P().setText(R$string.allen);
        c.Q().setText(R$string.moni_num);
        c.J().setGravity(17);
        c.J().setText(R$string.moni_locate);
        c.R().setText("Fixed line - Bharti Airtel Ltd");
        c.S().setImageResource(R$drawable.contact_bg);
        c.T().setVisibility(0);
    }
}
