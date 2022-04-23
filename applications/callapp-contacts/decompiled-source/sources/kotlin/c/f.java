package kotlin.c;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\bg\u0018��2\u00020\u0001:\u0002\u0011\u0012J5\u0010\u0002\u001a\u0002H\u0003\"\u0004\b��\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u00032\u0018\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002H\u00030\u0006H&¢\u0006\u0002\u0010\bJ(\u0010\t\u001a\u0004\u0018\u0001H\n\"\b\b��\u0010\n*\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\n0\fH¦\u0002¢\u0006\u0002\u0010\rJ\u0014\u0010\u000e\u001a\u00020��2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH&J\u0011\u0010\u000f\u001a\u00020��2\u0006\u0010\u0010\u001a\u00020��H\u0096\u0002¨\u0006\u0013"}, d2 = {"Lkotlin/coroutines/CoroutineContext;", "", "fold", "R", "initial", "operation", "Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext$Element;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "get", "E", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "minusKey", "plus", "context", "Element", "Key", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/c/f.class */
public interface f {

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/c/f$a.class */
    public static final class a {

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lkotlin/coroutines/CoroutineContext;", "acc", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, k = 3, mv = {1, 4, 1})
        /* renamed from: kotlin.c.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/c/f$a$a.class */
        public static final class C0608a extends r implements Function2<f, b, f> {

            /* renamed from: a  reason: collision with root package name */
            public static final C0608a f36649a = new C0608a();

            C0608a() {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final /* synthetic */ f invoke(f fVar, b bVar) {
                f acc = fVar;
                b element = bVar;
                p.d(acc, "acc");
                p.d(element, "element");
                f minusKey = acc.minusKey(element.getKey());
                f fVar2 = element;
                if (minusKey != g.f36650a) {
                    e eVar = (e) minusKey.get(e.f36647a);
                    if (eVar == null) {
                        fVar2 = new kotlin.c.c(minusKey, element);
                    } else {
                        f minusKey2 = minusKey.minusKey(e.f36647a);
                        fVar2 = minusKey2 == g.f36650a ? new kotlin.c.c(element, eVar) : new kotlin.c.c(new kotlin.c.c(minusKey2, element), eVar);
                    }
                }
                return fVar2;
            }
        }

        public static f a(f fVar, f context) {
            p.d(context, "context");
            return context == g.f36650a ? fVar : (f) context.fold(fVar, C0608a.f36649a);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018��2\u00020\u0001J5\u0010\u0006\u001a\u0002H\u0007\"\u0004\b��\u0010\u00072\u0006\u0010\b\u001a\u0002H\u00072\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u00020��\u0012\u0004\u0012\u0002H\u00070\nH\u0016¢\u0006\u0002\u0010\u000bJ(\u0010\f\u001a\u0004\u0018\u0001H\r\"\b\b��\u0010\r*\u00020��2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\r0\u0003H\u0096\u0002¢\u0006\u0002\u0010\u000eJ\u0014\u0010\u000f\u001a\u00020\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0016R\u0016\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0010"}, d2 = {"Lkotlin/coroutines/CoroutineContext$Element;", "Lkotlin/coroutines/CoroutineContext;", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "fold", "R", "initial", "operation", "Lkotlin/Function2;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "get", "E", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "minusKey", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/c/f$b.class */
    public interface b extends f {

        @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/c/f$b$a.class */
        public static final class a {
            public static <R> R a(b bVar, R r, Function2<? super R, ? super b, ? extends R> operation) {
                p.d(operation, "operation");
                return (R) operation.invoke(r, bVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static <E extends b> E a(b bVar, c<E> key) {
                p.d(key, "key");
                if (p.a(bVar.getKey(), key)) {
                    return bVar;
                }
                return null;
            }

            public static f a(b bVar, f context) {
                p.d(context, "context");
                return a.a(bVar, context);
            }

            public static f b(b bVar, c<?> key) {
                p.d(key, "key");
                return p.a(bVar.getKey(), key) ? g.f36650a : bVar;
            }
        }

        @Override // kotlin.c.f
        <E extends b> E get(c<E> cVar);

        c<?> getKey();
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n��\bf\u0018��*\b\b��\u0010\u0001*\u00020\u00022\u00020\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/coroutines/CoroutineContext$Key;", "E", "Lkotlin/coroutines/CoroutineContext$Element;", "", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/c/f$c.class */
    public interface c<E extends b> {
    }

    <R> R fold(R r, Function2<? super R, ? super b, ? extends R> function2);

    <E extends b> E get(c<E> cVar);

    f minusKey(c<?> cVar);

    f plus(f fVar);
}
