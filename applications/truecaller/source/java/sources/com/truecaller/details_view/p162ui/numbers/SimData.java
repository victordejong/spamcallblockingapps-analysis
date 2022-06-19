package com.truecaller.details_view.p162ui.numbers;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.details_view.C3857R;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u001b\b\u0002\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/truecaller/details_view/ui/numbers/SimData;", "", "", RemoteMessageConst.Notification.ICON, "I", "getIcon", "()I", "slot", "getSlot", "<init>", "(Ljava/lang/String;III)V", "SIM_1", "SIM_2", "SIM_UNKNOWN", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.details_view.ui.numbers.SimData */
/* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/numbers/SimData.class */
public enum SimData {
    SIM_1(C3857R.C3858drawable.ic_tcx_action_call_sim_1_outline_24dp, 0),
    SIM_2(C3857R.C3858drawable.ic_tcx_action_call_sim_2_outline_24dp, 1),
    SIM_UNKNOWN(C3857R.C3858drawable.ic_tcx_action_call_outline_24dp, -1);
    
    private final int icon;
    private final int slot;

    SimData(int i, int i2) {
        this.icon = i;
        this.slot = i2;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final int getSlot() {
        return this.slot;
    }
}
