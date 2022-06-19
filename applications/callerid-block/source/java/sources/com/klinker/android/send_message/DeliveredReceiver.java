package com.klinker.android.send_message;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import com.callerid.block.bean.EZBlackList;
import e.d.a.a.a;
import java.util.Calendar;
/* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/DeliveredReceiver.class */
public abstract class DeliveredReceiver extends StatusUpdatedReceiver {
    /* renamed from: c */
    private Uri m2148c(Intent intent) {
        try {
            Uri parse = Uri.parse(intent.getStringExtra("message_uri"));
            if (!parse.equals("")) {
                return parse;
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    @Override // com.klinker.android.send_message.StatusUpdatedReceiver
    /* renamed from: b */
    public final void mo2120b(Context context, Intent intent, int i) {
        Cursor cursor;
        a.k("delivery_receiver", "marking message as delivered");
        Uri m2148c = m2148c(intent);
        String str = "";
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (i != -1) {
            if (i == 0) {
                Intent intent2 = new Intent("com.klinker.android.send_message.NOTIFY_DELIVERY");
                intent2.putExtra("result", false);
                if (m2148c != null) {
                    str = m2148c.toString();
                }
                intent2.putExtra("message_uri", str);
                C2704b.m2107b(context, intent2, "com.klinker.android.send_message.NOTIFY_DELIVERY");
                if (m2148c != null) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("status", "64");
                    contentValues.put("date_sent", Long.valueOf(Calendar.getInstance().getTimeInMillis()));
                    contentValues.put("read", Boolean.TRUE);
                    contentValues.put("error_code", Integer.valueOf(i));
                    context.getContentResolver().update(m2148c, contentValues, null, null);
                } else {
                    Cursor query = context.getContentResolver().query(Uri.parse("content://sms/sent"), null, null, null, "date desc");
                    cursor = query;
                    if (query.moveToFirst()) {
                        String string = query.getString(query.getColumnIndex(EZBlackList.f4115ID));
                        ContentValues contentValues2 = new ContentValues();
                        contentValues2.put("status", "64");
                        contentValues2.put("read", Boolean.TRUE);
                        contentValues2.put("error_code", Integer.valueOf(i));
                        ContentResolver contentResolver = context.getContentResolver();
                        Uri parse = Uri.parse("content://sms/sent");
                        contentResolver.update(parse, contentValues2, "_id=" + string, null);
                        cursor = query;
                    }
                }
            }
            C2704b.m2107b(context, new Intent(), "com.klinker.android.send_message.REFRESH");
        }
        Intent intent3 = new Intent("com.klinker.android.send_message.NOTIFY_DELIVERY");
        intent3.putExtra("result", true);
        if (m2148c != null) {
            str = m2148c.toString();
        }
        intent3.putExtra("message_uri", str);
        C2704b.m2107b(context, intent3, "com.klinker.android.send_message.NOTIFY_DELIVERY");
        if (m2148c != null) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("status", "0");
            contentValues3.put("date_sent", Long.valueOf(Calendar.getInstance().getTimeInMillis()));
            contentValues3.put("read", Boolean.TRUE);
            context.getContentResolver().update(m2148c, contentValues3, null, null);
            C2704b.m2107b(context, new Intent(), "com.klinker.android.send_message.REFRESH");
        }
        Cursor query2 = context.getContentResolver().query(Uri.parse("content://sms/sent"), null, null, null, "date desc");
        cursor = query2;
        if (query2.moveToFirst()) {
            String string2 = query2.getString(query2.getColumnIndex(EZBlackList.f4115ID));
            ContentValues contentValues4 = new ContentValues();
            contentValues4.put("status", "0");
            contentValues4.put("date_sent", Long.valueOf(Calendar.getInstance().getTimeInMillis()));
            contentValues4.put("read", Boolean.TRUE);
            ContentResolver contentResolver2 = context.getContentResolver();
            Uri parse2 = Uri.parse("content://sms/sent");
            contentResolver2.update(parse2, contentValues4, "_id=" + string2, null);
            cursor = query2;
        }
        cursor.close();
        C2704b.m2107b(context, new Intent(), "com.klinker.android.send_message.REFRESH");
    }
}
