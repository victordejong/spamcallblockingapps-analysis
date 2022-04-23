package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.RandomAccess;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��#\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\n\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\bH\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\rR\u0016\u0010\u0013\u001a\u00020\b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"kotlin/collections/ArraysKt___ArraysJvmKt$asList$2", "Ljava/util/RandomAccess;", "Lkotlin/collections/AbstractList;", "", "element", "", "contains", "(S)Z", "", FirebaseAnalytics.Param.INDEX, "get", "(I)Ljava/lang/Short;", "indexOf", "(S)I", "isEmpty", "()Z", "lastIndexOf", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/ArraysKt___ArraysJvmKt$asList$2.class */
public final class ArraysKt___ArraysJvmKt$asList$2 extends AbstractList<Short> implements RandomAccess {

    /* renamed from: g */
    final /* synthetic */ short[] f20478g;

    @Override // kotlin.collections.AbstractCollection
    /* renamed from: c */
    public int mo121c() {
        return this.f20478g.length;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Short) {
            return m2288e(((Number) obj).shortValue());
        }
        return false;
    }

    /* renamed from: e */
    public boolean m2288e(short s) {
        boolean s2;
        s2 = ArraysKt___ArraysKt.m2234s(this.f20478g, s);
        return s2;
    }

    @NotNull
    /* renamed from: f */
    public Short get(int i) {
        return Short.valueOf(this.f20478g[i]);
    }

    /* renamed from: g */
    public int m2286g(short s) {
        int D;
        D = ArraysKt___ArraysKt.m2257D(this.f20478g, s);
        return D;
    }

    /* renamed from: h */
    public int m2285h(short s) {
        int L;
        L = ArraysKt___ArraysKt.m2249L(this.f20478g, s);
        return L;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Short) {
            return m2286g(((Number) obj).shortValue());
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.f20478g.length == 0;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof Short) {
            return m2285h(((Number) obj).shortValue());
        }
        return -1;
    }
}
