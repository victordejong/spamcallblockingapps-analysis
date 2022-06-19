package com.applovin.impl.sdk;

import android.database.Cursor;
import android.database.MatrixCursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.p012v4.media.C0082b;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinContentProviderUtils.class */
public class AppLovinContentProviderUtils {

    /* renamed from: a */
    private static final String[] f4478a = {"_display_name", "_size"};

    /* renamed from: a */
    private static Uri m6084a(String str) {
        return Uri.parse("content://" + (C1408l.m5531L().getPackageName() + ".applovincontentprovider/" + str));
    }

    /* renamed from: a */
    private static File m6085a(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return null;
        }
        return m6083b(lastPathSegment);
    }

    /* renamed from: b */
    private static File m6083b(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(C1408l.m5531L().getCacheDir());
        File file = new File(C0082b.m8754h(sb, File.separator, "ALContentProviderCache"));
        if (!file.exists()) {
            try {
                if (!file.mkdir()) {
                    return null;
                }
            } catch (Throwable th) {
            }
        }
        return new File(file, str);
    }

    public static Uri cacheJPEGImageWithFileName(Bitmap bitmap, String str) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(m6083b(str));
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return m6084a(str);
        } catch (Throwable th) {
            C1479t.m5107i("AppLovinContentProvider", "Failed to create jpeg file '" + str + "' for content provider with exception: " + th);
            return null;
        }
    }

    public static Uri cacheTextWithFileName(String str, String str2) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(m6083b(str2));
            fileOutputStream.write(str.getBytes());
            fileOutputStream.close();
            return m6084a(str2);
        } catch (Throwable th) {
            C1479t.m5107i("AppLovinContentProvider", "Failed to create text file '" + str2 + "' for content provider with exception: " + th);
            return null;
        }
    }

    public static String getType(Uri uri) {
        File m6085a = m6085a(uri);
        try {
            String substring = m6085a.getName().substring(m6085a.getName().indexOf(46) + 1);
            if (!MimeTypeMap.getSingleton().hasExtension(substring)) {
                return null;
            }
            return MimeTypeMap.getSingleton().getMimeTypeFromExtension(substring);
        } catch (Throwable th) {
            StringBuilder m8752j = C0082b.m8752j("Failed to get file type for '");
            m8752j.append(uri.toString());
            m8752j.append("'");
            C1479t.m5113c("AppLovinContentProvider", m8752j.toString(), th);
            return null;
        }
    }

    public static ParcelFileDescriptor openFile(Uri uri) {
        try {
            return ParcelFileDescriptor.open(m6085a(uri), 268435456);
        } catch (FileNotFoundException e) {
            StringBuilder m8752j = C0082b.m8752j("Failed to open file '");
            m8752j.append(uri.toString());
            m8752j.append("'");
            C1479t.m5113c("AppLovinContentProvider", m8752j.toString(), e);
            return null;
        }
    }

    public static Cursor query(Uri uri) {
        File m6085a = m6085a(uri);
        try {
            MatrixCursor matrixCursor = new MatrixCursor(f4478a, 1);
            matrixCursor.addRow(new Object[]{m6085a.getName(), Long.valueOf(m6085a.length())});
            return matrixCursor;
        } catch (Throwable th) {
            StringBuilder m8752j = C0082b.m8752j("Failed to query file '");
            m8752j.append(uri.toString());
            m8752j.append("'");
            C1479t.m5113c("AppLovinContentProvider", m8752j.toString(), th);
            return null;
        }
    }
}
