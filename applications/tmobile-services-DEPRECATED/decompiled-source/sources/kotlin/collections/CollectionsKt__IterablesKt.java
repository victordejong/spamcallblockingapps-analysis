package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n��\n\u0002\u0018\u0002\n\u0002\u0010(\n��\n\u0002\u0010\u001c\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a5\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\u0004\b��\u0010��2\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00020\u0001H\u0087\bø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u001a'\u0010\t\u001a\u00020\u0007\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0001¢\u0006\u0004\b\t\u0010\n\u001a!\u0010\u000b\u001a\u0004\u0018\u00010\u0007\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u0004H\u0001¢\u0006\u0004\b\u000b\u0010\f\u001a%\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028��0\r\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u0004H��¢\u0006\u0004\b\u000e\u0010\u000f\u001a3\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028��0\r\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00042\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028��0\u0004H��¢\u0006\u0004\b\u0011\u0010\u0012\u001a)\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028��0\u0013\"\u0004\b��\u0010��*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00040\u0004¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u001f\u0010\u0019\u001a\u00020\u0016\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\rH\u0002¢\u0006\u0004\b\u0017\u0010\u0018\u001aG\u0010\u001c\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0013\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00130\u001b\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\u001a*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u001b0\u0004¢\u0006\u0004\b\u001c\u0010\u001d\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001e"}, d2 = {"T", "Lkotlin/Function0;", "", "iterator", "", "Iterable", "(Lkotlin/Function0;)Ljava/lang/Iterable;", "", "default", "collectionSizeOrDefault", "(Ljava/lang/Iterable;I)I", "collectionSizeOrNull", "(Ljava/lang/Iterable;)Ljava/lang/Integer;", "", "convertToSetForSetOperation", "(Ljava/lang/Iterable;)Ljava/util/Collection;", "source", "convertToSetForSetOperationWith", "(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;", "", "flatten", "(Ljava/lang/Iterable;)Ljava/util/List;", "", "safeToConvertToSet$CollectionsKt__IterablesKt", "(Ljava/util/Collection;)Z", "safeToConvertToSet", "R", "Lkotlin/Pair;", "unzip", "(Ljava/lang/Iterable;)Lkotlin/Pair;", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/collections/CollectionsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/CollectionsKt__IterablesKt.class */
public class CollectionsKt__IterablesKt extends CollectionsKt__CollectionsKt {
    @PublishedApi
    /* renamed from: p */
    public static <T> int m2164p(@NotNull Iterable<? extends T> collectionSizeOrDefault, int i) {
        Intrinsics.m1830e(collectionSizeOrDefault, "$this$collectionSizeOrDefault");
        if (collectionSizeOrDefault instanceof Collection) {
            i = ((Collection) collectionSizeOrDefault).size();
        }
        return i;
    }

    @NotNull
    /* renamed from: q */
    public static <T> Collection<T> m2163q(@NotNull Iterable<? extends T> convertToSetForSetOperation) {
        Collection<T> collection;
        Intrinsics.m1830e(convertToSetForSetOperation, "$this$convertToSetForSetOperation");
        if (convertToSetForSetOperation instanceof Set) {
            collection = (Collection) convertToSetForSetOperation;
        } else if (convertToSetForSetOperation instanceof Collection) {
            Collection<T> collection2 = (Collection) convertToSetForSetOperation;
            collection = m2162r(collection2) ? CollectionsKt___CollectionsKt.m2134T(convertToSetForSetOperation) : collection2;
        } else {
            collection = CollectionsKt___CollectionsKt.m2134T(convertToSetForSetOperation);
        }
        return collection;
    }

    /* renamed from: r */
    private static final <T> boolean m2162r(Collection<? extends T> collection) {
        return collection.size() > 2 && (collection instanceof ArrayList);
    }
}
