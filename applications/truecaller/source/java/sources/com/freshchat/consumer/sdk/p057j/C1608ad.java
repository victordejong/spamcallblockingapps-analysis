package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.net.Uri;
import com.amazon.device.ads.DtbConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.j.ad */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ad.class */
public class C1608ad {
    /* renamed from: a */
    public static String m40317a(InputStream inputStream, Charset charset) throws IOException {
        StringBuilder sb = new StringBuilder();
        try {
            char[] cArr = new char[8192];
            if (inputStream != null) {
                InputStreamReader inputStreamReader = new InputStreamReader(inputStream, charset);
                while (true) {
                    int read = inputStreamReader.read(cArr);
                    if (-1 == read) {
                        break;
                    }
                    sb.append(cArr, 0, read);
                }
            }
            m40316a(inputStream);
            return sb.toString();
        } catch (Throwable th) {
            m40316a(inputStream);
            throw th;
        }
    }

    /* renamed from: a */
    public static void m40316a(Closeable... closeableArr) {
        if (closeableArr == null) {
            return;
        }
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (Exception e) {
                    C1613ai.m40282e("FRESHCHAT_WARNING", "Failed to close closeable", e);
                }
            }
        }
    }

    /* renamed from: aE */
    public static InputStream m40315aE(String str) {
        try {
            return new BufferedInputStream(new FileInputStream(str));
        } catch (Exception e) {
            C1613ai.m40282e("FRESHCHAT_WARNING", "Exception while reading input stream from File", e);
            return null;
        }
    }

    /* renamed from: aF */
    public static String m40314aF(String str) {
        String str2 = str;
        if (str != null) {
            str2 = str;
            if (!str.startsWith(DtbConstants.HTTP)) {
                str2 = str;
                if (!str.startsWith(DtbConstants.HTTPS)) {
                    if (str.startsWith("content://")) {
                        str2 = str;
                    } else {
                        str2 = str;
                        if (str.startsWith(StringConstant.SLASH)) {
                            str2 = C22128a.m8543z2("file:///", str.substring(1, str.length()));
                        }
                    }
                }
            }
        }
        return str2;
    }

    /* renamed from: d */
    public static InputStream m40313d(Context context, Uri uri) {
        if (uri != null) {
            try {
                return context.getContentResolver().openInputStream(uri);
            } catch (Exception e) {
                C1613ai.m40282e("FRESHCHAT_WARNING", "Exception while reading input stream from URI", e);
                return null;
            }
        }
        return null;
    }
}
