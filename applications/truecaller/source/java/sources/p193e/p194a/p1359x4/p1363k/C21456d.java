package p193e.p194a.p1359x4.p1363k;

import com.truecaller.api.services.searchwarnings.p141v1.GetSupernovaOptOutRequest;
import com.truecaller.api.services.searchwarnings.p141v1.GetSupernovaOptOutResponse;
import com.truecaller.api.services.searchwarnings.p141v1.models.SupernovaStatus;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1238t2.p1239a.p1258h.p1259a.C20489g;
import p193e.p194a.p1359x4.p1363k.AbstractC21447a;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.searchwarnings.supernova.SupernovaSettingRepositoryImpl$getStatus$2", f = "SupernovaSettingRepository.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.x4.k.d */
/* loaded from: classes13-dex2jar.jar:e/a/x4/k/d.class */
public final class C21456d extends i implements p<i0, d<? super AbstractC21447a>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C21458f f59940e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21456d(C21458f c21458f, d dVar) {
        super(2, dVar);
        this.f59940e = c21458f;
    }

    /* renamed from: i */
    public final d<s> m9721i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C21456d(this.f59940e, dVar);
    }

    /* renamed from: k */
    public final Object m9720k(Object obj, Object obj2) {
        AbstractC21447a.C21449b c21449b;
        C20489g.C20490a mo20911c;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C21458f c21458f = this.f59940e;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        Objects.requireNonNull(c21458f);
        try {
            mo20911c = c21458f.f59943a.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            C20489g.C20490a c20490a = mo20911c;
            if (c20490a != null) {
                GetSupernovaOptOutResponse m11086c = c20490a.m11086c((GetSupernovaOptOutRequest) GetSupernovaOptOutRequest.newBuilder().build());
                String str = "supernova get = " + m11086c;
                l.d(m11086c, "response");
                SupernovaStatus status = m11086c.getStatus();
                l.d(status, "response.status");
                c21449b = new AbstractC21447a.C21450c(status);
            } else {
                c21449b = AbstractC21447a.C21448a.f59934a;
            }
        } catch (Exception e) {
            String.valueOf(e);
            c21449b = new AbstractC21447a.C21449b(e);
        }
        return c21449b;
    }

    /* renamed from: s */
    public final Object m9719s(Object obj) {
        AbstractC21447a.C21449b c21449b;
        C20489g.C20490a mo20911c;
        C25225a.m3932a3(obj);
        C21458f c21458f = this.f59940e;
        Objects.requireNonNull(c21458f);
        try {
            mo20911c = c21458f.f59943a.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            C20489g.C20490a c20490a = mo20911c;
            if (c20490a != null) {
                GetSupernovaOptOutResponse m11086c = c20490a.m11086c((GetSupernovaOptOutRequest) GetSupernovaOptOutRequest.newBuilder().build());
                String str = "supernova get = " + m11086c;
                l.d(m11086c, "response");
                SupernovaStatus status = m11086c.getStatus();
                l.d(status, "response.status");
                c21449b = new AbstractC21447a.C21450c(status);
            } else {
                c21449b = AbstractC21447a.C21448a.f59934a;
            }
        } catch (Exception e) {
            String.valueOf(e);
            c21449b = new AbstractC21447a.C21449b(e);
        }
        return c21449b;
    }
}
