package com.facebook.appevents.p286g;

import android.text.TextUtils;
import com.facebook.C10181g;
import com.facebook.internal.p299b.p301b.C10249a;
import java.io.File;
import java.nio.charset.Charset;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.facebook.appevents.g.e */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g/e.class */
public class C10062e {
    /* renamed from: a */
    public static File m23493a() {
        if (C10249a.m23108a(C10062e.class)) {
            return null;
        }
        try {
            File file = new File(C10181g.m23290i().getFilesDir(), "facebook_ml/");
            if (!file.exists()) {
                if (!file.mkdirs()) {
                    return null;
                }
            }
            return file;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10062e.class);
            return null;
        }
    }

    /* renamed from: a */
    private static String m23492a(String str) {
        if (C10249a.m23108a(C10062e.class)) {
            return null;
        }
        try {
            return TextUtils.join(StringUtils.SPACE, str.trim().split("\\s+"));
        } catch (Throwable th) {
            C10249a.m23106a(th, C10062e.class);
            return null;
        }
    }

    /* renamed from: a */
    public static int[] m23491a(String str, int i) {
        if (C10249a.m23108a(C10062e.class)) {
            return null;
        }
        try {
            int[] iArr = new int[128];
            byte[] bytes = m23492a(str).getBytes(Charset.forName("UTF-8"));
            for (int i2 = 0; i2 < 128; i2++) {
                if (i2 < bytes.length) {
                    iArr[i2] = bytes[i2] & 255;
                } else {
                    iArr[i2] = 0;
                }
            }
            return iArr;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10062e.class);
            return null;
        }
    }
}
