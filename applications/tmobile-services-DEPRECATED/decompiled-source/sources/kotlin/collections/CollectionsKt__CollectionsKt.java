package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u008e\u0001\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010!\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010��\n\u0002\b\f\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000f\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u001aJ\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010��2\u0006\u0010\u0002\u001a\u00020\u00012!\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00028��0\u0003H\u0087\bø\u0001��¢\u0006\u0004\b\t\u0010\n\u001aJ\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u000b\"\u0004\b��\u0010��2\u0006\u0010\u0002\u001a\u00020\u00012!\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00028��0\u0003H\u0087\bø\u0001��¢\u0006\u0004\b\f\u0010\n\u001a&\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00028��0\rj\b\u0012\u0004\u0012\u00028��`\u000e\"\u0004\b��\u0010��H\u0087\b¢\u0006\u0004\b\u000f\u0010\u0010\u001a7\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00028��0\rj\b\u0012\u0004\u0012\u00028��`\u000e\"\u0004\b��\u0010��2\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u0011\"\u00028��¢\u0006\u0004\b\u000f\u0010\u0013\u001aU\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010\u00142\u0006\u0010\u0015\u001a\u00020\u00012\u001f\b\u0001\u0010\u0018\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u000b\u0012\u0004\u0012\u00020\u00160\u0003¢\u0006\u0002\b\u0017H\u0087\bø\u0001��\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\u0019\u0010\n\u001aM\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010\u00142\u001f\b\u0001\u0010\u0018\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u000b\u0012\u0004\u0012\u00020\u00160\u0003¢\u0006\u0002\b\u0017H\u0087\bø\u0001��\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u0019\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010��¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010��H\u0087\b¢\u0006\u0004\b\u001d\u0010\u001c\u001a-\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010��2\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u0011\"\u00028��¢\u0006\u0004\b\u001d\u0010\u001e\u001a'\u0010!\u001a\b\u0012\u0004\u0012\u00028��0\b\"\b\b��\u0010��*\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00018��¢\u0006\u0004\b!\u0010\"\u001a5\u0010!\u001a\b\u0012\u0004\u0012\u00028��0\b\"\b\b��\u0010��*\u00020\u001f2\u0016\u0010\u0012\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00018��0\u0011\"\u0004\u0018\u00018��¢\u0006\u0004\b!\u0010\u001e\u001a\u001c\u0010#\u001a\b\u0012\u0004\u0012\u00028��0\u000b\"\u0004\b��\u0010��H\u0087\b¢\u0006\u0004\b#\u0010\u001c\u001a-\u0010#\u001a\b\u0012\u0004\u0012\u00028��0\u000b\"\u0004\b��\u0010��2\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u0011\"\u00028��¢\u0006\u0004\b#\u0010\u001e\u001a'\u0010(\u001a\u00020\u00162\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u00012\u0006\u0010%\u001a\u00020\u0001H\u0002¢\u0006\u0004\b&\u0010'\u001a\u000f\u0010)\u001a\u00020\u0016H\u0001¢\u0006\u0004\b)\u0010*\u001a\u000f\u0010+\u001a\u00020\u0016H\u0001¢\u0006\u0004\b+\u0010*\u001a'\u0010-\u001a\b\u0012\u0004\u0012\u00028��0,\"\u0004\b��\u0010��*\n\u0012\u0006\b\u0001\u0012\u00028��0\u0011H��¢\u0006\u0004\b-\u0010.\u001aU\u00102\u001a\u00020\u0001\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\b2\u0006\u0010 \u001a\u00028��2\u001a\u00101\u001a\u0016\u0012\u0006\b��\u0012\u00028��0/j\n\u0012\u0006\b��\u0012\u00028��`02\b\b\u0002\u0010$\u001a\u00020\u00012\b\b\u0002\u0010%\u001a\u00020\u0001¢\u0006\u0004\b2\u00103\u001aE\u00102\u001a\u00020\u0001\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\b2\b\b\u0002\u0010$\u001a\u00020\u00012\b\b\u0002\u0010%\u001a\u00020\u00012\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0004\b2\u00105\u001aG\u00102\u001a\u00020\u0001\"\u000e\b��\u0010��*\b\u0012\u0004\u0012\u00028��06*\n\u0012\u0006\u0012\u0004\u0018\u00018��0\b2\b\u0010 \u001a\u0004\u0018\u00018��2\b\b\u0002\u0010$\u001a\u00020\u00012\b\b\u0002\u0010%\u001a\u00020\u0001¢\u0006\u0004\b2\u00107\u001ai\u0010;\u001a\u00020\u0001\"\u0004\b��\u0010��\"\u000e\b\u0001\u00108*\b\u0012\u0004\u0012\u00028\u000106*\b\u0012\u0004\u0012\u00028��0\b2\b\u00109\u001a\u0004\u0018\u00018\u00012\b\b\u0002\u0010$\u001a\u00020\u00012\b\b\u0002\u0010%\u001a\u00020\u00012\u0016\b\u0004\u0010:\u001a\u0010\u0012\u0004\u0012\u00028��\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u0003H\u0086\bø\u0001��¢\u0006\u0004\b;\u0010<\u001a3\u0010?\u001a\u00020>\"\t\b��\u0010��¢\u0006\u0002\b=*\b\u0012\u0004\u0012\u00028��0,2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028��0,H\u0087\b¢\u0006\u0004\b?\u0010@\u001a=\u0010E\u001a\u00028\u0001\"\u0010\b��\u0010A*\u0006\u0012\u0002\b\u00030,*\u00028\u0001\"\u0004\b\u0001\u0010B*\u00028��2\f\u0010D\u001a\b\u0012\u0004\u0012\u00028\u00010CH\u0087\bø\u0001��¢\u0006\u0004\bE\u0010F\u001a \u0010G\u001a\u00020>\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0,H\u0087\b¢\u0006\u0004\bG\u0010H\u001a3\u0010I\u001a\u00020>\"\u0004\b��\u0010��*\n\u0012\u0004\u0012\u00028��\u0018\u00010,H\u0087\b\u0082\u0002\u000e\n\f\b��\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010��¢\u0006\u0004\bI\u0010H\u001a%\u0010J\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\bH��¢\u0006\u0004\bJ\u0010K\u001a(\u0010L\u001a\b\u0012\u0004\u0012\u00028��0,\"\u0004\b��\u0010��*\n\u0012\u0004\u0012\u00028��\u0018\u00010,H\u0087\b¢\u0006\u0004\bL\u0010M\u001a(\u0010L\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010��*\n\u0012\u0004\u0012\u00028��\u0018\u00010\bH\u0087\b¢\u0006\u0004\bL\u0010K\u001a-\u0010Q\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0N2\u0006\u0010P\u001a\u00020OH\u0007¢\u0006\u0004\bQ\u0010R\"\u001b\u0010V\u001a\u00020S*\u0006\u0012\u0002\b\u00030,8F@\u0006¢\u0006\u0006\u001a\u0004\bT\u0010U\"#\u0010Y\u001a\u00020\u0001\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\b8F@\u0006¢\u0006\u0006\u001a\u0004\bW\u0010X\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006Z"}, d2 = {"T", "", "size", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", FirebaseAnalytics.Param.INDEX, "init", "", "List", "(ILkotlin/Function1;)Ljava/util/List;", "", "MutableList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "arrayListOf", "()Ljava/util/ArrayList;", "", "elements", "([Ljava/lang/Object;)Ljava/util/ArrayList;", "E", "capacity", "", "Lkotlin/ExtensionFunctionType;", "builderAction", "buildList", "(Lkotlin/Function1;)Ljava/util/List;", "emptyList", "()Ljava/util/List;", "listOf", "([Ljava/lang/Object;)Ljava/util/List;", "", "element", "listOfNotNull", "(Ljava/lang/Object;)Ljava/util/List;", "mutableListOf", "fromIndex", "toIndex", "rangeCheck$CollectionsKt__CollectionsKt", "(III)V", "rangeCheck", "throwCountOverflow", "()V", "throwIndexOverflow", "", "asCollection", "([Ljava/lang/Object;)Ljava/util/Collection;", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "binarySearch", "(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;II)I", "comparison", "(Ljava/util/List;IILkotlin/Function1;)I", "", "(Ljava/util/List;Ljava/lang/Comparable;II)I", "K", "key", "selector", "binarySearchBy", "(Ljava/util/List;Ljava/lang/Comparable;IILkotlin/jvm/functions/Function1;)I", "Lkotlin/internal/OnlyInputTypes;", "", "containsAll", "(Ljava/util/Collection;Ljava/util/Collection;)Z", "C", "R", "Lkotlin/Function0;", "defaultValue", "ifEmpty", "(Ljava/util/Collection;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "isNotEmpty", "(Ljava/util/Collection;)Z", "isNullOrEmpty", "optimizeReadOnlyList", "(Ljava/util/List;)Ljava/util/List;", "orEmpty", "(Ljava/util/Collection;)Ljava/util/Collection;", "", "Lkotlin/random/Random;", "random", "shuffled", "(Ljava/lang/Iterable;Lkotlin/random/Random;)Ljava/util/List;", "Lkotlin/ranges/IntRange;", "getIndices", "(Ljava/util/Collection;)Lkotlin/ranges/IntRange;", "indices", "getLastIndex", "(Ljava/util/List;)I", "lastIndex", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/collections/CollectionsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/CollectionsKt__CollectionsKt.class */
public class CollectionsKt__CollectionsKt extends CollectionsKt__CollectionsJVMKt {
    @NotNull
    /* renamed from: c */
    public static final <T> Collection<T> m2178c(@NotNull T[] asCollection) {
        Intrinsics.m1830e(asCollection, "$this$asCollection");
        return new ArrayAsCollection(asCollection, false);
    }

    /* renamed from: d */
    public static final <T extends Comparable<? super T>> int m2177d(@NotNull List<? extends T> binarySearch, @Nullable T t, int i, int i2) {
        int b;
        Intrinsics.m1830e(binarySearch, "$this$binarySearch");
        m2168m(binarySearch.size(), i, i2);
        int i3 = i2 - 1;
        while (i <= i3) {
            int i4 = (i + i3) >>> 1;
            b = ComparisonsKt__ComparisonsKt.m1949b((Comparable) binarySearch.get(i4), t);
            if (b < 0) {
                i = i4 + 1;
            } else if (b <= 0) {
                return i4;
            } else {
                i3 = i4 - 1;
            }
        }
        return -(i + 1);
    }

    /* renamed from: e */
    public static /* synthetic */ int m2176e(List list, Comparable comparable, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = list.size();
        }
        return m2177d(list, comparable, i, i2);
    }

    @NotNull
    /* renamed from: f */
    public static <T> List<T> m2175f() {
        return EmptyList.f20520f;
    }

    @NotNull
    /* renamed from: g */
    public static IntRange m2174g(@NotNull Collection<?> indices) {
        Intrinsics.m1830e(indices, "$this$indices");
        return new IntRange(0, indices.size() - 1);
    }

    /* renamed from: h */
    public static <T> int m2173h(@NotNull List<? extends T> lastIndex) {
        Intrinsics.m1830e(lastIndex, "$this$lastIndex");
        return lastIndex.size() - 1;
    }

    @NotNull
    /* renamed from: i */
    public static <T> List<T> m2172i(@NotNull T... elements) {
        Intrinsics.m1830e(elements, "elements");
        return elements.length > 0 ? ArraysKt___ArraysJvmKt.m2304b(elements) : m2175f();
    }

    @NotNull
    /* renamed from: j */
    public static <T> List<T> m2171j(@NotNull T... elements) {
        Intrinsics.m1830e(elements, "elements");
        return ArraysKt___ArraysKt.m2232u(elements);
    }

    @NotNull
    /* renamed from: k */
    public static <T> List<T> m2170k(@NotNull T... elements) {
        Intrinsics.m1830e(elements, "elements");
        return elements.length == 0 ? new ArrayList() : new ArrayList(new ArrayAsCollection(elements, true));
    }

    @NotNull
    /* renamed from: l */
    public static <T> List<T> m2169l(@NotNull List<? extends T> optimizeReadOnlyList) {
        Collection collection;
        Collection f;
        Collection b;
        Intrinsics.m1830e(optimizeReadOnlyList, "$this$optimizeReadOnlyList");
        int size = optimizeReadOnlyList.size();
        if (size != 0) {
            collection = optimizeReadOnlyList;
            if (size == 1) {
                b = CollectionsKt__CollectionsJVMKt.m2179b(optimizeReadOnlyList.get(0));
                collection = (List<T>) b;
            }
        } else {
            f = m2175f();
            collection = (List<T>) f;
        }
        return (List<T>) collection;
    }

    /* renamed from: m */
    private static final void m2168m(int i, int i2, int i3) {
        if (i2 > i3) {
            throw new IllegalArgumentException("fromIndex (" + i2 + ") is greater than toIndex (" + i3 + ").");
        } else if (i2 < 0) {
            throw new IndexOutOfBoundsException("fromIndex (" + i2 + ") is less than zero.");
        } else if (i3 > i) {
            throw new IndexOutOfBoundsException("toIndex (" + i3 + ") is greater than size (" + i + ").");
        }
    }

    @SinceKotlin
    @PublishedApi
    /* renamed from: n */
    public static void m2167n() {
        throw new ArithmeticException("Count overflow has happened.");
    }

    @SinceKotlin
    @PublishedApi
    /* renamed from: o */
    public static void m2166o() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
