package com.facebook.appevents.g;

import android.text.TextUtils;
import com.facebook.g;
import com.facebook.internal.b.b.a;
import java.io.File;
import java.nio.charset.Charset;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g/e.class */
public class e {
    public static File a() {
        if (a.a(e.class)) {
            return null;
        }
        try {
            File file = new File(g.i().getFilesDir(), "facebook_ml/");
            if (!file.exists()) {
                if (!file.mkdirs()) {
                    return null;
                }
            }
            return file;
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    private static String a(String str) {
        if (a.a(e.class)) {
            return null;
        }
        try {
            return TextUtils.join(StringUtils.SPACE, str.trim().split("\\s+"));
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] a(String str, int i) {
        if (a.a(e.class)) {
            return null;
        }
        try {
            int[] iArr = new int[128];
            byte[] bytes = a(str).getBytes(Charset.forName("UTF-8"));
            for (int i2 = 0; i2 < 128; i2++) {
                if (i2 < bytes.length) {
                    iArr[i2] = bytes[i2] & 255;
                } else {
                    iArr[i2] = 0;
                }
            }
            return iArr;
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }
}
