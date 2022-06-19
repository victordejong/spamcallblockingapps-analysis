package com.klinker.android.send_message;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import com.callerid.block.bean.EZBlackList;
import e.d.a.a.a;
/* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/SentReceiver.class */
public abstract class SentReceiver extends StatusUpdatedReceiver {
    /* renamed from: c */
    private Uri m2123c(Intent intent) {
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

    /* renamed from: d */
    private void m2122d(Context context) {
        a.k("sent_receiver", "using first message");
        Cursor query = context.getContentResolver().query(Uri.parse("content://sms/outbox"), null, null, null, null);
        if (query == null || !query.moveToFirst()) {
            return;
        }
        String string = query.getString(query.getColumnIndex(EZBlackList.f4115ID));
        ContentValues contentValues = new ContentValues();
        contentValues.put("type", (Integer) 2);
        contentValues.put("read", (Integer) 1);
        ContentResolver contentResolver = context.getContentResolver();
        Uri parse = Uri.parse("content://sms/outbox");
        contentResolver.update(parse, contentValues, "_id=" + string, null);
        query.close();
    }

    @Override // com.klinker.android.send_message.StatusUpdatedReceiver
    /* renamed from: b */
    public final void mo2120b(Context context, Intent intent, int i) {
        a.k("sent_receiver", "marking message as sent");
        Uri m2123c = m2123c(intent);
        try {
            if (i == -1) {
                if (m2123c != null) {
                    try {
                        a.k("sent_receiver", "using supplied uri");
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("type", (Integer) 2);
                        contentValues.put("read", (Integer) 1);
                        context.getContentResolver().update(m2123c, contentValues, null, null);
                    } catch (NullPointerException e) {
                    }
                }
                m2122d(context);
            } else if (i == 1 || i == 2 || i == 3 || i == 4) {
                if (m2123c != null) {
                    a.k("sent_receiver", "using supplied uri");
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("type", (Integer) 5);
                    contentValues2.put("read", Boolean.TRUE);
                    contentValues2.put("error_code", Integer.valueOf(i));
                    context.getContentResolver().update(m2123c, contentValues2, null, null);
                } else {
                    a.k("sent_receiver", "using first message");
                    Cursor query = context.getContentResolver().query(Uri.parse("content://sms/outbox"), null, null, null, null);
                    if (query != null && query.moveToFirst()) {
                        String string = query.getString(query.getColumnIndex(EZBlackList.f4115ID));
                        ContentValues contentValues3 = new ContentValues();
                        contentValues3.put("type", (Integer) 5);
                        contentValues3.put("read", (Integer) 1);
                        contentValues3.put("error_code", Integer.valueOf(i));
                        ContentResolver contentResolver = context.getContentResolver();
                        Uri parse = Uri.parse("content://sms/outbox");
                        contentResolver.update(parse, contentValues3, "_id=" + string, null);
                        query.close();
                    }
                }
                C2704b.m2107b(context, new Intent(), C2712i.f11314i);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        C2704b.m2107b(context, new Intent(), "com.klinker.android.send_message.REFRESH");
    }
}
