package com.lidroid.xutils.p086db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.p086db.sqlite.ColumnDbType;
/* renamed from: com.lidroid.xutils.db.converter.FloatColumnConverter */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/converter/FloatColumnConverter.class */
public class FloatColumnConverter implements ColumnConverter<Float> {
    public Object fieldValue2ColumnValue(Float f) {
        return f;
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.REAL;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public Float getFieldValue(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : Float.valueOf(cursor.getFloat(i));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public Float getFieldValue(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Float.valueOf(str);
    }
}
