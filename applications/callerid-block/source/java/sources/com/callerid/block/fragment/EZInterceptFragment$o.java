package com.callerid.block.fragment;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.widget.Toast;
import com.callerid.block.R$string;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p040h.p041a.p042b.C0962a;
import com.callerid.block.p056k.p057a.C1084e;
import com.callerid.block.util.C1186k;
import com.callerid.block.util.C1199n0;
import com.callerid.block.util.C1216t0;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZInterceptFragment$o.class */
class EZInterceptFragment$o implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ Context f4359b;

    /* renamed from: c */
    final /* synthetic */ Animation f4360c;

    /* renamed from: d */
    final /* synthetic */ EZInterceptFragment f4361d;

    EZInterceptFragment$o(EZInterceptFragment eZInterceptFragment, Context context, Animation animation) {
        this.f4361d = eZInterceptFragment;
        this.f4359b = context;
        this.f4360c = animation;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            C0962a.m10447a(new a(this));
            C1186k.m9816c().m9812g("offline_db_check_update_click");
            if (C1216t0.m9585a(this.f4359b)) {
                C1199n0.m9646z0(this.f4359b, System.currentTimeMillis());
                EZInterceptFragment.K1(this.f4361d).setVisibility(0);
                EZInterceptFragment.L1(this.f4361d).setVisibility(8);
                EZInterceptFragment.M1(this.f4361d).setVisibility(8);
                EZInterceptFragment.N1(this.f4361d).m596e();
                EZInterceptFragment.O1(this.f4361d).startAnimation(this.f4360c);
                C1084e.m10178h(EZCallApplication.m10163c(), false, new b(this));
            } else {
                Toast.makeText(this.f4359b, (int) R$string.search_desc, 0).show();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
