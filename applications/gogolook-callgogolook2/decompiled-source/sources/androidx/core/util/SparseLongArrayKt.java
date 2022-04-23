package androidx.core.util;

import android.util.SparseLongArray;
import androidx.annotation.RequiresApi;
import androidx.core.app.Person;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p632u.AbstractC14993a0;
import p626l.p632u.AbstractC14995b0;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��D\n��\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\u001a\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\b\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\t\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0087\b\u001aE\u0010\f\u001a\u00020\r*\u00020\u000226\u0010\u000e\u001a2\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\r0\u000fH\u0087\b\u001a\u001d\u0010\u0012\u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u000bH\u0087\b\u001a#\u0010\u0014\u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0015H\u0087\b\u001a\r\u0010\u0016\u001a\u00020\u0006*\u00020\u0002H\u0087\b\u001a\r\u0010\u0017\u001a\u00020\u0006*\u00020\u0002H\u0087\b\u001a\f\u0010\u0018\u001a\u00020\u0019*\u00020\u0002H\u0007\u001a\u0015\u0010\u001a\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0002H\u0087\u0002\u001a\u0014\u0010\u001c\u001a\u00020\r*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0002H\u0007\u001a\u001c\u0010\u001d\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000bH\u0007\u001a\u001d\u0010\u001e\u001a\u00020\r*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000bH\u0087\n\u001a\f\u0010\u001f\u001a\u00020 *\u00020\u0002H\u0007\"\u0016\u0010��\u001a\u00020\u0001*\u00020\u00028Ç\u0002¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006!"}, m815d2 = {"size", "", "Landroid/util/SparseLongArray;", "getSize", "(Landroid/util/SparseLongArray;)I", "contains", "", Person.KEY_KEY, "containsKey", "containsValue", C13032a.f29462d, "", "forEach", "", "action", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "getOrDefault", "defaultValue", "getOrElse", "Lkotlin/Function0;", "isEmpty", "isNotEmpty", "keyIterator", "Lkotlin/collections/IntIterator;", "plus", "other", "putAll", "remove", "set", "valueIterator", "Lkotlin/collections/LongIterator;", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/util/SparseLongArrayKt.class */
public final class SparseLongArrayKt {
    @RequiresApi(18)
    public static final boolean contains(SparseLongArray sparseLongArray, int i) {
        C15149k.m377b(sparseLongArray, "$this$contains");
        return sparseLongArray.indexOfKey(i) >= 0;
    }

    @RequiresApi(18)
    public static final boolean containsKey(SparseLongArray sparseLongArray, int i) {
        C15149k.m377b(sparseLongArray, "$this$containsKey");
        return sparseLongArray.indexOfKey(i) >= 0;
    }

    @RequiresApi(18)
    public static final boolean containsValue(SparseLongArray sparseLongArray, long j) {
        C15149k.m377b(sparseLongArray, "$this$containsValue");
        return sparseLongArray.indexOfValue(j) != -1;
    }

    @RequiresApi(18)
    public static final void forEach(SparseLongArray sparseLongArray, AbstractC15122p<? super Integer, ? super Long, C14989s> pVar) {
        C15149k.m377b(sparseLongArray, "$this$forEach");
        C15149k.m377b(pVar, "action");
        int size = sparseLongArray.size();
        for (int i = 0; i < size; i++) {
            pVar.invoke(Integer.valueOf(sparseLongArray.keyAt(i)), Long.valueOf(sparseLongArray.valueAt(i)));
        }
    }

    @RequiresApi(18)
    public static final long getOrDefault(SparseLongArray sparseLongArray, int i, long j) {
        C15149k.m377b(sparseLongArray, "$this$getOrDefault");
        return sparseLongArray.get(i, j);
    }

    @RequiresApi(18)
    public static final long getOrElse(SparseLongArray sparseLongArray, int i, AbstractC15107a<Long> aVar) {
        C15149k.m377b(sparseLongArray, "$this$getOrElse");
        C15149k.m377b(aVar, "defaultValue");
        int indexOfKey = sparseLongArray.indexOfKey(i);
        return indexOfKey != -1 ? sparseLongArray.valueAt(indexOfKey) : aVar.invoke().longValue();
    }

