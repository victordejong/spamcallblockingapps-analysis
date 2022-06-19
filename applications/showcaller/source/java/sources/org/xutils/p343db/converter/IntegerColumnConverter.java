package org.xutils.p343db.converter;

import android.database.Cursor;
import org.xutils.p343db.sqlite.ColumnDbType;
/* renamed from: org.xutils.db.converter.IntegerColumnConverter */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/converter/IntegerColumnConverter.class */
public class IntegerColumnConverter implements ColumnConverter<Integer> {
    public Object fieldValue2DbValue(Integer num) {
        return num;
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.INTEGER;
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public Integer getFieldValue(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : Integer.valueOf(cursor.getInt(i));
    }
}
