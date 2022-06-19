package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.Date;
import javax.annotation.Nullable;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/UncheckedRow.class */
public class UncheckedRow implements NativeObject, Row {
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    protected final NativeContext context;
    private final long nativePtr;
    protected final Table parent;

    /* renamed from: io.realm.internal.UncheckedRow$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/UncheckedRow$1.class */
    static /* synthetic */ class C24161 {
        static final /* synthetic */ int[] $SwitchMap$io$realm$RealmFieldType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[RealmFieldType.values().length];
            $SwitchMap$io$realm$RealmFieldType = iArr;
            try {
                iArr[RealmFieldType.OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.LIST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public UncheckedRow(NativeContext nativeContext, Table table, long j) {
        this.context = nativeContext;
        this.parent = table;
        this.nativePtr = j;
        nativeContext.addReference(this);
    }

    public UncheckedRow(UncheckedRow uncheckedRow) {
        this.context = uncheckedRow.context;
        this.parent = uncheckedRow.parent;
        this.nativePtr = uncheckedRow.nativePtr;
    }

    public static UncheckedRow getByRowKey(NativeContext nativeContext, Table table, long j) {
        return new UncheckedRow(nativeContext, table, table.nativeGetRowPtr(table.getNativePtr(), j));
    }

    public static UncheckedRow getByRowPointer(NativeContext nativeContext, Table table, long j) {
        return new UncheckedRow(nativeContext, table, j);
    }

    private static native long nativeGetFinalizerPtr();

    @Override // io.realm.internal.Row
    public void checkIfAttached() {
        if (isValid()) {
            return;
        }
        throw new IllegalStateException("Object is no longer managed by Realm. Has it been deleted?");
    }

    public CheckedRow convertToChecked() {
        return CheckedRow.getFromRow(this);
    }

    @Override // io.realm.internal.Row
    public long createEmbeddedObject(long j, RealmFieldType realmFieldType) {
        int i = C24161.$SwitchMap$io$realm$RealmFieldType[realmFieldType.ordinal()];
        if (i == 1) {
            this.parent.checkImmutable();
            return nativeCreateEmbeddedObject(this.nativePtr, j);
        } else if (i == 2) {
            return getModelList(j).createAndAddEmbeddedObject();
        } else {
            throw new IllegalArgumentException("Wrong parentPropertyType, expected OBJECT or LIST but received " + realmFieldType);
        }
    }

    public Row freeze(OsSharedRealm osSharedRealm) {
        return !isValid() ? InvalidRow.INSTANCE : new UncheckedRow(this.context, this.parent.freeze(osSharedRealm), nativeFreeze(this.nativePtr, osSharedRealm.getNativePtr()));
    }

    @Override // io.realm.internal.Row
    public byte[] getBinaryByteArray(long j) {
        return nativeGetByteArray(this.nativePtr, j);
    }

    @Override // io.realm.internal.Row
    public boolean getBoolean(long j) {
        return nativeGetBoolean(this.nativePtr, j);
    }

    @Override // io.realm.internal.Row
    public long getColumnCount() {
        return nativeGetColumnCount(this.nativePtr);
    }

    @Override // io.realm.internal.Row
    public long getColumnKey(String str) {
        if (str != null) {
            return nativeGetColumnKey(this.nativePtr, str);
        }
        throw new IllegalArgumentException("Column name can not be null.");
    }

    @Override // io.realm.internal.Row
    public String[] getColumnNames() {
        return nativeGetColumnNames(this.nativePtr);
    }

    @Override // io.realm.internal.Row
    public RealmFieldType getColumnType(long j) {
        return RealmFieldType.fromNativeValue(nativeGetColumnType(this.nativePtr, j));
    }

    @Override // io.realm.internal.Row
    public Date getDate(long j) {
        return new Date(nativeGetTimestamp(this.nativePtr, j));
    }

    @Override // io.realm.internal.Row
    public Decimal128 getDecimal128(long j) {
        long[] nativeGetDecimal128 = nativeGetDecimal128(this.nativePtr, j);
        if (nativeGetDecimal128 != null) {
            return Decimal128.fromIEEE754BIDEncoding(nativeGetDecimal128[1], nativeGetDecimal128[0]);
        }
        return null;
    }

    @Override // io.realm.internal.Row
    public double getDouble(long j) {
        return nativeGetDouble(this.nativePtr, j);
    }

    @Override // io.realm.internal.Row
    public float getFloat(long j) {
        return nativeGetFloat(this.nativePtr, j);
    }

    @Override // io.realm.internal.Row
    public long getLink(long j) {
        return nativeGetLink(this.nativePtr, j);
    }

    @Override // io.realm.internal.Row
    public long getLong(long j) {
        return nativeGetLong(this.nativePtr, j);
    }

    public OsList getModelList(long j) {
        return new OsList(this, j);
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    @Override // io.realm.internal.Row
    public ObjectId getObjectId(long j) {
        return new ObjectId(nativeGetObjectId(this.nativePtr, j));
    }

    @Override // io.realm.internal.Row
    public long getObjectKey() {
        return nativeGetObjectKey(this.nativePtr);
    }

    @Override // io.realm.internal.Row
    public String getString(long j) {
        return nativeGetString(this.nativePtr, j);
    }

    @Override // io.realm.internal.Row
    public Table getTable() {
        return this.parent;
    }

    public OsList getValueList(long j, RealmFieldType realmFieldType) {
        return new OsList(this, j);
    }

    @Override // io.realm.internal.Row
    public boolean hasColumn(String str) {
        return nativeHasColumn(this.nativePtr, str);
    }

    @Override // io.realm.internal.Row
    public boolean isLoaded() {
        return true;
    }

    public boolean isNull(long j) {
        return nativeIsNull(this.nativePtr, j);
    }

    public boolean isNullLink(long j) {
        return nativeIsNullLink(this.nativePtr, j);
    }

    @Override // io.realm.internal.Row
    public boolean isValid() {
        long j = this.nativePtr;
        return j != 0 && nativeIsValid(j);
    }

    protected native long nativeCreateEmbeddedObject(long j, long j2);

    public native long nativeFreeze(long j, long j2);

    protected native boolean nativeGetBoolean(long j, long j2);

    protected native byte[] nativeGetByteArray(long j, long j2);

    protected native long nativeGetColumnCount(long j);

    protected native long nativeGetColumnKey(long j, String str);

    protected native String[] nativeGetColumnNames(long j);

    protected native int nativeGetColumnType(long j, long j2);

    protected native long[] nativeGetDecimal128(long j, long j2);

    protected native double nativeGetDouble(long j, long j2);

    protected native float nativeGetFloat(long j, long j2);

    protected native long nativeGetLink(long j, long j2);

    protected native long nativeGetLong(long j, long j2);

    protected native String nativeGetObjectId(long j, long j2);

    protected native long nativeGetObjectKey(long j);

    protected native String nativeGetString(long j, long j2);

    protected native long nativeGetTimestamp(long j, long j2);

    protected native boolean nativeHasColumn(long j, String str);

    protected native boolean nativeIsNull(long j, long j2);

    protected native boolean nativeIsNullLink(long j, long j2);

    protected native boolean nativeIsValid(long j);

    protected native void nativeNullifyLink(long j, long j2);

    protected native void nativeSetBoolean(long j, long j2, boolean z);

    protected native void nativeSetByteArray(long j, long j2, @Nullable byte[] bArr);

    protected native void nativeSetDecimal128(long j, long j2, long j3, long j4);

    protected native void nativeSetDouble(long j, long j2, double d);

    protected native void nativeSetFloat(long j, long j2, float f);

    protected native void nativeSetLink(long j, long j2, long j3);

    protected native void nativeSetLong(long j, long j2, long j3);

    protected native void nativeSetNull(long j, long j2);

    protected native void nativeSetObjectId(long j, long j2, String str);

    protected native void nativeSetString(long j, long j2, String str);

    protected native void nativeSetTimestamp(long j, long j2, long j3);

    @Override // io.realm.internal.Row
    public void nullifyLink(long j) {
        this.parent.checkImmutable();
        nativeNullifyLink(this.nativePtr, j);
    }

    @Override // io.realm.internal.Row
    public void setBinaryByteArray(long j, @Nullable byte[] bArr) {
        this.parent.checkImmutable();
        nativeSetByteArray(this.nativePtr, j, bArr);
    }

    @Override // io.realm.internal.Row
    public void setBoolean(long j, boolean z) {
        this.parent.checkImmutable();
        nativeSetBoolean(this.nativePtr, j, z);
    }

    @Override // io.realm.internal.Row
    public void setDate(long j, Date date) {
        this.parent.checkImmutable();
        if (date != null) {
            nativeSetTimestamp(this.nativePtr, j, date.getTime());
            return;
        }
        throw new IllegalArgumentException("Null Date is not allowed.");
    }

    @Override // io.realm.internal.Row
    public void setDecimal128(long j, @Nullable Decimal128 decimal128) {
        this.parent.checkImmutable();
        if (decimal128 == null) {
            nativeSetNull(this.nativePtr, j);
        } else {
            nativeSetDecimal128(this.nativePtr, j, decimal128.getLow(), decimal128.getHigh());
        }
    }

    @Override // io.realm.internal.Row
    public void setDouble(long j, double d) {
        this.parent.checkImmutable();
        nativeSetDouble(this.nativePtr, j, d);
    }

    @Override // io.realm.internal.Row
    public void setFloat(long j, float f) {
        this.parent.checkImmutable();
        nativeSetFloat(this.nativePtr, j, f);
    }

    @Override // io.realm.internal.Row
    public void setLink(long j, long j2) {
        this.parent.checkImmutable();
        nativeSetLink(this.nativePtr, j, j2);
    }

    @Override // io.realm.internal.Row
    public void setLong(long j, long j2) {
        this.parent.checkImmutable();
        nativeSetLong(this.nativePtr, j, j2);
    }

    public void setNull(long j) {
        this.parent.checkImmutable();
        nativeSetNull(this.nativePtr, j);
    }

    @Override // io.realm.internal.Row
    public void setObjectId(long j, @Nullable ObjectId objectId) {
        this.parent.checkImmutable();
        if (objectId == null) {
            nativeSetNull(this.nativePtr, j);
        } else {
            nativeSetObjectId(this.nativePtr, j, objectId.toString());
        }
    }

    @Override // io.realm.internal.Row
    public void setString(long j, @Nullable String str) {
        this.parent.checkImmutable();
        if (str == null) {
            nativeSetNull(this.nativePtr, j);
        } else {
            nativeSetString(this.nativePtr, j, str);
        }
    }
}
