package org.bson;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.bson.codecs.BsonArrayCodec;
import org.bson.codecs.DecoderContext;
import org.bson.json.JsonReader;
/* loaded from: classes-dex2jar.jar:org/bson/BsonArray.class */
public class BsonArray extends BsonValue implements List<BsonValue>, Cloneable {
    private final List<BsonValue> values;

    /* renamed from: org.bson.BsonArray$1 */
    /* loaded from: classes-dex2jar.jar:org/bson/BsonArray$1.class */
    public static /* synthetic */ class C25261 {
        static final /* synthetic */ int[] $SwitchMap$org$bson$BsonType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[BsonType.values().length];
            $SwitchMap$org$bson$BsonType = iArr;
            try {
                iArr[BsonType.DOCUMENT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.BINARY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.JAVASCRIPT_WITH_SCOPE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public BsonArray() {
        this(new ArrayList(), false);
    }

    public BsonArray(List<? extends BsonValue> list) {
        this(list, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BsonArray(List<? extends BsonValue> list, boolean z) {
        if (z) {
            this.values = new ArrayList(list);
        } else {
            this.values = list;
        }
    }

    public static BsonArray parse(String str) {
        return new BsonArrayCodec().decode((BsonReader) new JsonReader(str), DecoderContext.builder().build());
    }

    public void add(int i, BsonValue bsonValue) {
        this.values.add(i, bsonValue);
    }

    public boolean add(BsonValue bsonValue) {
        return this.values.add(bsonValue);
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends BsonValue> collection) {
        return this.values.addAll(i, collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends BsonValue> collection) {
        return this.values.addAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.values.clear();
    }

    public BsonArray clone() {
        BsonArray bsonArray = new BsonArray();
        Iterator<BsonValue> it = iterator();
        while (it.hasNext()) {
            BsonValue next = it.next();
            int i = C25261.$SwitchMap$org$bson$BsonType[next.getBsonType().ordinal()];
            if (i == 1) {
                bsonArray.add((BsonValue) next.asDocument().clone());
            } else if (i == 2) {
                bsonArray.add((BsonValue) next.asArray().clone());
            } else if (i == 3) {
                bsonArray.add((BsonValue) BsonBinary.clone(next.asBinary()));
            } else if (i != 4) {
                bsonArray.add(next);
            } else {
                bsonArray.add((BsonValue) BsonJavaScriptWithScope.clone(next.asJavaScriptWithScope()));
            }
        }
        return bsonArray;
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return this.values.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return this.values.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BsonArray) {
            return getValues().equals(((BsonArray) obj).getValues());
        }
        return false;
    }

    @Override // java.util.List
    public BsonValue get(int i) {
        return this.values.get(i);
    }

    @Override // org.bson.BsonValue
    public BsonType getBsonType() {
        return BsonType.ARRAY;
    }

    public List<BsonValue> getValues() {
        return Collections.unmodifiableList(this.values);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.values.hashCode();
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return this.values.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.values.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<BsonValue> iterator() {
        return this.values.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return this.values.lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<BsonValue> listIterator() {
        return this.values.listIterator();
    }

    @Override // java.util.List
    public ListIterator<BsonValue> listIterator(int i) {
        return this.values.listIterator(i);
    }

    @Override // java.util.List
    public BsonValue remove(int i) {
        return this.values.remove(i);
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        return this.values.remove(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return this.values.removeAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return this.values.retainAll(collection);
    }

    public BsonValue set(int i, BsonValue bsonValue) {
        return this.values.set(i, bsonValue);
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return this.values.size();
    }

    @Override // java.util.List
    public List<BsonValue> subList(int i, int i2) {
        return this.values.subList(i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return this.values.toArray();
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.values.toArray(tArr);
    }

    public String toString() {
        return "BsonArray{values=" + this.values + '}';
    }
}
