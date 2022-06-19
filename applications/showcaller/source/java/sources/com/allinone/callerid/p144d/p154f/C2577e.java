package com.allinone.callerid.p144d.p154f;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.media.RingtoneManager;
import android.net.Uri;
import android.provider.ContactsContract;
import android.provider.MediaStore;
import androidx.core.content.C0586a;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.util.C3718c0;
import java.io.File;
/* renamed from: com.allinone.callerid.d.f.e */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/f/e.class */
public class C2577e {
    /* renamed from: a */
    public static boolean m27082a(Context context, String str, String str2) {
        Uri uri;
        try {
            File file = new File(str);
            ContentValues contentValues = new ContentValues();
            contentValues.put("_data", file.getAbsolutePath());
            contentValues.put("title", str2);
            contentValues.put("mime_type", "audio/aac");
            contentValues.put("is_ringtone", Boolean.TRUE);
            Uri contentUriForPath = MediaStore.Audio.Media.getContentUriForPath(file.getAbsolutePath());
            try {
                Cursor query = context.getContentResolver().query(contentUriForPath, null, "_data=?", new String[]{str}, null);
                String str3 = "";
                if (query != null) {
                    str3 = "";
                    if (query.moveToFirst()) {
                        str3 = query.getString(query.getColumnIndex("_id"));
                    }
                    query.close();
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callscreen", "deleteId:" + str3);
                }
                context.getContentResolver().delete(contentUriForPath, "_data=\"" + file.getAbsolutePath() + "\"", null);
                uri = context.getContentResolver().insert(contentUriForPath, contentValues);
            } catch (Exception e) {
                e.printStackTrace();
                uri = null;
            }
            if (uri == null) {
                return false;
            }
            RingtoneManager.setActualDefaultRingtoneUri(context, 1, uri);
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    /* renamed from: b */
    public static boolean m27081b(Context context, String str, String str2, long j) {
        try {
            if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.WRITE_CONTACTS") != 0 || C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                return true;
            }
            ContentValues contentValues = new ContentValues();
            ContentResolver contentResolver = context.getContentResolver();
            File file = new File(str);
            if (!file.exists()) {
                if (!C3718c0.f11914a) {
                    return true;
                }
                C3718c0.m24436a("callscreen", "File does not exist");
                return true;
            }
            contentResolver.delete(MediaStore.Audio.Media.getContentUriForPath(file.getAbsolutePath()), "_data=\"" + file.getAbsolutePath() + "\"", null);
            Cursor query = context.getContentResolver().query(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, Long.toString(j)), new String[]{"_id", "lookup"}, null, null, null);
            if (query == null || !query.moveToFirst()) {
                return true;
            }
            query.moveToFirst();
            Uri lookupUri = ContactsContract.Contacts.getLookupUri(query.getLong(0), query.getString(1));
            contentValues.put("_data", file.getAbsolutePath());
            contentValues.put("title", str2);
            contentValues.put("mime_type", "audio/aac");
            contentValues.put("is_ringtone", Boolean.TRUE);
            Uri insert = contentResolver.insert(MediaStore.Audio.Media.getContentUriForPath(file.getAbsolutePath()), contentValues);
            if (insert != null) {
                String uri = insert.toString();
                contentValues.put("custom_ringtone", uri);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callscreen", "Uri String for:" + uri);
                }
                long update = contentResolver.update(lookupUri, contentValues, null, null);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callscreen", "updated:" + update);
                }
            }
            query.close();
            return true;
        } catch (Exception e) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "Exception:" + e.getMessage());
            }
            e.printStackTrace();
            return true;
        }
    }
}
