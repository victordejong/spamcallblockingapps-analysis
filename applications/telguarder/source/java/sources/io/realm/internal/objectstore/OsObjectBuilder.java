package io.realm.internal.objectstore;

import io.realm.ImportFlag;
import io.realm.MutableRealmInteger;
import io.realm.RealmList;
import io.realm.RealmModel;
import io.realm.internal.NativeContext;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import java.io.Closeable;
import java.util.Date;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/objectstore/OsObjectBuilder.class */
public class OsObjectBuilder implements Closeable {
    private final long builderPtr = nativeCreateBuilder();
    private final NativeContext context;
    private final boolean ignoreFieldsWithSameValue;
    private final long sharedRealmPtr;
    private final Table table;
    private final long tablePtr;
    private static ItemCallback<? extends RealmModel> objectItemCallback = new ItemCallback<RealmModel>() { // from class: io.realm.internal.objectstore.OsObjectBuilder.1
        public void handleItem(long j, RealmModel realmModel) {
            OsObjectBuilder.nativeAddIntegerListItem(j, ((UncheckedRow) ((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm()).getNativePtr());
        }
    };
    private static ItemCallback<String> stringItemCallback = new ItemCallback<String>() { // from class: io.realm.internal.objectstore.OsObjectBuilder.2
        public void handleItem(long j, String str) {
            OsObjectBuilder.nativeAddStringListItem(j, str);
        }
    };
    private static ItemCallback<Byte> byteItemCallback = new ItemCallback<Byte>() { // from class: io.realm.internal.objectstore.OsObjectBuilder.3
        public void handleItem(long j, Byte b) {
            OsObjectBuilder.nativeAddIntegerListItem(j, b.longValue());
        }
    };
    private static ItemCallback<Short> shortItemCallback = new ItemCallback<Short>() { // from class: io.realm.internal.objectstore.OsObjectBuilder.4
        public void handleItem(long j, Short sh) {
            OsObjectBuilder.nativeAddIntegerListItem(j, sh.shortValue());
        }
    };
    private static ItemCallback<Integer> integerItemCallback = new ItemCallback<Integer>() { // from class: io.realm.internal.objectstore.OsObjectBuilder.5
        public void handleItem(long j, Integer num) {
            OsObjectBuilder.nativeAddIntegerListItem(j, num.intValue());
        }
    };
    private static ItemCallback<Long> longItemCallback = new ItemCallback<Long>() { // from class: io.realm.internal.objectstore.OsObjectBuilder.6
        public void handleItem(long j, Long l) {
            OsObjectBuilder.nativeAddIntegerListItem(j, l.longValue());
        }
    };
    private static ItemCallback<Boolean> booleanItemCallback = new ItemCallback<Boolean>() { // from class: io.realm.internal.objectstore.OsObjectBuilder.7
        public void handleItem(long j, Boolean bool) {
            OsObjectBuilder.nativeAddBooleanListItem(j, bool.booleanValue());
        }
    };
    private static ItemCallback<Float> floatItemCallback = new ItemCallback<Float>() { // from class: io.realm.internal.objectstore.OsObjectBuilder.8
        public void handleItem(long j, Float f) {
            OsObjectBuilder.nativeAddFloatListItem(j, f.floatValue());
        }
    };
    private static ItemCallback<Double> doubleItemCallback = new ItemCallback<Double>() { // from class: io.realm.internal.objectstore.OsObjectBuilder.9
        public void handleItem(long j, Double d) {
            OsObjectBuilder.nativeAddDoubleListItem(j, d.doubleValue());
        }
    };
    private static ItemCallback<Date> dateItemCallback = new ItemCallback<Date>() { // from class: io.realm.internal.objectstore.OsObjectBuilder.10
        public void handleItem(long j, Date date) {
            OsObjectBuilder.nativeAddDateListItem(j, date.getTime());
        }
    };
    private static ItemCallback<byte[]> byteArrayItemCallback = new ItemCallback<byte[]>() { // from class: io.realm.internal.objectstore.OsObjectBuilder.11
        public void handleItem(long j, byte[] bArr) {
            OsObjectBuilder.nativeAddByteArrayListItem(j, bArr);
        }
    };
    private static ItemCallback<MutableRealmInteger> mutableRealmIntegerItemCallback = new ItemCallback<MutableRealmInteger>() { // from class: io.realm.internal.objectstore.OsObjectBuilder.12
        public void handleItem(long j, MutableRealmInteger mutableRealmInteger) {
            Long l = mutableRealmInteger.get();
            if (l == null) {
                OsObjectBuilder.nativeAddNullListItem(j);
            } else {
                OsObjectBuilder.nativeAddIntegerListItem(j, l.longValue());
            }
        }
    };
    private static ItemCallback<Decimal128> decimal128ItemCallback = new ItemCallback<Decimal128>() { // from class: io.realm.internal.objectstore.OsObjectBuilder.13
        public void handleItem(long j, Decimal128 decimal128) {
            OsObjectBuilder.nativeAddDecimal128ListItem(j, decimal128.getLow(), decimal128.getHigh());
        }
    };
    private static ItemCallback<ObjectId> objectIdItemCallback = new ItemCallback<ObjectId>() { // from class: io.realm.internal.objectstore.OsObjectBuilder.14
        public void handleItem(long j, ObjectId objectId) {
            OsObjectBuilder.nativeAddObjectIdListItem(j, objectId.toString());
        }
    };

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/objectstore/OsObjectBuilder$ItemCallback.class */
    public interface ItemCallback<T> {
        void handleItem(long j, T t);
    }

    public OsObjectBuilder(Table table, Set<ImportFlag> set) {
        OsSharedRealm sharedRealm = table.getSharedRealm();
        this.sharedRealmPtr = sharedRealm.getNativePtr();
        this.table = table;
        table.getColumnNames();
        this.tablePtr = table.getNativePtr();
        this.context = sharedRealm.context;
        this.ignoreFieldsWithSameValue = set.contains(ImportFlag.CHECK_SAME_VALUES_BEFORE_SET);
    }

    private void addEmptyList(long j) {
        nativeStopList(this.builderPtr, j, nativeStartList(0L));
    }

    private <T> void addListItem(long j, long j2, @Nullable List<T> list, ItemCallback<T> itemCallback) {
        if (list == null) {
            addEmptyList(j2);
            return;
        }
        long nativeStartList = nativeStartList(list.size());
        for (int i = 0; i < list.size(); i++) {
            T t = list.get(i);
            if (t == null) {
                nativeAddNullListItem(nativeStartList);
            } else {
                itemCallback.handleItem(nativeStartList, t);
            }
        }
        nativeStopList(j, j2, nativeStartList);
    }

    private static native void nativeAddBoolean(long j, long j2, boolean z);

    public static native void nativeAddBooleanListItem(long j, boolean z);

    private static native void nativeAddByteArray(long j, long j2, byte[] bArr);

    public static native void nativeAddByteArrayListItem(long j, byte[] bArr);

    private static native void nativeAddDate(long j, long j2, long j3);

    public static native void nativeAddDateListItem(long j, long j2);

    private static native void nativeAddDecimal128(long j, long j2, long j3, long j4);

    public static native void nativeAddDecimal128ListItem(long j, long j2, long j3);

    private static native void nativeAddDouble(long j, long j2, double d);

    public static native void nativeAddDoubleListItem(long j, double d);

    private static native void nativeAddFloat(long j, long j2, float f);

    public static native void nativeAddFloatListItem(long j, float f);

    private static native void nativeAddInteger(long j, long j2, long j3);

    public static native void nativeAddIntegerListItem(long j, long j2);

    private static native void nativeAddNull(long j, long j2);

    public static native void nativeAddNullListItem(long j);

    private static native void nativeAddObject(long j, long j2, long j3);

    private static native void nativeAddObjectId(long j, long j2, String str);

    public static native void nativeAddObjectIdListItem(long j, String str);

    private static native void nativeAddObjectList(long j, long j2, long[] jArr);

    private static native void nativeAddObjectListItem(long j, long j2);

    private static native void nativeAddString(long j, long j2, String str);

    public static native void nativeAddStringListItem(long j, String str);

    private static native long nativeCreateBuilder();

    private static native long nativeCreateOrUpdateTopLevelObject(long j, long j2, long j3, boolean z, boolean z2);

    private static native void nativeDestroyBuilder(long j);

    private static native long nativeStartList(long j);

    private static native void nativeStopList(long j, long j2, long j3);

    private static native long nativeUpdateEmbeddedObject(long j, long j2, long j3, long j4, boolean z);

    public void addBoolean(long j, @Nullable Boolean bool) {
        if (bool == null) {
            nativeAddNull(this.builderPtr, j);
        } else {
            nativeAddBoolean(this.builderPtr, j, bool.booleanValue());
        }
    }

    public void addBooleanList(long j, RealmList<Boolean> realmList) {
        addListItem(this.builderPtr, j, realmList, booleanItemCallback);
    }

    public void addByteArray(long j, @Nullable byte[] bArr) {
        if (bArr == null) {
            nativeAddNull(this.builderPtr, j);
        } else {
            nativeAddByteArray(this.builderPtr, j, bArr);
        }
    }

    public void addByteArrayList(long j, RealmList<byte[]> realmList) {
        addListItem(this.builderPtr, j, realmList, byteArrayItemCallback);
    }

    public void addByteList(long j, RealmList<Byte> realmList) {
        addListItem(this.builderPtr, j, realmList, byteItemCallback);
    }

    public void addDate(long j, @Nullable Date date) {
        if (date == null) {
            nativeAddNull(this.builderPtr, j);
        } else {
            nativeAddDate(this.builderPtr, j, date.getTime());
        }
    }

    public void addDateList(long j, RealmList<Date> realmList) {
        addListItem(this.builderPtr, j, realmList, dateItemCallback);
    }

    public void addDecimal128(long j, @Nullable Decimal128 decimal128) {
        if (decimal128 == null) {
            nativeAddNull(this.builderPtr, j);
        } else {
            nativeAddDecimal128(this.builderPtr, j, decimal128.getLow(), decimal128.getHigh());
        }
    }

    public void addDecimal128List(long j, RealmList<Decimal128> realmList) {
        addListItem(this.builderPtr, j, realmList, decimal128ItemCallback);
    }

    public void addDouble(long j, @Nullable Double d) {
        if (d == null) {
            nativeAddNull(this.builderPtr, j);
        } else {
            nativeAddDouble(this.builderPtr, j, d.doubleValue());
        }
    }

    public void addDoubleList(long j, RealmList<Double> realmList) {
        addListItem(this.builderPtr, j, realmList, doubleItemCallback);
    }

    public void addFloat(long j, @Nullable Float f) {
        if (f == null) {
            nativeAddNull(this.builderPtr, j);
        } else {
            nativeAddFloat(this.builderPtr, j, f.floatValue());
        }
    }

    public void addFloatList(long j, RealmList<Float> realmList) {
        addListItem(this.builderPtr, j, realmList, floatItemCallback);
    }

    public void addInteger(long j, @Nullable Byte b) {
        if (b == null) {
            nativeAddNull(this.builderPtr, j);
        } else {
            nativeAddInteger(this.builderPtr, j, b.byteValue());
        }
    }

    public void addInteger(long j, @Nullable Integer num) {
        if (num == null) {
            nativeAddNull(this.builderPtr, j);
        } else {
            nativeAddInteger(this.builderPtr, j, num.intValue());
        }
    }

    public void addInteger(long j, @Nullable Long l) {
        if (l == null) {
            nativeAddNull(this.builderPtr, j);
        } else {
            nativeAddInteger(this.builderPtr, j, l.longValue());
        }
    }

    public void addInteger(long j, @Nullable Short sh) {
        if (sh == null) {
            nativeAddNull(this.builderPtr, j);
        } else {
            nativeAddInteger(this.builderPtr, j, sh.shortValue());
        }
    }

    public void addIntegerList(long j, RealmList<Integer> realmList) {
        addListItem(this.builderPtr, j, realmList, integerItemCallback);
    }

    public void addLongList(long j, RealmList<Long> realmList) {
        addListItem(this.builderPtr, j, realmList, longItemCallback);
    }

    public void addMutableRealmInteger(long j, @Nullable MutableRealmInteger mutableRealmInteger) {
        if (mutableRealmInteger == null || mutableRealmInteger.get() == null) {
            nativeAddNull(this.builderPtr, j);
        } else {
            nativeAddInteger(this.builderPtr, j, mutableRealmInteger.get().longValue());
        }
    }

    public void addMutableRealmIntegerList(long j, RealmList<MutableRealmInteger> realmList) {
        addListItem(this.builderPtr, j, realmList, mutableRealmIntegerItemCallback);
    }

    public void addNull(long j) {
        nativeAddNull(this.builderPtr, j);
    }

    public void addObject(long j, @Nullable RealmModel realmModel) {
        if (realmModel == null) {
            nativeAddNull(this.builderPtr, j);
            return;
        }
        nativeAddObject(this.builderPtr, j, ((UncheckedRow) ((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm()).getNativePtr());
    }

    public void addObjectId(long j, @Nullable ObjectId objectId) {
        if (objectId == null) {
            nativeAddNull(this.builderPtr, j);
        } else {
            nativeAddObjectId(this.builderPtr, j, objectId.toString());
        }
    }

    public void addObjectIdList(long j, RealmList<ObjectId> realmList) {
        addListItem(this.builderPtr, j, realmList, objectIdItemCallback);
    }

    public <T extends RealmModel> void addObjectList(long j, @Nullable RealmList<T> realmList) {
        if (realmList == null) {
            nativeAddObjectList(this.builderPtr, j, new long[0]);
            return;
        }
        long[] jArr = new long[realmList.size()];
        for (int i = 0; i < realmList.size(); i++) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) realmList.get(i);
            if (realmObjectProxy == null) {
                throw new IllegalArgumentException("Null values are not allowed in RealmLists containing Realm models");
            }
            jArr[i] = ((UncheckedRow) realmObjectProxy.realmGet$proxyState().getRow$realm()).getNativePtr();
        }
        nativeAddObjectList(this.builderPtr, j, jArr);
    }

    public void addShortList(long j, RealmList<Short> realmList) {
        addListItem(this.builderPtr, j, realmList, shortItemCallback);
    }

    public void addString(long j, @Nullable String str) {
        if (str == null) {
            nativeAddNull(this.builderPtr, j);
        } else {
            nativeAddString(this.builderPtr, j, str);
        }
    }

    public void addStringList(long j, RealmList<String> realmList) {
        addListItem(this.builderPtr, j, realmList, stringItemCallback);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        nativeDestroyBuilder(this.builderPtr);
    }

    public UncheckedRow createNewObject() {
        try {
            return new UncheckedRow(this.context, this.table, nativeCreateOrUpdateTopLevelObject(this.sharedRealmPtr, this.tablePtr, this.builderPtr, false, false));
        } finally {
            close();
        }
    }

    public long getNativePtr() {
        return this.builderPtr;
    }

    public void updateExistingEmbeddedObject(RealmObjectProxy realmObjectProxy) {
        try {
            nativeUpdateEmbeddedObject(this.sharedRealmPtr, this.tablePtr, this.builderPtr, realmObjectProxy.realmGet$proxyState().getRow$realm().getObjectKey(), this.ignoreFieldsWithSameValue);
        } finally {
            close();
        }
    }

    public void updateExistingTopLevelObject() {
        try {
            nativeCreateOrUpdateTopLevelObject(this.sharedRealmPtr, this.tablePtr, this.builderPtr, true, this.ignoreFieldsWithSameValue);
        } finally {
            close();
        }
    }
}
