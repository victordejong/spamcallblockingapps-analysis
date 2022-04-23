package com.callerid.block.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import com.callerid.block.R$anim;
import com.callerid.block.R$attr;
import com.callerid.block.R$color;
import com.callerid.block.main.MainActivity;
import com.callerid.block.mvc.controller.ContactActivity;
import com.callerid.block.mvc.controller.UnknownContactActivity;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.C1205p0;
import com.callerid.block.util.C1227w;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZCallLogFragment$f.class */
class EZCallLogFragment$f implements AdapterView.OnItemClickListener {

    /* renamed from: b */
    final /* synthetic */ EZCallLogFragment f4339b;

    EZCallLogFragment$f(EZCallLogFragment eZCallLogFragment) {
        this.f4339b = eZCallLogFragment;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        MainActivity f2;
        try {
            if (EZCallLogFragment.E1(this.f4339b) != null && EZCallLogFragment.E1(this.f4339b).size() != 0) {
                CallLogBean callLogBean = (CallLogBean) EZCallLogFragment.E1(this.f4339b).get(i);
                if (EZCallLogFragment.i2(this.f4339b)) {
                    if (callLogBean.m10082P()) {
                        callLogBean.m10028x0(false);
                        view.setBackgroundDrawable(null);
                        EZCallLogFragment.k2(this.f4339b).remove(callLogBean);
                    } else {
                        callLogBean.m10028x0(true);
                        view.setBackgroundColor(C1205p0.m9636a(EZCallLogFragment.l2(this.f4339b), R$attr.color_calllogs_selected, R$color.colorselect));
                        EZCallLogFragment.k2(this.f4339b).add(callLogBean);
                    }
                    EZCallLogFragment.m2(this.f4339b);
                    return;
                }
                C1227w.m9527a("favtest", "contact:" + callLogBean.toString());
                if (callLogBean.m10084N()) {
                    Intent intent = new Intent();
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("contact_tony", callLogBean);
                    intent.putExtras(bundle);
                    intent.setClass(EZCallLogFragment.f2(this.f4339b), ContactActivity.class);
                    this.f4339b.z1(intent);
                    f2 = EZCallLogFragment.f2(this.f4339b);
                } else {
                    Intent intent2 = new Intent();
                    Bundle bundle2 = new Bundle();
                    bundle2.putParcelable("contact_tony", callLogBean);
                    intent2.putExtras(bundle2);
                    intent2.setClass(EZCallLogFragment.f2(this.f4339b), UnknownContactActivity.class);
                    this.f4339b.z1(intent2);
                    f2 = EZCallLogFragment.f2(this.f4339b);
                }
                f2.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
