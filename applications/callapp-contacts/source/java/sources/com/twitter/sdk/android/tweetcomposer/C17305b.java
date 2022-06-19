package com.twitter.sdk.android.tweetcomposer;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
/* renamed from: com.twitter.sdk.android.tweetcomposer.b */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/b.class */
final class C17305b {
    C17305b() {
    }

    /* renamed from: a */
    public static String m5596a(Context context, Uri uri, String str, String[] strArr) {
        Cursor cursor;
        Throwable th;
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
            cursor = null;
        }
    }
}
