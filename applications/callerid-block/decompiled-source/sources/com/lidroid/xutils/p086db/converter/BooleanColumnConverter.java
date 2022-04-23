package com.lidroid.xutils.p086db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.p086db.sqlite.ColumnDbType;
/* renamed from: com.lidroid.xutils.db.converter.BooleanColumnConverter */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/converter/BooleanColumnConverter.class */
public class BooleanColumnConverter implements ColumnConverter<Boolean> {
    public Object fieldValue2ColumnValue(Boolean bool) {
        if (bool == null) {
            return null;
        }
        return Integer.valueOf(bool.booleanValue() ? 1 : 0);
    }

    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public ColumnDbType getColumnDbType() {
        return ColumnDbType.INTEGER;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public Boolean getFieldValue(Cursor cursor, int i) {
        Boolean bool;
        if (cursor.isNull(i)) {
            bool = null;
        } else {
            boolean z = true;
            if (cursor.getInt(i) != 1) {
                z = false;
            }
            bool = Boolean.valueOf(z);
        }
        return bool;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.lidroid.xutils.p086db.converter.ColumnConverter
    public Boolean getFieldValue(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Boolean.valueOf(str.length() == 1 ? "1".equals(str) : Boolean.valueOf(str).booleanValue());
    }
}
