package p193e.p194a.p294b.p336i.p338i;

import com.google.protobuf.GeneratedMessageLite;
import com.truecaller.api.services.callmeback.p136v1.CallbackLogRequest;
import com.truecaller.api.services.callmeback.p136v1.CallbackLogResponse;
import com.truecaller.bizmon.callMeBack.data.models.CallMeBackResponse;
import com.truecaller.log.AssertionUtil;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1238t2.p1239a.p1243b.p1244a.C20442b;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.bizmon.callMeBack.data.EnterpriseFeedbackRepositoryImpl$captureCallMeBackRequest$2", f = "EnterpriseFeedbackRepository.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.b.i.i.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/i/i/b.class */
public final class C7929b extends i implements p<i0, d<? super CallMeBackResponse>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f24555e;

    /* renamed from: f */
    public final /* synthetic */ C7931d f24556f;

    /* renamed from: g */
    public final /* synthetic */ String f24557g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7929b(C7931d c7931d, String str, d dVar) {
        super(2, dVar);
        this.f24556f = c7931d;
        this.f24557g = str;
    }

    /* renamed from: i */
    public final d<s> m29102i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C7929b c7929b = new C7929b(this.f24556f, this.f24557g, dVar);
        c7929b.f24555e = obj;
        return c7929b;
    }

    /* renamed from: k */
    public final Object m29101k(Object obj, Object obj2) {
        CallMeBackResponse callMeBackResponse;
        C20442b.C20443a mo20911c;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C7931d c7931d = this.f24556f;
        String str = this.f24557g;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        i0 i0Var = (i0) obj;
        CallbackLogRequest.C2938b newBuilder = CallbackLogRequest.newBuilder();
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setEnterpriseNumber(str);
        CallbackLogRequest build = newBuilder.build();
        l.d(build, "CallbackLogRequest\n     …ber)\n            .build()");
        CallbackLogRequest callbackLogRequest = build;
        try {
            mo20911c = c7931d.f24565c.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            C20442b.C20443a c20443a = mo20911c;
            callMeBackResponse = null;
            if (c20443a != null) {
                CallbackLogResponse m11137c = c20443a.m11137c(callbackLogRequest);
                callMeBackResponse = null;
                if (m11137c != null) {
                    String title = m11137c.getTitle();
                    l.d(title, "response.title");
                    String body = m11137c.getBody();
                    l.d(body, "response.body");
                    callMeBackResponse = new CallMeBackResponse(str, title, body);
                }
            }
        } catch (Exception e) {
            e.getMessage();
            AssertionUtil.reportThrowableButNeverCrash(e);
            callMeBackResponse = null;
        }
        return callMeBackResponse;
    }

    /* renamed from: s */
    public final Object m29100s(Object obj) {
        CallMeBackResponse callMeBackResponse;
        C20442b.C20443a mo20911c;
        C25225a.m3932a3(obj);
        i0 i0Var = (i0) this.f24555e;
        CallbackLogRequest.C2938b newBuilder = CallbackLogRequest.newBuilder();
        String str = this.f24557g;
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setEnterpriseNumber(str);
        CallbackLogRequest build = newBuilder.build();
        l.d(build, "CallbackLogRequest\n     …ber)\n            .build()");
        CallbackLogRequest callbackLogRequest = build;
        try {
            mo20911c = this.f24556f.f24565c.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            C20442b.C20443a c20443a = mo20911c;
            callMeBackResponse = null;
            if (c20443a != null) {
                CallbackLogResponse m11137c = c20443a.m11137c(callbackLogRequest);
                callMeBackResponse = null;
                if (m11137c != null) {
                    String str2 = this.f24557g;
                    String title = m11137c.getTitle();
                    l.d(title, "response.title");
                    String body = m11137c.getBody();
                    l.d(body, "response.body");
                    callMeBackResponse = new CallMeBackResponse(str2, title, body);
                }
            }
        } catch (Exception e) {
            e.getMessage();
            AssertionUtil.reportThrowableButNeverCrash(e);
            callMeBackResponse = null;
        }
        return callMeBackResponse;
    }
}
