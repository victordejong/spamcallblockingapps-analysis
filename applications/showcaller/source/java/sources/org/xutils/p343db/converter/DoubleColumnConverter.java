package org.xutils.p343db.converter;

import android.database.Cursor;
import org.xutils.p343db.sqlite.ColumnDbType;
/* renamed from: org.xutils.db.converter.DoubleColumnConverter */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/converter/DoubleColumnConverter.class */
public class DoubleColumnConverter implements ColumnConverter<Double> {
    public Object fieldValue2DbValue(Double d) {
        return d;
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.REAL;
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public Double getFieldValue(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : Double.valueOf(cursor.getDouble(i));
    }
}
