package p193e.p194a.p1359x4.p1363k;

import com.google.protobuf.GeneratedMessageLite;
import com.truecaller.api.services.searchwarnings.p141v1.SetSupernovaOptOutRequest;
import com.truecaller.api.services.searchwarnings.p141v1.models.SupernovaStatus;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1238t2.p1239a.p1258h.p1259a.C20489g;
import p193e.p194a.p1359x4.p1363k.AbstractC21451b;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.searchwarnings.supernova.SupernovaSettingRepositoryImpl$setStatus$2", f = "SupernovaSettingRepository.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.x4.k.e */
/* loaded from: classes13-dex2jar.jar:e/a/x4/k/e.class */
public final class C21457e extends i implements p<i0, d<? super AbstractC21451b>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C21458f f59941e;

    /* renamed from: f */
    public final /* synthetic */ boolean f59942f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21457e(C21458f c21458f, boolean z, d dVar) {
        super(2, dVar);
        this.f59941e = c21458f;
        this.f59942f = z;
    }

    /* renamed from: i */
    public final d<s> m9718i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C21457e(this.f59941e, this.f59942f, dVar);
    }

    /* renamed from: k */
    public final Object m9717k(Object obj, Object obj2) {
        AbstractC21451b.C21454c c21454c;
        C20489g.C20490a mo20911c;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C21458f c21458f = this.f59941e;
        boolean z = this.f59942f;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        Objects.requireNonNull(c21458f);
        try {
            mo20911c = c21458f.f59943a.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            C20489g.C20490a c20490a = mo20911c;
            if (c20490a != null) {
                SupernovaStatus supernovaStatus = z ? SupernovaStatus.OPTED_IN : SupernovaStatus.OPTED_OUT;
                SetSupernovaOptOutRequest.C3388b newBuilder = SetSupernovaOptOutRequest.newBuilder();
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setStatus(supernovaStatus);
                String str = "supernova set = " + c20490a.m11085d((SetSupernovaOptOutRequest) newBuilder.build());
                c21454c = AbstractC21451b.C21454c.f59939a;
            } else {
                c21454c = AbstractC21451b.C21452a.f59937a;
            }
        } catch (Exception e) {
            String.valueOf(e);
            c21454c = new AbstractC21451b.C21453b(e);
        }
        return c21454c;
    }

    /* renamed from: s */
    public final Object m9716s(Object obj) {
        AbstractC21451b.C21454c c21454c;
        C20489g.C20490a mo20911c;
        C25225a.m3932a3(obj);
        C21458f c21458f = this.f59941e;
        boolean z = this.f59942f;
        Objects.requireNonNull(c21458f);
        try {
            mo20911c = c21458f.f59943a.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            C20489g.C20490a c20490a = mo20911c;
            if (c20490a != null) {
                SupernovaStatus supernovaStatus = z ? SupernovaStatus.OPTED_IN : SupernovaStatus.OPTED_OUT;
                SetSupernovaOptOutRequest.C3388b newBuilder = SetSupernovaOptOutRequest.newBuilder();
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setStatus(supernovaStatus);
                String str = "supernova set = " + c20490a.m11085d((SetSupernovaOptOutRequest) newBuilder.build());
                c21454c = AbstractC21451b.C21454c.f59939a;
            } else {
                c21454c = AbstractC21451b.C21452a.f59937a;
            }
        } catch (Exception e) {
            String.valueOf(e);
            c21454c = new AbstractC21451b.C21453b(e);
        }
        return c21454c;
    }
}
