package kotlin.p531g;

import com.appsflyer.internal.referrer.Payload;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��L\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0010\u001c\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010 \n��\u001a.\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00050\u0004H\u0087\bø\u0001��\u001a\u0012\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002\u001ab\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\b0\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\t\"\u0004\b\u0002\u0010\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\t0\f2\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u0002H\t\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0\u00050\u000eH��\u001a&\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00102\u000e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0004\u001a<\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00102\u000e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u00042\u0014\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u000e\u001a=\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u0001H\u00022\u0014\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u000eH\u0007¢\u0006\u0002\u0010\u0014\u001a+\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\u0012\u0010\u0016\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0017\"\u0002H\u0002¢\u0006\u0002\u0010\u0018\u001a\u001c\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0005\u001a\u001c\u0010\u001a\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001\u001aC\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\b0\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\b*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0\u00050\u000eH\u0002¢\u0006\u0002\b\u001c\u001a)\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u001d0\u0001H\u0007¢\u0006\u0002\b\u001e\u001a\"\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00010\u0001\u001a2\u0010\u001f\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0012\u0010 \u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00010\u0004H\u0007\u001a!\u0010!\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001H\u0087\b\u001a\u001e\u0010\"\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0007\u001a&\u0010\"\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010#\u001a\u00020$H\u0007\u001a@\u0010%\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0'0&\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\b*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\b0&0\u0001\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006("}, m4298d2 = {"Sequence", "Lkotlin/sequences/Sequence;", "T", "iterator", "Lkotlin/Function0;", "", "emptySequence", "flatMapIndexed", "R", "C", Payload.SOURCE, "transform", "Lkotlin/Function2;", "", "Lkotlin/Function1;", "generateSequence", "", "nextFunction", "seedFunction", "seed", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;", "sequenceOf", "elements", "", "([Ljava/lang/Object;)Lkotlin/sequences/Sequence;", "asSequence", "constrainOnce", "flatten", "flatten$SequencesKt__SequencesKt", "", "flattenSequenceOfIterable", "ifEmpty", "defaultValue", "orEmpty", "shuffled", "random", "Lkotlin/random/Random;", "unzip", "Lkotlin/Pair;", "", "kotlin-stdlib"}, m4297k = 5, m4296mv = {1, 4, 1}, m4294xi = 1, m4293xs = "kotlin/sequences/SequencesKt")
/* renamed from: kotlin.g.n */
/* loaded from: classes5-dex2jar.jar:kotlin/g/n.class */
public class C18384n extends C18383m {

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010(\n��*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\u000f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u0003H\u0096\u0002¨\u0006\u0004¸\u0006��"}, m4298d2 = {"kotlin/sequences/SequencesKt__SequencesKt$Sequence$1", "Lkotlin/sequences/Sequence;", "iterator", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.g.n$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/g/n$a.class */
    public static final class C18385a implements AbstractC18378h<T> {

        /* renamed from: a */
        final /* synthetic */ Iterator f63498a;

        public C18385a(Iterator it2) {
            this.f63498a = it2;
        }

        @Override // kotlin.p531g.AbstractC18378h
        /* renamed from: a */
        public final Iterator<T> mo3908a() {
            return this.f63498a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "T", "it", "Lkotlin/sequences/Sequence;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.g.n$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/g/n$b.class */
    public static final class C18386b extends AbstractC18526r implements Function1<AbstractC18378h<? extends T>, Iterator<? extends T>> {

        /* renamed from: a */
        public static final C18386b f63499a = new C18386b();

        C18386b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Object invoke(Object obj) {
            AbstractC18378h it2 = (AbstractC18378h) obj;
            C18524p.m3840d(it2, "it");
            return it2.mo3908a();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0004\n\u0002\b\u0006\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u0001\"\u0004\b\u0001\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, m4298d2 = {"<anonymous>", "T", "R", "it", "invoke", "(Ljava/lang/Object;)Ljava/lang/Object;"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.g.n$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/g/n$c.class */
    public static final class C18387c extends AbstractC18526r implements Function1<T, T> {

        /* renamed from: a */
        public static final C18387c f63500a = new C18387c();

        C18387c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final T invoke(T t) {
            return t;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u0001H\u0001\"\b\b��\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u0002H\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, m4298d2 = {"<anonymous>", "T", "", "it", "invoke", "(Ljava/lang/Object;)Ljava/lang/Object;"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.g.n$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/g/n$d.class */
    public static final class C18388d extends AbstractC18526r implements Function1<T, T> {

        /* renamed from: a */
        final /* synthetic */ Function0 f63501a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18388d(Function0 function0) {
            super(1);
            this.f63501a = function0;
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function1
        public final T invoke(T it2) {
            C18524p.m3840d(it2, "it");
            return this.f63501a.invoke();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u0001H\u0001\"\b\b��\u0010\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, m4298d2 = {"<anonymous>", "T", "", "invoke", "()Ljava/lang/Object;"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.g.n$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/g/n$e.class */
    public static final class C18389e extends AbstractC18526r implements Function0<T> {

        /* renamed from: a */
        final /* synthetic */ Object f63502a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18389e(Object obj) {
            super(0);
            this.f63502a = obj;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final T invoke() {
            return this.f63502a;
        }
    }

    /* renamed from: a */
    public static final <T> AbstractC18378h<T> m4031a(T t, Function1<? super T, ? extends T> nextFunction) {
        C18524p.m3840d(nextFunction, "nextFunction");
        return t == null ? C18371d.f63475a : new C18376g(new C18389e(t), nextFunction);
    }

    /* renamed from: a */
    public static final <T> AbstractC18378h<T> m4030a(Iterator<? extends T> asSequence) {
        C18524p.m3840d(asSequence, "$this$asSequence");
        return C18381k.m4025b(new C18385a(asSequence));
    }

    /* renamed from: a */
    public static final <T> AbstractC18378h<T> m4029a(AbstractC18378h<? extends AbstractC18378h<? extends T>> flatten) {
        C18524p.m3840d(flatten, "$this$flatten");
        return m4028a((AbstractC18378h) flatten, (Function1) C18386b.f63499a);
    }

    /* renamed from: a */
    private static final <T, R> AbstractC18378h<R> m4028a(AbstractC18378h<? extends T> abstractC18378h, Function1<? super T, ? extends Iterator<? extends R>> function1) {
        return abstractC18378h instanceof C18397r ? ((C18397r) abstractC18378h).m4004a(function1) : new C18374f(abstractC18378h, C18387c.f63500a, function1);
    }

    /* renamed from: a */
    public static final <T> AbstractC18378h<T> m4027a(Function0<? extends T> nextFunction) {
        C18524p.m3840d(nextFunction, "nextFunction");
        return C18381k.m4025b(new C18376g(nextFunction, new C18388d(nextFunction)));
    }

    /* renamed from: a */
    public static final <T> AbstractC18378h<T> m4026a(T... elements) {
        C18524p.m3840d(elements, "elements");
        return elements.length == 0 ? C18371d.f63475a : C18273i.m4177o(elements);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static final <T> AbstractC18378h<T> m4025b(AbstractC18378h<? extends T> constrainOnce) {
        C18524p.m3840d(constrainOnce, "$this$constrainOnce");
        return constrainOnce instanceof C18367a ? constrainOnce : new C18367a(constrainOnce);
    }
}
