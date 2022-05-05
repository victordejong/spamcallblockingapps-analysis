package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.c1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/c1.class */
public final class C7191c1 implements RewardItem {

    /* renamed from: a */
    public final AbstractC7366q0 f17308a;

    public C7191c1(AbstractC7366q0 q0Var) {
        this.f17308a = q0Var;
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final int getAmount() {
        AbstractC7366q0 q0Var = this.f17308a;
        if (q0Var == null) {
            return 0;
        }
        try {
            return q0Var.getAmount();
        } catch (RemoteException e) {
            C7452x1.m20569c("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final String getType() {
        AbstractC7366q0 q0Var = this.f17308a;
        if (q0Var == null) {
            return null;
        }
        try {
            return q0Var.getType();
        } catch (RemoteException e) {
            C7452x1.m20569c("Could not forward getType to RewardItem", e);
            return null;
        }
    }
}
