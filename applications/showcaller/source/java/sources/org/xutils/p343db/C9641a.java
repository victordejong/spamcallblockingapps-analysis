package org.xutils.p343db;

import android.database.Cursor;
import java.util.LinkedHashMap;
import org.xutils.p343db.table.ColumnEntity;
import org.xutils.p343db.table.DbModel;
import org.xutils.p343db.table.TableEntity;
/* renamed from: org.xutils.db.a */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/a.class */
public final class C9641a {
    /* renamed from: a */
    public static DbModel m233a(Cursor cursor) {
        DbModel dbModel = new DbModel();
        int columnCount = cursor.getColumnCount();
        for (int i = 0; i < columnCount; i++) {
            dbModel.add(cursor.getColumnName(i), cursor.getString(i));
        }
        return dbModel;
    }

    /* renamed from: b */
    public static <T> T m232b(TableEntity<T> tableEntity, Cursor cursor) {
        T createEntity = tableEntity.createEntity();
        LinkedHashMap<String, ColumnEntity> columnMap = tableEntity.getColumnMap();
        int columnCount = cursor.getColumnCount();
        for (int i = 0; i < columnCount; i++) {
            ColumnEntity columnEntity = columnMap.get(cursor.getColumnName(i));
            if (columnEntity != null) {
                columnEntity.setValueFromCursor(createEntity, cursor, i);
            }
        }
        return createEntity;
    }
}
