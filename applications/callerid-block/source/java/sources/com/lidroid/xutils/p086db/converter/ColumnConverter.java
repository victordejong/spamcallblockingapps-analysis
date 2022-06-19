package com.lidroid.xutils.p086db.converter;

import android.database.Cursor;
import com.lidroid.xutils.p086db.sqlite.ColumnDbType;
/* renamed from: com.lidroid.xutils.db.converter.ColumnConverter */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/converter/ColumnConverter.class */
public interface ColumnConverter<T> {
    Object fieldValue2ColumnValue(T t);

    ColumnDbType getColumnDbType();

    T getFieldValue(Cursor cursor, int i);

    T getFieldValue(String str);
}
