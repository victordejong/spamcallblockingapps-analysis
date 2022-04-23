package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.RandomAccess;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u000e*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u000f\u0010\fR\u0016\u0010\u0012\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"kotlin/collections/ArraysKt___ArraysJvmKt$asList$3", "Ljava/util/RandomAccess;", "Lkotlin/collections/AbstractList;", "", "element", "", "contains", "(I)Z", FirebaseAnalytics.Param.INDEX, "get", "(I)Ljava/lang/Integer;", "indexOf", "(I)I", "isEmpty", "()Z", "lastIndexOf", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/ArraysKt___ArraysJvmKt$asList$3.class */
public final class ArraysKt___ArraysJvmKt$asList$3 extends AbstractList<Integer> implements RandomAccess {

    /* renamed from: g */
    final /* synthetic */ int[] f20479g;

    @Override // kotlin.collections.AbstractCollection
    /* renamed from: c */
    public int mo121c() {
        return this.f20479g.length;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Integer) {
            return m2284e(((Number) obj).intValue());
        }
        return false;
    }

    /* renamed from: e */
    public boolean m2284e(int i) {
        boolean p;
        p = ArraysKt___ArraysKt.m2237p(this.f20479g, i);
        return p;
    }

    @NotNull
    /* renamed from: f */
    public Integer get(int i) {
        return Integer.valueOf(this.f20479g[i]);
    }

    /* renamed from: g */
    public int m2282g(int i) {
        int A;
        A = ArraysKt___ArraysKt.m2260A(this.f20479g, i);
        return A;
    }

    /* renamed from: h */
    public int m2281h(int i) {
        int J;
        J = ArraysKt___ArraysKt.m2251J(this.f20479g, i);
        return J;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Integer) {
            return m2282g(((Number) obj).intValue());
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.f20479g.length == 0;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof Integer) {
            return m2281h(((Number) obj).intValue());
        }
        return -1;
    }
}
