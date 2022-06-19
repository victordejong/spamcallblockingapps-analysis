package com.yanzhenjie.nohttp.cookie;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.allinone.callerid.bean.ShortCut;
import com.yanzhenjie.nohttp.p320db.BaseDao;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/cookie/CookieEntityDao.class */
public class CookieEntityDao extends BaseDao<CookieEntity> {
    public CookieEntityDao(Context context) {
        super(new CookieSQLHelper(context));
    }

    @Override // com.yanzhenjie.nohttp.p320db.BaseDao
    protected List<CookieEntity> getList(String str) {
        SQLiteDatabase reader = getReader();
        ArrayList arrayList = new ArrayList();
        Cursor rawQuery = reader.rawQuery(str, null);
        while (!rawQuery.isClosed() && rawQuery.moveToNext()) {
            CookieEntity cookieEntity = new CookieEntity();
            cookieEntity.setId(rawQuery.getInt(rawQuery.getColumnIndex("_id")));
            cookieEntity.setUri(rawQuery.getString(rawQuery.getColumnIndex("uri")));
            cookieEntity.setName(rawQuery.getString(rawQuery.getColumnIndex(ShortCut.NAME)));
            cookieEntity.setValue(rawQuery.getString(rawQuery.getColumnIndex("value")));
            cookieEntity.setComment(rawQuery.getString(rawQuery.getColumnIndex("comment")));
            cookieEntity.setCommentURL(rawQuery.getString(rawQuery.getColumnIndex("comment_url")));
            cookieEntity.setDiscard("true".equals(rawQuery.getString(rawQuery.getColumnIndex("discard"))));
            cookieEntity.setDomain(rawQuery.getString(rawQuery.getColumnIndex("domain")));
            cookieEntity.setExpiry(rawQuery.getLong(rawQuery.getColumnIndex("expiry")));
            cookieEntity.setPath(rawQuery.getString(rawQuery.getColumnIndex("path")));
            cookieEntity.setPortList(rawQuery.getString(rawQuery.getColumnIndex("port_list")));
            cookieEntity.setSecure("true".equals(rawQuery.getString(rawQuery.getColumnIndex("secure"))));
            cookieEntity.setVersion(rawQuery.getInt(rawQuery.getColumnIndex("version")));
            arrayList.add(cookieEntity);
        }
        closeCursor(rawQuery);
        closeDateBase(reader);
        return arrayList;
    }

    @Override // com.yanzhenjie.nohttp.p320db.BaseDao
    protected String getTableName() {
        return "cookies_table";
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    public long replace(CookieEntity cookieEntity) {
        char c;
        SQLiteDatabase writer = getWriter();
        writer.beginTransaction();
        ContentValues contentValues = new ContentValues();
        contentValues.put("uri", cookieEntity.getUri());
        contentValues.put(ShortCut.NAME, cookieEntity.getName());
        contentValues.put("value", cookieEntity.getValue());
        contentValues.put("comment", cookieEntity.getComment());
        contentValues.put("comment_url", cookieEntity.getCommentURL());
        contentValues.put("discard", String.valueOf(cookieEntity.isDiscard()));
        contentValues.put("domain", cookieEntity.getDomain());
        contentValues.put("expiry", Long.valueOf(cookieEntity.getExpiry()));
        contentValues.put("path", cookieEntity.getPath());
        contentValues.put("port_list", cookieEntity.getPortList());
        contentValues.put("secure", String.valueOf(cookieEntity.isSecure()));
        contentValues.put("version", Integer.valueOf(cookieEntity.getVersion()));
        try {
            c = writer.replace("cookies_table", null, contentValues);
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
