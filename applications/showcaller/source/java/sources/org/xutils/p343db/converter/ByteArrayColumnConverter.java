package org.xutils.p343db.converter;

import android.database.Cursor;
import org.xutils.p343db.sqlite.ColumnDbType;
/* renamed from: org.xutils.db.converter.ByteArrayColumnConverter */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/converter/ByteArrayColumnConverter.class */
public class ByteArrayColumnConverter implements ColumnConverter<byte[]> {
    public Object fieldValue2DbValue(byte[] bArr) {
        return bArr;
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.BLOB;
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public byte[] getFieldValue(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : cursor.getBlob(i);
    }
}
