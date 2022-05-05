package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.Date;
import javax.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/UncheckedRow.class */
public class UncheckedRow implements NativeObject, Row {
    public static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    public final NativeContext context;
    public final long nativePtr;
    public final Table parent;

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

    public static UncheckedRow getByRowIndex(NativeContext nativeContext, Table table, long j) {
        return new UncheckedRow(nativeContext, table, table.nativeGetRowPtr(table.getNativePtr(), j));
    }

    public static UncheckedRow getByRowPointer(NativeContext nativeContext, Table table, long j) {
        return new UncheckedRow(nativeContext, table, j);
    }

    public static native long nativeGetFinalizerPtr();

    @Override // io.realm.internal.Row
    public void checkIfAttached() {
        if (!isAttached()) {
            throw new IllegalStateException("Object is no longer managed by Realm. Has it been deleted?");
        }
    }

    public CheckedRow convertToChecked() {
        return CheckedRow.getFromRow(this);
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
    public long getColumnIndex(String str) {
        if (str != null) {
            return nativeGetColumnIndex(this.nativePtr, str);
        }
        throw new IllegalArgumentException("Column name can not be null.");
    }

    @Override // io.realm.internal.Row
    public String getColumnName(long j) {
        return nativeGetColumnName(this.nativePtr, j);
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
    public double getDouble(long j) {
        return nativeGetDouble(this.nativePtr, j);
    }

    @Override // io.realm.internal.Row
    public float getFloat(long j) {
        return nativeGetFloat(this.nativePtr, j);
    }

    @Override // io.realm.internal.Row
    public long getIndex() {
        return nativeGetIndex(this.nativePtr);
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
    public boolean isAttached() {
        long j = this.nativePtr;
        return j != 0 && nativeIsAttached(j);
    }

    public boolean isNull(long j) {
        return nativeIsNull(this.nativePtr, j);
    }

    public boolean isNullLink(long j) {
        return nativeIsNullLink(this.nativePtr, j);
    }

    public native boolean nativeGetBoolean(long j, long j2);

    public native byte[] nativeGetByteArray(long j, long j2);

    public native long nativeGetColumnCount(long j);

    public native long nativeGetColumnIndex(long j, String str);

    public native String nativeGetColumnName(long j, long j2);

    public native int nativeGetColumnType(long j, long j2);

    public native double nativeGetDouble(long j, long j2);

    public native float nativeGetFloat(long j, long j2);

    public native long nativeGetIndex(long j);

    public native long nativeGetLink(long j, long j2);

    public native long nativeGetLong(long j, long j2);

    public native String nativeGetString(long j, long j2);

    public native long nativeGetTimestamp(long j, long j2);

    public native boolean nativeHasColumn(long j, String str);

    public native boolean nativeIsAttached(long j);

    public native boolean nativeIsNull(long j, long j2);

    public native boolean nativeIsNullLink(long j, long j2);

    public native void nativeNullifyLink(long j, long j2);

    public native void nativeSetBoolean(long j, long j2, boolean z);

    public native void nativeSetByteArray(long j, long j2, @Nullable byte[] bArr);

    public native void nativeSetDouble(long j, long j2, double d);

    public native void nativeSetFloat(long j, long j2, float f);

    public native void nativeSetLink(long j, long j2, long j3);

    public native void nativeSetLong(long j, long j2, long j3);

    public native void nativeSetNull(long j, long j2);

    public native void nativeSetString(long j, long j2, String str);

    public native void nativeSetTimestamp(long j, long j2, long j3);

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
    public void setString(long j, @Nullable String str) {
        this.parent.checkImmutable();
        if (str == null) {
            nativeSetNull(this.nativePtr, j);
        } else {
            nativeSetString(this.nativePtr, j, str);
        }
    }
}
