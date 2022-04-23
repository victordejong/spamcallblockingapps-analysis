package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��*\b\b��\u0010\u0002*\u00020\u00012\u00020\u0003B-\u0012\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u0007\u0012\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00028��\u0012\u0006\u0012\u0004\u0018\u00018��0\n¢\u0006\u0004\b\r\u0010\u000eJ\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0004H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u001e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR$\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00028��\u0012\u0006\u0012\u0004\u0018\u00018��0\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lkotlin/sequences/GeneratorSequence;", "", "T", "Lkotlin/sequences/Sequence;", "", "iterator", "()Ljava/util/Iterator;", "Lkotlin/Function0;", "getInitialValue", "Lkotlin/Function0;", "Lkotlin/Function1;", "getNextValue", "Lkotlin/Function1;", "<init>", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/GeneratorSequence.class */
public final class GeneratorSequence<T> implements Sequence<T> {

    /* renamed from: a */
    private final Function0<T> f20872a;

    /* renamed from: b */
    private final Function1<T, T> f20873b;

    /* JADX WARN: Multi-variable type inference failed */
    public GeneratorSequence(@NotNull Function0<? extends T> getInitialValue, @NotNull Function1<? super T, ? extends T> getNextValue) {
        Intrinsics.m1830e(getInitialValue, "getInitialValue");
        Intrinsics.m1830e(getNextValue, "getNextValue");
        this.f20872a = getInitialValue;
        this.f20873b = getNextValue;
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<T> iterator() {
        return new GeneratorSequence$iterator$1(this);
    }
}
