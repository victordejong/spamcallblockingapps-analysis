package com.callerid.block.fragment;

import android.view.View;
import android.widget.AdapterView;
import com.callerid.block.R$attr;
import com.callerid.block.R$color;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.C1205p0;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZCallLogFragment$g.class */
class EZCallLogFragment$g implements AdapterView.OnItemLongClickListener {

    /* renamed from: a */
    final /* synthetic */ EZCallLogFragment f4340a;

    EZCallLogFragment$g(EZCallLogFragment eZCallLogFragment) {
        this.f4340a = eZCallLogFragment;
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        try {
            if (EZCallLogFragment.E1(this.f4340a) == null || EZCallLogFragment.E1(this.f4340a).size() == 0 || i >= EZCallLogFragment.E1(this.f4340a).size()) {
                return true;
            }
            CallLogBean callLogBean = (CallLogBean) EZCallLogFragment.E1(this.f4340a).get(i);
            if (EZCallLogFragment.i2(this.f4340a)) {
                return true;
            }
            EZCallLogFragment.j2(this.f4340a, true);
            callLogBean.m10028x0(true);
            EZCallLogFragment.k2(this.f4340a).add(callLogBean);
            view.setBackgroundColor(C1205p0.m9636a(EZCallLogFragment.l2(this.f4340a), R$attr.color_calllogs_selected, R$color.colorselect));
            EZCallLogFragment.n2(this.f4340a);
            EZCallLogFragment.m2(this.f4340a);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }
}
