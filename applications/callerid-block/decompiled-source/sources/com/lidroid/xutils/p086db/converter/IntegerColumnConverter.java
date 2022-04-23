package com.lidroid.xutils.p086db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.p086db.sqlite.ColumnDbType;
/* renamed from: com.lidroid.xutils.db.converter.IntegerColumnConverter */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/converter/IntegerColumnConverter.class */
public class IntegerColumnConverter implements ColumnConverter<Integer> {
    public Object fieldValue2ColumnValue(Integer num) {
        return num;
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.INTEGER;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public Integer getFieldValue(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : Integer.valueOf(cursor.getInt(i));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public Integer getFieldValue(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Integer.valueOf(str);
    }
}
