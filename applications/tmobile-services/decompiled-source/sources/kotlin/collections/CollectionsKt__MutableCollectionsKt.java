package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��T\n��\n\u0002\u0010\u001f\n\u0002\u0010\u0011\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001c\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001d\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\r\u001a/\u0010\u0005\u001a\u00020\u0004\"\u0004\b��\u0010��*\n\u0012\u0006\b��\u0012\u00028��0\u00012\u000e\u0010\u0003\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a-\u0010\u0005\u001a\u00020\u0004\"\u0004\b��\u0010��*\n\u0012\u0006\b��\u0012\u00028��0\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0007¢\u0006\u0004\b\u0005\u0010\b\u001a-\u0010\u0005\u001a\u00020\u0004\"\u0004\b��\u0010��*\n\u0012\u0006\b��\u0012\u00028��0\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\t¢\u0006\u0004\b\u0005\u0010\n\u001a;\u0010\u0011\u001a\u00020\u0004\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u000b2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00040\f2\u0006\u0010\u000e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\u0010\u001a;\u0010\u0011\u001a\u00020\u0004\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00122\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00040\f2\u0006\u0010\u000e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\u0013\u001a*\u0010\u0016\u001a\u00020\u0015\"\u0004\b��\u0010��*\n\u0012\u0006\b��\u0012\u00028��0\u00012\u0006\u0010\u0014\u001a\u00028��H\u0087\n¢\u0006\u0004\b\u0016\u0010\u0017\u001a0\u0010\u0016\u001a\u00020\u0015\"\u0004\b��\u0010��*\n\u0012\u0006\b��\u0012\u00028��0\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002H\u0087\n¢\u0006\u0004\b\u0016\u0010\u0018\u001a0\u0010\u0016\u001a\u00020\u0015\"\u0004\b��\u0010��*\n\u0012\u0006\b��\u0012\u00028��0\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0007H\u0087\n¢\u0006\u0004\b\u0016\u0010\u0019\u001a0\u0010\u0016\u001a\u00020\u0015\"\u0004\b��\u0010��*\n\u0012\u0006\b��\u0012\u00028��0\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\tH\u0087\n¢\u0006\u0004\b\u0016\u0010\u001a\u001a*\u0010\u001b\u001a\u00020\u0015\"\u0004\b��\u0010��*\n\u0012\u0006\b��\u0012\u00028��0\u00012\u0006\u0010\u0014\u001a\u00028��H\u0087\n¢\u0006\u0004\b\u001b\u0010\u0017\u001a0\u0010\u001b\u001a\u00020\u0015\"\u0004\b��\u0010��*\n\u0012\u0006\b��\u0012\u00028��0\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002H\u0087\n¢\u0006\u0004\b\u001b\u0010\u0018\u001a0\u0010\u001b\u001a\u00020\u0015\"\u0004\b��\u0010��*\n\u0012\u0006\b��\u0012\u00028��0\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0007H\u0087\n¢\u0006\u0004\b\u001b\u0010\u0019\u001a0\u0010\u001b\u001a\u00020\u0015\"\u0004\b��\u0010��*\n\u0012\u0006\b��\u0012\u00028��0\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\tH\u0087\n¢\u0006\u0004\b\u001b\u0010\u001a\u001a/\u0010\u001d\u001a\u00020\u0004\"\t\b��\u0010��¢\u0006\u0002\b\u001c*\n\u0012\u0006\b\u0001\u0012\u00028��0\u00012\u0006\u0010\u0014\u001a\u00028��H\u0087\b¢\u0006\u0004\b\u001d\u0010\u001e\u001a(\u0010\u001d\u001a\u00028��\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00122\u0006\u0010 \u001a\u00020\u001fH\u0087\b¢\u0006\u0004\b\u001d\u0010!\u001a/\u0010\"\u001a\u00020\u0004\"\u0004\b��\u0010��*\n\u0012\u0006\b��\u0012\u00028��0\u00012\u000e\u0010\u0003\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u0002¢\u0006\u0004\b\"\u0010\u0006\u001a-\u0010\"\u001a\u00020\u0004\"\u0004\b��\u0010��*\n\u0012\u0006\b��\u0012\u00028��0\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0007¢\u0006\u0004\b\"\u0010\b\u001a-\u0010\"\u001a\u00020\u0004\"\u0004\b��\u0010��*\n\u0012\u0006\b��\u0012\u00028��0\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\t¢\u0006\u0004\b\"\u0010\n\u001a5\u0010\"\u001a\u00020\u0004\"\t\b��\u0010��¢\u0006\u0002\b\u001c*\n\u0012\u0006\b\u0001\u0012\u00028��0\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0#H\u0087\b¢\u0006\u0004\b\"\u0010$\u001a1\u0010\"\u001a\u00020\u0004\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u000b2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00040\f¢\u0006\u0004\b\"\u0010%\u001a1\u0010\"\u001a\u00020\u0004\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00122\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00040\f¢\u0006\u0004\b\"\u0010&\u001a\u001f\u0010'\u001a\u00028��\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u0012H\u0007¢\u0006\u0004\b'\u0010(\u001a!\u0010)\u001a\u0004\u0018\u00018��\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u0012H\u0007¢\u0006\u0004\b)\u0010(\u001a\u001f\u0010*\u001a\u00028��\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u0012H\u0007¢\u0006\u0004\b*\u0010(\u001a!\u0010+\u001a\u0004\u0018\u00018��\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u0012H\u0007¢\u0006\u0004\b+\u0010(\u001a/\u0010,\u001a\u00020\u0004\"\u0004\b��\u0010��*\n\u0012\u0006\b��\u0012\u00028��0\u00012\u000e\u0010\u0003\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u0002¢\u0006\u0004\b,\u0010\u0006\u001a-\u0010,\u001a\u00020\u0004\"\u0004\b��\u0010��*\n\u0012\u0006\b��\u0012\u00028��0\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0007¢\u0006\u0004\b,\u0010\b\u001a-\u0010,\u001a\u00020\u0004\"\u0004\b��\u0010��*\n\u0012\u0006\b��\u0012\u00028��0\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\t¢\u0006\u0004\b,\u0010\n\u001a5\u0010,\u001a\u00020\u0004\"\t\b��\u0010��¢\u0006\u0002\b\u001c*\n\u0012\u0006\b\u0001\u0012\u00028��0\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0#H\u0087\b¢\u0006\u0004\b,\u0010$\u001a1\u0010,\u001a\u00020\u0004\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u000b2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00040\f¢\u0006\u0004\b,\u0010%\u001a1\u0010,\u001a\u00020\u0004\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00122\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00040\f¢\u0006\u0004\b,\u0010&\u001a\u0017\u0010/\u001a\u00020\u0004*\u0006\u0012\u0002\b\u00030\u0001H\u0002¢\u0006\u0004\b-\u0010.¨\u00060"}, d2 = {"T", "", "", "elements", "", "addAll", "(Ljava/util/Collection;[Ljava/lang/Object;)Z", "", "(Ljava/util/Collection;Ljava/lang/Iterable;)Z", "Lkotlin/sequences/Sequence;", "(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z", "", "Lkotlin/Function1;", "predicate", "predicateResultToRemove", "filterInPlace$CollectionsKt__MutableCollectionsKt", "(Ljava/lang/Iterable;Lkotlin/Function1;Z)Z", "filterInPlace", "", "(Ljava/util/List;Lkotlin/Function1;Z)Z", "element", "", "minusAssign", "(Ljava/util/Collection;Ljava/lang/Object;)V", "(Ljava/util/Collection;[Ljava/lang/Object;)V", "(Ljava/util/Collection;Ljava/lang/Iterable;)V", "(Ljava/util/Collection;Lkotlin/sequences/Sequence;)V", "plusAssign", "Lkotlin/internal/OnlyInputTypes;", "remove", "(Ljava/util/Collection;Ljava/lang/Object;)Z", "", FirebaseAnalytics.Param.INDEX, "(Ljava/util/List;I)Ljava/lang/Object;", "removeAll", "", "(Ljava/util/Collection;Ljava/util/Collection;)Z", "(Ljava/lang/Iterable;Lkotlin/Function1;)Z", "(Ljava/util/List;Lkotlin/Function1;)Z", "removeFirst", "(Ljava/util/List;)Ljava/lang/Object;", "removeFirstOrNull", "removeLast", "removeLastOrNull", "retainAll", "retainNothing$CollectionsKt__MutableCollectionsKt", "(Ljava/util/Collection;)Z", "retainNothing", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/collections/CollectionsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/CollectionsKt__MutableCollectionsKt.class */
public class CollectionsKt__MutableCollectionsKt extends CollectionsKt__MutableCollectionsJVMKt {
    /* renamed from: u */
    public static <T> boolean m2159u(@NotNull Collection<? super T> addAll, @NotNull Iterable<? extends T> elements) {
        Intrinsics.m1830e(addAll, "$this$addAll");
        Intrinsics.m1830e(elements, "elements");
        if (elements instanceof Collection) {
            return addAll.addAll((Collection) elements);
        }
        boolean z = false;
        Iterator<? extends T> it = elements.iterator();
        while (it.hasNext()) {
            if (addAll.add((Object) it.next())) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: v */
    public static <T> boolean m2158v(@NotNull Collection<? super T> addAll, @NotNull T[] elements) {
        List b;
        Intrinsics.m1830e(addAll, "$this$addAll");
        Intrinsics.m1830e(elements, "elements");
        b = ArraysKt___ArraysJvmKt.m2304b(elements);
        return addAll.addAll(b);
    }

    @SinceKotlin
    @WasExperimental
    /* renamed from: w */
    public static <T> T m2157w(@NotNull List<T> removeLast) {
        int h;
        Intrinsics.m1830e(removeLast, "$this$removeLast");
        if (!removeLast.isEmpty()) {
            h = CollectionsKt__CollectionsKt.m2173h(removeLast);
            return removeLast.remove(h);
        }
        throw new NoSuchElementException("List is empty.");
    }
}
