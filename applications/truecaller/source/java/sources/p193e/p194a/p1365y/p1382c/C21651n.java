package p193e.p194a.p1365y.p1382c;

import com.truecaller.flashsdk.models.FlashRequest;
import java.io.IOException;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import u3.l0;
import x3.a0;
import x3.b;
@e(c = "com.truecaller.flashsdk.core.FlashRequestHandlerImpl$sendFlash$1", f = "FlashRequestHandler.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.y.c.n */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/n.class */
public final class C21651n extends i implements p<i0, d<? super a0<l0>>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C21645l f60354e;

    /* renamed from: f */
    public final /* synthetic */ FlashRequest f60355f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21651n(C21645l c21645l, FlashRequest flashRequest, d dVar) {
        super(2, dVar);
        this.f60354e = c21645l;
        this.f60355f = flashRequest;
    }

    /* renamed from: i */
    public final d<s> m9241i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C21651n(this.f60354e, this.f60355f, dVar);
    }

    /* renamed from: k */
    public final Object m9240k(Object obj, Object obj2) {
        a0 a0Var;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C21645l c21645l = this.f60354e;
        FlashRequest flashRequest = this.f60355f;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        b<l0> mo9235d = c21645l.f60334e.mo9235d(flashRequest);
        Objects.requireNonNull(c21645l);
        try {
            a0Var = mo9235d.execute();
        } catch (IOException e) {
            a0Var = null;
        }
        return a0Var;
    }

    /* renamed from: s */
    public final Object m9239s(Object obj) {
        a0 a0Var;
        C25225a.m3932a3(obj);
        try {
            a0Var = this.f60354e.f60334e.mo9235d(this.f60355f).execute();
        } catch (IOException e) {
            a0Var = null;
        }
        return a0Var;
    }
}
