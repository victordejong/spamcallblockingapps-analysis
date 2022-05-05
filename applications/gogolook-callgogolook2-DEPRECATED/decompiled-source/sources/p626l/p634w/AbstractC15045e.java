package p626l.p634w;

import androidx.core.app.Person;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14986p;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\bg\u0018�� \u000f2\u00020\u0001:\u0001\u000fJ(\u0010\u0002\u001a\u0004\u0018\u0001H\u0003\"\b\b��\u0010\u0003*\u00020\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0005H\u0096\u0002¢\u0006\u0002\u0010\u0006J\"\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\t0\b\"\u0004\b��\u0010\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\t0\bH&J\u0014\u0010\u000b\u001a\u00020\f2\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0016J\u0014\u0010\r\u001a\u00020\u000e2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\bH\u0016¨\u0006\u0010"}, m815d2 = {"Lkotlin/coroutines/ContinuationInterceptor;", "Lkotlin/coroutines/CoroutineContext$Element;", "get", ExifInterface.LONGITUDE_EAST, Person.KEY_KEY, "Lkotlin/coroutines/CoroutineContext$Key;", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "interceptContinuation", "Lkotlin/coroutines/Continuation;", ExifInterface.GPS_DIRECTION_TRUE, "continuation", "minusKey", "Lkotlin/coroutines/CoroutineContext;", "releaseInterceptedContinuation", "", "Key", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.w.e */
/* loaded from: classes3-dex2jar.jar:l/w/e.class */
public interface AbstractC15045e extends AbstractC15049g.AbstractC15052b {

    /* renamed from: M */
    public static final C15047b f33077M = C15047b.f33078a;

    /* renamed from: l.w.e$a */
    /* loaded from: classes3-dex2jar.jar:l/w/e$a.class */
    public static final class C15046a {
        /* renamed from: a */
        public static <E extends AbstractC15049g.AbstractC15052b> E m492a(AbstractC15045e eVar, AbstractC15049g.AbstractC15054c<E> cVar) {
            C15149k.m377b(cVar, Person.KEY_KEY);
            if (cVar instanceof AbstractC15038b) {
                AbstractC15038b bVar = (AbstractC15038b) cVar;
                E e = null;
                if (bVar.isSubKey$kotlin_stdlib(eVar.getKey())) {
                    e = (E) bVar.tryCast$kotlin_stdlib(eVar);
                    if (!(e instanceof AbstractC15049g.AbstractC15052b)) {
                        e = null;
                    }
                }
                return e;
            }
            if (AbstractC15045e.f33077M != cVar) {
                eVar = null;
            } else if (eVar == null) {
                throw new C14986p("null cannot be cast to non-null type E");
            }
            return eVar;
        }

        /* renamed from: b */
        public static AbstractC15049g m491b(AbstractC15045e eVar, AbstractC15049g.AbstractC15054c<?> cVar) {
            C15149k.m377b(cVar, Person.KEY_KEY);
            if (cVar instanceof AbstractC15038b) {
                AbstractC15038b bVar = (AbstractC15038b) cVar;
                AbstractC15049g gVar = eVar;
                if (bVar.isSubKey$kotlin_stdlib(eVar.getKey())) {
                    gVar = eVar;
                    if (bVar.tryCast$kotlin_stdlib(eVar) != null) {
                        gVar = C15055h.f33080a;
                    }
                }
                return gVar;
            }
            AbstractC15049g gVar2 = eVar;
            if (AbstractC15045e.f33077M == cVar) {
                gVar2 = C15055h.f33080a;
            }
            return gVar2;
        }
    }

    /* renamed from: l.w.e$b */
    /* loaded from: classes3-dex2jar.jar:l/w/e$b.class */
    public static final class C15047b implements AbstractC15049g.AbstractC15054c<AbstractC15045e> {

        /* renamed from: a */
        public static final /* synthetic */ C15047b f33078a = new C15047b();
    }

    <T> AbstractC15044d<T> interceptContinuation(AbstractC15044d<? super T> dVar);

    void releaseInterceptedContinuation(AbstractC15044d<?> dVar);
}
