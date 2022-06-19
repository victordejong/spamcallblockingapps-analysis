package org.xutils.p343db.converter;

import android.database.Cursor;
import java.sql.Date;
import org.xutils.p343db.sqlite.ColumnDbType;
/* renamed from: org.xutils.db.converter.SqlDateColumnConverter */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/converter/SqlDateColumnConverter.class */
public class SqlDateColumnConverter implements ColumnConverter<Date> {
    public Object fieldValue2DbValue(Date date) {
        if (date == null) {
            return null;
        }
        return Long.valueOf(date.getTime());
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.INTEGER;
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public Date getFieldValue(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : new Date(cursor.getLong(i));
    }
}
