package com.bytedance.sdk.openadsdk.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/e.class */
public class e {
    public static Bitmap a(String str) {
        boolean isEmpty = TextUtils.isEmpty(str);
        Bitmap bitmap = null;
        if (isEmpty) {
            return null;
        }
        try {
            byte[] decode = Base64.decode(str, 0);
            bitmap = BitmapFactory.decodeByteArray(decode, 0, decode.length);
        } catch (Throwable th) {
        }
        return bitmap;
    }

    public static String a(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream;
        String str = null;
        str = null;
        if (bitmap == null) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream2);
                byteArrayOutputStream2.flush();
                byteArrayOutputStream2.close();
                str = Base64.encodeToString(byteArrayOutputStream2.toByteArray(), 0);
                byteArrayOutputStream = byteArrayOutputStream2;
            } catch (Throwable th) {
                byteArrayOutputStream = byteArrayOutputStream2;
                if (byteArrayOutputStream != null) {
                    byteArrayOutputStream.flush();
                    byteArrayOutputStream.close();
                }
                return str;
            }
        } catch (Throwable th2) {
            byteArrayOutputStream = null;
        }
        try {
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
        } catch (Throwable th3) {
        }
        return str;
    }

    public static byte[] b(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bitmap.getByteCount());
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
