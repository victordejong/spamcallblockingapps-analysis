package com.lidroid.xutils.p086db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.p086db.sqlite.ColumnDbType;
/* renamed from: com.lidroid.xutils.db.converter.DoubleColumnConverter */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/converter/DoubleColumnConverter.class */
public class DoubleColumnConverter implements ColumnConverter<Double> {
    public Object fieldValue2ColumnValue(Double d) {
        return d;
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.REAL;
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public Double getFieldValue(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : Double.valueOf(cursor.getDouble(i));
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public Double getFieldValue(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Double.valueOf(str);
    }
}
