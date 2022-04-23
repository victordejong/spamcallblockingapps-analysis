package kotlin.collections.unsigned;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt___ArraysKt;
@Metadata(bv = {1, 0, 3}, d1 = {"��#\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000e*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u001b\u0010\b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007J\u001e\u0010\r\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0096\u0002ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016ø\u0001��¢\u0006\u0004\b\u000e\u0010\fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016ø\u0001��¢\u0006\u0004\b\u0012\u0010\fR\u0016\u0010\u0016\u001a\u00020\t8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015ø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0017"}, d2 = {"kotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$1", "Ljava/util/RandomAccess;", "Lkotlin/collections/AbstractList;", "Lkotlin/UInt;", "element", "", "contains-WZ4Q5Ns", "(I)Z", "contains", "", FirebaseAnalytics.Param.INDEX, "get-pVg5ArA", "(I)I", "get", "indexOf-WZ4Q5Ns", "indexOf", "isEmpty", "()Z", "lastIndexOf-WZ4Q5Ns", "lastIndexOf", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$1.class */
public final class UArraysKt___UArraysJvmKt$asList$1 extends AbstractList<UInt> implements RandomAccess {

    /* renamed from: g */
    final /* synthetic */ int[] f20594g;

    @Override // kotlin.collections.AbstractCollection
    /* renamed from: c */
    public int mo121c() {
        return UIntArray.m2433k(this.f20594g);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof UInt) {
            return m1972e(((UInt) obj).m2440l());
        }
        return false;
    }

    /* renamed from: e */
    public boolean m1972e(int i) {
        return UIntArray.m2438e(this.f20594g, i);
    }

    /* renamed from: f */
    public int m1971f(int i) {
        return UIntArray.m2435h(this.f20594g, i);
    }

    /* renamed from: g */
    public int m1970g(int i) {
        int A;
        A = ArraysKt___ArraysKt.m2260A(this.f20594g, i);
        return A;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public /* bridge */ /* synthetic */ Object get(int i) {
        return UInt.m2447a(m1971f(i));
    }

    /* renamed from: h */
    public int m1969h(int i) {
        int J;
        J = ArraysKt___ArraysKt.m2251J(this.f20594g, i);
        return J;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof UInt) {
            return m1970g(((UInt) obj).m2440l());
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return UIntArray.m2431p(this.f20594g);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof UInt) {
            return m1969h(((UInt) obj).m2440l());
        }
        return -1;
    }
}
