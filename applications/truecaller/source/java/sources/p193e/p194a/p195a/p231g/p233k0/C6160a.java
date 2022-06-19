package p193e.p194a.p195a.p231g.p233k0;

import android.net.Uri;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.a.g.k0.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/k0/a.class */
public final class C6160a {

    /* renamed from: a */
    public static final Uri f20751a = Uri.parse("content://mms/part");

    /* renamed from: b */
    public static final String[] f20752b = {"_display_name", "_size", "_data", "mime_type"};

    /* renamed from: a */
    public static final File m31724a(Uri uri, File file) {
        File file2;
        List<String> pathSegments = uri.getPathSegments();
        l.d(pathSegments, "pathSegments");
        boolean z = true;
        Iterator it = i.s(pathSegments, 1).iterator();
        File file3 = file;
        while (true) {
            file2 = file3;
            if (!it.hasNext()) {
                break;
            }
            file3 = new File(file2, (String) it.next());
        }
        File canonicalFile = file2.getCanonicalFile();
        l.d(canonicalFile, "file.canonicalFile");
        File canonicalFile2 = file.getCanonicalFile();
        l.d(canonicalFile2, "parent.canonicalFile");
        File file4 = canonicalFile;
        while (true) {
            File file5 = file4;
            if (file5 == null) {
                z = false;
                break;
            } else if (l.a(canonicalFile2, file5)) {
                break;
            } else {
                file4 = file5.getParentFile();
            }
        }
        if (!z) {
            file2 = null;
        }
        return file2;
    }
}
