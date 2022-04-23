package kotlin.c.a;

import java.util.Objects;
import kotlin.Metadata;
import kotlin.c.b.a.h;
import kotlin.c.f;
import kotlin.c.g;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ah;
import kotlin.p;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aF\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\"\u0004\b��\u0010\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u00012\u001c\b\u0004\u0010\u0005\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006H\u0083\b¢\u0006\u0002\b\b\u001aD\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\"\u0004\b��\u0010\u0003*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0007ø\u0001��¢\u0006\u0002\u0010\n\u001a]\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\"\u0004\b��\u0010\u000b\"\u0004\b\u0001\u0010\u0003*#\b\u0001\u0012\u0004\u0012\u0002H\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\f¢\u0006\u0002\b\r2\u0006\u0010\u000e\u001a\u0002H\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0007ø\u0001��¢\u0006\u0002\u0010\u000f\u001a\u001e\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b��\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0007\u001aA\u0010\u0011\u001a\u0004\u0018\u00010\u0007\"\u0004\b��\u0010\u0003*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0087\bø\u0001��¢\u0006\u0002\u0010\u0012\u001aZ\u0010\u0011\u001a\u0004\u0018\u00010\u0007\"\u0004\b��\u0010\u000b\"\u0004\b\u0001\u0010\u0003*#\b\u0001\u0012\u0004\u0012\u0002H\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\f¢\u0006\u0002\b\r2\u0006\u0010\u000e\u001a\u0002H\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0087\bø\u0001��¢\u0006\u0002\u0010\u0013\u001an\u0010\u0011\u001a\u0004\u0018\u00010\u0007\"\u0004\b��\u0010\u000b\"\u0004\b\u0001\u0010\u0014\"\u0004\b\u0002\u0010\u0003*)\b\u0001\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0015¢\u0006\u0002\b\r2\u0006\u0010\u000e\u001a\u0002H\u000b2\u0006\u0010\u0016\u001a\u0002H\u00142\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0081\bø\u0001��¢\u0006\u0002\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"createCoroutineFromSuspendFunction", "Lkotlin/coroutines/Continuation;", "", "T", "completion", "block", "Lkotlin/Function1;", "", "createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt", "createCoroutineUnintercepted", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "R", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "receiver", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "intercepted", "startCoroutineUninterceptedOrReturn", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "P", "Lkotlin/Function3;", "param", "(Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 5, mv = {1, 4, 1}, xi = 1, xs = "kotlin/coroutines/intrinsics/IntrinsicsKt")
/* loaded from: classes5-dex2jar.jar:kotlin/c/a/c.class */
public class c {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J\"\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0007H\u0014ø\u0001��¢\u0006\u0002\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t¸\u0006��"}, d2 = {"kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$1", "Lkotlin/coroutines/jvm/internal/RestrictedContinuationImpl;", "label", "", "invokeSuspend", "", "result", "Lkotlin/Result;", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/c/a/c$a.class */
    public static final class a extends h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlin.c.d f36611a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function1 f36612b;

        /* renamed from: c  reason: collision with root package name */
        private int f36613c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(kotlin.c.d dVar, kotlin.c.d dVar2, Function1 function1) {
            super(dVar2);
            this.f36611a = dVar;
            this.f36612b = function1;
        }

