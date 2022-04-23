package com.callerid.block.sms;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
/* renamed from: com.callerid.block.sms.a */
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/a.class */
public class C1140a {
    /* renamed from: a */
    public static Bitmap m9970a(Uri uri, Context context) {
        try {
            return MediaStore.Images.Media.getBitmap(context.getContentResolver(), uri);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    private static String m9969b(Context context, Uri uri, String str, String[] strArr) {
        Throwable th;
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        String string = cursor.getString(cursor.getColumnIndexOrThrow("_data"));
                        if (cursor != null) {
                            cursor.close();
                        }
                        return string;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor == null) {
                return null;
            }
            cursor.close();
            return null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: c */
    public static String m9968c(Context context, Uri uri) {
        Uri uri2 = null;
        if (!(Build.VERSION.SDK_INT >= 19) || !DocumentsContract.isDocumentUri(context, uri)) {
            if ("content".equalsIgnoreCase(uri.getScheme())) {
                return "file:///" + m9969b(context, uri, null, null);
            } else if (!"file".equalsIgnoreCase(uri.getScheme())) {
                return null;
            } else {
                return "file:///" + uri.getPath();
            }
        } else if (m9966e(uri)) {
            String[] split = DocumentsContract.getDocumentId(uri).split(":");
            if (!"primary".equalsIgnoreCase(split[0])) {
                return null;
            }
            return "file:///" + Environment.getExternalStorageDirectory() + "/" + split[1];
        } else if (m9967d(uri)) {
            Uri withAppendedId = ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(DocumentsContract.getDocumentId(uri)).longValue());
            return "file:///" + m9969b(context, withAppendedId, null, null);
        } else if (!m9965f(uri)) {
            return null;
        } else {
            String[] split2 = DocumentsContract.getDocumentId(uri).split(":");
            String str = split2[0];
            if ("image".equals(str)) {
                uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
            } else if ("video".equals(str)) {
                uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
            } else if ("audio".equals(str)) {
                uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
            }
            String str2 = split2[1];
            return "file:///" + m9969b(context, uri2, "_id=?", new String[]{str2});
        }
    }

    /* renamed from: d */
    private static boolean m9967d(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    /* renamed from: e */
    private static boolean m9966e(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    /* renamed from: f */
    private static boolean m9965f(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    /* renamed from: g */
    public static void m9964g(Activity activity, int i) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("image/*");
        activity.startActivityForResult(intent, i);
    }

    /* renamed from: h */
    public static void m9963h(Activity activity, Uri uri, int i) {
        Intent intent = new Intent();
        if (Build.VERSION.SDK_INT >= 24) {
            intent.addFlags(1);
        }
        intent.setAction("android.media.action.IMAGE_CAPTURE");
        intent.putExtra("output", uri);
        activity.startActivityForResult(intent, i);
    }
}
