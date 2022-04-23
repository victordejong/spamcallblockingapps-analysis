package com.lidroid.xutils.p086db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.p086db.sqlite.ColumnDbType;
/* renamed from: com.lidroid.xutils.db.converter.ShortColumnConverter */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/converter/ShortColumnConverter.class */
public class ShortColumnConverter implements ColumnConverter<Short> {
    public Object fieldValue2ColumnValue(Short sh) {
        return sh;
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.INTEGER;
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public Short getFieldValue(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : Short.valueOf(cursor.getShort(i));
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public Short getFieldValue(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Short.valueOf(str);
    }
}
