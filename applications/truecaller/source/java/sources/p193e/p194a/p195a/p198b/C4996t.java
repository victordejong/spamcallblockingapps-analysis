package p193e.p194a.p195a.p198b;

import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p240i.C6391f;
import p193e.p194a.p372b0.p419m.p420a.C8505a;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import q3.a.i0;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.b;
import s1.z.c.j;
@e(c = "com.truecaller.messaging.messaginglist.MessagingListPresenterImpl$observeOtp$1", f = "MessagingListPresenterImpl.kt", l = {1670}, m = "invokeSuspend")
/* renamed from: e.a.a.b.t */
/* loaded from: classes7-dex2jar.jar:e/a/a/b/t.class */
public final class C4996t extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f17093e;

    /* renamed from: f */
    public int f17094f;

    /* renamed from: g */
    public final /* synthetic */ C4984s f17095g;

    /* renamed from: e.a.a.b.t$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/t$a.class */
    public static final class C4997a implements g<AbstractC9235b.C9239d> {

        /* renamed from: b */
        public final /* synthetic */ i0 f17097b;

        /* renamed from: e.a.a.b.t$a$a */
        /* loaded from: classes7-dex2jar.jar:e/a/a/b/t$a$a.class */
        public static final /* synthetic */ class C4998a extends j implements l<C8505a, s> {
            public C4998a(C4984s c4984s) {
                super(1, c4984s, C4984s.class, "onAddressLoaded", "onAddressLoaded(Lcom/truecaller/common/payments/addressprofile/AddressProfile;)V", 0);
            }

            /* renamed from: d */
            public Object m34023d(Object obj) {
                C8505a c8505a = (C8505a) obj;
                s1.z.c.l.e(c8505a, "p1");
                C4984s c4984s = (C4984s) ((b) this).b;
                Objects.requireNonNull(c4984s);
                s1.z.c.l.e(c8505a, "addressProfile");
                C6391f c6391f = c4984s.f17050p;
                if (c6391f != null) {
                    c4984s.f17050p = new C6391f(c6391f.f21281a, c8505a, false);
                    AbstractC4981r abstractC4981r = (AbstractC4981r) c4984s.f57683a;
                    if (abstractC4981r != null) {
                        abstractC4981r.mo34148D0();
                    }
                }
                return s.a;
            }
        }

        public C4997a(i0 i0Var) {
            C4996t.this = r4;
            this.f17097b = i0Var;
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x00f3  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00f5  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m34024a(p193e.p194a.p437c.p438a.p493l.AbstractC9235b.C9239d r8, s1.w.d<? super s1.s> r9) {
            /*
                Method dump skipped, instructions count: 247
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p198b.C4996t.C4997a.m34024a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4996t(C4984s c4984s, d dVar) {
        super(2, dVar);
        this.f17095g = c4984s;
    }

    /* renamed from: i */
    public final d<s> m34027i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        C4996t c4996t = new C4996t(this.f17095g, dVar);
        c4996t.f17093e = obj;
        return c4996t;
    }

    /* renamed from: k */
    public final Object m34026k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        C4996t c4996t = new C4996t(this.f17095g, dVar);
        c4996t.f17093e = obj;
        return c4996t.m34025s(s.a);
    }

    /* renamed from: s */
    public final Object m34025s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f17094f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i0 i0Var = (i0) this.f17093e;
            f F0 = s1.a.a.a.v0.f.d.F0(this.f17095g.f17061u0.m27874c(sVar));
            C4997a c4997a = new C4997a(i0Var);
            this.f17094f = 1;
            if (F0.c(c4997a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return sVar;
    }
}
