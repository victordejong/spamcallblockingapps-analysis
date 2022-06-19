package com.allinone.callerid.util;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.allinone.callerid.bean.ShortCut;
import java.lang.reflect.Field;
import java.util.HashMap;
/* renamed from: com.allinone.callerid.util.o */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/o.class */
public class C3804o extends SQLiteOpenHelper {
    public C3804o(Context context) {
        super(context, "usershortcut", (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS usershortcut(_id integer primary key,name varchar,number varchar)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i2 != i) {
            try {
                HashMap hashMap = new HashMap();
                Cursor rawQuery = sQLiteDatabase.rawQuery("select * from usershortcut", null);
                int columnCount = rawQuery.getColumnCount();
                for (int i3 = 0; i3 < columnCount; i3++) {
                    hashMap.put(rawQuery.getColumnName(i3), rawQuery.getColumnName(i3));
                }
                rawQuery.close();
                Field[] declaredFields = ShortCut.class.getDeclaredFields();
                for (int i4 = 0; i4 < declaredFields.length; i4++) {
                    if (!hashMap.containsKey(declaredFields[i4].getName())) {
                        hashMap.put(declaredFields[i4].getName(), declaredFields[i4].getName());
                        if (declaredFields[i4].getType().toString().equals("class java.lang.String")) {
                            if ("ismyblocklist".equals(declaredFields[i4].getName())) {
                                sQLiteDatabase.execSQL("alter table usershortcut add " + declaredFields[i4].getName() + " TEXT NOT NULL DEFAULT false");
                            } else {
                                sQLiteDatabase.execSQL("alter table usershortcut add " + declaredFields[i4].getName() + " TEXT ");
                            }
                        } else if (declaredFields[i4].getType().equals("int") || declaredFields[i4].getType().equals("long") || declaredFields[i4].getType().equals("boolean")) {
                            sQLiteDatabase.execSQL("alter table usershortcut add " + declaredFields[i4].getName() + " INTEGER ");
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
