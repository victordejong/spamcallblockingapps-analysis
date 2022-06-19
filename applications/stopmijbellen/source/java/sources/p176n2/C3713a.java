package p176n2;

import com.google.android.gms.ads.rewarded.RewardItem;
/* renamed from: n2.a */
/* loaded from: classes-dex2jar.jar:n2/a.class */
public final class C3713a implements RewardItem {

    /* renamed from: a */
    public final int f12099a;

    /* renamed from: b */
    public final String f12100b;

    public C3713a(int i, String str) {
        this.f12099a = i;
        this.f12100b = str;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public int getAmount() {
        return this.f12099a;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public String getType() {
        return this.f12100b;
    }
}
