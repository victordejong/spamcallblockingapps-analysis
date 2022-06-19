package p193e.p194a.p1315v4;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.android.sdk.PartnerInformation;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
import x3.a0;
import x3.b;
import x3.d;
/* renamed from: e.a.v4.c0 */
/* loaded from: classes12-dex2jar.jar:e/a/v4/c0.class */
public class C21023c0 implements d<Void> {

    /* renamed from: a */
    public final /* synthetic */ String f59027a;

    /* renamed from: b */
    public final /* synthetic */ PartnerInformation f59028b;

    public C21023c0(C21020b0 c21020b0, String str, PartnerInformation partnerInformation) {
        this.f59027a = str;
        this.f59028b = partnerInformation;
    }

    public void onFailure(b<Void> bVar, Throwable th) {
        C10480a.m26061I1(th);
    }

    public void onResponse(b<Void> bVar, a0<Void> a0Var) {
        if (!a0Var.b()) {
            l.e(String.format("TrueSDK - WebPartner: %s, requestId: %s, error: %s", this.f59027a, this.f59028b.reqNonce, a0Var.a.d), RemoteMessageConst.MessageBody.MSG);
        }
    }
}
