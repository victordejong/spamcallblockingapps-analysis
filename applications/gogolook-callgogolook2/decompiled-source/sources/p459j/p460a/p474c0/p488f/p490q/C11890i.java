package p459j.p460a.p474c0.p488f.p490q;

import kotlin.Metadata;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import p459j.p460a.p582w0.C14172t3;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\b\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, m815d2 = {"Lgogolook/callgogolook2/messaging/sms/job/SmsCoroutineContextProvider;", "Lgogolook/callgogolook2/messaging/sms/job/CoroutineContextProvider;", "()V", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "getDispatcher", "()Lkotlinx/coroutines/CoroutineDispatcher;", "dispatcher$delegate", "Lkotlin/Lazy;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "getScope", "()Lkotlinx/coroutines/CoroutineScope;", "scope$delegate", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.f.q.i */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/i.class */
public final class C11890i implements AbstractC11863b {

    /* renamed from: c */
    public static final /* synthetic */ AbstractC14906i[] f26671c;

    /* renamed from: a */
    public final AbstractC14974f f26672a = C14975g.m662a(new C11892b());

    /* renamed from: b */
    public final AbstractC14974f f26673b = C14975g.m662a(C11891a.f26674a);

    /* renamed from: j.a.c0.f.q.i$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/i$a.class */
    public static final class C11891a extends AbstractC15150l implements AbstractC15107a<CoroutineDispatcher> {

        /* renamed from: a */
        public static final C11891a f26674a = new C11891a();

        public C11891a() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final CoroutineDispatcher invoke() {
            return Dispatchers.getDefault();
        }
    }

    /* renamed from: j.a.c0.f.q.i$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/i$b.class */
    public static final class C11892b extends AbstractC15150l implements AbstractC15107a<C14172t3> {
        public C11892b() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C14172t3 invoke() {
            return new C14172t3(C11890i.this.mo7981b());
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11890i.class), "scope", "getScope()Lkotlinx/coroutines/CoroutineScope;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C11890i.class), "dispatcher", "getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;");
        C15131a0.m412a(sVar2);
        f26671c = new AbstractC14906i[]{sVar, sVar2};
    }

    @Override // p459j.p460a.p474c0.p488f.p490q.AbstractC11863b
    /* renamed from: a */
    public CoroutineScope mo7982a() {
        AbstractC14974f fVar = this.f26672a;
        AbstractC14906i iVar = f26671c[0];
        return (CoroutineScope) fVar.getValue();
    }

    @Override // p459j.p460a.p474c0.p488f.p490q.AbstractC11863b
    /* renamed from: b */
    public CoroutineDispatcher mo7981b() {
        AbstractC14974f fVar = this.f26673b;
        AbstractC14906i iVar = f26671c[1];
        return (CoroutineDispatcher) fVar.getValue();
    }
}
