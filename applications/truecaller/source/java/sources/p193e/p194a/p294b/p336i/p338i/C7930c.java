package p193e.p194a.p294b.p336i.p338i;

import com.google.protobuf.GeneratedMessageLite;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.truecaller.api.services.callmeback.p136v1.NumberStatusRequest;
import com.truecaller.api.services.callmeback.p136v1.NumberStatusResponse;
import com.truecaller.bizmon.callMeBack.analytics.BizCallMeBackFailureReason;
import com.truecaller.log.AssertionUtil;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1238t2.p1239a.p1243b.p1244a.C20446d;
import p193e.p194a.p294b.p336i.p340j.p342b.C7943a;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p3.a.g1;
import p3.a.i1;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.bizmon.callMeBack.data.EnterpriseFeedbackRepositoryImpl$getCallMeBackStatusFromRemote$2", f = "EnterpriseFeedbackRepository.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.b.i.i.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/i/i/c.class */
public final class C7930c extends i implements p<i0, d<? super C7943a>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f24558e;

    /* renamed from: f */
    public final /* synthetic */ C7931d f24559f;

    /* renamed from: g */
    public final /* synthetic */ String f24560g;

    /* renamed from: h */
    public final /* synthetic */ String f24561h;

    /* renamed from: i */
    public final /* synthetic */ boolean f24562i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7930c(C7931d c7931d, String str, String str2, boolean z, d dVar) {
        super(2, dVar);
        this.f24559f = c7931d;
        this.f24560g = str;
        this.f24561h = str2;
        this.f24562i = z;
    }

    /* renamed from: i */
    public final d<s> m29099i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C7930c c7930c = new C7930c(this.f24559f, this.f24560g, this.f24561h, this.f24562i, dVar);
        c7930c.f24558e = obj;
        return c7930c;
    }

    /* renamed from: k */
    public final Object m29098k(Object obj, Object obj2) {
        return m29099i(obj, (d) obj2).m29097s(s.a);
    }

    /* renamed from: s */
    public final Object m29097s(Object obj) {
        C7943a c7943a;
        String str;
        C20446d.C20447a mo20911c;
        NumberStatusResponse m11134c;
        C25225a.m3932a3(obj);
        i0 i0Var = (i0) this.f24558e;
        NumberStatusRequest.C2942b newBuilder = NumberStatusRequest.newBuilder();
        String str2 = this.f24560g;
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setEnterpriseNumber(str2);
        NumberStatusRequest build = newBuilder.build();
        l.d(build, "NumberStatusRequest\n    …\n                .build()");
        NumberStatusRequest numberStatusRequest = build;
        try {
            mo20911c = this.f24559f.f24564b.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            C20446d.C20447a c20447a = mo20911c;
            if (c20447a == null || (m11134c = c20447a.m11134c(numberStatusRequest)) == null) {
                C7931d.m29096a(this.f24559f, this.f24560g, BizCallMeBackFailureReason.REASON_RESPONSE_NULL.getValue(), this.f24561h, this.f24562i);
                c7943a = null;
            } else {
                m11134c.getEnabled();
                c7943a = new C7943a(this.f24560g, m11134c.getEnabled(), m11134c.getMessage(), m11134c.getButtonText());
            }
        } catch (i1 e) {
            C7931d c7931d = this.f24559f;
            String str3 = this.f24560g;
            l.e(e, "$this$toAnalyticsReason");
            g1 g1Var = e.a;
            l.d(g1Var, UpdateKey.STATUS);
            if (g1Var.b == null) {
                g1 g1Var2 = e.a;
                l.d(g1Var2, UpdateKey.STATUS);
                str = g1Var2.a.toString();
            } else {
                StringBuilder sb = new StringBuilder();
                g1 g1Var3 = e.a;
                l.d(g1Var3, UpdateKey.STATUS);
                sb.append(g1Var3.a);
                sb.append('.');
                g1 g1Var4 = e.a;
                l.d(g1Var4, UpdateKey.STATUS);
                sb.append(g1Var4.b);
                str = sb.toString();
            }
            C7931d.m29096a(c7931d, str3, str, this.f24561h, this.f24562i);
            AssertionUtil.reportThrowableButNeverCrash(e);
            c7943a = null;
        } catch (Exception e2) {
            AssertionUtil.reportThrowableButNeverCrash(e2);
            c7943a = null;
        }
        return c7943a;
    }
}
