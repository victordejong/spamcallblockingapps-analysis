package com.lidroid.xutils.p086db.sqlite;

import android.database.Cursor;
import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.p086db.table.C2728Id;
import com.lidroid.xutils.p086db.table.Column;
import com.lidroid.xutils.p086db.table.DbModel;
import com.lidroid.xutils.p086db.table.Finder;
import com.lidroid.xutils.p086db.table.Table;
import com.lidroid.xutils.util.LogUtils;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.lidroid.xutils.db.sqlite.CursorUtils */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/sqlite/CursorUtils.class */
public class CursorUtils {

    /* renamed from: com.lidroid.xutils.db.sqlite.CursorUtils$EntityTempCache */
    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache.class */
    public static class EntityTempCache {
        private static final ConcurrentHashMap<String, Object> cache = new ConcurrentHashMap<>();
        private static long seq = 0;

        private EntityTempCache() {
        }

        public static <T> T get(Class<T> cls, Object obj) {
            ConcurrentHashMap<String, Object> concurrentHashMap = cache;
            return (T) concurrentHashMap.get(cls.getName() + "#" + obj);
        }

        public static <T> void put(Class<T> cls, Object obj, Object obj2) {
            ConcurrentHashMap<String, Object> concurrentHashMap = cache;
            concurrentHashMap.put(cls.getName() + "#" + obj, obj2);
        }

        public static void setSeq(long j) {
            if (seq != j) {
                cache.clear();
                seq = j;
            }
        }
    }

    /* renamed from: com.lidroid.xutils.db.sqlite.CursorUtils$FindCacheSequence */
    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence.class */
    public static class FindCacheSequence {
        private static long seq;
        private static final String FOREIGN_LAZY_LOADER_CLASS_NAME = ForeignLazyLoader.class.getName();
        private static final String FINDER_LAZY_LOADER_CLASS_NAME = FinderLazyLoader.class.getName();

        private FindCacheSequence() {
        }

        public static long getSeq() {
            String className = Thread.currentThread().getStackTrace()[4].getClassName();
            if (!className.equals(FOREIGN_LAZY_LOADER_CLASS_NAME) && !className.equals(FINDER_LAZY_LOADER_CLASS_NAME)) {
                seq++;
            }
            return seq;
        }
    }

    public static DbModel getDbModel(Cursor cursor) {
        DbModel dbModel;
        if (cursor != null) {
            DbModel dbModel2 = new DbModel();
            int columnCount = cursor.getColumnCount();
            int i = 0;
            while (true) {
                dbModel = dbModel2;
                if (i >= columnCount) {
                    break;
                }
                dbModel2.add(cursor.getColumnName(i), cursor.getString(i));
                i++;
            }
        } else {
            dbModel = null;
        }
        return dbModel;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T getEntity(DbUtils dbUtils, Cursor cursor, Class<T> cls, long j) {
        if (dbUtils == null || cursor == null) {
            return null;
        }
        EntityTempCache.setSeq(j);
        try {
            Table table = Table.get(dbUtils, cls);
            C2728Id c2728Id = table.f11340id;
            String columnName = c2728Id.getColumnName();
            int index = c2728Id.getIndex();
            int i = index;
            if (index < 0) {
                i = cursor.getColumnIndex(columnName);
            }
            Object fieldValue = c2728Id.getColumnConverter().getFieldValue(cursor, i);
            Object obj = EntityTempCache.get(cls, fieldValue);
            T t = obj;
            if (obj == 0) {
                T newInstance = cls.newInstance();
                c2728Id.setValue2Entity(newInstance, cursor, i);
                EntityTempCache.put(cls, fieldValue, newInstance);
                int columnCount = cursor.getColumnCount();
                for (int i2 = 0; i2 < columnCount; i2++) {
                    Column column = table.columnMap.get(cursor.getColumnName(i2));
                    if (column != null) {
                        column.setValue2Entity(newInstance, cursor, i2);
                    }
                }
                Iterator<Finder> it = table.finderMap.values().iterator();
                while (true) {
                    t = newInstance;
                    if (!it.hasNext()) {
                        break;
                    }
                    it.next().setValue2Entity(newInstance, null, 0);
                }
            }
            return t;
        } catch (Throwable th) {
            LogUtils.m2008e(th.getMessage(), th);
            return null;
        }
    }
}
