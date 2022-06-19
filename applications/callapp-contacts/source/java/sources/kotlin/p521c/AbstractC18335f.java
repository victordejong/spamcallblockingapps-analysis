package kotlin.p521c;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\bg\u0018��2\u00020\u0001:\u0002\u0011\u0012J5\u0010\u0002\u001a\u0002H\u0003\"\u0004\b��\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u00032\u0018\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002H\u00030\u0006H&¢\u0006\u0002\u0010\bJ(\u0010\t\u001a\u0004\u0018\u0001H\n\"\b\b��\u0010\n*\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\n0\fH¦\u0002¢\u0006\u0002\u0010\rJ\u0014\u0010\u000e\u001a\u00020��2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH&J\u0011\u0010\u000f\u001a\u00020��2\u0006\u0010\u0010\u001a\u00020��H\u0096\u0002¨\u0006\u0013"}, m4298d2 = {"Lkotlin/coroutines/CoroutineContext;", "", "fold", "R", "initial", "operation", "Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext$Element;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "get", "E", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "minusKey", "plus", "context", "Element", "Key", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.c.f */
/* loaded from: classes5-dex2jar.jar:kotlin/c/f.class */
public interface AbstractC18335f {

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.c.f$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/c/f$a.class */
    public static final class C18336a {

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "Lkotlin/coroutines/CoroutineContext;", "acc", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.c.f$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/c/f$a$a.class */
        public static final class C18337a extends AbstractC18526r implements Function2<AbstractC18335f, AbstractC18338b, AbstractC18335f> {

            /* renamed from: a */
            public static final C18337a f63442a = new C18337a();

            C18337a() {
                super(2);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v18, types: [kotlin.c.c] */
            /* JADX WARN: Type inference failed for: r0v19, types: [kotlin.c.c] */
            /* JADX WARN: Type inference failed for: r0v20, types: [kotlin.c.c] */
            @Override // kotlin.jvm.functions.Function2
            public final /* synthetic */ AbstractC18335f invoke(AbstractC18335f abstractC18335f, AbstractC18338b abstractC18338b) {
                AbstractC18335f acc = abstractC18335f;
                AbstractC18338b element = abstractC18338b;
                C18524p.m3840d(acc, "acc");
                C18524p.m3840d(element, "element");
                AbstractC18335f minusKey = acc.minusKey(element.getKey());
                if (minusKey != C18341g.f63443a) {
                    AbstractC18333e abstractC18333e = (AbstractC18333e) minusKey.get(AbstractC18333e.f63440a);
                    if (abstractC18333e == null) {
                        element = new C18327c(minusKey, element);
                    } else {
                        AbstractC18335f minusKey2 = minusKey.minusKey(AbstractC18333e.f63440a);
                        element = minusKey2 == C18341g.f63443a ? new C18327c(element, abstractC18333e) : new C18327c(new C18327c(minusKey2, element), abstractC18333e);
                    }
                }
                return element;
            }
        }

        /* renamed from: a */
        public static AbstractC18335f m4077a(AbstractC18335f abstractC18335f, AbstractC18335f context) {
            C18524p.m3840d(context, "context");
            return context == C18341g.f63443a ? abstractC18335f : (AbstractC18335f) context.fold(abstractC18335f, C18337a.f63442a);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018��2\u00020\u0001J5\u0010\u0006\u001a\u0002H\u0007\"\u0004\b��\u0010\u00072\u0006\u0010\b\u001a\u0002H\u00072\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u00020��\u0012\u0004\u0012\u0002H\u00070\nH\u0016¢\u0006\u0002\u0010\u000bJ(\u0010\f\u001a\u0004\u0018\u0001H\r\"\b\b��\u0010\r*\u00020��2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\r0\u0003H\u0096\u0002¢\u0006\u0002\u0010\u000eJ\u0014\u0010\u000f\u001a\u00020\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0016R\u0016\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0010"}, m4298d2 = {"Lkotlin/coroutines/CoroutineContext$Element;", "Lkotlin/coroutines/CoroutineContext;", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "fold", "R", "initial", "operation", "Lkotlin/Function2;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "get", "E", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "minusKey", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.c.f$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/c/f$b.class */
    public interface AbstractC18338b extends AbstractC18335f {

        @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.c.f$b$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/c/f$b$a.class */
        public static final class C18339a {
            /* renamed from: a */
            public static <R> R m4076a(AbstractC18338b abstractC18338b, R r, Function2<? super R, ? super AbstractC18338b, ? extends R> operation) {
                C18524p.m3840d(operation, "operation");
                return operation.invoke(r, abstractC18338b);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* renamed from: a */
            public static <E extends AbstractC18338b> E m4075a(AbstractC18338b abstractC18338b, AbstractC18340c<E> key) {
                C18524p.m3840d(key, "key");
                if (C18524p.m3850a(abstractC18338b.getKey(), key)) {
                    return abstractC18338b;
                }
                return null;
            }

            /* renamed from: a */
            public static AbstractC18335f m4074a(AbstractC18338b abstractC18338b, AbstractC18335f context) {
                C18524p.m3840d(context, "context");
                return C18336a.m4077a(abstractC18338b, context);
            }

            /* renamed from: b */
            public static AbstractC18335f m4073b(AbstractC18338b abstractC18338b, AbstractC18340c<?> key) {
                C18524p.m3840d(key, "key");
                return C18524p.m3850a(abstractC18338b.getKey(), key) ? C18341g.f63443a : abstractC18338b;
            }
        }

        @Override // kotlin.p521c.AbstractC18335f
        <E extends AbstractC18338b> E get(AbstractC18340c<E> abstractC18340c);

        AbstractC18340c<?> getKey();
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n��\bf\u0018��*\b\b��\u0010\u0001*\u00020\u00022\u00020\u0003¨\u0006\u0004"}, m4298d2 = {"Lkotlin/coroutines/CoroutineContext$Key;", "E", "Lkotlin/coroutines/CoroutineContext$Element;", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.c.f$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/c/f$c.class */
    public interface AbstractC18340c<E extends AbstractC18338b> {
    }

    <R> R fold(R r, Function2<? super R, ? super AbstractC18338b, ? extends R> function2);

    <E extends AbstractC18338b> E get(AbstractC18340c<E> abstractC18340c);

    AbstractC18335f minusKey(AbstractC18340c<?> abstractC18340c);

    AbstractC18335f plus(AbstractC18335f abstractC18335f);
}
