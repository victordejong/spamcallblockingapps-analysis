package p000;

import com.truecaller.ads.C2808R;
import com.truecaller.ads.p134ui.AdsSwitchView;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: k2 */
/* loaded from: classes5-dex2jar.jar:k2.class */
public final class C25345k2 extends m implements a<Integer> {

    /* renamed from: b */
    public final /* synthetic */ int f70754b;

    /* renamed from: c */
    public final /* synthetic */ Object f70755c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C25345k2(int i, Object obj) {
        super(0);
        this.f70754b = i;
        this.f70755c = obj;
    }

    public final Object invoke() {
        int i = this.f70754b;
        if (i != 0) {
            if (i != 1) {
                throw null;
            }
            return Integer.valueOf(AdsSwitchView.m35951a((AdsSwitchView) this.f70755c, C2808R.C2810id.adsHolderNative));
        }
        return Integer.valueOf(AdsSwitchView.m35951a((AdsSwitchView) this.f70755c, C2808R.C2810id.adsHolderBanner));
    }
}
