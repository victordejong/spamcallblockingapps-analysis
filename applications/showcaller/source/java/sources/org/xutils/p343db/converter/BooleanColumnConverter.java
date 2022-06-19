package org.xutils.p343db.converter;

import android.database.Cursor;
import org.xutils.p343db.sqlite.ColumnDbType;
/* renamed from: org.xutils.db.converter.BooleanColumnConverter */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/converter/BooleanColumnConverter.class */
public class BooleanColumnConverter implements ColumnConverter<Boolean> {
    public Object fieldValue2DbValue(Boolean bool) {
        if (bool == null) {
            return null;
        }
        return Integer.valueOf(bool.booleanValue() ? 1 : 0);
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.INTEGER;
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public Boolean getFieldValue(Cursor cursor, int i) {
        Boolean bool;
        if (cursor.isNull(i)) {
            bool = null;
        } else {
            boolean z = true;
            if (cursor.getInt(i) != 1) {
                z = false;
            }
            bool = Boolean.valueOf(z);
        }
        return bool;
    }
}
