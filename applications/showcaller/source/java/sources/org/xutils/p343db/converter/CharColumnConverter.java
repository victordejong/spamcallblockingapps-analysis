package org.xutils.p343db.converter;

import android.database.Cursor;
import org.xutils.p343db.sqlite.ColumnDbType;
/* renamed from: org.xutils.db.converter.CharColumnConverter */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/converter/CharColumnConverter.class */
public class CharColumnConverter implements ColumnConverter<Character> {
    public Object fieldValue2DbValue(Character ch) {
        if (ch == null) {
            return null;
        }
        return Integer.valueOf(ch.charValue());
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.INTEGER;
    }

    @Override // org.xutils.p343db.converter.ColumnConverter
    public Character getFieldValue(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : Character.valueOf((char) cursor.getInt(i));
    }
}
