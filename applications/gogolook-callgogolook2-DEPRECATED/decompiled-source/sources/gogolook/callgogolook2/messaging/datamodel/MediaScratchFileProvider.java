package gogolook.callgogolook2.messaging.datamodel;

import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.collection.SimpleArrayMap;
import androidx.media2.session.MediaSessionImplBase;
import java.io.File;
import java.util.List;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/MediaScratchFileProvider.class */
public class MediaScratchFileProvider extends FileProvider {

    /* renamed from: b */
    public static final SimpleArrayMap<Uri, String> f11174b = new SimpleArrayMap<>();

    /* renamed from: a */
    public static File m27786a(Context context) {
        return new File(context.getCacheDir(), "mediascratchspace");
    }

    /* renamed from: a */
    public static void m27785a(Uri uri, String str) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (f11174b) {
                f11174b.put(uri, str);
            }
        }
    }

    /* renamed from: b */
    public static Uri m27783b(String str) {
        Uri b = FileProvider.m27787b("gogolook.callgogolook2.messaging.datamodel.MediaScratchFileProvider", str);
        File c = m27781c(b.getPath(), str);
        if (!FileProvider.m27789a(c)) {
            C12153d0.m6987b("MessagingApp", "Failed to create temp file " + c.getAbsolutePath());
        }
        return b;
    }

    /* renamed from: b */
    public static File m27784b(Uri uri) {
        C12151d.m7007a((Object) "gogolook.callgogolook2.messaging.datamodel.MediaScratchFileProvider", (Object) uri.getAuthority());
        return m27781c(uri.getPath(), FileProvider.m27790a(uri));
    }

    /* renamed from: c */
    public static File m27781c(String str, String str2) {
        File a = m27786a(AbstractC11516a.m9413n().mo9412a());
        if (!TextUtils.isEmpty(str2)) {
            str = str + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + str2;
        }
        return new File(a, str);
    }

    /* renamed from: c */
    public static boolean m27782c(Uri uri) {
        if (uri == null) {
            return false;
        }
        List<String> pathSegments = uri.getPathSegments();
        boolean z = false;
        if (TextUtils.equals(uri.getScheme(), "content")) {
            z = false;
            if (TextUtils.equals(uri.getAuthority(), "gogolook.callgogolook2.messaging.datamodel.MediaScratchFileProvider")) {
                z = false;
                if (pathSegments.size() == 1) {
                    z = false;
                    if (FileProvider.m27788a(pathSegments.get(0))) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.FileProvider
    /* renamed from: a */
    public File mo27761a(String str, String str2) {
        return m27781c(str, str2);
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.FileProvider, android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        String str3;
        if (strArr == null || strArr.length <= 0 || !TextUtils.equals(strArr[0], "_display_name") || !m27782c(uri)) {
            return null;
        }
        synchronized (f11174b) {
            str3 = f11174b.get(uri);
        }
        if (TextUtils.isEmpty(str3)) {
            return null;
        }
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"_display_name"});
        matrixCursor.newRow().add(str3);
        return matrixCursor;
    }
}
