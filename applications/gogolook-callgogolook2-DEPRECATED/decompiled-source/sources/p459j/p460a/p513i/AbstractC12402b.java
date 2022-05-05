package p459j.p460a.p513i;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import p459j.p460a.p513i.AbstractC12398a;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
import p655o.C15299r;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\n\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\b&\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\r\u0010\u000b\u001a\u00028��H&¢\u0006\u0002\u0010\u0007J\b\u0010\f\u001a\u00020\rH$J\b\u0010\u000e\u001a\u00020\u000fH&JG\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0011\"\u0004\b\u0001\u0010\u00122(\u0010\u0013\u001a$\b\u0001\u0012\u0004\u0012\u00028��\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00120\u00160\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0014H\u0086@ø\u0001��¢\u0006\u0002\u0010\u0017J\b\u0010\u0018\u001a\u00020\u0019H\u0002R*\u0010\u0005\u001a\u0004\u0018\u00018��2\b\u0010\u0004\u001a\u0004\u0018\u00018��@BX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, m815d2 = {"Lgogolook/callgogolook2/api/BaseRemoteDataSource;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "<set-?>", NotificationCompat.CATEGORY_SERVICE, "getService", "()Ljava/lang/Object;", "setService", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "createService", "getDispatcher", "Lkotlin/coroutines/CoroutineContext;", "getEndpoint", "", "getResult", "Lgogolook/callgogolook2/api/ApiResult;", "R", NotificationCompat.CATEGORY_CALL, "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "Lretrofit2/Response;", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "init", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.i.b */
/* loaded from: classes2-dex2jar.jar:j/a/i/b.class */
public abstract class AbstractC12402b<T> {

    /* renamed from: a */
    public T f27978a;

    @AbstractC15070f(m473c = "gogolook/callgogolook2/api/BaseRemoteDataSource$getResult$2", m472f = "BaseRemoteDataSource.kt", m471l = {35, 42}, m470m = "invokeSuspend")
    /* renamed from: j.a.i.b$a */
    /* loaded from: classes2-dex2jar.jar:j/a/i/b$a.class */
    public static final class C12403a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super AbstractC12398a<? extends R>>, Object> {

        /* renamed from: a */
        public CoroutineScope f27979a;

        /* renamed from: b */
        public Object f27980b;

        /* renamed from: c */
        public int f27981c;

        /* renamed from: e */
        public final /* synthetic */ AbstractC15122p f27983e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12403a(AbstractC15122p pVar, AbstractC15044d dVar) {
            super(2, dVar);
            this.f27983e = pVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C12403a aVar = new C12403a(this.f27983e, dVar);
            aVar.f27979a = (CoroutineScope) obj;
            return aVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, Object obj) {
            return ((C12403a) create(coroutineScope, (AbstractC15044d) obj)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a;
            Object a2 = C15064c.m478a();
            int i = this.f27981c;
            try {
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    Object c = AbstractC12402b.this.m6237c();
                    if (c == null) {
                        return new AbstractC12398a.C12400b(new IllegalStateException("service did not init"));
                    }
                    AbstractC15122p pVar = this.f27983e;
                    this.f27980b = c;
                    this.f27981c = 1;
                    Object invoke = pVar.invoke(c, this);
                    obj = invoke;
                    if (invoke == a2) {
                        return a2;
                    }
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
                C15299r rVar = (C15299r) obj;
                return (!rVar.m90d() || (a = rVar.m95a()) == null) ? new AbstractC12398a.C12399a(rVar.m92b(), rVar.m91c()) : new AbstractC12398a.C12401c(rVar.m92b(), a);
            } catch (Exception e) {
                return new AbstractC12398a.C12400b(e);
            }
        }
    }

    public AbstractC12402b() {
        m6236d();
    }

    /* renamed from: a */
    public abstract T mo3584a();

    /* renamed from: a */
    public final <R> Object m6238a(AbstractC15122p<? super T, ? super AbstractC15044d<? super C15299r<R>>, ? extends Object> pVar, AbstractC15044d<? super AbstractC12398a<? extends R>> dVar) {
        return BuildersKt.withContext(mo3583b(), new C12403a(pVar, null), dVar);
    }

    /* renamed from: b */
    public abstract AbstractC15049g mo3583b();

    /* renamed from: c */
    public final T m6237c() {
        return this.f27978a;
    }

    /* renamed from: d */
    public final void m6236d() {
        this.f27978a = mo3584a();
    }
}
