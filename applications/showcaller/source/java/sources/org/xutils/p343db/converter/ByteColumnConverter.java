package org.xutils.p343db.converter;

import android.database.Cursor;
import org.xutils.p343db.sqlite.ColumnDbType;
/* renamed from: org.xutils.db.converter.ByteColumnConverter */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/converter/ByteColumnConverter.class */
public class ByteColumnConverter implements ColumnConverter<Byte> {
    public Object fieldValue2DbValue(Byte b) {
        return b;
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.INTEGER;
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public Byte getFieldValue(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : Byte.valueOf((byte) cursor.getInt(i));
    }
}
