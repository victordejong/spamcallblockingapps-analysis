package com.lidroid.xutils.p086db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.p086db.sqlite.ColumnDbType;
/* renamed from: com.lidroid.xutils.db.converter.CharColumnConverter */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/converter/CharColumnConverter.class */
public class CharColumnConverter implements ColumnConverter<Character> {
    public Object fieldValue2ColumnValue(Character ch) {
        if (ch == null) {
            return null;
        }
        return Integer.valueOf(ch.charValue());
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.INTEGER;
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public Character getFieldValue(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : Character.valueOf((char) cursor.getInt(i));
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public Character getFieldValue(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Character.valueOf(str.charAt(0));
    }
}
