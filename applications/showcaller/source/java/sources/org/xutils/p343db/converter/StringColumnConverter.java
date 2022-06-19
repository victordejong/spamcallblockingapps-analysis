package org.xutils.p343db.converter;

import android.database.Cursor;
import org.xutils.p343db.sqlite.ColumnDbType;
/* renamed from: org.xutils.db.converter.StringColumnConverter */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/converter/StringColumnConverter.class */
public class StringColumnConverter implements ColumnConverter<String> {
    public Object fieldValue2DbValue(String str) {
        return str;
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.TEXT;
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public String getFieldValue(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : cursor.getString(i);
    }
}
