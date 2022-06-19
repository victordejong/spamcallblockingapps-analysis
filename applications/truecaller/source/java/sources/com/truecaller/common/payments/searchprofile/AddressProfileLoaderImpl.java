package com.truecaller.common.payments.searchprofile;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC27013m0;
import p1727n3.p1868v.AbstractC27028u;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p419m.p420a.AbstractC8507b;
import p193e.p194a.p372b0.p419m.p420a.C8505a;
import p193e.p194a.p372b0.p419m.p420a.C8508c;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.s;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B%\b\u0007\u0012\b\b\u0001\u0010\u0017\u001a\u00020\u0014\u0012\b\b\u0001\u0010\u001c\u001a\u00020\u0014\u0012\u0006\u0010 \u001a\u00020\u001d¢\u0006\u0004\b!\u0010\"J-\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0014\b\u0001\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\r\u0010\u000eR\u001d\u0010\u0013\u001a\u00020\b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00148V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0016R\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006#"}, d2 = {"Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;", "Le/a/b0/m/c/a;", "", "address", "Lkotlin/Function1;", "Le/a/b0/m/a/a;", "Ls1/s;", "execute", "Lq3/a/p1;", "Iz", "(Ljava/lang/String;Ls1/z/b/l;)Lq3/a/p1;", "Kw", "(Ljava/lang/String;)Le/a/b0/m/a/a;", AnalyticsConstants.DESTROY, "()V", "a", "Ls1/g;", "getJob", "()Lq3/a/p1;", "job", "Ls1/w/f;", C22021b.f61237c, "Ls1/w/f;", "ioContext", "getCoroutineContext", "()Ls1/w/f;", "coroutineContext", AbstractC2405c.f7629a, "uiContext", "Le/a/b0/m/a/b;", "d", "Le/a/b0/m/a/b;", "addressProfileProvider", "<init>", "(Ls1/w/f;Ls1/w/f;Le/a/b0/m/a/b;)V", "common-payments_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl.class */
public final class AddressProfileLoaderImpl implements AbstractC8511a {

    /* renamed from: a */
    public final g f10938a = C25225a.m3978P1(C3689a.f10942b);

    /* renamed from: b */
    public final f f10939b;

    /* renamed from: c */
    public final f f10940c;

    /* renamed from: d */
    public final AbstractC8507b f10941d;

    /* renamed from: com.truecaller.common.payments.searchprofile.AddressProfileLoaderImpl$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$a.class */
    public static final class C3689a extends m implements a<y> {

        /* renamed from: b */
        public static final C3689a f10942b = new C3689a();

        public C3689a() {
            super(0);
        }

        public Object invoke() {
            return d.n((p1) null, 1);
        }
    }

    @e(c = "com.truecaller.common.payments.searchprofile.AddressProfileLoaderImpl$loadBlocking$1", f = "AddressProfileLoader.kt", l = {61}, m = "invokeSuspend")
    /* renamed from: com.truecaller.common.payments.searchprofile.AddressProfileLoaderImpl$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$b.class */
    public static final class C3690b extends i implements p<i0, s1.w.d<? super C8505a>, Object> {

        /* renamed from: e */
        public int f10943e;

        /* renamed from: g */
        public final /* synthetic */ String f10945g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3690b(String str, s1.w.d dVar) {
            super(2, dVar);
            AddressProfileLoaderImpl.this = r5;
            this.f10945g = str;
        }

        /* renamed from: i */
        public final s1.w.d<s> m35727i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C3690b(this.f10945g, dVar);
        }

        /* renamed from: k */
        public final Object m35726k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C3690b(this.f10945g, dVar).m35725s(s.a);
        }

        /* renamed from: s */
        public final Object m35725s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f10943e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC8507b abstractC8507b = AddressProfileLoaderImpl.this.f10941d;
                String str = this.f10945g;
                this.f10943e = 1;
                Object m28431a = ((C8508c) abstractC8507b).m28431a(str, this);
                obj = m28431a;
                if (m28431a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return (C8505a) obj;
        }
    }

    @e(c = "com.truecaller.common.payments.searchprofile.AddressProfileLoaderImpl$loadIntoUi$1", f = "AddressProfileLoader.kt", l = {45, 46}, m = "invokeSuspend")
    /* renamed from: com.truecaller.common.payments.searchprofile.AddressProfileLoaderImpl$c */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c.class */
    public static final class C3691c extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public Object f10946e;

        /* renamed from: f */
        public Object f10947f;

        /* renamed from: g */
        public int f10948g;

        /* renamed from: i */
        public final /* synthetic */ String f10950i;

        /* renamed from: j */
        public final /* synthetic */ s1.z.b.l f10951j;

        @e(c = "com.truecaller.common.payments.searchprofile.AddressProfileLoaderImpl$loadIntoUi$1$1", f = "AddressProfileLoader.kt", l = {}, m = "invokeSuspend")
        /* renamed from: com.truecaller.common.payments.searchprofile.AddressProfileLoaderImpl$c$a */
        /* loaded from: classes7-dex2jar.jar:com/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c$a.class */
        public static final class C3692a extends i implements p<i0, s1.w.d<? super s>, Object> {

            /* renamed from: f */
            public final /* synthetic */ c0 f10953f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C3692a(c0 c0Var, s1.w.d dVar) {
                super(2, dVar);
                C3691c.this = r5;
                this.f10953f = c0Var;
            }

            /* renamed from: i */
            public final s1.w.d<s> m35721i(Object obj, s1.w.d<?> dVar) {
                l.e(dVar, "completion");
                return new C3692a(this.f10953f, dVar);
            }

            /* renamed from: k */
            public final Object m35720k(Object obj, Object obj2) {
                s1.w.d dVar = (s1.w.d) obj2;
                l.e(dVar, "completion");
                C3691c c3691c = C3691c.this;
                c0 c0Var = this.f10953f;
                dVar.getContext();
                s sVar = s.a;
                C25225a.m3932a3(sVar);
                c3691c.f10951j.d((C8505a) c0Var.a);
                return sVar;
            }

            /* renamed from: s */
            public final Object m35719s(Object obj) {
                C25225a.m3932a3(obj);
                C3691c.this.f10951j.d((C8505a) this.f10953f.a);
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3691c(String str, s1.z.b.l lVar, s1.w.d dVar) {
            super(2, dVar);
            AddressProfileLoaderImpl.this = r5;
            this.f10950i = str;
            this.f10951j = lVar;
        }

        /* renamed from: i */
        public final s1.w.d<s> m35724i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C3691c(this.f10950i, this.f10951j, dVar);
        }

        /* renamed from: k */
        public final Object m35723k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C3691c(this.f10950i, this.f10951j, dVar).m35722s(s.a);
        }

        /* renamed from: s */
        public final Object m35722s(Object obj) {
            Object obj2;
            c0 c0Var;
            c0 c0Var2;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f10948g;
            if (i == 0) {
                c0 m8633d0 = C22128a.m8633d0(obj);
                AbstractC8507b abstractC8507b = AddressProfileLoaderImpl.this.f10941d;
                String str = this.f10950i;
                this.f10946e = m8633d0;
                this.f10947f = m8633d0;
                this.f10948g = 1;
                obj2 = ((C8508c) abstractC8507b).m28431a(str, this);
                if (obj2 == aVar) {
                    return aVar;
                }
                c0Var = m8633d0;
                c0Var2 = m8633d0;
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return s.a;
            } else {
                c0Var2 = (c0) this.f10947f;
                c0Var = (c0) this.f10946e;
                C25225a.m3932a3(obj);
                obj2 = obj;
            }
            c0Var2.a = (C8505a) obj2;
            f fVar = AddressProfileLoaderImpl.this.f10940c;
            C3692a c3692a = new C3692a(c0Var, null);
            this.f10946e = null;
            this.f10947f = null;
            this.f10948g = 2;
            if (d.a4(fVar, c3692a, this) == aVar) {
                return aVar;
            }
            return s.a;
        }
    }

    @Inject
    public AddressProfileLoaderImpl(@Named("IO") f fVar, @Named("UI") f fVar2, AbstractC8507b abstractC8507b) {
        l.e(fVar, "ioContext");
        l.e(fVar2, "uiContext");
        l.e(abstractC8507b, "addressProfileProvider");
        this.f10939b = fVar;
        this.f10940c = fVar2;
        this.f10941d = abstractC8507b;
    }

    @Override // p193e.p194a.p372b0.p419m.p422c.AbstractC8511a
    /* renamed from: Iz */
    public p1 mo28429Iz(String str, s1.z.b.l<? super C8505a, s> lVar) {
        l.e(str, "address");
        l.e(lVar, "execute");
        return d.w2(this, (f) null, (j0) null, new C3691c(str, lVar, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p372b0.p419m.p422c.AbstractC8511a
    /* renamed from: Kw */
    public C8505a mo28428Kw(String str) {
        l.e(str, "address");
        return (C8505a) d.b3(getCoroutineContext(), new C3690b(str, null));
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_DESTROY)
    public final void destroy() {
        d.Y((p1) this.f10938a.getValue(), (CancellationException) null, 1, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f10939b.plus((p1) this.f10938a.getValue());
    }
}
