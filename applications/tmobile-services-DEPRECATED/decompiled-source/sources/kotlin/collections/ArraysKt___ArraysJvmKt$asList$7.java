package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.RandomAccess;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\f*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u0018\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u000f\u0010\fR\u0016\u0010\u0012\u001a\u00020\u00078V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"kotlin/collections/ArraysKt___ArraysJvmKt$asList$7", "Ljava/util/RandomAccess;", "Lkotlin/collections/AbstractList;", "", "element", "contains", "(Z)Z", "", FirebaseAnalytics.Param.INDEX, "get", "(I)Ljava/lang/Boolean;", "indexOf", "(Z)I", "isEmpty", "()Z", "lastIndexOf", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/ArraysKt___ArraysJvmKt$asList$7.class */
public final class ArraysKt___ArraysJvmKt$asList$7 extends AbstractList<Boolean> implements RandomAccess {

    /* renamed from: g */
    final /* synthetic */ boolean[] f20483g;

    @Override // kotlin.collections.AbstractCollection
    /* renamed from: c */
    public int mo121c() {
        return this.f20483g.length;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Boolean) {
            return m2268e(((Boolean) obj).booleanValue());
        }
        return false;
    }

    /* renamed from: e */
    public boolean m2268e(boolean z) {
        return ArraysKt___ArraysKt.m2233t(this.f20483g, z);
    }

    @NotNull
    /* renamed from: f */
    public Boolean get(int i) {
        return Boolean.valueOf(this.f20483g[i]);
    }

    /* renamed from: g */
    public int m2266g(boolean z) {
        return ArraysKt___ArraysKt.m2256E(this.f20483g, z);
    }

    /* renamed from: h */
    public int m2265h(boolean z) {
        return ArraysKt___ArraysKt.m2248M(this.f20483g, z);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Boolean) {
            return m2266g(((Boolean) obj).booleanValue());
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.f20483g.length == 0;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof Boolean) {
            return m2265h(((Boolean) obj).booleanValue());
        }
        return -1;
    }
}