        @Override // kotlin.c.b.a.a
        public final Object a(Object obj) {
            int i = this.f36613c;
            if (i == 0) {
                this.f36613c = 1;
                p.a(obj);
                Function1 function1 = this.f36612b;
                Objects.requireNonNull(function1, "null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                return ((Function1) ah.a(function1, 1)).invoke(this);
            } else if (i == 1) {
                this.f36613c = 2;
                p.a(obj);
                return obj;
            } else {
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J\"\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0007H\u0014ø\u0001��¢\u0006\u0002\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t¸\u0006��"}, d2 = {"kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2", "Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "label", "", "invokeSuspend", "", "result", "Lkotlin/Result;", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/c/a/c$b.class */
    public static final class b extends kotlin.c.b.a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlin.c.d f36614a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ f f36615b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function1 f36616c;

        /* renamed from: d  reason: collision with root package name */
        private int f36617d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(kotlin.c.d dVar, f fVar, kotlin.c.d dVar2, f fVar2, Function1 function1) {
            super(dVar2, fVar2);
            this.f36614a = dVar;
            this.f36615b = fVar;
            this.f36616c = function1;
        }

        @Override // kotlin.c.b.a.a
        public final Object a(Object obj) {
            int i = this.f36617d;
            if (i == 0) {
                this.f36617d = 1;
                p.a(obj);
                Function1 function1 = this.f36616c;
                Objects.requireNonNull(function1, "null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                return ((Function1) ah.a(function1, 1)).invoke(this);
            } else if (i == 1) {
                this.f36617d = 2;
                p.a(obj);
                return obj;
            } else {
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J\"\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0007H\u0014ø\u0001��¢\u0006\u0002\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t¸\u0006��"}, d2 = {"kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$1", "Lkotlin/coroutines/jvm/internal/RestrictedContinuationImpl;", "label", "", "invokeSuspend", "", "result", "Lkotlin/Result;", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* renamed from: kotlin.c.a.c$c  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/c/a/c$c.class */
    public static final class C0605c extends h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlin.c.d f36618a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function2 f36619b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f36620c;

        /* renamed from: d  reason: collision with root package name */
        private int f36621d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0605c(kotlin.c.d dVar, kotlin.c.d dVar2, Function2 function2, Object obj) {
            super(dVar2);
            this.f36618a = dVar;
            this.f36619b = function2;
            this.f36620c = obj;
        }

        @Override // kotlin.c.b.a.a
        public final Object a(Object obj) {
            int i = this.f36621d;
            if (i == 0) {
                this.f36621d = 1;
                p.a(obj);
                Function2 function2 = this.f36619b;
                Objects.requireNonNull(function2, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                return ((Function2) ah.a(function2, 2)).invoke(this.f36620c, this);
            } else if (i == 1) {
                this.f36621d = 2;
                p.a(obj);
                return obj;
            } else {
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J\"\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0007H\u0014ø\u0001��¢\u0006\u0002\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t¸\u0006��"}, d2 = {"kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2", "Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "label", "", "invokeSuspend", "", "result", "Lkotlin/Result;", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/c/a/c$d.class */
    public static final class d extends kotlin.c.b.a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlin.c.d f36622a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ f f36623b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function2 f36624c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Object f36625d;
        private int e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(kotlin.c.d dVar, f fVar, kotlin.c.d dVar2, f fVar2, Function2 function2, Object obj) {
            super(dVar2, fVar2);
            this.f36622a = dVar;
            this.f36623b = fVar;
            this.f36624c = function2;
            this.f36625d = obj;
        }

        @Override // kotlin.c.b.a.a
        public final Object a(Object obj) {
            int i = this.e;
            if (i == 0) {
                this.e = 1;
                p.a(obj);
                Function2 function2 = this.f36624c;
                Objects.requireNonNull(function2, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                return ((Function2) ah.a(function2, 2)).invoke(this.f36625d, this);
            } else if (i == 1) {
                this.e = 2;
                p.a(obj);
                return obj;
            } else {
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
        }
    }

    public static final <T> kotlin.c.d<T> a(kotlin.c.d<? super T> intercepted) {
        kotlin.jvm.internal.p.d(intercepted, "$this$intercepted");
        kotlin.c.b.a.c cVar = (kotlin.c.b.a.c) (!(intercepted instanceof kotlin.c.b.a.c) ? null : intercepted);
        kotlin.c.d<T> dVar = (kotlin.c.d<T>) intercepted;
        if (cVar != null) {
            dVar = (kotlin.c.d<T>) cVar.f();
            if (dVar == null) {
                dVar = (kotlin.c.d<T>) intercepted;
            }
        }
        return dVar;
    }

    public static final <T> kotlin.c.d<v> a(Function1<? super kotlin.c.d<? super T>, ? extends Object> createCoroutineUnintercepted, kotlin.c.d<? super T> completion) {
        kotlin.jvm.internal.p.d(createCoroutineUnintercepted, "$this$createCoroutineUnintercepted");
        kotlin.jvm.internal.p.d(completion, "completion");
        kotlin.jvm.internal.p.d(completion, "completion");
        if (createCoroutineUnintercepted instanceof kotlin.c.b.a.a) {
            return kotlin.c.b.a.a.a((kotlin.c.d<?>) completion);
        }
        f b2 = completion.b();
        if (b2 == g.f36650a) {
            Objects.requireNonNull(completion, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            return new a(completion, completion, createCoroutineUnintercepted);
        }
        Objects.requireNonNull(completion, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        return new b(completion, b2, completion, b2, createCoroutineUnintercepted);
    }

    public static final <R, T> kotlin.c.d<v> a(Function2<? super R, ? super kotlin.c.d<? super T>, ? extends Object> createCoroutineUnintercepted, R r, kotlin.c.d<? super T> completion) {
        kotlin.jvm.internal.p.d(createCoroutineUnintercepted, "$this$createCoroutineUnintercepted");
        kotlin.jvm.internal.p.d(completion, "completion");
        kotlin.jvm.internal.p.d(completion, "completion");
        if (createCoroutineUnintercepted instanceof kotlin.c.b.a.a) {
            return ((kotlin.c.b.a.a) createCoroutineUnintercepted).a(r, completion);
        }
        f b2 = completion.b();
        if (b2 == g.f36650a) {
            Objects.requireNonNull(completion, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            return new C0605c(completion, completion, createCoroutineUnintercepted, r);
        }
        Objects.requireNonNull(completion, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        return new d(completion, b2, completion, b2, createCoroutineUnintercepted, r);
    }
}
