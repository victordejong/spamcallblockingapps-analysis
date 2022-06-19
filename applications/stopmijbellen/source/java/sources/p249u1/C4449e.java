package p249u1;

import android.content.Context;
import android.os.Build;
import p003a2.AbstractC0008a;
import p186o1.AbstractC3824h;
import p186o1.EnumC3826i;
import p238t1.C4353b;
import p260v1.C4582e;
import p260v1.C4586g;
import p282x1.C4832p;
/* renamed from: u1.e */
/* loaded from: classes-dex2jar.jar:u1/e.class */
public class C4449e extends AbstractC4446c<C4353b> {

    /* renamed from: e */
    public static final String f13817e = AbstractC3824h.m1773e("NetworkMeteredCtrlr");

    public C4449e(Context context, AbstractC0008a abstractC0008a) {
        super((C4582e) C4586g.m751a(context, abstractC0008a).f14174c);
    }

    @Override // p249u1.AbstractC4446c
    /* renamed from: b */
    public boolean mo911b(C4832p c4832p) {
        return c4832p.f14840j.f12294a == EnumC3826i.METERED;
    }

    @Override // p249u1.AbstractC4446c
    /* renamed from: c */
    public boolean mo910c(C4353b c4353b) {
        boolean z;
        C4353b c4353b2 = c4353b;
        if (Build.VERSION.SDK_INT < 26) {
            AbstractC3824h.m1774c().mo1772a(f13817e, "Metered network constraint is not supported before API 26, only checking for connected state.", new Throwable[0]);
            z = !c4353b2.f13582a;
        } else {
            z = true;
            if (c4353b2.f13582a) {
                z = !c4353b2.f13584c;
            }
        }
        return z;
    }
}
