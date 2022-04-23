package com.lidroid.xutils.p086db.converter;

import android.database.Cursor;
import com.lidroid.xutils.p086db.sqlite.ColumnDbType;
/* renamed from: com.lidroid.xutils.db.converter.ByteArrayColumnConverter */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/converter/ByteArrayColumnConverter.class */
public class ByteArrayColumnConverter implements ColumnConverter<byte[]> {
    public Object fieldValue2ColumnValue(byte[] bArr) {
        return bArr;
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.BLOB;
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public byte[] getFieldValue(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : cursor.getBlob(i);
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public byte[] getFieldValue(String str) {
        return null;
    }
}
