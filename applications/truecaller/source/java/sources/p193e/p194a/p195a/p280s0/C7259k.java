package p193e.p194a.p195a.p280s0;

import java.io.IOException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p394b.p395a.C8363a;
import p193e.p194a.p372b0.p394b.p397g.C8385b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import u3.g0;
import u3.k0;
/* renamed from: e.a.a.s0.k */
/* loaded from: classes7-dex2jar.jar:e/a/a/s0/k.class */
public final class C7259k implements AbstractC7258j {

    /* renamed from: a */
    public final f f23201a;

    @e(c = "com.truecaller.messaging.defaultsms.DmaAdsManagerImpl$fireAndForgetDmaUrl$2", f = "DmaAdsManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.s0.k$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/s0/k$a.class */
    public static final class C7260a extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public final /* synthetic */ String f23202e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7260a(String str, d dVar) {
            super(2, dVar);
            this.f23202e = str;
        }

        /* renamed from: i */
        public final d<s> m29879i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7260a(this.f23202e, dVar);
        }

        /* renamed from: k */
        public final Object m29878k(Object obj, Object obj2) {
            boolean z;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            String str = this.f23202e;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            g0.a aVar = new g0.a();
            aVar.i(str);
            try {
                k0 execute = C8363a.m28642a(new C8385b()).a(aVar.b()).execute();
                boolean j = execute.j();
                C25225a.m4016G(execute, null);
                z = Boolean.valueOf(j).booleanValue();
            } catch (IOException e) {
                z = false;
            }
            return Boolean.valueOf(z);
        }

        /* renamed from: s */
        public final Object m29877s(Object obj) {
            boolean z;
            C25225a.m3932a3(obj);
            g0.a aVar = new g0.a();
            aVar.i(this.f23202e);
            try {
                k0 execute = C8363a.m28642a(new C8385b()).a(aVar.b()).execute();
                boolean j = execute.j();
                C25225a.m4016G(execute, null);
                z = Boolean.valueOf(j).booleanValue();
            } catch (IOException e) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    @Inject
    public C7259k(@Named("IO") f fVar) {
        l.e(fVar, "ioContext");
        this.f23201a = fVar;
    }

    @Override // p193e.p194a.p195a.p280s0.AbstractC7258j
    /* renamed from: a */
    public Object mo29880a(String str, d<? super Boolean> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f23201a, new C7260a(str, null), dVar);
    }
}
