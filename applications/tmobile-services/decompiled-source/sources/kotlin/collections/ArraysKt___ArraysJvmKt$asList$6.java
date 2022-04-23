package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.RandomAccess;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��#\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\bH\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\rR\u0016\u0010\u0013\u001a\u00020\b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"kotlin/collections/ArraysKt___ArraysJvmKt$asList$6", "Ljava/util/RandomAccess;", "Lkotlin/collections/AbstractList;", "", "element", "", "contains", "(D)Z", "", FirebaseAnalytics.Param.INDEX, "get", "(I)Ljava/lang/Double;", "indexOf", "(D)I", "isEmpty", "()Z", "lastIndexOf", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/ArraysKt___ArraysJvmKt$asList$6.class */
public final class ArraysKt___ArraysJvmKt$asList$6 extends AbstractList<Double> implements RandomAccess {

    /* renamed from: g */
    final /* synthetic */ double[] f20482g;

    @Override // kotlin.collections.AbstractCollection
    /* renamed from: c */
    public int mo121c() {
        return this.f20482g.length;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Double) {
            return m2272e(((Number) obj).doubleValue());
        }
        return false;
    }

    /* renamed from: e */
    public boolean m2272e(double d) {
        double[] dArr = this.f20482g;
        int length = dArr.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            if (Double.doubleToLongBits(dArr[i]) == Double.doubleToLongBits(d)) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    @NotNull
    /* renamed from: f */
    public Double get(int i) {
        return Double.valueOf(this.f20482g[i]);
    }

    /* renamed from: g */
    public int m2270g(double d) {
        double[] dArr = this.f20482g;
        int length = dArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            }
            if (Double.doubleToLongBits(dArr[i]) == Double.doubleToLongBits(d)) {
                break;
            }
            i++;
        }
        return i;
    }

    /* renamed from: h */
    public int m2269h(double d) {
        double[] dArr = this.f20482g;
        int length = dArr.length;
        int i = -1;
        while (true) {
            length--;
            if (length < 0) {
                break;
            }
            if (Double.doubleToLongBits(dArr[length]) == Double.doubleToLongBits(d)) {
                i = length;
                break;
            }
        }
        return i;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Double) {
            return m2270g(((Number) obj).doubleValue());
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.f20482g.length == 0;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof Double) {
            return m2269h(((Number) obj).doubleValue());
        }
        return -1;
    }
}
