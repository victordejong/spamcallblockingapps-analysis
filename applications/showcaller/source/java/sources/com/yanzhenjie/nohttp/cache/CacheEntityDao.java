package com.yanzhenjie.nohttp.cache;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import com.yanzhenjie.nohttp.Logger;
import com.yanzhenjie.nohttp.p320db.BaseDao;
import com.yanzhenjie.nohttp.tools.Encryption;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/cache/CacheEntityDao.class */
public class CacheEntityDao extends BaseDao<CacheEntity> {
    private Encryption mEncryption;

    public CacheEntityDao(Context context) {
        super(new CacheSQLHelper(context));
        this.mEncryption = new Encryption(context.getApplicationInfo().packageName);
    }

    private String decrypt(String str) {
        return this.mEncryption.decrypt(str);
    }

    private String encrypt(String str) {
        return this.mEncryption.encrypt(str);
    }

    @Override // com.yanzhenjie.nohttp.p320db.BaseDao
    protected List<CacheEntity> getList(String str) {
        Cursor cursor;
        SQLiteDatabase reader = getReader();
        ArrayList arrayList = new ArrayList();
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor rawQuery = reader.rawQuery(str, null);
                while (true) {
                    cursor3 = rawQuery;
                    cursor2 = rawQuery;
                    cursor = rawQuery;
                    if (rawQuery.isClosed()) {
                        break;
                    }
                    cursor = rawQuery;
                    if (!rawQuery.moveToNext()) {
                        break;
                    }
                    CacheEntity cacheEntity = new CacheEntity();
                    cacheEntity.setId(rawQuery.getInt(rawQuery.getColumnIndex("_id")));
                    cacheEntity.setKey(rawQuery.getString(rawQuery.getColumnIndex("key")));
                    cacheEntity.setResponseHeadersJson(decrypt(rawQuery.getString(rawQuery.getColumnIndex("head"))));
                    cacheEntity.setData(Base64.decode(decrypt(rawQuery.getString(rawQuery.getColumnIndex("data"))), 0));
                    cacheEntity.setLocalExpire(Long.parseLong(decrypt(rawQuery.getString(rawQuery.getColumnIndex("local_expires")))));
                    arrayList.add(cacheEntity);
                }
            } catch (Exception e) {
                cursor3 = cursor2;
                Logger.m566e((Throwable) e);
                cursor = cursor2;
            }
            return arrayList;
        } finally {
            closeCursor(cursor3);
            closeDateBase(reader);
        }
    }

    @Override // com.yanzhenjie.nohttp.p320db.BaseDao
    protected String getTableName() {
        return "cache_table";
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    public long replace(CacheEntity cacheEntity) {
        char c;
        SQLiteDatabase writer = getWriter();
        writer.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("key", cacheEntity.getKey());
            contentValues.put("head", encrypt(cacheEntity.getResponseHeadersJson()));
            contentValues.put("data", encrypt(Base64.encodeToString(cacheEntity.getData(), 0)));
            contentValues.put("local_expires", encrypt(Long.toString(cacheEntity.getLocalExpire())));
            c = writer.replace(getTableName(), null, contentValues);
            writer.setTransactionSuccessful();
        } catch (Exception e) {
            c = 65535;
        } catch (Throwable th) {
            writer.endTransaction();
            closeDateBase(writer);
            throw th;
        }
        writer.endTransaction();
        closeDateBase(writer);
        return c;
    }
}
