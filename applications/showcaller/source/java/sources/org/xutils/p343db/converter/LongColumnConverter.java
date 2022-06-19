package org.xutils.p343db.converter;

import android.database.Cursor;
import org.xutils.p343db.sqlite.ColumnDbType;
/* renamed from: org.xutils.db.converter.LongColumnConverter */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/converter/LongColumnConverter.class */
public class LongColumnConverter implements ColumnConverter<Long> {
    public Object fieldValue2DbValue(Long l) {
        return l;
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.INTEGER;
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public Long getFieldValue(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : Long.valueOf(cursor.getLong(i));
    }
}
