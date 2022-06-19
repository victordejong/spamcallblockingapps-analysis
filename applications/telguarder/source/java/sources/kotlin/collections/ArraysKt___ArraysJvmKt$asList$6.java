package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.RandomAccess;
import kotlin.Metadata;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��'\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\u0011\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0096\u0002J\u0016\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\nH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, m400d2 = {"kotlin/collections/ArraysKt___ArraysJvmKt$asList$6", "Lkotlin/collections/AbstractList;", "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "size", "", "getSize", "()I", "contains", "", "element", "get", FirebaseAnalytics.Param.INDEX, "(I)Ljava/lang/Double;", "indexOf", "isEmpty", "lastIndexOf", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/collections/ArraysKt___ArraysJvmKt$asList$6.class */
public final class ArraysKt___ArraysJvmKt$asList$6 extends AbstractList<Double> implements RandomAccess {
    final /* synthetic */ double[] $this_asList;

    public ArraysKt___ArraysJvmKt$asList$6(double[] dArr) {
        this.$this_asList = dArr;
    }

    public boolean contains(double d) {
        boolean z;
        double[] dArr = this.$this_asList;
        int length = dArr.length;
        int i = 0;
        while (true) {
            z = false;
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

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Double) {
            return contains(((Number) obj).doubleValue());
        }
        return false;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public Double get(int i) {
        return Double.valueOf(this.$this_asList[i]);
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    public int getSize() {
        return this.$this_asList.length;
    }

    public int indexOf(double d) {
        double[] dArr = this.$this_asList;
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

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Double) {
            return indexOf(((Number) obj).doubleValue());
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.$this_asList.length == 0;
    }

    public int lastIndexOf(double d) {
        int i;
        double[] dArr = this.$this_asList;
        int length = dArr.length;
        while (true) {
            length--;
            i = -1;
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
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof Double) {
            return lastIndexOf(((Number) obj).doubleValue());
        }
        return -1;
    }
}
