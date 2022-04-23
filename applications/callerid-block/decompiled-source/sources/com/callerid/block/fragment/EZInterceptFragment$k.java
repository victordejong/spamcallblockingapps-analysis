package com.callerid.block.fragment;

import android.content.DialogInterface;
import com.callerid.block.R$string;
import com.callerid.block.util.C1199n0;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZInterceptFragment$k.class */
class EZInterceptFragment$k implements DialogInterface.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ ArrayList f4356b;

    /* renamed from: c */
    final /* synthetic */ EZInterceptFragment f4357c;

    EZInterceptFragment$k(EZInterceptFragment eZInterceptFragment, ArrayList arrayList) {
        this.f4357c = eZInterceptFragment;
        this.f4356b = arrayList;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i < this.f4356b.size()) {
            String str = (String) this.f4356b.get(i);
            EZInterceptFragment eZInterceptFragment = this.f4357c;
            int i2 = R$string.ring_silent;
            if (eZInterceptFragment.Q((int) R$string.ring_silent).equals(str)) {
                EZInterceptFragment eZInterceptFragment2 = this.f4357c;
                if (eZInterceptFragment2.t2(EZInterceptFragment.Z1(eZInterceptFragment2))) {
                    C1199n0.m9679o0(1);
                } else {
                    EZInterceptFragment.b2(this.f4357c, true);
                    EZInterceptFragment.c2(this.f4357c, 1);
                    return;
                }
            } else {
                EZInterceptFragment eZInterceptFragment3 = this.f4357c;
                i2 = R$string.reject_automatically;
                if (eZInterceptFragment3.Q((int) R$string.reject_automatically).equals(str)) {
                    C1199n0.m9679o0(0);
                } else {
                    return;
                }
            }
            EZInterceptFragment.a2(this.f4357c).setText(this.f4357c.Q(i2));
        }
    }
}
