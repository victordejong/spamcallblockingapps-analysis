package com.bytedance.sdk.openadsdk.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
/* renamed from: com.bytedance.sdk.openadsdk.utils.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/e.class */
public class C5453e {
    /* renamed from: a */
    public static Bitmap m32186a(String str) {
        Bitmap bitmap;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            byte[] decode = Base64.decode(str, 0);
            bitmap = BitmapFactory.decodeByteArray(decode, 0, decode.length);
        } catch (Throwable th) {
            bitmap = null;
        }
        return bitmap;
    }

    /* renamed from: a */
    public static String m32187a(Bitmap bitmap) {
        String str;
        ByteArrayOutputStream byteArrayOutputStream;
        if (bitmap == null) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream2);
                byteArrayOutputStream2.flush();
                byteArrayOutputStream2.close();
                byteArrayOutputStream = byteArrayOutputStream2;
                str = Base64.encodeToString(byteArrayOutputStream2.toByteArray(), 0);
            } catch (Throwable th) {
                byteArrayOutputStream = byteArrayOutputStream2;
                str = null;
                if (byteArrayOutputStream != null) {
                    str = null;
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

    /* renamed from: b */
    public static byte[] m32185b(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bitmap.getByteCount());
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
