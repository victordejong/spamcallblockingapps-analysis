package kotlin.collections;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.ArrayIteratorsKt;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0015\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006¸\u0006��"}, d2 = {"kotlin/collections/CollectionsKt__IterablesKt$Iterable$1", "Ljava/lang/Iterable;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "iterator", "()Ljava/util/Iterator;", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/ArraysKt___ArraysKt$asIterable$$inlined$Iterable$9.class */
public final class ArraysKt___ArraysKt$asIterable$$inlined$Iterable$9 implements Iterable<Character>, KMappedMarker {

    /* renamed from: f */
    final /* synthetic */ char[] f20493f;

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<Character> iterator() {
        return ArrayIteratorsKt.m1857c(this.f20493f);
    }
}
