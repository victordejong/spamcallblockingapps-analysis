package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.Date;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/InvalidRow.class */
public enum InvalidRow implements Row {
    INSTANCE;

    private RuntimeException getStubException() {
        return new IllegalStateException("Object is no longer managed by Realm. Has it been deleted?");
    }

    @Override // io.realm.internal.Row
    public void checkIfAttached() {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public long createEmbeddedObject(long j, RealmFieldType realmFieldType) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public Row freeze(OsSharedRealm osSharedRealm) {
        return INSTANCE;
    }

    @Override // io.realm.internal.Row
    public byte[] getBinaryByteArray(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public boolean getBoolean(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public long getColumnCount() {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public long getColumnKey(String str) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public String[] getColumnNames() {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public RealmFieldType getColumnType(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public Date getDate(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public Decimal128 getDecimal128(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public double getDouble(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public float getFloat(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public long getLink(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public long getLong(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public OsList getModelList(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public ObjectId getObjectId(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public long getObjectKey() {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public String getString(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public Table getTable() {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public OsList getValueList(long j, RealmFieldType realmFieldType) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public boolean hasColumn(String str) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public boolean isLoaded() {
        return true;
    }

    @Override // io.realm.internal.Row
    public boolean isNull(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public boolean isNullLink(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public boolean isValid() {
        return false;
    }

    @Override // io.realm.internal.Row
    public void nullifyLink(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setBinaryByteArray(long j, byte[] bArr) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setBoolean(long j, boolean z) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setDate(long j, Date date) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setDecimal128(long j, Decimal128 decimal128) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setDouble(long j, double d) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setFloat(long j, float f) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setLink(long j, long j2) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setLong(long j, long j2) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setNull(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setObjectId(long j, ObjectId objectId) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setString(long j, String str) {
        throw getStubException();
    }
}
