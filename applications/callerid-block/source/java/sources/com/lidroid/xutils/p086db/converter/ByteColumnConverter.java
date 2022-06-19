package com.lidroid.xutils.p086db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.p086db.sqlite.ColumnDbType;
/* renamed from: com.lidroid.xutils.db.converter.ByteColumnConverter */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/converter/ByteColumnConverter.class */
public class ByteColumnConverter implements ColumnConverter<Byte> {
    public Object fieldValue2ColumnValue(Byte b) {
        return b;
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.INTEGER;
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public Byte getFieldValue(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : Byte.valueOf((byte) cursor.getInt(i));
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public Byte getFieldValue(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Byte.valueOf(str);
    }
}
