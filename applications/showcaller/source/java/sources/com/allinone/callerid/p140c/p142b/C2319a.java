package com.allinone.callerid.p140c.p142b;

import android.content.Context;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import androidx.core.content.C0586a;
import com.allinone.callerid.p140c.p141a.C2316a;
import com.allinone.callerid.util.C3718c0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
/* renamed from: com.allinone.callerid.c.b.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/c/b/a.class */
public class C2319a {
    /* renamed from: a */
    public static void m27660a(Context context) {
        try {
            if (C0586a.m33353a(context, "android.permission.READ_CONTACTS") != 0) {
                return;
            }
            Cursor query = context.getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, null, null, null, null);
            if (query != null) {
                int columnIndex = query.getColumnIndex("lookup");
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(C2316a.f8138a);
                    byte[] bArr = new byte[1024];
                    while (query.moveToNext()) {
                        AssetFileDescriptor openAssetFileDescriptor = context.getContentResolver().openAssetFileDescriptor(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_VCARD_URI, query.getString(columnIndex)), "r");
                        if (openAssetFileDescriptor != null) {
                            FileInputStream createInputStream = openAssetFileDescriptor.createInputStream();
                            while (true) {
                                int read = createInputStream.read(bArr);
                                if (read == -1) {
                                    break;
                                }
                                fileOutputStream.write(bArr, 0, read);
                            }
                            createInputStream.close();
                        }
                    }
                    fileOutputStream.close();
                    query.close();
                } catch (Exception e) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("backup", "exportContactsException:" + e.getMessage());
                    }
                    e.printStackTrace();
                }
            }
            if (!C3718c0.f11914a) {
                return;
            }
            C3718c0.m24436a("backup", "exportContacts ok");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m27659b(Context context) {
        try {
            File file = new File(C2316a.f8138a);
            if (!file.exists()) {
                return;
            }
            Intent intent = new Intent();
            intent.setPackage("com.android.contacts");
            intent.setAction("android.intent.action.VIEW");
            intent.setDataAndType(Uri.fromFile(file), "text/x-vcard");
            intent.setFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("backup", "Exception:" + e.getMessage());
            }
            e.printStackTrace();
        }
    }
}
