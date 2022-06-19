package com.bytedance.sdk.openadsdk.preload.geckox.p206a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.StatisticModel;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5416a;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5417b;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.a.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/a/b.class */
class C5315b extends SQLiteOpenHelper {

    /* renamed from: a */
    private static volatile C5315b f18773a;

    private C5315b(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
    }

    /* renamed from: a */
    public static C5315b m32593a(Context context) {
        if (f18773a == null) {
            synchronized (C5315b.class) {
                try {
                    if (f18773a == null) {
                        Context applicationContext = context.getApplicationContext();
                        f18773a = new C5315b(applicationContext, "geckox_clean_statistic" + C5416a.m32362c(context) + ".db", null, 1);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18773a;
    }

    /* renamed from: a */
    public List<StatisticModel.PackageStatisticModel> m32594a() {
        Cursor cursor;
        Exception e;
        ArrayList arrayList = new ArrayList();
        try {
            cursor = getWritableDatabase().query("geckox_clean_statistic", null, null, null, null, null, null);
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        }
        if (cursor == null) {
            return arrayList;
        }
        while (cursor.moveToNext()) {
            try {
                String string = cursor.getString(cursor.getColumnIndex("access_key"));
                String string2 = cursor.getString(cursor.getColumnIndex(AppsFlyerProperties.CHANNEL));
                int i = cursor.getInt(cursor.getColumnIndex("clean_type"));
                int i2 = cursor.getInt(cursor.getColumnIndex("status"));
                long j = cursor.getInt(cursor.getColumnIndex("pkg_id"));
                int i3 = cursor.getInt(cursor.getColumnIndex("err_code"));
                String string3 = cursor.getString(cursor.getColumnIndex("err_msg"));
                int i4 = cursor.getInt(cursor.getColumnIndex("clean_strategy"));
                long j2 = cursor.getLong(cursor.getColumnIndex("clean_duration"));
                StatisticModel.PackageStatisticModel packageStatisticModel = new StatisticModel.PackageStatisticModel();
                packageStatisticModel.accessKey = string;
                packageStatisticModel.channel = string2;
                packageStatisticModel.statsType = Integer.valueOf(i2);
                packageStatisticModel.f18911id = Long.valueOf(j);
                packageStatisticModel.errCode = i3 == 0 ? null : String.valueOf(i3);
                packageStatisticModel.errMsg = string3;
                packageStatisticModel.cleanType = Integer.valueOf(i);
                packageStatisticModel.cleanDuration = Long.valueOf(j2);
                packageStatisticModel.cleanStrategy = Integer.valueOf(i4);
                arrayList.add(packageStatisticModel);
            } catch (Exception e3) {
                e = e3;
                C5381b.m32430a("clean-channel", "get all statistic failed!", e);
                C5417b.m32361a(cursor);
                return arrayList;
            }
        }
        getWritableDatabase().delete("geckox_clean_statistic", null, null);
        C5417b.m32361a(cursor);
        return arrayList;
    }

    /* renamed from: a */
    public void m32592a(String str, String str2, int i, int i2, long j, int i3, String str3, long j2, int i4) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("access_key", str);
        contentValues.put(AppsFlyerProperties.CHANNEL, str2);
        contentValues.put("clean_type", Integer.valueOf(i));
        contentValues.put("status", Integer.valueOf(i2));
        contentValues.put("pkg_id", Long.valueOf(j));
        contentValues.put("err_code", Integer.valueOf(i3));
        contentValues.put("err_msg", str3);
        contentValues.put("clean_duration", Long.valueOf(j2));
        contentValues.put("clean_strategy", Integer.valueOf(i4));
        try {
            getWritableDatabase().insert("geckox_clean_statistic", null, contentValues);
        } catch (Exception e) {
            C5381b.m32430a("clean-channel", "insert failed", e);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table if not exists geckox_clean_statistic (id integer primary key autoincrement,access_key text,channel text,clean_type integer,status integer,pkg_id integer,err_code integer,clean_strategy integer,clean_duration integer,err_msg text)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
