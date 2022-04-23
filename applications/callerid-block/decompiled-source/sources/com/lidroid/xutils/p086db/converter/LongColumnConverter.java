package com.lidroid.xutils.p086db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.p086db.sqlite.ColumnDbType;
/* renamed from: com.lidroid.xutils.db.converter.LongColumnConverter */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/converter/LongColumnConverter.class */
public class LongColumnConverter implements ColumnConverter<Long> {
    public Object fieldValue2ColumnValue(Long l) {
        return l;
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.INTEGER;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public Long getFieldValue(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : Long.valueOf(cursor.getLong(i));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public Long getFieldValue(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Long.valueOf(str);
    }
}
