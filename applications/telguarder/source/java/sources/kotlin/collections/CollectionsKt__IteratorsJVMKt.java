package kotlin.collections;

import java.util.Enumeration;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u000e\n��\n\u0002\u0010(\n��\n\u0002\u0018\u0002\n��\u001a\u001f\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0086\u0002¨\u0006\u0004"}, m400d2 = {"iterator", "", "T", "Ljava/util/Enumeration;", "kotlin-stdlib"}, m399k = 5, m398mv = {1, 4, 0}, m396xi = 1, m395xs = "kotlin/collections/CollectionsKt")
/* loaded from: classes-dex2jar.jar:kotlin/collections/CollectionsKt__IteratorsJVMKt.class */
public class CollectionsKt__IteratorsJVMKt extends CollectionsKt__IterablesKt {
    public static final <T> Iterator<T> iterator(Enumeration<T> iterator) {
        Intrinsics.checkNotNullParameter(iterator, "$this$iterator");
        return new CollectionsKt__IteratorsJVMKt$iterator$1(iterator);
    }
}
