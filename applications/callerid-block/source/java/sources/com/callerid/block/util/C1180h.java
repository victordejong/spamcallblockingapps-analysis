package com.callerid.block.util;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.callerid.block.bean.EZBlackList;
import java.lang.reflect.Field;
import java.util.HashMap;
/* renamed from: com.callerid.block.util.h */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/h.class */
public class C1180h extends SQLiteOpenHelper {
    public C1180h(Context context) {
        super(context, "blacklistvest", (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS blacklistvest(_id integer primary key,name varchar,number varchar,formatnumber varchar)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        String str;
        if (i2 != i) {
            try {
                HashMap hashMap = new HashMap();
                Cursor rawQuery = sQLiteDatabase.rawQuery("select * from blacklistvest", null);
                int columnCount = rawQuery.getColumnCount();
                for (int i3 = 0; i3 < columnCount; i3++) {
                    hashMap.put(rawQuery.getColumnName(i3), rawQuery.getColumnName(i3));
                }
                rawQuery.close();
                Field[] declaredFields = EZBlackList.class.getDeclaredFields();
                for (int i4 = 0; i4 < declaredFields.length; i4++) {
                    if (!hashMap.containsKey(declaredFields[i4].getName())) {
                        hashMap.put(declaredFields[i4].getName(), declaredFields[i4].getName());
                        if (declaredFields[i4].getType().toString().equals("class java.lang.String")) {
                            str = "alter table blacklistvest add " + declaredFields[i4].getName() + " TEXT ";
                        } else if ("int".equals(declaredFields[i4].getType()) || "long".equals(declaredFields[i4].getType()) || "boolean".equals(declaredFields[i4].getType())) {
                            str = "alter table blacklistvest add " + declaredFields[i4].getName() + " INTEGER ";
                        }
                        sQLiteDatabase.execSQL(str);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
