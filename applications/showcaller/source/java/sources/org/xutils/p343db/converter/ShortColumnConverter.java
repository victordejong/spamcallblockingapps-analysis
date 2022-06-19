package org.xutils.p343db.converter;

import android.database.Cursor;
import org.xutils.p343db.sqlite.ColumnDbType;
/* renamed from: org.xutils.db.converter.ShortColumnConverter */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/converter/ShortColumnConverter.class */
public class ShortColumnConverter implements ColumnConverter<Short> {
    public Object fieldValue2DbValue(Short sh) {
        return sh;
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.INTEGER;
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public Short getFieldValue(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : Short.valueOf(cursor.getShort(i));
    }
}
