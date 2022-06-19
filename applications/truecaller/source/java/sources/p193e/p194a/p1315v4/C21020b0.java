package p193e.p194a.p1315v4;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.android.sdk.PartnerInformation;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.sdk.push.PushAppData;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
import x3.a0;
import x3.b;
import x3.d;
/* renamed from: e.a.v4.b0 */
/* loaded from: classes12-dex2jar.jar:e/a/v4/b0.class */
public class C21020b0 {

    /* renamed from: e.a.v4.b0$a */
    /* loaded from: classes12-dex2jar.jar:e/a/v4/b0$a.class */
    public class C21021a implements d<Void> {

        /* renamed from: a */
        public final /* synthetic */ PushAppData f59026a;

        public C21021a(C21020b0 c21020b0, PushAppData pushAppData) {
            this.f59026a = pushAppData;
        }

        public void onFailure(b<Void> bVar, Throwable th) {
            C10480a.m26061I1(th);
        }

        public void onResponse(b<Void> bVar, a0<Void> a0Var) {
            if (!a0Var.b()) {
                PushAppData pushAppData = this.f59026a;
                l.e(String.format("TrueSDK - WebPartner: %s, requestId: %s, error: %s", pushAppData.f14576b, pushAppData.f14575a, a0Var.a.d), RemoteMessageConst.MessageBody.MSG);
            }
        }
    }

    /* renamed from: a */
    public void m10412a(PartnerInformation partnerInformation, d<Void> dVar) {
        ((AbstractC21033h0) C8367d.m28633a(KnownEndpoints.API, AbstractC21033h0.class)).m10393a(partnerInformation.partnerKey, partnerInformation.reqNonce).enqueue(dVar);
    }

    /* renamed from: b */
    public void m10411b(PushAppData pushAppData) {
        ((AbstractC21045n0) C8367d.m28633a(KnownEndpoints.API, AbstractC21045n0.class)).m10384a(pushAppData.f14575a).enqueue(new C21021a(this, pushAppData));
    }
}
