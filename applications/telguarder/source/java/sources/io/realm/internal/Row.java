package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.Date;
import javax.annotation.Nullable;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/Row.class */
public interface Row {
    void checkIfAttached();

    long createEmbeddedObject(long j, RealmFieldType realmFieldType);

    Row freeze(OsSharedRealm osSharedRealm);

    byte[] getBinaryByteArray(long j);

    boolean getBoolean(long j);

    long getColumnCount();

    long getColumnKey(String str);

    String[] getColumnNames();

    RealmFieldType getColumnType(long j);

    Date getDate(long j);

    Decimal128 getDecimal128(long j);

    double getDouble(long j);

    float getFloat(long j);

    long getLink(long j);

    long getLong(long j);

    OsList getModelList(long j);

    ObjectId getObjectId(long j);

    long getObjectKey();

    String getString(long j);

    Table getTable();

    OsList getValueList(long j, RealmFieldType realmFieldType);

    boolean hasColumn(String str);

    boolean isLoaded();

    boolean isNull(long j);

    boolean isNullLink(long j);

    boolean isValid();

    void nullifyLink(long j);

    void setBinaryByteArray(long j, @Nullable byte[] bArr);

    void setBoolean(long j, boolean z);

    void setDate(long j, Date date);

    void setDecimal128(long j, Decimal128 decimal128);

    void setDouble(long j, double d);

    void setFloat(long j, float f);

    void setLink(long j, long j2);

    void setLong(long j, long j2);

    void setNull(long j);

    void setObjectId(long j, ObjectId objectId);

    void setString(long j, @Nullable String str);
}
