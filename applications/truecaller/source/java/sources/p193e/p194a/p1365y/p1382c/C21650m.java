package p193e.p194a.p1365y.p1382c;

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
@e(c = "com.truecaller.flashsdk.core.FlashRequestHandlerImpl$getPushToken$1", f = "FlashRequestHandler.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.y.c.m */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/m.class */
public final class C21650m extends i implements p<i0, d<? super String>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C21645l f60352e;

    /* renamed from: f */
    public final /* synthetic */ String f60353f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21650m(C21645l c21645l, String str, d dVar) {
        super(2, dVar);
        this.f60352e = c21645l;
        this.f60353f = str;
    }

    /* renamed from: i */
    public final d<s> m9244i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C21650m(this.f60352e, this.f60353f, dVar);
    }

    /* renamed from: k */
    public final Object m9243k(Object obj, Object obj2) {
        a0 a0Var;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C21645l c21645l = this.f60352e;
        String str = this.f60353f;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        b<l0> mo9236c = c21645l.f60334e.mo9236c(str);
        Objects.requireNonNull(c21645l);
        String str2 = null;
        try {
            a0Var = mo9236c.execute();
        } catch (IOException e) {
            a0Var = null;
        }
        l0 l0Var = a0Var != null ? (l0) a0Var.b : null;
        if (l0Var != null) {
            str2 = l0Var.s();
        }
        return str2;
    }

    /* renamed from: s */
    public final Object m9242s(Object obj) {
        a0 a0Var;
        C25225a.m3932a3(obj);
        String str = null;
        try {
            a0Var = this.f60352e.f60334e.mo9236c(this.f60353f).execute();
        } catch (IOException e) {
            a0Var = null;
        }
        l0 l0Var = a0Var != null ? (l0) a0Var.b : null;
        if (l0Var != null) {
            str = l0Var.s();
        }
        return str;
    }
}
