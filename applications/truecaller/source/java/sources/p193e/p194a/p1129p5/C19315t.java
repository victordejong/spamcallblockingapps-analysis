package p193e.p194a.p1129p5;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import com.razorpay.AnalyticsConstants;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
/* renamed from: e.a.p5.t */
/* loaded from: classes15-dex2jar.jar:e/a/p5/t.class */
public final class C19315t {

    /* renamed from: a */
    public static final C19315t f53757a = new C19315t();

    /* renamed from: b */
    public static ContentValues m13474b(C19315t c19315t, String str, String str2, int i) {
        String str3;
        if ((i & 2) != 0) {
            str3 = Environment.DIRECTORY_DOWNLOADS;
            l.d(str3, "Environment.DIRECTORY_DOWNLOADS");
        } else {
            str3 = null;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("_display_name", str);
        if (Build.VERSION.SDK_INT >= 29) {
            contentValues.put("relative_path", str3);
        } else {
            StringBuilder sb = new StringBuilder();
            File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(str3);
            String str4 = null;
            if (externalStoragePublicDirectory != null) {
                str4 = externalStoragePublicDirectory.getAbsolutePath();
            }
            sb.append(str4);
            sb.append(File.separator);
            sb.append(str);
            contentValues.put("_data", sb.toString());
        }
        return contentValues;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final Uri m13475a(Context context, InputStream inputStream, Uri uri, ContentValues contentValues) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(inputStream, "source");
        l.e(uri, "destinationUri");
        l.e(contentValues, "values");
        Context applicationContext = context.getApplicationContext();
        l.d(applicationContext, "context.applicationContext");
        ContentResolver contentResolver = applicationContext.getContentResolver();
        Uri insert = contentResolver.insert(uri, contentValues);
        Uri uri2 = null;
        if (insert != null) {
            OutputStream openOutputStream = contentResolver.openOutputStream(insert);
            if (openOutputStream != null) {
                try {
                    l.d(openOutputStream, "outputStream");
                    C19291g.m13574X1(inputStream, openOutputStream);
                    C25225a.m4016G(openOutputStream, null);
                    uri2 = insert;
                } finally {
                    try {
                        throw th;
                    } catch (Throwable th) {
                    }
                }
            } else {
                uri2 = null;
            }
        }
        return uri2;
    }
}
