package com.lidroid.xutils.p086db.converter;

import android.database.Cursor;
import com.lidroid.xutils.p086db.sqlite.ColumnDbType;
/* renamed from: com.lidroid.xutils.db.converter.StringColumnConverter */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/converter/StringColumnConverter.class */
public class StringColumnConverter implements ColumnConverter<String> {
    public Object fieldValue2ColumnValue(String str) {
        return str;
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.TEXT;
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public String getFieldValue(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : cursor.getString(i);
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public String getFieldValue(String str) {
        return str;
    }
}
