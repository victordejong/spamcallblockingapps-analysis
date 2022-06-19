package org.xutils.p343db.converter;

import android.database.Cursor;
import org.xutils.p343db.sqlite.ColumnDbType;
/* renamed from: org.xutils.db.converter.ColumnConverter */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/converter/ColumnConverter.class */
public interface ColumnConverter<T> {
    Object fieldValue2DbValue(T t);

    ColumnDbType getColumnDbType();

    T getFieldValue(Cursor cursor, int i);
}