    @RequiresApi(18)
    public static final int getSize(SparseLongArray sparseLongArray) {
        C15149k.m377b(sparseLongArray, "$this$size");
        return sparseLongArray.size();
    }

    @RequiresApi(18)
    public static final boolean isEmpty(SparseLongArray sparseLongArray) {
        C15149k.m377b(sparseLongArray, "$this$isEmpty");
        return sparseLongArray.size() == 0;
    }

    @RequiresApi(18)
    public static final boolean isNotEmpty(SparseLongArray sparseLongArray) {
        C15149k.m377b(sparseLongArray, "$this$isNotEmpty");
        return sparseLongArray.size() != 0;
    }

    @RequiresApi(18)
    public static final AbstractC14993a0 keyIterator(final SparseLongArray sparseLongArray) {
        C15149k.m377b(sparseLongArray, "$this$keyIterator");
        return new AbstractC14993a0() { // from class: androidx.core.util.SparseLongArrayKt$keyIterator$1
            public int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseLongArray.size();
            }

            @Override // p626l.p632u.AbstractC14993a0
            public int nextInt() {
                SparseLongArray sparseLongArray2 = sparseLongArray;
                int i = this.index;
                this.index = i + 1;
                return sparseLongArray2.keyAt(i);
            }

            public final void setIndex(int i) {
                this.index = i;
            }
        };
    }

    @RequiresApi(18)
    public static final SparseLongArray plus(SparseLongArray sparseLongArray, SparseLongArray sparseLongArray2) {
        C15149k.m377b(sparseLongArray, "$this$plus");
        C15149k.m377b(sparseLongArray2, "other");
        SparseLongArray sparseLongArray3 = new SparseLongArray(sparseLongArray.size() + sparseLongArray2.size());
        putAll(sparseLongArray3, sparseLongArray);
        putAll(sparseLongArray3, sparseLongArray2);
        return sparseLongArray3;
    }

    @RequiresApi(18)
    public static final void putAll(SparseLongArray sparseLongArray, SparseLongArray sparseLongArray2) {
        C15149k.m377b(sparseLongArray, "$this$putAll");
        C15149k.m377b(sparseLongArray2, "other");
        int size = sparseLongArray2.size();
        for (int i = 0; i < size; i++) {
            sparseLongArray.put(sparseLongArray2.keyAt(i), sparseLongArray2.valueAt(i));
        }
    }

    @RequiresApi(18)
    public static final boolean remove(SparseLongArray sparseLongArray, int i, long j) {
        C15149k.m377b(sparseLongArray, "$this$remove");
        int indexOfKey = sparseLongArray.indexOfKey(i);
        if (indexOfKey == -1 || j != sparseLongArray.valueAt(indexOfKey)) {
            return false;
        }
        sparseLongArray.removeAt(indexOfKey);
        return true;
    }

    @RequiresApi(18)
    public static final void set(SparseLongArray sparseLongArray, int i, long j) {
        C15149k.m377b(sparseLongArray, "$this$set");
        sparseLongArray.put(i, j);
    }

    @RequiresApi(18)
    public static final AbstractC14995b0 valueIterator(final SparseLongArray sparseLongArray) {
        C15149k.m377b(sparseLongArray, "$this$valueIterator");
        return new AbstractC14995b0() { // from class: androidx.core.util.SparseLongArrayKt$valueIterator$1
            public int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseLongArray.size();
            }

            @Override // p626l.p632u.AbstractC14995b0
            public long nextLong() {
                SparseLongArray sparseLongArray2 = sparseLongArray;
                int i = this.index;
                this.index = i + 1;
                return sparseLongArray2.valueAt(i);
            }

            public final void setIndex(int i) {
                this.index = i;
            }
        };
    }
}
