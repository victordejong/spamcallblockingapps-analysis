package androidx.core.util;

import android.util.SparseBooleanArray;
import androidx.core.app.Person;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p632u.AbstractC14993a0;
import p626l.p632u.AbstractC15019k;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��>\n��\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\u001a\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\b\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0001H\u0086\b\u001a\u0015\u0010\t\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\n\u001a\u00020\u0006H\u0086\b\u001aE\u0010\u000b\u001a\u00020\f*\u00020\u000226\u0010\r\u001a2\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\f0\u000eH\u0086\b\u001a\u001d\u0010\u0011\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0006H\u0086\b\u001a#\u0010\u0013\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u0014H\u0086\b\u001a\r\u0010\u0015\u001a\u00020\u0006*\u00020\u0002H\u0086\b\u001a\r\u0010\u0016\u001a\u00020\u0006*\u00020\u0002H\u0086\b\u001a\n\u0010\u0017\u001a\u00020\u0018*\u00020\u0002\u001a\u0015\u0010\u0019\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0002H\u0086\u0002\u001a\u0012\u0010\u001b\u001a\u00020\f*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0002\u001a\u001a\u0010\u001c\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u0006\u001a\u001d\u0010\u001d\u001a\u00020\f*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u0006H\u0086\n\u001a\n\u0010\u001e\u001a\u00020\u001f*\u00020\u0002\"\u0016\u0010��\u001a\u00020\u0001*\u00020\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006 "}, m815d2 = {"size", "", "Landroid/util/SparseBooleanArray;", "getSize", "(Landroid/util/SparseBooleanArray;)I", "contains", "", Person.KEY_KEY, "containsKey", "containsValue", C13032a.f29462d, "forEach", "", "action", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "getOrDefault", "defaultValue", "getOrElse", "Lkotlin/Function0;", "isEmpty", "isNotEmpty", "keyIterator", "Lkotlin/collections/IntIterator;", "plus", "other", "putAll", "remove", "set", "valueIterator", "Lkotlin/collections/BooleanIterator;", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/util/SparseBooleanArrayKt.class */
public final class SparseBooleanArrayKt {
    public static final boolean contains(SparseBooleanArray sparseBooleanArray, int i) {
        C15149k.m377b(sparseBooleanArray, "$this$contains");
        return sparseBooleanArray.indexOfKey(i) >= 0;
    }

    public static final boolean containsKey(SparseBooleanArray sparseBooleanArray, int i) {
        C15149k.m377b(sparseBooleanArray, "$this$containsKey");
        return sparseBooleanArray.indexOfKey(i) >= 0;
    }

    public static final boolean containsValue(SparseBooleanArray sparseBooleanArray, boolean z) {
        C15149k.m377b(sparseBooleanArray, "$this$containsValue");
        return sparseBooleanArray.indexOfValue(z) != -1;
    }

    public static final void forEach(SparseBooleanArray sparseBooleanArray, AbstractC15122p<? super Integer, ? super Boolean, C14989s> pVar) {
        C15149k.m377b(sparseBooleanArray, "$this$forEach");
        C15149k.m377b(pVar, "action");
        int size = sparseBooleanArray.size();
        for (int i = 0; i < size; i++) {
            pVar.invoke(Integer.valueOf(sparseBooleanArray.keyAt(i)), Boolean.valueOf(sparseBooleanArray.valueAt(i)));
        }
    }

    public static final boolean getOrDefault(SparseBooleanArray sparseBooleanArray, int i, boolean z) {
        C15149k.m377b(sparseBooleanArray, "$this$getOrDefault");
        return sparseBooleanArray.get(i, z);
    }

    public static final boolean getOrElse(SparseBooleanArray sparseBooleanArray, int i, AbstractC15107a<Boolean> aVar) {
        C15149k.m377b(sparseBooleanArray, "$this$getOrElse");
        C15149k.m377b(aVar, "defaultValue");
        int indexOfKey = sparseBooleanArray.indexOfKey(i);
        return indexOfKey != -1 ? sparseBooleanArray.valueAt(indexOfKey) : aVar.invoke().booleanValue();
    }

    public static final int getSize(SparseBooleanArray sparseBooleanArray) {
        C15149k.m377b(sparseBooleanArray, "$this$size");
        return sparseBooleanArray.size();
    }

    public static final boolean isEmpty(SparseBooleanArray sparseBooleanArray) {
        C15149k.m377b(sparseBooleanArray, "$this$isEmpty");
        return sparseBooleanArray.size() == 0;
    }

    public static final boolean isNotEmpty(SparseBooleanArray sparseBooleanArray) {
        C15149k.m377b(sparseBooleanArray, "$this$isNotEmpty");
        return sparseBooleanArray.size() != 0;
    }

    public static final AbstractC14993a0 keyIterator(final SparseBooleanArray sparseBooleanArray) {
        C15149k.m377b(sparseBooleanArray, "$this$keyIterator");
        return new AbstractC14993a0() { // from class: androidx.core.util.SparseBooleanArrayKt$keyIterator$1
            public int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseBooleanArray.size();
            }

            @Override // p626l.p632u.AbstractC14993a0
            public int nextInt() {
                SparseBooleanArray sparseBooleanArray2 = sparseBooleanArray;
                int i = this.index;
                this.index = i + 1;
                return sparseBooleanArray2.keyAt(i);
            }

            public final void setIndex(int i) {
                this.index = i;
            }
        };
    }

    public static final SparseBooleanArray plus(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
        C15149k.m377b(sparseBooleanArray, "$this$plus");
        C15149k.m377b(sparseBooleanArray2, "other");
        SparseBooleanArray sparseBooleanArray3 = new SparseBooleanArray(sparseBooleanArray.size() + sparseBooleanArray2.size());
        putAll(sparseBooleanArray3, sparseBooleanArray);
        putAll(sparseBooleanArray3, sparseBooleanArray2);
        return sparseBooleanArray3;
    }

    public static final void putAll(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
        C15149k.m377b(sparseBooleanArray, "$this$putAll");
        C15149k.m377b(sparseBooleanArray2, "other");
        int size = sparseBooleanArray2.size();
        for (int i = 0; i < size; i++) {
            sparseBooleanArray.put(sparseBooleanArray2.keyAt(i), sparseBooleanArray2.valueAt(i));
        }
    }

    public static final boolean remove(SparseBooleanArray sparseBooleanArray, int i, boolean z) {
        C15149k.m377b(sparseBooleanArray, "$this$remove");
        int indexOfKey = sparseBooleanArray.indexOfKey(i);
        if (indexOfKey == -1 || z != sparseBooleanArray.valueAt(indexOfKey)) {
            return false;
        }
        sparseBooleanArray.delete(i);
        return true;
    }

    public static final void set(SparseBooleanArray sparseBooleanArray, int i, boolean z) {
        C15149k.m377b(sparseBooleanArray, "$this$set");
        sparseBooleanArray.put(i, z);
    }

    public static final AbstractC15019k valueIterator(final SparseBooleanArray sparseBooleanArray) {
        C15149k.m377b(sparseBooleanArray, "$this$valueIterator");
        return new AbstractC15019k() { // from class: androidx.core.util.SparseBooleanArrayKt$valueIterator$1
            public int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseBooleanArray.size();
            }

            @Override // p626l.p632u.AbstractC15019k
            public boolean nextBoolean() {
                SparseBooleanArray sparseBooleanArray2 = sparseBooleanArray;
                int i = this.index;
                this.index = i + 1;
                return sparseBooleanArray2.valueAt(i);
            }

            public final void setIndex(int i) {
                this.index = i;
            }
        };
    }
}
