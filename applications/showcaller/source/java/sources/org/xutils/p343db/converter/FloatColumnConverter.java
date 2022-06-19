package org.xutils.p343db.converter;

import android.database.Cursor;
import org.xutils.p343db.sqlite.ColumnDbType;
/* renamed from: org.xutils.db.converter.FloatColumnConverter */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/converter/FloatColumnConverter.class */
public class FloatColumnConverter implements ColumnConverter<Float> {
    public Object fieldValue2DbValue(Float f) {
        return f;
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.REAL;
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public Float getFieldValue(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : Float.valueOf(cursor.getFloat(i));
    }
}
