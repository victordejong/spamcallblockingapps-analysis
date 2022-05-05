package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.Date;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/UncheckedRow.class */
public class UncheckedRow implements NativeObject, Row {

    /* renamed from: i */
    private static final long f20197i = nativeGetFinalizerPtr();

    /* renamed from: f */
    protected final NativeContext f20198f;

    /* renamed from: g */
    protected final Table f20199g;

    /* renamed from: h */
    private final long f20200h;

    public UncheckedRow(NativeContext nativeContext, Table table, long j) {
        this.f20198f = nativeContext;
        this.f20199g = table;
        this.f20200h = j;
        nativeContext.m2829a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UncheckedRow(UncheckedRow uncheckedRow) {
        this.f20198f = uncheckedRow.f20198f;
        this.f20199g = uncheckedRow.f20199g;
        this.f20200h = uncheckedRow.f20200h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static UncheckedRow m2601b(NativeContext nativeContext, Table table, long j) {
        return new UncheckedRow(nativeContext, table, table.nativeGetRowPtr(table.getNativePtr(), j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static UncheckedRow m2600c(NativeContext nativeContext, Table table, long j) {
        return new UncheckedRow(nativeContext, table, j);
    }

    private static native long nativeGetFinalizerPtr();

    /* renamed from: a */
    public CheckedRow m2602a() {
        return CheckedRow.m2837e(this);
    }

    @Override // io.realm.internal.Row
    public void checkIfAttached() {
        if (!isValid()) {
            throw new IllegalStateException("Object is no longer managed by Realm. Has it been deleted?");
        }
    }

    public Row freeze(OsSharedRealm osSharedRealm) {
        return !isValid() ? InvalidRow.INSTANCE : new UncheckedRow(this.f20198f, this.f20199g.m2643j(osSharedRealm), nativeFreeze(this.f20200h, osSharedRealm.getNativePtr()));
    }

    @Override // io.realm.internal.Row
    public byte[] getBinaryByteArray(long j) {
        return nativeGetByteArray(this.f20200h, j);
    }

    @Override // io.realm.internal.Row
    public boolean getBoolean(long j) {
        return nativeGetBoolean(this.f20200h, j);
    }

    @Override // io.realm.internal.Row
    public long getColumnKey(String str) {
        if (str != null) {
            return nativeGetColumnKey(this.f20200h, str);
        }
        throw new IllegalArgumentException("Column name can not be null.");
    }

    @Override // io.realm.internal.Row
    public String[] getColumnNames() {
        return nativeGetColumnNames(this.f20200h);
    }

    @Override // io.realm.internal.Row
    public RealmFieldType getColumnType(long j) {
        return RealmFieldType.fromNativeValue(nativeGetColumnType(this.f20200h, j));
    }

    @Override // io.realm.internal.Row
    public Date getDate(long j) {
        return new Date(nativeGetTimestamp(this.f20200h, j));
    }

    @Override // io.realm.internal.Row
    public double getDouble(long j) {
        return nativeGetDouble(this.f20200h, j);
    }

    @Override // io.realm.internal.Row
    public float getFloat(long j) {
        return nativeGetFloat(this.f20200h, j);
    }

    @Override // io.realm.internal.Row
    public long getLink(long j) {
        return nativeGetLink(this.f20200h, j);
    }

    @Override // io.realm.internal.Row
    public long getLong(long j) {
        return nativeGetLong(this.f20200h, j);
    }

    public OsList getModelList(long j) {
        return new OsList(this, j);
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return f20197i;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.f20200h;
    }

    @Override // io.realm.internal.Row
    public long getObjectKey() {
        return nativeGetObjectKey(this.f20200h);
    }

    @Override // io.realm.internal.Row
    public String getString(long j) {
        return nativeGetString(this.f20200h, j);
    }

    @Override // io.realm.internal.Row
    public Table getTable() {
        return this.f20199g;
    }

    public OsList getValueList(long j, RealmFieldType realmFieldType) {
        return new OsList(this, j);
    }

    @Override // io.realm.internal.Row
    public boolean hasColumn(String str) {
        return nativeHasColumn(this.f20200h, str);
    }

    @Override // io.realm.internal.Row
    public boolean isLoaded() {
        return true;
    }

    public boolean isNull(long j) {
        return nativeIsNull(this.f20200h, j);
    }

    public boolean isNullLink(long j) {
        return nativeIsNullLink(this.f20200h, j);
    }

    @Override // io.realm.internal.Row
    public boolean isValid() {
        long j = this.f20200h;
        return j != 0 && nativeIsValid(j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public native long nativeFreeze(long j, long j2);

    protected native boolean nativeGetBoolean(long j, long j2);

    protected native byte[] nativeGetByteArray(long j, long j2);

    protected native long nativeGetColumnKey(long j, String str);

    protected native String[] nativeGetColumnNames(long j);

    protected native int nativeGetColumnType(long j, long j2);

    protected native double nativeGetDouble(long j, long j2);

    protected native float nativeGetFloat(long j, long j2);

    protected native long nativeGetLink(long j, long j2);

    protected native long nativeGetLong(long j, long j2);

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

    protected native void nativeSetDouble(long j, long j2, double d);

    protected native void nativeSetFloat(long j, long j2, float f);

    protected native void nativeSetLink(long j, long j2, long j3);

    protected native void nativeSetLong(long j, long j2, long j3);

    protected native void nativeSetNull(long j, long j2);

    protected native void nativeSetString(long j, long j2, String str);

    protected native void nativeSetTimestamp(long j, long j2, long j3);

    @Override // io.realm.internal.Row
    public void nullifyLink(long j) {
        this.f20199g.m2650c();
        nativeNullifyLink(this.f20200h, j);
    }

    @Override // io.realm.internal.Row
    public void setBinaryByteArray(long j, @Nullable byte[] bArr) {
        this.f20199g.m2650c();
        nativeSetByteArray(this.f20200h, j, bArr);
    }

    @Override // io.realm.internal.Row
    public void setBoolean(long j, boolean z) {
        this.f20199g.m2650c();
        nativeSetBoolean(this.f20200h, j, z);
    }

    @Override // io.realm.internal.Row
    public void setDate(long j, Date date) {
        this.f20199g.m2650c();
        if (date != null) {
            nativeSetTimestamp(this.f20200h, j, date.getTime());
            return;
        }
        throw new IllegalArgumentException("Null Date is not allowed.");
    }

    @Override // io.realm.internal.Row
    public void setDouble(long j, double d) {
        this.f20199g.m2650c();
        nativeSetDouble(this.f20200h, j, d);
    }

    @Override // io.realm.internal.Row
    public void setFloat(long j, float f) {
        this.f20199g.m2650c();
        nativeSetFloat(this.f20200h, j, f);
    }

    @Override // io.realm.internal.Row
    public void setLink(long j, long j2) {
        this.f20199g.m2650c();
        nativeSetLink(this.f20200h, j, j2);
    }

    @Override // io.realm.internal.Row
    public void setLong(long j, long j2) {
        this.f20199g.m2650c();
        nativeSetLong(this.f20200h, j, j2);
    }

    public void setNull(long j) {
        this.f20199g.m2650c();
        nativeSetNull(this.f20200h, j);
    }

    @Override // io.realm.internal.Row
    public void setString(long j, @Nullable String str) {
        this.f20199g.m2650c();
        if (str == null) {
            nativeSetNull(this.f20200h, j);
        } else {
            nativeSetString(this.f20200h, j, str);
        }
    }
}
