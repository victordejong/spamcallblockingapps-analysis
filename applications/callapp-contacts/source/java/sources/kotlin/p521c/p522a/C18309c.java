package kotlin.p521c.p522a;

import java.util.Objects;
import kotlin.C18542p;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.C18501ah;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18335f;
import kotlin.p521c.C18341g;
import kotlin.p521c.p523b.p524a.AbstractC18316a;
import kotlin.p521c.p523b.p524a.AbstractC18318c;
import kotlin.p521c.p523b.p524a.AbstractC18324h;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aF\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\"\u0004\b��\u0010\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u00012\u001c\b\u0004\u0010\u0005\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006H\u0083\b¢\u0006\u0002\b\b\u001aD\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\"\u0004\b��\u0010\u0003*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0007ø\u0001��¢\u0006\u0002\u0010\n\u001a]\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\"\u0004\b��\u0010\u000b\"\u0004\b\u0001\u0010\u0003*#\b\u0001\u0012\u0004\u0012\u0002H\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\f¢\u0006\u0002\b\r2\u0006\u0010\u000e\u001a\u0002H\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0007ø\u0001��¢\u0006\u0002\u0010\u000f\u001a\u001e\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b��\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0007\u001aA\u0010\u0011\u001a\u0004\u0018\u00010\u0007\"\u0004\b��\u0010\u0003*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0087\bø\u0001��¢\u0006\u0002\u0010\u0012\u001aZ\u0010\u0011\u001a\u0004\u0018\u00010\u0007\"\u0004\b��\u0010\u000b\"\u0004\b\u0001\u0010\u0003*#\b\u0001\u0012\u0004\u0012\u0002H\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\f¢\u0006\u0002\b\r2\u0006\u0010\u000e\u001a\u0002H\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0087\bø\u0001��¢\u0006\u0002\u0010\u0013\u001an\u0010\u0011\u001a\u0004\u0018\u00010\u0007\"\u0004\b��\u0010\u000b\"\u0004\b\u0001\u0010\u0014\"\u0004\b\u0002\u0010\u0003*)\b\u0001\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0015¢\u0006\u0002\b\r2\u0006\u0010\u000e\u001a\u0002H\u000b2\u0006\u0010\u0016\u001a\u0002H\u00142\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0081\bø\u0001��¢\u0006\u0002\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, m4298d2 = {"createCoroutineFromSuspendFunction", "Lkotlin/coroutines/Continuation;", "", "T", "completion", "block", "Lkotlin/Function1;", "", "createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt", "createCoroutineUnintercepted", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "R", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "receiver", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "intercepted", "startCoroutineUninterceptedOrReturn", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "P", "Lkotlin/Function3;", "param", "(Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlin-stdlib"}, m4297k = 5, m4296mv = {1, 4, 1}, m4294xi = 1, m4293xs = "kotlin/coroutines/intrinsics/IntrinsicsKt")
/* renamed from: kotlin.c.a.c */
/* loaded from: classes5-dex2jar.jar:kotlin/c/a/c.class */
public class C18309c {

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J\"\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0007H\u0014ø\u0001��¢\u0006\u0002\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t¸\u0006��"}, m4298d2 = {"kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$1", "Lkotlin/coroutines/jvm/internal/RestrictedContinuationImpl;", "label", "", "invokeSuspend", "", "result", "Lkotlin/Result;", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.c.a.c$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/c/a/c$a.class */
    public static final class C18310a extends AbstractC18324h {

        /* renamed from: a */
        final /* synthetic */ AbstractC18332d f63403a;

        /* renamed from: b */
        final /* synthetic */ Function1 f63404b;

        /* renamed from: c */
        private int f63405c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18310a(AbstractC18332d abstractC18332d, AbstractC18332d abstractC18332d2, Function1 function1) {
            super(abstractC18332d2);
            this.f63403a = abstractC18332d;
            this.f63404b = function1;
        }

        @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
        /* renamed from: a */
        public final Object mo57a(Object obj) {
            int i = this.f63405c;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("This coroutine had already completed".toString());
                }
                this.f63405c = 2;
                C18542p.m3835a(obj);
                return obj;
            }
            this.f63405c = 1;
            C18542p.m3835a(obj);
            Function1 function1 = this.f63404b;
            Objects.requireNonNull(function1, "null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            return ((Function1) C18501ah.m3876a(function1, 1)).invoke(this);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J\"\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0007H\u0014ø\u0001��¢\u0006\u0002\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t¸\u0006��"}, m4298d2 = {"kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2", "Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "label", "", "invokeSuspend", "", "result", "Lkotlin/Result;", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.c.a.c$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/c/a/c$b.class */
    public static final class C18311b extends AbstractC18318c {

        /* renamed from: a */
        final /* synthetic */ AbstractC18332d f63406a;

        /* renamed from: b */
        final /* synthetic */ AbstractC18335f f63407b;

        /* renamed from: c */
        final /* synthetic */ Function1 f63408c;

        /* renamed from: d */
        private int f63409d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18311b(AbstractC18332d abstractC18332d, AbstractC18335f abstractC18335f, AbstractC18332d abstractC18332d2, AbstractC18335f abstractC18335f2, Function1 function1) {
            super(abstractC18332d2, abstractC18335f2);
            this.f63406a = abstractC18332d;
            this.f63407b = abstractC18335f;
            this.f63408c = function1;
        }

        @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
        /* renamed from: a */
        public final Object mo57a(Object obj) {
            int i = this.f63409d;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("This coroutine had already completed".toString());
                }
                this.f63409d = 2;
                C18542p.m3835a(obj);
                return obj;
            }
            this.f63409d = 1;
            C18542p.m3835a(obj);
            Function1 function1 = this.f63408c;
            Objects.requireNonNull(function1, "null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            return ((Function1) C18501ah.m3876a(function1, 1)).invoke(this);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J\"\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0007H\u0014ø\u0001��¢\u0006\u0002\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t¸\u0006��"}, m4298d2 = {"kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$1", "Lkotlin/coroutines/jvm/internal/RestrictedContinuationImpl;", "label", "", "invokeSuspend", "", "result", "Lkotlin/Result;", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.c.a.c$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/c/a/c$c.class */
    public static final class C18312c extends AbstractC18324h {

        /* renamed from: a */
        final /* synthetic */ AbstractC18332d f63410a;

        /* renamed from: b */
        final /* synthetic */ Function2 f63411b;

        /* renamed from: c */
        final /* synthetic */ Object f63412c;

        /* renamed from: d */
        private int f63413d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18312c(AbstractC18332d abstractC18332d, AbstractC18332d abstractC18332d2, Function2 function2, Object obj) {
            super(abstractC18332d2);
            this.f63410a = abstractC18332d;
            this.f63411b = function2;
            this.f63412c = obj;
        }

        @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
        /* renamed from: a */
        public final Object mo57a(Object obj) {
            int i = this.f63413d;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("This coroutine had already completed".toString());
                }
                this.f63413d = 2;
                C18542p.m3835a(obj);
                return obj;
            }
            this.f63413d = 1;
            C18542p.m3835a(obj);
            Function2 function2 = this.f63411b;
            Objects.requireNonNull(function2, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            return ((Function2) C18501ah.m3876a(function2, 2)).invoke(this.f63412c, this);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J\"\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0007H\u0014ø\u0001��¢\u0006\u0002\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t¸\u0006��"}, m4298d2 = {"kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2", "Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "label", "", "invokeSuspend", "", "result", "Lkotlin/Result;", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.c.a.c$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/c/a/c$d.class */
    public static final class C18313d extends AbstractC18318c {

        /* renamed from: a */
        final /* synthetic */ AbstractC18332d f63414a;

        /* renamed from: b */
        final /* synthetic */ AbstractC18335f f63415b;

        /* renamed from: c */
        final /* synthetic */ Function2 f63416c;

        /* renamed from: d */
        final /* synthetic */ Object f63417d;

        /* renamed from: e */
        private int f63418e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18313d(AbstractC18332d abstractC18332d, AbstractC18335f abstractC18335f, AbstractC18332d abstractC18332d2, AbstractC18335f abstractC18335f2, Function2 function2, Object obj) {
            super(abstractC18332d2, abstractC18335f2);
            this.f63414a = abstractC18332d;
            this.f63415b = abstractC18335f;
            this.f63416c = function2;
            this.f63417d = obj;
        }

        @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
        /* renamed from: a */
        public final Object mo57a(Object obj) {
            int i = this.f63418e;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("This coroutine had already completed".toString());
                }
                this.f63418e = 2;
                C18542p.m3835a(obj);
                return obj;
            }
            this.f63418e = 1;
            C18542p.m3835a(obj);
            Function2 function2 = this.f63416c;
            Objects.requireNonNull(function2, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            return ((Function2) C18501ah.m3876a(function2, 2)).invoke(this.f63417d, this);
        }
    }

    /* renamed from: a */
    public static final <T> AbstractC18332d<T> m4100a(AbstractC18332d<? super T> intercepted) {
        C18524p.m3840d(intercepted, "$this$intercepted");
        AbstractC18318c abstractC18318c = (AbstractC18318c) (!(intercepted instanceof AbstractC18318c) ? null : intercepted);
        AbstractC18332d<Object> abstractC18332d = intercepted;
        if (abstractC18318c != null) {
            abstractC18332d = abstractC18318c.m4091f();
            if (abstractC18332d == null) {
                abstractC18332d = intercepted;
            }
        }
        return (AbstractC18332d<T>) abstractC18332d;
    }

    /* renamed from: a */
    public static final <T> AbstractC18332d<C20128v> m4099a(Function1<? super AbstractC18332d<? super T>, ? extends Object> createCoroutineUnintercepted, AbstractC18332d<? super T> completion) {
        C18524p.m3840d(createCoroutineUnintercepted, "$this$createCoroutineUnintercepted");
        C18524p.m3840d(completion, "completion");
        C18524p.m3840d(completion, "completion");
        if (createCoroutineUnintercepted instanceof AbstractC18316a) {
            return AbstractC18316a.m4094a((AbstractC18332d<?>) completion);
        }
        AbstractC18335f mo787b = completion.mo787b();
        if (mo787b == C18341g.f63443a) {
            Objects.requireNonNull(completion, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            return new C18310a(completion, completion, createCoroutineUnintercepted);
        }
        Objects.requireNonNull(completion, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        return new C18311b(completion, mo787b, completion, mo787b, createCoroutineUnintercepted);
    }

    /* renamed from: a */
    public static final <R, T> AbstractC18332d<C20128v> m4098a(Function2<? super R, ? super AbstractC18332d<? super T>, ? extends Object> createCoroutineUnintercepted, R r, AbstractC18332d<? super T> completion) {
        C18524p.m3840d(createCoroutineUnintercepted, "$this$createCoroutineUnintercepted");
        C18524p.m3840d(completion, "completion");
        C18524p.m3840d(completion, "completion");
        if (createCoroutineUnintercepted instanceof AbstractC18316a) {
            return ((AbstractC18316a) createCoroutineUnintercepted).mo4095a(r, completion);
        }
        AbstractC18335f mo787b = completion.mo787b();
        if (mo787b == C18341g.f63443a) {
            Objects.requireNonNull(completion, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            return new C18312c(completion, completion, createCoroutineUnintercepted, r);
        }
        Objects.requireNonNull(completion, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        return new C18313d(completion, mo787b, completion, mo787b, createCoroutineUnintercepted, r);
    }
}
